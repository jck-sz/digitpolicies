# SLZ Defender Policies

Documents 13 local policy definition file(s) in `SLZ/Defender`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-1397-MicrosoftDefenderForCSPM](#slz-1397-microsoftdefenderforcspm) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-153-DefenderCloudPricingForServer](#slz-153-defendercloudpricingforserver) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-153-DefenderForEndpoint](#slz-153-defenderforendpoint) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-154-DefenderCloudPricingForApplicationServices](#slz-154-defendercloudpricingforapplicationservices) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-156-DefenderCloudPricingForAzureSQLDB](#slz-156-defendercloudpricingforazuresqldb) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-157-DefenderCloudPricingForDBOnServers](#slz-157-defendercloudpricingfordbonservers) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-158-DefenderCloudPricingForOpenDB](#slz-158-defendercloudpricingforopendb) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-159-DefenderCloudPricingForStorage](#slz-159-defendercloudpricingforstorage) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-161-DefenderCloudPricingForAzureCosmosDB](#slz-161-defendercloudpricingforazurecosmosdb) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-162-DefenderCloudPricingForKeyVault](#slz-162-defendercloudpricingforkeyvault) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-164-DefenderCloudPricingForResourceManager](#slz-164-defendercloudpricingforresourcemanager) | `DeployIfNotExists` | Medium | subscriptions |
| [SLZ-168-MicrosoftDefenderConfigureVMForVulnerability](#slz-168-microsoftdefenderconfigurevmforvulnerability) | `DeployIfNotExists` | Medium | virtual machines, Azure Arc-enabled servers |
| [SLZ-00-MicrosoftDefenderForContainer](#slz-00-microsoftdefenderforcontainer) | `DeployIfNotExists` | Medium | subscriptions |

## SLZ-1397-MicrosoftDefenderForCSPM

**Display name:** SLZ - 1397 - Configure Microsoft Defender for CSPM

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID1397/slz-1397-configure-microsoft-defender-for-CSPM.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID1397/slz-1397-configure-microsoft-defender-for-CSPM.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`, `isSensitiveDataDiscoveryEnabled`, `isContainerRegistriesVulnerabilityAssessmentsEnabled`, `isAgentlessDiscoveryForKubernetesEnabled`, `isAgentlessVmScanningEnabled`, `isEntraPermissionsManagementEnabled`

**What it does:** Defender Cloud Security Posture Management (CSPM) provides enhanced posture capabilities and a new intelligent cloud security graph to help identify, prioritize, and reduce risk. Defender CSPM is available in addition to the free foundational security posture capabilities turned on by default in Defender for Cloud.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-153-DefenderCloudPricingForServer

**Display name:** SLZ - 153 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Servers

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID153/slz-153-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID153/slz-153-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-servers.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`, `subPlan`, `isAgentlessVmScanningEnabled`, `isMdeDesignatedSubscriptionEnabled`

**What it does:** Azure Defender for servers provides real-time threat protection for server workloads and generates hardening recommendations as well as alerts about suspicious activities.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-153-DefenderForEndpoint

**Display name:** SLZ - 153 - Configure Microsoft Defender Endpoint Integration

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID153.2/slz-153-configure-microsoft-defender-endpoint-integration.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID153.2/slz-153-configure-microsoft-defender-endpoint-integration.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Configures the Microsoft Defender for Endpoint integration settings, within Microsoft Defender for Cloud (also known as WDATP), for Windows downlevel machines onboarded to MDE via MMA, and auto provisioning of MDE on Windows Server 2019 , Windows Virtual Desktop and above. Must be turned on in order for the other settings (WDATP_UNIFIED, etc.) to work. See: https://learn.microsoft.com/azure/defender-for-cloud/integration-defender-for-endpoint for more information.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-154-DefenderCloudPricingForApplicationServices

**Display name:** SLZ - 154 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Application Services

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID154/slz-154-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-application-.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID154/slz-154-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-application-.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Azure Defender for App Service leverages the scale of the cloud, and the visibility that Azure has as a cloud provider, to monitor for common web app attacks.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-156-DefenderCloudPricingForAzureSQLDB

**Display name:** SLZ - 156 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (Azure SQL Databases)

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID156/slz-156-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID156/slz-156-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Azure Defender for SQL provides functionality for surfacing and mitigating potential database vulnerabilities, detecting anomalous activities that could indicate threats to SQL databases, and discovering and classifying sensitive data.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-157-DefenderCloudPricingForDBOnServers

**Display name:** SLZ - 157 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (SQL servers on machines)

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID157/slz-157-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-sq.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID157/slz-157-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-sq.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Azure Defender for SQL provides functionality for surfacing and mitigating potential database vulnerabilities, detecting anomalous activities that could indicate threats to SQL databases, and discovering and classifying sensitive data.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-158-DefenderCloudPricingForOpenDB

**Display name:** SLZ - 158 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for OpenDB (Open-source relational db)

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID158/slz-158-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-opendb-open-.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID158/slz-158-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-opendb-open-.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Azure Defender for open-source relational databases detects anomalous activities indicating unusual and potentially harmful attempts to access or exploit databases. Learn more about the capabilities of Azure Defender for open-source relational databases at https://aka.ms/AzDforOpenSourceDBsDocu. Important: Enabling this plan will result in charges for protecting your open-source relational databases. Learn about the pricing on Security Center's pricing page: https://aka.ms/pricing-security-center.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-159-DefenderCloudPricingForStorage

**Display name:** SLZ - 159 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Storage

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID159/slz-159-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-storage.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID159/slz-159-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-storage.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Microsoft Defender for Storage is an Azure-native layer of security intelligence that detects potential threats to your storage accounts. This policy will enable the basic Defender for Storage capabilities (Activity Monitoring).

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-161-DefenderCloudPricingForAzureCosmosDB

**Display name:** SLZ - 161 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (Azure Cosmos Db)

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID161/slz-161-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID161/slz-161-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Microsoft Defender for Azure Cosmos DB is an Azure-native layer of security that detects attempts to exploit databases in your Azure Cosmos DB accounts. Defender for Azure Cosmos DB detects potential SQL injections, known bad actors based on Microsoft Threat Intelligence, suspicious access patterns, and potential exploitations of your database through compromised identities or malicious insiders.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-162-DefenderCloudPricingForKeyVault

**Display name:** SLZ - 162 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Key Vaults

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID162/slz-162-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-key-vaults.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID162/slz-162-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-key-vaults.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Microsoft Defender for Key Vault provides an additional layer of protection and security intelligence by detecting unusual and potentially harmful attempts to access or exploit key vault accounts.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-164-DefenderCloudPricingForResourceManager

**Display name:** SLZ - 164 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Resource Manager

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID164/slz-164-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-resource-man.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID164/slz-164-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-resource-man.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`

**What it does:** Azure Defender for Resource Manager automatically monitors the resource management operations in your organization. Azure Defender detects threats and alerts you about suspicious activity.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-168-MicrosoftDefenderConfigureVMForVulnerability

**Display name:** SLZ - 168 - Configure machines to receive a vulnerability assessment provider

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID168/slz-configure-microsoft-defender-for-vulnerability-assessment.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/ID168/slz-configure-microsoft-defender-for-vulnerability-assessment.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** virtual machines, Azure Arc-enabled servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`, `vaType`

**What it does:** Azure Defender includes vulnerability scanning for your machines at no extra cost. You don't need a Qualys license or even a Qualys account - everything's handled seamlessly inside Security Center. When you enable this policy, Azure Defender automatically deploys the Qualys vulnerability assessment provider to all supported machines that don't already have it installed.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.

## SLZ-00-MicrosoftDefenderForContainer

**Display name:** SLZ - 00 - Configure Microsoft Defender for CONTAINERS

**Source:** [`Definitions/policyDefinitions/SLZ/Defender/IDdefender/slz-configure-microsoft-defender-for-containers.jsonc`](../../Definitions/policyDefinitions/SLZ/Defender/IDdefender/slz-configure-microsoft-defender-for-containers.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Defender
- **Key parameters:** `effect`, `isContainerRegistriesVulnerabilityAssessmentsEnabled`

**What it does:** New capabilities are continuously being added to Defender for Containers plan, which may require the user's explicit enablement. Use this policy to make sure all new capabilities will be enabled.

**Hub-spoke / identity fit:** Fits tenant-wide security posture management, but Defender plan enablement is subscription-scoped and should be coordinated with cost ownership and security operations processes.

**Potential issues (Medium):** Defender plan configuration can materially change subscription cost and may overlap with built-in Microsoft Defender initiatives or existing security assignments.

**Recommended action:** Align plan enablement with subscription ownership, document accepted cost impact, and avoid duplicate assignments with built-in Defender initiatives.
