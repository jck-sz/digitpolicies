# Rotten Egg Policies

This file lists policies where an assignment can still require remediation-only
parameters even when the effect is set to an audit-style value. These are risky
for the pull-upstream/apply-local-tfvars/deploy workflow because Azure validates
required assignment parameters before policy evaluation starts.

Assumptions:

- The assignment target is the initiative, not individual policy definitions.
- `defaultValue` missing at initiative level means the assignment parameter must
  be supplied.
- A parameter is considered a rotten egg when the referenced local policy uses
  it only under `then.details.deployment`, not in the `if` condition or
  `existenceCondition`.

## Active Initiative Assignment Blockers

| Initiative | Policy | Required assignment parameter | Audit effect | Why this is a rotten egg | Suggested handling |
| --- | --- | --- | --- | --- | --- |
| `SLZ-ALZ-PolicySet` | `SLZ-186-StorageAccountsPrivateEndpoints` | `privateEndpointSubnetId-SLZ-186-StorageAccountsPrivateEndpoints` | `AuditIfNotExists` | Compliance only checks for an approved storage account private endpoint connection. The subnet ID is only used by the embedded private endpoint deployment. In segmented networks, one assignment-level subnet is not meaningful. | Set the effect to `AuditIfNotExists`, provide a syntactically valid sentinel subnet ID, and add a pre-deploy guard that blocks `DeployIfNotExists` when the sentinel is used. |
| `SLZ-ALZ-PolicySet` | `SLZ-629-VirtualNetworksDDOSProtection` | `planId-SLZ-629-VirtualNetworksDDOSProtection` | `auditIfNotExists` | Compliance only checks that the virtual network has DDoS protection enabled and a DDoS plan attached. The `planId` is only used by the embedded deployment that attaches a plan. | If you only want audit, use a sentinel DDoS plan ID and block `DeployIfNotExists` when the sentinel is used. If one DDoS plan is genuinely standard for the assignment scope, provide the real plan ID. |
| `C1-ManagedPolicies` | `C1-SLZ-198-AuditingRetentionGreater90days` | `storageAccountsResourceGroup-C1-SLZ-198-AuditingRetentionGreater90days` | `AuditIfNotExists` | Compliance only checks whether SQL server auditing is enabled. The storage account resource group is only used by the remediation deployment that creates/uses audit storage. | For audit-only use, provide a sentinel resource group name and block `DeployIfNotExists` when the sentinel is used. For remediation, provide a real target resource group. |

## Deprecated Standalone Definition

| Policy definition | Required policy parameter | Audit effect | Why it matters |
| --- | --- | --- | --- |
| `DEPRECATED` in `Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc` | `logAnalytics` | `AuditIfNotExists` | The parameter is used only by the deployment template. This file is not referenced by the active C1 initiative, but a direct assignment would still require the parameter. |

## Non-Rotten Required Parameters

The scan also found required parameters that are not listed above because they
are used by the audit condition itself. Those are real assignment inputs, not
remediation-only leftovers. Examples include diagnostic-settings workspace IDs
that are compared in `existenceCondition`, allowed locations, tag names/values,
retention days, operation names, and target storage/log analytics values used by
their audit checks.

## Recommended Control

Add a pre-deploy validation step after local tfvars are applied and before
Terraform deployment. At minimum, block these combinations:

| Parameter sentinel | Forbidden effect |
| --- | --- |
| `privateEndpointSubnetId-SLZ-186-StorageAccountsPrivateEndpoints` is sentinel | `effect-SLZ-186-StorageAccountsPrivateEndpoints = DeployIfNotExists` |
| `planId-SLZ-629-VirtualNetworksDDOSProtection` is sentinel | `effect-SLZ-629-VirtualNetworksDDOSProtection = DeployIfNotExists` |
| `storageAccountsResourceGroup-C1-SLZ-198-AuditingRetentionGreater90days` is sentinel | `effect-C1-SLZ-198-AuditingRetentionGreater90days = DeployIfNotExists` |

The sentinel values should be syntactically valid for their parameter types, but
visibly named so they are never mistaken for production configuration.
