# C1 General Policies

Documents 5 local policy definition file(s) in `C1/General`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [C1-SLZ-149-NoCustomAdministratorRoles](#c1-slz-149-nocustomadministratorroles) | `Audit` | Medium | custom role definitions |
| [C1-SLZ-198-AuditingRetentionGreater90days](#c1-slz-198-auditingretentiongreater90days) | `DeployIfNotExists` | Medium | SQL servers |
| [C1-SLZ-220-AdministrativeActivityLogAlert](#c1-slz-220-administrativeactivitylogalert) | `AuditIfNotExists` | Medium | subscriptions |
| [C1-SLZ-220-PolicyActivityLogAlert](#c1-slz-220-policyactivitylogalert) | `AuditIfNotExists` | Medium | subscriptions |
| [C1-SLZ-220-SecurityActivityLogAlert](#c1-slz-220-securityactivitylogalert) | `AuditIfNotExists` | Medium | subscriptions |

## C1-SLZ-149-NoCustomAdministratorRoles

**Display name:** C1 - SLZ - 149 - Ensure That No Custom Administrator Roles Exists

**Source:** [`Definitions/policyDefinitions/C1/General/ID149/C1-slz-149-ensure-that-no-custom-administrator-roles-exists.jsonc`](../../Definitions/policyDefinitions/C1/General/ID149/C1-slz-149-ensure-that-no-custom-administrator-roles-exists.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** custom role definitions
- **Policy set coverage:** C1-ManagedPolicies; group: General
- **Key parameters:** `effect`, `allowedCustomRolesNames`

**What it does:** That policy will check that no custom roles are assigned based on custom roles names.

**Hub-spoke / identity fit:** Supports Entra group-based administration across management groups; keep break-glass, managed identity, and service principal assignment patterns explicit.

**Potential issues (Medium):** Strict role governance supports Entra group-based access but can flag break-glass accounts, managed identities, and service principals used by automation.

**Recommended action:** Define approved exception groups and automation identities, and review direct assignments regularly at management-group and subscription scopes.

## C1-SLZ-198-AuditingRetentionGreater90days

**Display name:** C1 - SLZ - 198 - Ensure that 'Auditing' Retention is 'greater than 90 days'

**Source:** [`Definitions/policyDefinitions/C1/General/ID198/C1-slz-198-ensure-that-'auditing'-retention-is-'greater-than-90-days'.jsonc`](../../Definitions/policyDefinitions/C1/General/ID198/C1-slz-198-ensure-that-'auditing'-retention-is-'greater-than-90-days'.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** SQL servers
- **Policy set coverage:** C1-ManagedPolicies; group: General
- **Key parameters:** `effect`, `retentionDays`, `storageAccountsResourceGroup`

**What it does:** For incident investigation purposes, we recommend setting the data retention for your SQL Server' auditing to storage account destination to at least 90 days.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## C1-SLZ-220-AdministrativeActivityLogAlert

**Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Administrative operations

**Source:** [`Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-administrative-opetations.jsonc`](../../Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-administrative-opetations.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** C1-ManagedPolicies; group: Activity Logs
- **Key parameters:** `effect`, `operationNameAdministrative`

**What it does:** This policy audits specific Administrative operations with no activity log alerts configured.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-220-PolicyActivityLogAlert

**Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Policy operations

**Source:** [`Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-policy-opetations.jsonc`](../../Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-policy-opetations.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** C1-ManagedPolicies; group: Activity Logs
- **Key parameters:** `effect`, `operationNamePolicy`

**What it does:** This policy audits specific Policy operations with no activity log alerts configured.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-220-SecurityActivityLogAlert

**Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Security operations

**Source:** [`Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-security-opetations.jsonc`](../../Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-security-opetations.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** C1-ManagedPolicies; group: Activity Logs
- **Key parameters:** `effect`, `operationNameSecurity`

**What it does:** This policy audits specific Security operations with no activity log alerts configured.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.
