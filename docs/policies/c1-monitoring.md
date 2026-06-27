# C1 Monitoring Policies

Documents 35 local policy definition file(s) in `C1/Monitoring`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [C1-SLZ-51-AzureDirectoryDomainServicesDiagSettingsToWS](#c1-slz-51-azuredirectorydomainservicesdiagsettingstows) | `DeployIfNotExists` | Medium | Entra Domain Services managed domains |
| [C1-SLZ-51-AutomationAccountDiagSettingsToWS](#c1-slz-51-automationaccountdiagsettingstows) | `DeployIfNotExists` | Medium | Automation accounts |
| [C1-SLZ-51-AzureActivityLogsDiagSettingsToWS](#c1-slz-51-azureactivitylogsdiagsettingstows) | `DeployIfNotExists` | Medium | subscriptions |
| [C1-SLZ-51-AzureAnalysisServiceDiagSettingsToWS](#c1-slz-51-azureanalysisservicediagsettingstows) | `DeployIfNotExists` | Medium | Microsoft.AnalysisServices/servers |
| [C1-SLZ-51-AzureAPIManagementServiceDiagSettingsToWS](#c1-slz-51-azureapimanagementservicediagsettingstows) | `DeployIfNotExists` | Medium | API Management services |
| [C1-SLZ-51-AppServiceDiagSettingsToWS](#c1-slz-51-appservicediagsettingstows) | `DeployIfNotExists` | Medium | App Service apps |
| [C1-SLZ-51-AppGatewayDiagSettingsToWS](#c1-slz-51-appgatewaydiagsettingstows) | `DeployIfNotExists` | Medium | Application Gateways |
| [C1-SLZ-51-AzureBastionDiagSettingsToWS](#c1-slz-51-azurebastiondiagsettingstows) | `DeployIfNotExists` | Medium | Azure Bastion hosts |
| [C1-SLZ-51-AzureBatchDiagSettingsToWS](#c1-slz-51-azurebatchdiagsettingstows) | `DeployIfNotExists` | Medium | Microsoft.Batch/batchAccounts |
| [C1-SLZ-51-AzureCongitiveSearchDiagSettingsToWS](#c1-slz-51-azurecongitivesearchdiagsettingstows) | `DeployIfNotExists` | Medium | Azure AI Search services |
| [C1-SLZ-51-AzureCongitiveServicesDiagSettingsToWS](#c1-slz-51-azurecongitiveservicesdiagsettingstows) | `DeployIfNotExists` | Medium | Azure AI/Cognitive Services accounts |
| [C1-SLZ-51-AzureDatalakeAnalyticsDiagSettingsToWS](#c1-slz-51-azuredatalakeanalyticsdiagsettingstows) | `DeployIfNotExists` | Medium | Data Lake Analytics accounts |
| [C1-SLZ-51-AzureDatalakeStoreDiagSettingsToWS](#c1-slz-51-azuredatalakestorediagsettingstows) | `DeployIfNotExists` | Medium | Data Lake Store accounts |
| [C1-SLZ-51-AzureEventHubDiagSettingsToWS](#c1-slz-51-azureeventhubdiagsettingstows) | `DeployIfNotExists` | Medium | Event Hubs namespaces |
| [C1-SLZ-51-AzureFirewallDiagSettingsToWS](#c1-slz-51-azurefirewalldiagsettingstows) | `DeployIfNotExists` | Medium | Azure Firewalls |
| [C1-SLZ-51-AzureFunctionDiagSettingsToWS](#c1-slz-51-azurefunctiondiagsettingstows) | `DeployIfNotExists` | Medium | App Service apps |
| [C1-SLZ-51-AzureIntegrationServicesiagSettingsToWS](#c1-slz-51-azureintegrationservicesiagsettingstows) | `DeployIfNotExists` | Medium | Logic Apps integration accounts |
| [C1-SLZ-51-AzureKeyVaultDiagSettingsToWS](#c1-slz-51-azurekeyvaultdiagsettingstows) | `DeployIfNotExists` | Medium | Key Vaults |
| [C1-SLZ-51-AzureLoadBalancerDiagSettingsToWS](#c1-slz-51-azureloadbalancerdiagsettingstows) | `DeployIfNotExists` | Medium | load balancers |
| [C1-SLZ-51-AzureRecoveryServiceDiagSettingsToWS](#c1-slz-51-azurerecoveryservicediagsettingstows) | `DeployIfNotExists` | Medium | Recovery Services vaults |
| [C1-SLZ-51-AzureSQLManagedInstanceDBDiagSettingsToWS](#c1-slz-51-azuresqlmanagedinstancedbdiagsettingstows) | `DeployIfNotExists` | Medium | SQL managed instance databases |
| [C1-SLZ-51-AzureSQLManagedInstanceDiagSettingsToWS](#c1-slz-51-azuresqlmanagedinstancediagsettingstows) | `DeployIfNotExists` | Medium | SQL managed instances |
| [C1-SLZ-51-AzureSQLServerDiagSettingsToWS](#c1-slz-51-azuresqlserverdiagsettingstows) | `DeployIfNotExists` | Medium | SQL databases |
| [C1-SLZ-51-AzureStreamAnalyticsDiagSettingsToWS](#c1-slz-51-azurestreamanalyticsdiagsettingstows) | `DeployIfNotExists` | Medium | Stream Analytics jobs |
| [C1-SLZ-51-AzureVirtualNetworkDiagSettingsToWS](#c1-slz-51-azurevirtualnetworkdiagsettingstows) | `DeployIfNotExists` | Medium | virtual network gateways |
| [C1-SLZ-51-CdnAndFrontdoorDiagSettingsToWS](#c1-slz-51-cdnandfrontdoordiagsettingstows) | `DeployIfNotExists` | Medium | Azure CDN or Front Door profiles |
| [C1-SLZ-51-IoTDiagSettingsToWS](#c1-slz-51-iotdiagsettingstows) | `DeployIfNotExists` | Medium | IoT Hubs |
| [C1-SLZ-51-LogicAppWorkflowsDiagSettingsToWS](#c1-slz-51-logicappworkflowsdiagsettingstows) | `DeployIfNotExists` | Medium | Logic Apps workflows |
| [C1-SLZ-51-NetworkFrontdoorDiagSettingsToWS](#c1-slz-51-networkfrontdoordiagsettingstows) | `DeployIfNotExists` | Medium | classic Front Door resources |
| [C1-SLZ-51-NetworkInterfaceDiagSettingsToWS](#c1-slz-51-networkinterfacediagsettingstows) | `DeployIfNotExists` | Medium | network interfaces |
| [C1-SLZ-51-NetworkSecurityGroupsDiagSettingsToWS](#c1-slz-51-networksecuritygroupsdiagsettingstows) | `DeployIfNotExists` | Medium | network security groups |
| [C1-SLZ-51-PowerBIDedicatedCapacityDiagSettingsToWS](#c1-slz-51-powerbidedicatedcapacitydiagsettingstows) | `DeployIfNotExists` | Medium | Power BI dedicated capacities |
| [C1-SLZ-51-PublicIPDiagSettingsToWS](#c1-slz-51-publicipdiagsettingstows) | `DeployIfNotExists` | Medium | public IP addresses |
| [C1-SLZ-51-ServiceBusNamespaceDiagSettingsToWS](#c1-slz-51-servicebusnamespacediagsettingstows) | `DeployIfNotExists` | Medium | Service Bus namespaces |
| [C1-SLZ-51-StorageAccountsDiagSettingsToWS](#c1-slz-51-storageaccountsdiagsettingstows) | `DeployIfNotExists` | Medium | Microsoft.Storage/workspaces |

## C1-SLZ-51-AzureDirectoryDomainServicesDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Active Directory Domain Services to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-active-directory-domain-services-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-active-directory-domain-services-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Entra Domain Services managed domains
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Active Directory Domain Services to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AutomationAccountDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Automation Account to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-automation-account-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-automation-account-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Automation accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Automation Account to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureActivityLogsDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Activity logs to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-activity-logs-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-activity-logs-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Activity logs to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureAnalysisServiceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Analysis Services to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-analysis-services-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-analysis-services-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Microsoft.AnalysisServices/servers
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Analysis Services to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureAPIManagementServiceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure API Management Service to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-api-management-service-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-api-management-service-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** API Management services
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure API Management Service to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AppServiceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure App service to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-app-service-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-app-service-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `Indexed`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure App service to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AppGatewayDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Application Gateway to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-application-gateway-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-application-gateway-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Application Gateways
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Application Gateway to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureBastionDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Bastion to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-bastion-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-bastion-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Azure Bastion hosts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Bastion to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureBatchDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Batch to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-batch-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-batch-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Microsoft.Batch/batchAccounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Batch to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureCongitiveSearchDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Cognitive Search to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-search-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-search-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Azure AI Search services
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Cognitive Search to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureCongitiveServicesDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Cognitive Services to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-services-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-services-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Azure AI/Cognitive Services accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Cognitive Services to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureDatalakeAnalyticsDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Datalake Analytics to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-analytics-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-analytics-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Data Lake Analytics accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Datalake Analytics to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureDatalakeStoreDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Datalake Store to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-store-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-store-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Data Lake Store accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Datalake Store to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureEventHubDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Event Hub to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-event-hub-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-event-hub-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Event Hubs namespaces
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Event Hub to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureFirewallDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Firewall to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-firewall-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-firewall-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Azure Firewalls
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Firewall to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureFunctionDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Function App to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-function-app-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-function-app-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Function App to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureIntegrationServicesiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Integration Services to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-integration-services-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-integration-services-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Logic Apps integration accounts
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Integration Services to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureKeyVaultDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Key Vaults to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-key-vaults-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-key-vaults-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Key Vaults
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Key Vaults to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureLoadBalancerDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Loadbalancers to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-loadbalancers-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-loadbalancers-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** load balancers
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Loadbalancers to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureRecoveryServiceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Recovery Service to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-recovery-service-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-recovery-service-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Recovery Services vaults
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Recovery Service to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureSQLManagedInstanceDBDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Managed Instance Database to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-database-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-database-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** SQL managed instance databases
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure SQL Managed Instance Database to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureSQLManagedInstanceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Managed Instance to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** SQL managed instances
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure SQL Managed Instance to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureSQLServerDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Server to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-server-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-server-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** SQL databases
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure SQL Server to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureStreamAnalyticsDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Stream Analytics to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-stream-analytics-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-stream-analytics-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Stream Analytics jobs
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Stream Analytics to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-AzureVirtualNetworkDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Virtual Network to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-virtual-network-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-virtual-network-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** virtual network gateways
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Azure Virtual Network to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-CdnAndFrontdoorDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Enable logging by category group for Front Door and CDN profiles (microsoft.cdn/profiles) to Log Analytics

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-cdn-and-frontdoor-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-cdn-and-frontdoor-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `Indexed`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Azure CDN or Front Door profiles
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Resource logs should be enabled to track activities and events that take place on your resources and give you visibility and insights into any changes that occur. This policy deploys a diagnostic setting using a category group to route logs to a Log Analytics workspace for Front Door and CDN profiles (microsoft.cdn/profiles).

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-IoTDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for IoT (Internet of Things) Hub to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-iot-internet-of-things-hub-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-iot-internet-of-things-hub-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** IoT Hubs
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `policyName`, `workspaceId`

**What it does:** Configure diagnostic settings for IoT (Internet of Things) Hub to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-LogicAppWorkflowsDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Logic App Workflows to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-logic-app-workflows-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-logic-app-workflows-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Logic Apps workflows
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Logic App Workflows to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-NetworkFrontdoorDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Frontdoor to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-frontdoor-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-frontdoor-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** classic Front Door resources
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Network Frontdoor to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-NetworkInterfaceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Interface to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-interface-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-interface-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** network interfaces
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Network Interface to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-NetworkSecurityGroupsDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Security Groups to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-security-groups-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-security-groups-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** network security groups
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Network Security Groups to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-PowerBIDedicatedCapacityDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for PowerBI Dedicated Capacity to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-powerbi-dedicated-capacity-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-powerbi-dedicated-capacity-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Power BI dedicated capacities
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for PowerBI Dedicated Capacity to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-PublicIPDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Public IP Address to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-public-ip-address-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-public-ip-address-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** public IP addresses
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Public IP Address to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-ServiceBusNamespaceDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Service Bus Namespace to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-service-bus-namespace-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-service-bus-namespace-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Service Bus namespaces
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Service Bus Namespace to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.

## C1-SLZ-51-StorageAccountsDiagSettingsToWS

**Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace

**Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)

- **Category:** Monitoring
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** Microsoft.Storage/workspaces
- **Policy set coverage:** C1-AzureLandingZoneCore; group: SLZ-51
- **Key parameters:** `effect`, `workspaceId`, `policyName`

**What it does:** Configure diagnostic settings for Storage Accounts to Log Analytics workspace.

**Hub-spoke / identity fit:** Fits centralized operations when all subscriptions can send diagnostics to the approved Log Analytics workspace; confirm workspace routing, retention, private access, and RBAC are consistent across management groups.

**Potential issues (Medium):** Centralized monitoring depends on consistent Log Analytics workspace IDs, diagnostic categories, private access settings, and cross-subscription role assignments; noisy categories can also increase ingestion cost.

**Recommended action:** Use per-environment workspace parameters, verify diagnostic category support for each resource type, and review ingestion volume before enforcing remediation everywhere.
