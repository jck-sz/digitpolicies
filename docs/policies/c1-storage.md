# C1 Storage Policies

Documents 6 local policy definition file(s) in `C1/Storage`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [C1-SLZ-27-StorageAccountDiagnosticSettingsToWS](#c1-slz-27-storageaccountdiagnosticsettingstows) | `DeployIfNotExists` | Medium | storage accounts |
| [DEPRECATED](#deprecated) | `DeployIfNotExists` | High | storage accounts |
| [C1-SLZ-189-BlobServiceStorageLogging](#c1-slz-189-blobservicestoragelogging) | `DeployIfNotExists` | Medium | storage blob services |
| [C1-SLZ-190-TableServiceStorageLogging](#c1-slz-190-tableservicestoragelogging) | `DeployIfNotExists` | Medium | storage table services |
| [C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible](#c1-slz-221-activitylogresourcesnotpubliclyaccessible) | `Deny` | Medium | storage accounts, Log Analytics workspaces |
| [C1-SLZ-222-StorageAccountLogsCMK](#c1-slz-222-storageaccountlogscmk) | `Audit` | Medium | storage accounts |

## C1-SLZ-27-StorageAccountDiagnosticSettingsToWS

**Display name:** C1 - SLZ - 27 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Storage/ID027/C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID027/C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-Others
- **Key parameters:** `effect`, `profileName`, `logAnalytics`, `metricsEnabled`

**What it does:** Deploys the diagnostic settings for Storage accounts to stream resource logs to a Log Analytics workspace when any storage accounts which is missing this diagnostic settings is created or updated.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## DEPRECATED

**Display name:** C1 - SLZ - 27 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** Not referenced by checked-in policy sets; group: not specified
- **Key parameters:** `effect`, `logAnalytics`, `metricsEnabled`, `profileName`, `logsEnabled`

**What it does:** Deploys the diagnostic settings for Storage accounts to stream resource logs to a Log Analytics workspace when any storage accounts which is missing this diagnostic settings is created or updated.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (High):** Deprecated local policy definition can confuse assignment and evidence collection if it remains in scope.

**Recommended action:** Exclude deprecated definitions from new initiatives, document the replacement policy, and remove references after confirming no assignments still depend on it.

## C1-SLZ-189-BlobServiceStorageLogging

**Display name:** C1 - SLZ - 189 - Ensure Storage Logging is Enabled for Blob Service for 'Read', 'Write', and 'Delete' Requests

**Source:** [`Definitions/policyDefinitions/C1/Storage/ID189/C1-slz-189-azure-storage-blobs-logging.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID189/C1-slz-189-azure-storage-blobs-logging.jsonc)

- **Category:** Storage
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** storage blob services
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-Others
- **Key parameters:** `effect`, `logAnalytics`, `metricsEnabled`, `profileName`, `logsEnabled`

**What it does:** Deploys the diagnostic settings for Blob Services to stream resource logs to a Log Analytics workspace when any blob Service which is missing this diagnostic settings is created or updated. Note: This policy is not triggered upon Storage Account creation and requires creation of a remediation task in order to update for the account.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## C1-SLZ-190-TableServiceStorageLogging

**Display name:** C1 - SLZ - 190 - Ensure Storage Logging is Enabled for Table Service for 'Read', 'Write', and 'Delete' Requests

**Source:** [`Definitions/policyDefinitions/C1/Storage/ID190/C1-slz-190-ensure-storage-logging-is-enabled-for-table-service-for-'read',-'write',-and-'delete'-reques.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID190/C1-slz-190-ensure-storage-logging-is-enabled-for-table-service-for-'read',-'write',-and-'delete'-reques.jsonc)

- **Category:** Storage
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** storage table services
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-Others
- **Key parameters:** `effect`, `logAnalytics`, `metricsEnabled`, `profileName`, `logsEnabled`

**What it does:** Deploys the diagnostic settings for Table Services to stream resource logs to a Log Analytics workspace when any table Service which is missing this diagnostic settings is created or updated. Note: This policy is not triggered upon Storage Account creation and requires creation of a remediation task in order to update for the account.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible

**Display name:** C1 - SLZ - 221 - Ensure Activity Log Storage and LAW are not Publicly Accessible

**Source:** [`Definitions/policyDefinitions/C1/Storage/ID221/C1-slz-221-ensure-the-storage-container-storing-the-activity-logs-is-not-publicly-accessible.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID221/C1-slz-221-ensure-the-storage-container-storing-the-activity-logs-is-not-publicly-accessible.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts, Log Analytics workspaces
- **Policy set coverage:** C1-ManagedPolicies; group: Storage
- **Key parameters:** `effect`, `targetStorageAccountName`, `targetLogAnalyticsWorkspaceName`

**What it does:** Ensures that the storage account for activity logs and the Log Analytics workspace do not allow public access.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## C1-SLZ-222-StorageAccountLogsCMK

**Display name:** C1-SLZ - 222 - Ensure the storage account containing the container with activity logs is encrypted with Customer Managed Key

**Source:** [`Definitions/policyDefinitions/C1/Storage/ID222/C1-slz-222-Storage-Logs-Encrypted-CMK.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID222/C1-slz-222-Storage-Logs-Encrypted-CMK.jsonc)

- **Category:** Key Vault
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Deny`, `Audit`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-Others
- **Key parameters:** `effect`, `storageAccount`

**What it does:** Ensure the storage account containing the container with activity logs is encrypted with Customer Managed Key.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** CMK enforcement depends on Key Vault availability, managed identity permissions, purge protection, and key rotation processes.

**Recommended action:** Standardize key hierarchy and recovery procedures before requiring CMK for disks or storage encryption scopes.
