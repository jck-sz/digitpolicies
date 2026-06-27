# SLZ General Policies

Documents 18 local policy definition file(s) in `SLZ/General`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-78-AllowedDeploymentRegions](#slz-78-alloweddeploymentregions) | `Deny` | Medium | General resources or subscription scope |
| [SLZ-238.1-ApimProdNoBasicSku](#slz-238-1-apimprodnobasicsku) | `Audit` | Low | API Management services |
| [SLZ-238.10-AKSProdNoFreeTier](#slz-238-10-aksprodnofreetier) | `Audit` | Low | AKS clusters |
| [SLZ-238.11-LBProdNoBasicSku](#slz-238-11-lbprodnobasicsku) | `Audit` | Low | load balancers |
| [SLZ-238.12-VpnGwProdNoBasicTier](#slz-238-12-vpngwprodnobasictier) | `Audit` | Low | virtual network gateways |
| [SLZ-238.13-AzureSearchProdNoFreeOrBasicSku](#slz-238-13-azuresearchprodnofreeorbasicsku) | `Audit` | Low | Azure AI Search services |
| [SLZ-238.14-SignalRProdNoFreeTier](#slz-238-14-signalrprodnofreetier) | `Audit` | Low | SignalR services |
| [SLZ-238.2-AppConfigProdNoFreeSku](#slz-238-2-appconfigprodnofreesku) | `Audit` | Low | Microsoft.AppConfiguration/configurationStores |
| [SLZ-238.3-AppServiceProdNoLowTierSku](#slz-238-3-appserviceprodnolowtiersku) | `Audit` | Low | App Service plans |
| [SLZ-238.4-ADXProdNoDeveloperTier](#slz-238-4-adxprodnodevelopertier) | `Audit` | Low | Azure Data Explorer clusters |
| [SLZ-238.5-DatabricksProdNoStandardOrTrialSku](#slz-238-5-databricksprodnostandardortrialsku) | `Audit` | Low | Azure Databricks workspaces |
| [SLZ-238.6-DisksProdNoStandardHDD](#slz-238-6-disksprodnostandardhdd) | `Audit` | Low | managed disks |
| [SLZ-238.7-ACRProdNoBasicSku](#slz-238-7-acrprodnobasicsku) | `Audit` | Low | container registries |
| [SLZ-238.8-EventHubProdNoBasicSku](#slz-238-8-eventhubprodnobasicsku) | `Audit` | Low | Event Hubs namespaces |
| [SLZ-238.9-KeyVaultProdNoStandardSku](#slz-238-9-keyvaultprodnostandardsku) | `Audit` | Low | Key Vaults |
| [SLZ-272-ResourceLockForMissionCriticalResources](#slz-272-resourcelockformissioncriticalresources) | `AuditIfNotExists` | Medium | resource groups |
| [SLZ-287-IAMPermissionsThroughGroups](#slz-287-iampermissionsthroughgroups) | `Audit` | Medium | Azure role assignments |
| [SLZ-617-OnlyAllowedGeoLocations](#slz-617-onlyallowedgeolocations) | `Audit` | Medium | General resources or subscription scope |

## SLZ-78-AllowedDeploymentRegions

**Display name:** SLZ - 78 - Designate allowed resource deployment region

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID078/slz-78-designate-allowed-resource-deployment-region.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID078/slz-78-designate-allowed-resource-deployment-region.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** General resources or subscription scope
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `listOfAllowedLocations`

**What it does:** This policy maintains a set of best available regions where your subscription can deploy resources. The objective of this policy is to ensure that your subscription has full access to Azure services with optimal performance. Should you need additional or different regions, contact support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Medium):** Location restrictions can block global services, paired regions, disaster recovery, or services whose metadata location differs from workload data location.

**Recommended action:** Maintain an approved-region matrix and exemptions for global resources, DR, and platform-managed dependencies.

## SLZ-238.1-ApimProdNoBasicSku

**Display name:** SLZ - 238.1 - Ensure API Management in PROD does not use Basic or Consumption SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.1-apimprodnobasicsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.1-apimprodnobasicsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** API Management services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits API Management services tagged as production (tag ec.EnvironmentType=PROD) that are running on the Basic or Consumption SKU. Production workloads must use Developer, Standard or Premium SKU for adequate performance and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.10-AKSProdNoFreeTier

**Display name:** SLZ - 238.10 - Ensure AKS in PROD does not use Free tier

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.10-aksprodnofreetier.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.10-aksprodnofreetier.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** AKS clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits AKS clusters tagged as production (tag ec.EnvironmentType=PROD) that are using the Free pricing tier. Production workloads must use Standard or Premium tiers to ensure SLA-backed reliability and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.11-LBProdNoBasicSku

**Display name:** SLZ - 238.11 - Ensure Load Balancer in PROD does not use Basic SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.11-lbprodnobasicsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.11-lbprodnobasicsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** load balancers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure Load Balancers tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU. Basic SKU lacks SLA, diagnostics, and zone redundancy — not suitable for production environments.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.12-VpnGwProdNoBasicTier

**Display name:** SLZ - 238.12 - Ensure VPN Gateway in PROD does not use Basic tier

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.12-vpngwprodnobasictier.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.12-vpngwprodnobasictier.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** virtual network gateways
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure VPN Gateways tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU tier. The Basic tier lacks SLA, BGP support, and active-active configurations, making it unsuitable for production.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.13-AzureSearchProdNoFreeOrBasicSku

**Display name:** SLZ - 238.13 - Ensure Azure Cognitive Search in PROD does not use Free or Basic SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.13-azuresearchprodnofreeorbasicsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.13-azuresearchprodnofreeorbasicsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure AI Search services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Cognitive Search services tagged as production (tag ec.EnvironmentType=PROD) that are using Free or Basic SKU. These SKUs are not suitable for production due to limited capacity, features, and no SLA.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.14-SignalRProdNoFreeTier

**Display name:** SLZ - 238.14 - Ensure Azure SignalR in PROD does not use Free tier

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.14-signalrprodnofreetier.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.14-signalrprodnofreetier.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** SignalR services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure SignalR services tagged as production (tag ec.EnvironmentType=PROD) that are using the Free tier. The Free tier has no SLA and is not intended for production workloads.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.2-AppConfigProdNoFreeSku

**Display name:** SLZ - 238.2 - Ensure App Configuration in PROD does not use Free SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.2-appconfigprodnofreesku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.2-appconfigprodnofreesku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.AppConfiguration/configurationStores
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits App Configuration resources tagged as production (tag ec.EnvironmentType=PROD) that are using the Free SKU. Production workloads must use the Standard SKU for availability, throughput, and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.3-AppServiceProdNoLowTierSku

**Display name:** SLZ - 238.3 - Ensure App Service Plan in PROD does not use Free, Shared, or Basic SKUs

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.3-appserviceprodnolowtiersku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.3-appserviceprodnolowtiersku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** App Service plans
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits App Service Plans tagged as production (tag ec.EnvironmentType=PROD) that are using Free, Shared, or Basic SKUs (F1, D1, B1–B3). Production workloads must run on Standard, Premium, or Isolated tiers for adequate performance and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.4-ADXProdNoDeveloperTier

**Display name:** SLZ - 238.4 - Ensure Azure Data Explorer in PROD does not use Developer Tier

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.4-adxprodnodevelopertier.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.4-adxprodnodevelopertier.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure Data Explorer clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure Data Explorer clusters tagged as production (tag ec.EnvironmentType=PROD) that are using the Developer SKU tier. Developer tier is not suitable for production workloads due to lack of SLA and limited capacity.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.5-DatabricksProdNoStandardOrTrialSku

**Display name:** SLZ - 238.5 - Ensure Azure Databricks in PROD does not use Standard or Trial SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.5-databricksprodnostandardortrialsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.5-databricksprodnostandardortrialsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure Databricks workspaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure Databricks workspaces tagged as production (tag ec.EnvironmentType=PROD) that are using the Standard or Trial SKUs. Production workloads must use the Premium SKU for required enterprise features and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.6-DisksProdNoStandardHDD

**Display name:** SLZ - 238.6 - Ensure Disks in PROD are not using Standard HDD (Standard_LRS)

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.6-disksprodnostandardhdd.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.6-disksprodnostandardhdd.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** managed disks
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits managed disks tagged as production (tag ec.EnvironmentType=PROD) that are using Standard HDD (Standard_LRS) SKU. This tier is not recommended for production workloads due to limited performance and SLA.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.7-ACRProdNoBasicSku

**Display name:** SLZ - 238.7 - Ensure ACR in PROD does not use Basic SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.7-acrprodnobasicsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.7-acrprodnobasicsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** container registries
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure Container Registries tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU. Production registries must use Standard or Premium SKU for reliability, scale, and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.8-EventHubProdNoBasicSku

**Display name:** SLZ - 238.8 - Ensure Event Hubs in PROD do not use Basic SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.8-eventhubprodnobasicsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.8-eventhubprodnobasicsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Event Hubs namespaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure Event Hub namespaces tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU. Production workloads must use Standard, Premium, or Dedicated tiers for adequate performance and support.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-238.9-KeyVaultProdNoStandardSku

**Display name:** SLZ - 238.9 - Ensure Key Vault in PROD does not use Standard SKU

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.9-keyvaultprodnostandardsku.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID238/slz-238.9-keyvaultprodnostandardsku.jsonc)

- **Category:** Security
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Key Vaults
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Audits Azure Key Vaults tagged as production (tag ec.EnvironmentType=PROD) that are using the Standard SKU. Premium SKU is required in production for advanced security features such as HSM-backed keys.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Production SKU controls depend on reliable environment tagging and may block low-cost test patterns if tags are wrong or inherited incorrectly.

**Recommended action:** Validate tag governance first, then enforce SKU restrictions only on production scopes or tagged resources.

## SLZ-272-ResourceLockForMissionCriticalResources

**Display name:** SLZ - 272 - Ensure that Resource Locks are set for Mission-Critical

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID272/slz-272-ensure-that-resource-locks-are-set-for-mission-critical.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID272/slz-272-ensure-that-resource-locks-are-set-for-mission-critical.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** resource groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Resource lock is applied for resources where defined TAG and its VALUE is applied.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Medium):** Resource locks protect critical assets but can block IaC updates, break-glass operations, and automated teardown.

**Recommended action:** Use explicit lock ownership and documented unlock procedures for mission-critical resources.

## SLZ-287-IAMPermissionsThroughGroups

**Display name:** SLZ - 287 - Ensure IAM Users Receive Permissions Only Through Groups

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID287/slz-287-ensure-iam-users-receive-permissions-only-through-groups.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID287/slz-287-ensure-iam-users-receive-permissions-only-through-groups.jsonc)

- **Category:** RBAC
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** Azure role assignments
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`

**What it does:** This policy will allow admins to only assign role assignment at group level and not user level.

**Hub-spoke / identity fit:** Supports Entra group-based administration across management groups; keep break-glass, managed identity, and service principal assignment patterns explicit.

**Potential issues (Medium):** Strict role governance supports Entra group-based access but can flag break-glass accounts, managed identities, and service principals used by automation.

**Recommended action:** Define approved exception groups and automation identities, and review direct assignments regularly at management-group and subscription scopes.

## SLZ-617-OnlyAllowedGeoLocations

**Display name:** SLZ - 617 - Only allowed geo locations

**Source:** [`Definitions/policyDefinitions/SLZ/General/ID617/slz-617-only-allowed-geo-locations.jsonc`](../../Definitions/policyDefinitions/SLZ/General/ID617/slz-617-only-allowed-geo-locations.jsonc)

- **Category:** General
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** General resources or subscription scope
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: General
- **Key parameters:** `effect`, `listOfAllowedLocations`

**What it does:** Cloud regions that must not be used must be "locked out" using technical policies or other technical controls to prevent data storage.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Medium):** Location restrictions can block global services, paired regions, disaster recovery, or services whose metadata location differs from workload data location.

**Recommended action:** Maintain an approved-region matrix and exemptions for global resources, DR, and platform-managed dependencies.
