# SLZ Network Policies

Documents 36 local policy definition file(s) in `SLZ/Network`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-10.6-DisablePublicNetworkWebApps](#slz-10-6-disablepublicnetworkwebapps) | `Audit` | Medium | App Service apps |
| [SLZ-1325-WAFonAPGT](#slz-1325-wafonapgt) | `Audit` | Medium | Application Gateways |
| [SLZ-1326-WAFSkuV2](#slz-1326-wafskuv2) | `Audit` | Medium | Application Gateways |
| [SLZ-1327-WAFonFrontDoor](#slz-1327-wafonfrontdoor) | `AuditIfNotExists` | Medium | Azure CDN or Front Door profiles |
| [SLZ-1328-WAFonFrontDoor-Detection](#slz-1328-wafonfrontdoor-detection) | `Audit` | Medium | Front Door WAF policies |
| [SLZ-1329-DisablePublicNetworkFunctionApps](#slz-1329-disablepublicnetworkfunctionapps) | `Audit` | Medium | App Service apps |
| [SLZ-1330-PrivateEndpointAPI](#slz-1330-privateendpointapi) | `AuditIfNotExists` | Medium | API Management services |
| [SLZ-1331-DisablePublicAccessAPI](#slz-1331-disablepublicaccessapi) | `Audit` | Medium | API Management services |
| [SLZ-1331.2-DisablePublicAccessAPIPE](#slz-1331-2-disablepublicaccessapipe) | `Audit` | Medium | API Management services |
| [SLZ-1332-APIAllowedSku](#slz-1332-apiallowedsku) | `Audit` | Medium | API Management services |
| [SLZ-1333-NoPublicIpOnNics](#slz-1333-nopubliciponnics) | `Audit` | Medium | network interfaces |
| [SLZ-1334-KubernetesInternalLB](#slz-1334-kubernetesinternallb) | `Audit` | Medium | AKS clusters |
| [SLZ-1335-NoPublicIpOnAKSNodePools](#slz-1335-nopubliciponaksnodepools) | `Audit` | Medium | AKS clusters |
| [SLZ-1336-ContainerAppsNoPublicNA](#slz-1336-containerappsnopublicna) | `Audit` | Medium | Container Apps managed environments |
| [SLZ-1337-ContainerAppDisableExternalNetworkAccess](#slz-1337-containerappdisableexternalnetworkaccess) | `Audit` | Medium | Container Apps |
| [SLZ-1338-WAFonAPGT-Detection](#slz-1338-wafonapgt-detection) | `Audit` | Medium | Application Gateway WAF policies |
| [SLZ-239-RPDAccessDisabledForInternet](#slz-239-rpdaccessdisabledforinternet) | `Audit` | High | NSG security rules |
| [SLZ-240-SSHAccessDisabledForInternet](#slz-240-sshaccessdisabledforinternet) | `Audit` | High | NSG security rules |
| [SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted](#slz-241-udpaccessfrominternetevalutatedandrestricted) | `Audit` | Medium | NSG security rules |
| [SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted](#slz-242-httpsaccessfrominternetevalutatedandrestricted) | `Audit` | Medium | NSG security rules |
| [SLZ-244-NetworkWatcherEnabled](#slz-244-networkwatcherenabled) | `DeployIfNotExists` | Medium | virtual networks |
| [SLZ-332-NSGNoIngressFrom0000For22or3389](#slz-332-nsgnoingressfrom0000for22or3389) | `Audit` | High | NSG security rules |
| [SLZ-333-NSGNoIngressFrom0For22or3389](#slz-333-nsgnoingressfrom0for22or3389) | `Audit` | High | NSG security rules |
| [SLZ-629-VirtualNetworksDDOSProtection](#slz-629-virtualnetworksddosprotection) | `DeployIfNotExists` | Medium | virtual networks |
| [SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted](#slz-983-ftpaccessfrominternetevaluatedandrestricted) | `Audit` | High | NSG security rules, network security groups |
| [SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted](#slz-984-mongodbaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules, network security groups |
| [SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted](#slz-985-cassandraaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules, network security groups |
| [SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted](#slz-986-elasticsearchaccessfrominternetevalutatedandrestricted) | `Audit` | Medium | NSG security rules, network security groups |
| [SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted](#slz-987-kafkaaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules |
| [SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted](#slz-988-memcachedaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules |
| [SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted](#slz-989-mysqlaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules |
| [SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted](#slz-990-oracleaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules, network security groups |
| [SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted](#slz-991-postgresaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules |
| [SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted](#slz-992-redisaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules |
| [SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted](#slz-993-winsqlserveraccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules, network security groups |
| [SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted](#slz-994-telnetaccessfrominternetevalutatedandrestricted) | `Audit` | High | NSG security rules |

## SLZ-10.6-DisablePublicNetworkWebApps

**Display name:** SLZ - 10.6 - Public Network Access Control for Web Apps

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID10.6/slz-10.6-DisablePublicNetworkWebApps.json`](../../Definitions/policyDefinitions/SLZ/Network/ID10.6/slz-10.6-DisablePublicNetworkWebApps.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures public network access is disabled for Azure Web Apps by auditing or denying non-compliance.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke.

## SLZ-1325-WAFonAPGT

**Display name:** SLZ - 1325 - Web Application Firewall (WAF) Must Be Enabled on Application Gateways

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1325/slz-1325-WAFonAPGT.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1325/slz-1325-WAFonAPGT.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `effect.metadata`; verify schema)
- **Target:** Application Gateways
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that Web Application Firewall (WAF) is enabled for Azure Application Gateways either through the built-in WAF configuration or a linked firewall policy.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** WAF requirements improve edge protection but can force architecture changes for workloads using basic SKUs or non-standard ingress patterns. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Standardize Application Gateway or Front Door WAF patterns and define when detection mode is acceptable during onboarding; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1326-WAFSkuV2

**Display name:** SLZ - 1326 - Application Gateway Must Use WAF_v2 SKU

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1326/slz-1326-WAFSkuV2.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1326/slz-1326-WAFSkuV2.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `effect.metadata`; verify schema)
- **Target:** Application Gateways
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that Azure Application Gateways are configured with the WAF_v2 SKU, enhancing security by enabling Web Application Firewall (WAF) protection.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** WAF requirements improve edge protection but can force architecture changes for workloads using basic SKUs or non-standard ingress patterns. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Standardize Application Gateway or Front Door WAF patterns and define when detection mode is acceptable during onboarding; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1327-WAFonFrontDoor

**Display name:** SLZ - 1327 - Azure CDN profiles of type Front Door should have a Web Application Firewall configured

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1327/slz-1327-WAFonFrontDoor.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1327/slz-1327-WAFonFrontDoor.json)

- **Category:** CDN
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** Azure CDN or Front Door profiles
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy audits Azure CDN profiles of type Front Door to ensure they have a Web Application Firewall (WAF) configured for enhanced security.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** WAF requirements improve edge protection but can force architecture changes for workloads using basic SKUs or non-standard ingress patterns.

**Recommended action:** Standardize Application Gateway or Front Door WAF patterns and define when detection mode is acceptable during onboarding.

## SLZ-1328-WAFonFrontDoor-Detection

**Display name:** SLZ - 1328 - Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1328/slz-1328-WAFonFrontDoor-Detection.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1328/slz-1328-WAFonFrontDoor-Detection.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Front Door WAF policies
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `modeRequirement`

**What it does:** Mandates the use of 'Detection' or 'Prevention' mode to be active on all Web Application Firewall policies for Azure Front Door Service.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** WAF requirements improve edge protection but can force architecture changes for workloads using basic SKUs or non-standard ingress patterns.

**Recommended action:** Standardize Application Gateway or Front Door WAF patterns and define when detection mode is acceptable during onboarding.

## SLZ-1329-DisablePublicNetworkFunctionApps

**Display name:** SLZ - 1329 - Public Network Access Control for Function Apps

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1329/slz-1329-DisablePublicNetworkFunctionApps.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1329/slz-1329-DisablePublicNetworkFunctionApps.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures public network access is disabled for Azure Function Apps, by auditing or denying non-compliance.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke.

## SLZ-1330-PrivateEndpointAPI

**Display name:** SLZ - 1330 - Ensure Private Endpoint for Azure API Management Services

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1330/slz-1330-PrivateEndpointAPI.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1330/slz-1330-PrivateEndpointAPI.json)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** API Management services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that Azure API Management Services have at least one approved private endpoint connection for enhanced network security.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke.

## SLZ-1331-DisablePublicAccessAPI

**Display name:** SLZ - 1331 - Ensure Public network access must be Disabled

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331-DisablePublicAccessAPI.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331-DisablePublicAccessAPI.json)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Audit`, `Disabled` (declared under `effect.metadata`; verify schema)
- **Target:** API Management services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that Azure API Management Services have public network access disabled.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1331.2-DisablePublicAccessAPIPE

**Display name:** SLZ - 1331.2 - Ensure Public network access must be Disabled for API management with Private Endpoints

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331.2-DisablePAwithPE.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331.2-DisablePAwithPE.json)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Audit`, `Disabled`, `Deny` (declared under `effect.metadata`; verify schema)
- **Target:** API Management services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that Azure API Management Services have public network access disabled for API management with Private Endpoints.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1332-APIAllowedSku

**Display name:** SLZ - 1332 - Enforce Allowed SKUs for Azure API Management Service

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1332/slz-1332-APIAllowedSku.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1332/slz-1332-APIAllowedSku.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** API Management services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `listOfAllowedSKUs`

**What it does:** This policy ensures that only approved SKUs can be specified for Azure API Management Service to standardize service tiers and control resource allocation.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-1333-NoPublicIpOnNics

**Display name:** SLZ - 1333 - Network Interfaces Should Not Have Public IPs

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1333/slz-1333-NoPublicIpOnNics.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1333/slz-1333-NoPublicIpOnNics.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** network interfaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures network interfaces are not configured with public IP addresses. Public IPs allow inbound and outbound internet access, which should be reviewed by the network security team.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke.

## SLZ-1334-KubernetesInternalLB

**Display name:** SLZ - 1334 - Kubernetes Clusters Should Use Internal Load Balancers

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1334/slz-1334-KubernetesInternalLB.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1334/slz-1334-KubernetesInternalLB.json)

- **Category:** Network
- **Mode:** `Microsoft.Kubernetes.Data`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** AKS clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `source`, `warn`, `effect`, `excludedNamespaces`, `namespaces`, `labelSelector`

**What it does:** This policy ensures Kubernetes clusters use internal load balancers to restrict access to applications within the same virtual network. Learn more at: https://aka.ms/kubepolicydoc.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-1335-NoPublicIpOnAKSNodePools

**Display name:** SLZ - 1335 - Prevent Public IP on AKS Node Pools

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1335/slz-1335-NoPublicIpOnAKSNodePools.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1335/slz-1335-NoPublicIpOnAKSNodePools.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Deny`, `Audit`, `Disabled` (declared under `effect.metadata`; verify schema)
- **Target:** AKS clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that Azure Kubernetes Service (AKS) node pools do not have public IP addresses, preventing unnecessary public exposure of cluster nodes.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1336-ContainerAppsNoPublicNA

**Display name:** SLZ - 1336 - Container Apps Environment Should Disable Public Network Access

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1336/slz-1336-ContainerAppsNoPublicNA.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1336/slz-1336-ContainerAppsNoPublicNA.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `effect.metadata`; verify schema)
- **Target:** Container Apps managed environments
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that public network access is disabled for Container Apps environments by requiring the use of an internal load balancer. This improves security by removing the need for a public IP address and preventing direct internet access to all container apps within the environment.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1337-ContainerAppDisableExternalNetworkAccess

**Display name:** SLZ - 1337 - Container Apps Should Disable External Network Access

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1337/slz-1337-ContainerAppDisableExternalNetworkAccess.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1337/slz-1337-ContainerAppDisableExternalNetworkAccess.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit` (declared under `effect.metadata`; verify schema)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `effect.metadata`; verify schema)
- **Target:** Container Apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy ensures that external network access is disabled for Container Apps by enforcing internal-only ingress. This restricts inbound communication to only callers within the same Container Apps environment.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Blocking public access is correct for hub-spoke, but workloads will break unless private endpoints, private DNS zones, UDRs, and firewall rules are deployed first. Definition quality note: this file nests `allowedValues` and `defaultValue` under `effect.metadata`, so validate schema handling before assignment.

**Recommended action:** Make private connectivity a prerequisite, maintain explicit exceptions for approved public edge services, and test name resolution from every spoke; move effect constraints to the normal parameter schema location if validation fails.

## SLZ-1338-WAFonAPGT-Detection

**Display name:** SLZ - 1338 - Web Application Firewall (WAF) should use the specified mode for Application Gateway

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1338/slz-1338-WAFonAPGT-Detection.json`](../../Definitions/policyDefinitions/SLZ/Network/ID1338/slz-1338-WAFonAPGT-Detection.json)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Application Gateway WAF policies
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `modeRequirement`

**What it does:** Mandates the use of 'Detection' or 'Prevention' mode to be active on all Web Application Firewall policies for Application Gateway.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** WAF requirements improve edge protection but can force architecture changes for workloads using basic SKUs or non-standard ingress patterns.

**Recommended action:** Standardize Application Gateway or Front Door WAF patterns and define when detection mode is acceptable during onboarding.

## SLZ-239-RPDAccessDisabledForInternet

**Display name:** SLZ - 239 - Ensure that RDP access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID239/slz-239-ensure-that-rdp-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID239/slz-239-ensure-that-rdp-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Guest Configuration
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 3389.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-240-SSHAccessDisabledForInternet

**Display name:** SLZ - 240 - Ensure that SSH access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID240/slz-240-ensure-that-ssh-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID240/slz-240-ensure-that-ssh-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Guest Configuration
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 22.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 241 - Ensure that UDP access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID241/slz-241-ensure-that-UDP-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID241/slz-241-ensure-that-UDP-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for UDP ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 242 - Ensure that HTTP access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID242/slz-242-ensure-that-HTTPs-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID242/slz-242-ensure-that-HTTPs-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 80 and 443.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-244-NetworkWatcherEnabled

**Display name:** SLZ - 244 - Ensure that Network Watcher is 'Enabled'

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID244/slz-244-ensure-that-network-watcher-is-'enabled'.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID244/slz-244-ensure-that-network-watcher-is-'enabled'.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** virtual networks
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** This policy creates a network watcher resource in regions with virtual networks. You need to ensure existence of a resource group named networkWatcherRG, which will be used to deploy network watcher instances.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## SLZ-332-NSGNoIngressFrom0000For22or3389

**Display name:** SLZ - 332 - Ensure no security groups allow ingress from 0.0.0.0/0 to remote server administration ports

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID332/slz-332-ensure-no-security-groups-allow-ingress-from-0.0.0.00-to-remote-server-administration-ports.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID332/slz-332-ensure-no-security-groups-allow-ingress-from-0.0.0.00-to-remote-server-administration-ports.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy audits it there are rules that allows ingress from 0.0.0.0/0 to 22 or 3389 ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-333-NSGNoIngressFrom0For22or3389

**Display name:** SLZ - 333 - Ensure no security groups allow ingress from ::/0 to remote server administration ports

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID333/slz-333-ensure-no-security-groups-allow-ingress-from-0-to-remote-server-administration-ports.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID333/slz-333-ensure-no-security-groups-allow-ingress-from-0-to-remote-server-administration-ports.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy audits it there are rules that allows ingress from ::/0 to 22 or 3389 ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-629-VirtualNetworksDDOSProtection

**Display name:** SLZ - 629 - Enforce DDoS Protection

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID629/slz-629-protect-vnets-with-DDoS.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID629/slz-629-protect-vnets-with-DDoS.jsonc)

- **Category:** Network
- **Mode:** `Indexed`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `auditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** virtual networks
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `planId`

**What it does:** Protect your virtual networks against volumetric and protocol attacks with Azure DDoS Protection. For more information, visit https://aka.ms/ddosprotectiondocs.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** DDoS protection has cost and plan-association implications across hub and spoke virtual networks.

**Recommended action:** Decide whether protection is centralized or per-spoke, then assign the policy only where the DDoS plan relationship is available.

## SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted

**Display name:** SLZ - 983 - Ensure that FTP access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID983/slz-983-ensure-that-ftp-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID983/slz-983-ensure-that-ftp-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** NSG security rules, network security groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `ports`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for FTP ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 984 - Ensure that MongoDB access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID984/slz-984-ensure-that-mongodb-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID984/slz-984-ensure-that-mongodb-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** NSG security rules, network security groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `ports`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for MongoDB ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 985 - Ensure that Cassandra access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID985/slz-985-ensure-that-cassandra-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID985/slz-985-ensure-that-cassandra-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** NSG security rules, network security groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `ports`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for Cassandra ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 986 - Ensure that Elasticsearch/Kibana  access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID986/slz-986-ensure-that-elasticsearchkibana-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID986/slz-986-ensure-that-elasticsearchkibana-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** NSG security rules, network security groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `ports`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for Elasticsearch/Kibana ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 987 - Ensure that Kafka access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID987/slz-987-ensure-that-kafka-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID987/slz-987-ensure-that-kafka-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 9092.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 988 - Ensure that Memcached access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID988/slz-988-ensure-that-memcached-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID988/slz-988-ensure-that-memcached-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 11211.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 989 - Ensure that MySQL access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID989/slz-989-ensure-that-mysql-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID989/slz-989-ensure-that-mysql-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 3306.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 990 - Ensure that Oracle access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID990/slz-990-ensure-that-oracle-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID990/slz-990-ensure-that-oracle-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** NSG security rules, network security groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `ports`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for Oracle ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 991 - Ensure that Postgres access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID991/slz-991-ensure-that-postgres-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID991/slz-991-ensure-that-postgres-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 5432.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 992 - Ensure that Redis access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID992/slz-992-ensure-that-redis-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID992/slz-992-ensure-that-redis-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 6379.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 993 - Ensure that Windows SQL Server access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID993/slz-993-ensure-that-windows-sql-server-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID993/slz-993-ensure-that-windows-sql-server-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** NSG security rules, network security groups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`, `ports`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for Windows SQL Server ports.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted

**Display name:** SLZ - 994 - Ensure that Telnet access from the Internet is evaluated and restricted

**Source:** [`Definitions/policyDefinitions/SLZ/Network/ID994/slz-994-ensure-that-telnet-access-from-the-internet-is-evaluated-and-restricted.jsonc`](../../Definitions/policyDefinitions/SLZ/Network/ID994/slz-994-ensure-that-telnet-access-from-the-internet-is-evaluated-and-restricted.jsonc)

- **Category:** Network
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** NSG security rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Network
- **Key parameters:** `effect`

**What it does:** Policy ensures that network security rule exists for INTERNET address prefix for port 23.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.
