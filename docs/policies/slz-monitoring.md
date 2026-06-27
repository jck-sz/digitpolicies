# SLZ Monitoring Policies

Documents 24 local policy definition file(s) in `SLZ/Monitoring`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-223-logsKeyVault](#slz-223-logskeyvault) | `AuditIfNotExists` | Medium | Key Vaults |
| [SLZ-226-logsCreatePolicy](#slz-226-logscreatepolicy) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-227-logsDeletePolicy](#slz-227-logsdeletepolicy) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-228-logsCreateUpdateNsg](#slz-228-logscreateupdatensg) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-229-logsDeleteNsg](#slz-229-logsdeletensg) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-230-logsCreateUpdateSecuritySolutions](#slz-230-logscreateupdatesecuritysolutions) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-231-logsDeleteSecuritySolutions](#slz-231-logsdeletesecuritysolutions) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-232-logsCreateUpdateSqlServerFirewallRule](#slz-232-logscreateupdatesqlserverfirewallrule) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-233-logsDeleteSqlServerFirewallRule](#slz-233-logsdeletesqlserverfirewallrule) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-234-logsCreateOrUpdatePublicIpRule](#slz-234-logscreateorupdatepubliciprule) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-235-logsDeletePublicIpRule](#slz-235-logsdeletepubliciprule) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-236.1-webAppsNoInsights](#slz-236-1-webappsnoinsights) | `Audit` | Medium | App Service apps |
| [SLZ-236.2-functionAppsNoInsights](#slz-236-2-functionappsnoinsights) | `Audit` | Medium | App Service apps |
| [SLZ-236.3-logicAppsNoInsights](#slz-236-3-logicappsnoinsights) | `Audit` | Medium | Logic Apps workflows |
| [SLZ-324-logsCreateSecurityGroups](#slz-324-logscreatesecuritygroups) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-324-logsDeleteSecurityGroup](#slz-324-logsdeletesecuritygroup) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-326-logsCreateNetworkGateway](#slz-326-logscreatenetworkgateway) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-326-logsDeleteNetworkGateway](#slz-326-logsdeletenetworkgateway) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-327-logsCreateRouteTables](#slz-327-logscreateroutetables) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-327-logsCreateRouteTablesRoute](#slz-327-logscreateroutetablesroute) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-327-logsDeleteSecurityGroup](#slz-327-logsdeletesecuritygroup) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-327-logsDeleteSecurityGroupRoute](#slz-327-logsdeletesecuritygrouproute) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-328-logsCreateVirtualNetwork](#slz-328-logscreatevirtualnetwork) | `AuditIfNotExists` | Medium | subscriptions |
| [SLZ-328-logsDeleteVirtualNetworks](#slz-328-logsdeletevirtualnetworks) | `AuditIfNotExists` | Medium | subscriptions |

## SLZ-223-logsKeyVault

**Display name:** SLZ - 223 - Ensure that logging for Azure Key Vault is 'Enabled'

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID223/slz-223-logs-keyVault.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID223/slz-223-logs-keyVault.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** Key Vaults
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `requiredRetentionDays`

**What it does:** Ensure that logging for Azure Key Vault is 'Enabled'.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-226-logsCreatePolicy

**Display name:** SLZ - 226 - Ensure that Activity Log Alert exists for Create Policy Assignment

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID226/slz-226-logs-CreatePolicy.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID226/slz-226-logs-CreatePolicy.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Create Policy Assignment.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-227-logsDeletePolicy

**Display name:** SLZ - 227 - Ensure that Activity Log Alert exists for Delete Policy Assignment

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID227/slz-227-logs-DeletePolicy.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID227/slz-227-logs-DeletePolicy.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Delete Policy Assignment.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-228-logsCreateUpdateNsg

**Display name:** SLZ - 228 - Ensure that Activity Log Alert exists for Create or Update Network Security Group

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID228/slz-228-logs-CreateOrUpdateNSG.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID228/slz-228-logs-CreateOrUpdateNSG.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Create or Update Network Security Group.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-229-logsDeleteNsg

**Display name:** SLZ - 229 - Ensure that Activity Log Alert exists for Delete Network Security Group

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID229/slz-229-logs-DeleteNSG.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID229/slz-229-logs-DeleteNSG.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Delete Network Security Group.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-230-logsCreateUpdateSecuritySolutions

**Display name:** SLZ - 230 - Ensure that Activity Log Alert exists for Create or Update Security Solution

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID230/slz-230-logs-CreateOrUpdateSecuritySolutions.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID230/slz-230-logs-CreateOrUpdateSecuritySolutions.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Create or Update Security Solution.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-231-logsDeleteSecuritySolutions

**Display name:** SLZ - 231 - Ensure that Activity Log Alert exists for Delete Security Solution

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID231/slz-231-logs-DeleteSecuritySolutions.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID231/slz-231-logs-DeleteSecuritySolutions.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Delete Security Solution.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-232-logsCreateUpdateSqlServerFirewallRule

**Display name:** SLZ - 232 - Ensure that Activity Log Alert exists for Create or Update SQL Server Firewall Rule

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID232/slz-232-logs-CreateUpdateSqlServerFirewallRule.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID232/slz-232-logs-CreateUpdateSqlServerFirewallRule.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Create or Update SQL Server Firewall Rule.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-233-logsDeleteSqlServerFirewallRule

**Display name:** SLZ - 233 - Ensure that Activity Log Alert exists for Delete SQL Server Firewall Rule

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID233/slz-233-logs-DeleteSqlServerFirewallRule.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID233/slz-233-logs-DeleteSqlServerFirewallRule.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Delete SQL Server Firewall Rule.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-234-logsCreateOrUpdatePublicIpRule

**Display name:** SLZ - 234 - Ensure that Activity Log Alert exists for Create or Update Public IP Address rule

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID234/slz-234-logs-CreateOrUpdatePublicIpRule.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID234/slz-234-logs-CreateOrUpdatePublicIpRule.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Create or Update Public IP Address rule.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-235-logsDeletePublicIpRule

**Display name:** SLZ - 235 - Ensure that Activity Log Alert exists for Delete Public IP Address rule

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID235/slz-235-logs-DeletePublicIpRule.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID235/slz-235-logs-DeletePublicIpRule.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure that Activity Log Alert exists for Delete Public IP Address rule.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-236.1-webAppsNoInsights

**Display name:** SLZ - 236.1 - Audit Web Apps without Application Insights

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.1-webAppsNoInsights.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.1-webAppsNoInsights.jsonc)

- **Category:** Monitoring
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`

**What it does:** Audit Web Apps that are not linked to an Application Insights resource.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-236.2-functionAppsNoInsights

**Display name:** SLZ - 236.2 - Audit Function Apps without Application Insights

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.2-functionAppsNoInsights.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.2-functionAppsNoInsights.jsonc)

- **Category:** Monitoring
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`

**What it does:** Audit Function Apps that are not linked to an Application Insights resource.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-236.3-logicAppsNoInsights

**Display name:** SLZ - 236.3 - Audit Logic Apps without Application Insights

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.3-logicAppsNoInsights.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.3-logicAppsNoInsights.jsonc)

- **Category:** Monitoring
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Logic Apps workflows
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`

**What it does:** Audit Logic Apps that are not linked to an Application Insights resource.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-324-logsCreateSecurityGroups

**Display name:** SLZ - 324 - Ensure a log metric filter and alarm exist for Create security group changes

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-CreateOrUpdateSecurityGroup.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-CreateOrUpdateSecurityGroup.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Create security group changes.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-324-logsDeleteSecurityGroup

**Display name:** SLZ - 324 - Ensure a log metric filter and alarm exist for Delete security group changes

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-DeleteSecurityGroup.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-DeleteSecurityGroup.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Delete security group changes.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-326-logsCreateNetworkGateway

**Display name:** SLZ - 326 - Ensure a log metric filter and alarm exist for Create Network Gateway

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-CreateOrUpdateNetworkGateway.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-CreateOrUpdateNetworkGateway.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Create Network Gateway.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-326-logsDeleteNetworkGateway

**Display name:** SLZ - 326 - Ensure a log metric filter and alarm exist for Delete Network Gateway

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-DeleteNetworkGateway.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-DeleteNetworkGateway.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Delete Network Gateway.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-327-logsCreateRouteTables

**Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Create Route Tables

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTables.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTables.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Create Route Tables.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-327-logsCreateRouteTablesRoute

**Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Create Route Tables Route

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTablesRoute.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTablesRoute.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Create Route Tables Route.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-327-logsDeleteSecurityGroup

**Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Delete Route Tables

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTables.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTables.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Delete Route Tables.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-327-logsDeleteSecurityGroupRoute

**Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Delete Route Tables Route

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTablesRoute.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTablesRoute.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Delete Route Tables Route.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-328-logsCreateVirtualNetwork

**Display name:** SLZ - 328 - Ensure a log metric filter and alarm exist for Create Virtual Networks

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-CreateOrUpdateVirtualNetworks.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-CreateOrUpdateVirtualNetworks.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Create Virtual Networks.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## SLZ-328-logsDeleteVirtualNetworks

**Display name:** SLZ - 328 - Ensure a log metric filter and alarm exist for Delete Virtual Networks

**Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-DeleteVirtualNetwork.jsonc`](../../Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-DeleteVirtualNetwork.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Monitoring
- **Key parameters:** `effect`, `operationName`

**What it does:** Ensure a log metric filter and alarm exist for Delete Virtual Networks.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.
