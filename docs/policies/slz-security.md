# SLZ Security Policies

Documents 57 local policy definition file(s) in `SLZ/Security`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-1340-AppServiceLatestTLS](#slz-1340-appservicelatesttls) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-1341-AppServiceSlotsLatestTLS](#slz-1341-appserviceslotslatesttls) | `AuditIfNotExists` | Medium | App Service deployment slots |
| [SLZ-1342-FunctionAppsLatestTLS](#slz-1342-functionappslatesttls) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-1343-FunctionAppSlotsLatestTLS](#slz-1343-functionappslotslatesttls) | `DeployIfNotExists` | Medium | App Service deployment slots |
| [SLZ-1344-LogicAppsLatestTLS](#slz-1344-logicappslatesttls) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-1345-RedisSecureConnections](#slz-1345-redissecureconnections) | `Audit` | Medium | Azure Cache for Redis |
| [SLZ-1346-FrontDoorTLS](#slz-1346-frontdoortls) | `Audit` | Medium | Front Door custom domains |
| [SLZ-1347-EventHubTLS](#slz-1347-eventhubtls) | `Audit` | Medium | Event Hubs namespaces |
| [SLZ-1348-StorageTLS](#slz-1348-storagetls) | `Audit` | Medium | storage accounts |
| [SLZ-1349-ADDomainServicesTLS](#slz-1349-addomainservicestls) | `Audit` | Medium | Entra Domain Services managed domains |
| [SLZ-1350-AzureCosmosTLS12](#slz-1350-azurecosmostls12) | `Audit` | Medium | Cosmos DB accounts |
| [SLZ-1351-SQLManagedInstanceTLS12](#slz-1351-sqlmanagedinstancetls12) | `Audit` | Medium | SQL managed instances |
| [SLZ-1352-ArcSQLManagedInstanceTLS12](#slz-1352-arcsqlmanagedinstancetls12) | `Audit` | Medium | Microsoft.AzureArcData/sqlmanagedinstances |
| [SLZ-1353-SQLDatabaseTLS12](#slz-1353-sqldatabasetls12) | `Audit` | Medium | SQL servers |
| [SLZ-1354-PostgreSQLFLEXSSLVersion](#slz-1354-postgresqlflexsslversion) | `AuditIfNotExists` | Medium | PostgreSQL flexible servers |
| [SLZ-1355-MariaDBTLSVersion](#slz-1355-mariadbtlsversion) | `Audit` | Medium | MariaDB servers |
| [SLZ-1356-SynapseSQLTLSVersion](#slz-1356-synapsesqltlsversion) | `Audit` | Medium | Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings |
| [SLZ-1357-AzureKubernetesClustersKMS](#slz-1357-azurekubernetesclusterskms) | `Audit` | Low | AKS clusters |
| [SLZ-1358-AISNCEncryptionCMK](#slz-1358-aisncencryptioncmk) | `Audit` | Medium | Azure AI/Cognitive Services accounts |
| [SLZ-1359-AutomationSNCEncryptionCMK](#slz-1359-automationsncencryptioncmk) | `Audit` | Medium | Automation accounts |
| [SLZ-1360-BackupVaultSNCEncryptionCMK](#slz-1360-backupvaultsncencryptioncmk) | `Audit` | Medium | Microsoft.DataProtection/backupvaults |
| [SLZ-1361-BatchSNCEncryptionCMK](#slz-1361-batchsncencryptioncmk) | `Audit` | Medium | Microsoft.Batch/batchAccounts |
| [SLZ-1362-LoadTestingSNCEncryptionCMK](#slz-1362-loadtestingsncencryptioncmk) | `Audit` | Medium | Microsoft.LoadTestService/loadtests |
| [SLZ-1363-RedisEnterpriseSNCEncryptionCMK](#slz-1363-redisenterprisesncencryptioncmk) | `Audit` | Medium | Microsoft.Cache/redisEnterprise |
| [SLZ-1364-CognitiveSearchSNCEncryptionCMK](#slz-1364-cognitivesearchsncencryptioncmk) | `Audit` | Medium | Azure AI Search services |
| [SLZ-1365-ContainerInstanceSNCEncryptionCMK](#slz-1365-containerinstancesncencryptioncmk) | `Audit` | Medium | Microsoft.ContainerInstance/containerGroups |
| [SLZ-1366-ContainerRegistrySNCEncryptionCMK](#slz-1366-containerregistrysncencryptioncmk) | `Audit` | Medium | container registries |
| [SLZ-1367-CosmosDBSNCEncryptionCMK](#slz-1367-cosmosdbsncencryptioncmk) | `Audit` | Medium | Cosmos DB accounts |
| [SLZ-1368-AzureDataExplorerSNCEncryptionCMK](#slz-1368-azuredataexplorersncencryptioncmk) | `Audit` | Medium | Microsoft.Kusto/Clusters |
| [SLZ-1369-AzureDataFactoriesSNCEncryptionCMK](#slz-1369-azuredatafactoriessncencryptioncmk) | `Audit` | Medium | Data Factory instances |
| [SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK](#slz-1370-elasticsanvolumegroupsncencryptioncmk) | `Audit` | Medium | Microsoft.ElasticSan/elasticSans/volumeGroups |
| [SLZ-1371-EventHubNamespaceSNCEncryptionCMK](#slz-1371-eventhubnamespacesncencryptioncmk) | `Audit` | Medium | Event Hubs namespaces |
| [SLZ-1372-FluidRelaySNCEncryptionCMK](#slz-1372-fluidrelaysncencryptioncmk) | `Audit` | Medium | Microsoft.FluidRelay/fluidRelayServers |
| [SLZ-1373-HDInsightSNCEncryptionCMK](#slz-1373-hdinsightsncencryptioncmk) | `Audit` | Medium | Microsoft.HDInsight/clusters |
| [SLZ-1374-HealthBotsSNCEncryptionCMK](#slz-1374-healthbotssncencryptioncmk) | `Audit` | Medium | Microsoft.HealthBot/healthBots |
| [SLZ-1375-HPCCacheSNCEncryptionCMK](#slz-1375-hpccachesncencryptioncmk) | `Audit` | Medium | Microsoft.StorageCache/caches |
| [SLZ-1376-IoTHubSNCEncryptionCMK](#slz-1376-iothubsncencryptioncmk) | `Audit` | Medium | IoT Hubs |
| [SLZ-1378-LogicAppsSNCEncryptionCMK](#slz-1378-logicappssncencryptioncmk) | `Audit` | Medium | Microsoft.Logic/integrationServiceEnvironments |
| [SLZ-1379-AzureMLSNCEncryptionCMK](#slz-1379-azuremlsncencryptioncmk) | `Audit` | Medium | Azure Machine Learning workspaces |
| [SLZ-1380-AzureSynapseWorkspaceCMK](#slz-1380-azuresynapseworkspacecmk) | `Audit` | Medium | Microsoft.Synapse/workspaces |
| [SLZ-1381-OSAndDataDisksSNCEncryptionCMK](#slz-1381-osanddatadiskssncencryptioncmk) | `Audit` | Medium | virtual machines, virtual machine scale sets, managed disks, Microsoft.Compute/images |
| [SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK](#slz-1382-postgresqlflexibleserversencryptioncmk) | `Audit` | Medium | PostgreSQL flexible servers |
| [SLZ-1384-ServiceBusPremiumEncryptionCMK](#slz-1384-servicebuspremiumencryptioncmk) | `Audit` | Medium | Service Bus namespaces |
| [SLZ-1385-StorageAccountEncryptionScopesCMK](#slz-1385-storageaccountencryptionscopescmk) | `Audit` | Medium | Microsoft.Storage/storageAccounts/encryptionScopes |
| [SLZ-213-MySQLLatestTLS](#slz-213-mysqllatesttls) | `AuditIfNotExists` | Medium | MySQL servers |
| [SLZ-254-KeyVaultKeysExpirationDateSet](#slz-254-keyvaultkeysexpirationdateset) | `Audit` | Medium | Key Vault keys |
| [SLZ-256-KeyVaultSecretsExpirationDateSet](#slz-256-keyvaultsecretsexpirationdateset) | `Audit` | Medium | Microsoft.KeyVault/vaults/secrets |
| [SLZ-257-KeyVaultRecoverable](#slz-257-keyvaultrecoverable) | `Deny` | Medium | Key Vaults |
| [SLZ-258-KeyVaultRBAC](#slz-258-keyvaultrbac) | `Deny` | Medium | Key Vaults |
| [SLZ-259-KeyVaultPrivateEndpoint](#slz-259-keyvaultprivateendpoint) | `Audit` | Medium | Key Vaults |
| [SLZ-260-KeyRotationEnabled](#slz-260-keyrotationenabled) | `Audit` | Medium | Key Vault keys |
| [SLZ-31.15-PostgreSQLSSLVersion](#slz-31-15-postgresqlsslversion) | `AuditIfNotExists` | Medium | PostgreSQL flexible servers |
| [SLZ-31.9-AppGatewayTLS](#slz-31-9-appgatewaytls) | `Audit` | Medium | Application Gateways |
| [SLZ-35.1-ArcSQLTDE](#slz-35-1-arcsqltde) | `Audit` | Medium | Microsoft.AzureArcData/sqlmanagedinstances |
| [SLZ-35.2-AzureSynapseTDE](#slz-35-2-azuresynapsetde) | `Deny` | Medium | Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption |
| [SLZ-872.13-DICOMServiceSNCEncryptionCMK](#slz-872-13-dicomservicesncencryptioncmk) | `Audit` | Medium | Microsoft.HealthcareApis/workspaces/dicomservices |
| [SLZ-872.27-PostgreSQLServersEncryptionCMK](#slz-872-27-postgresqlserversencryptioncmk) | `AuditIfNotExists` | Medium | PostgreSQL servers |

## SLZ-1340-AppServiceLatestTLS

**Display name:** SLZ - 1340 - App Service apps should use the latest tls version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1340/slz-1340-AppServiceLatestTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1340/slz-1340-AppServiceLatestTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for tls either due to security flaws, include additional functionality, and enhance speed. Upgrade to the latest tls version for App Service apps to take advantage of security fixes, if any, and/or new functionalities of the latest version.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1341-AppServiceSlotsLatestTLS

**Display name:** SLZ - 1341 - App Service app slots should use the latest TLS version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1341/slz-1341-AppServiceSlotsLatestTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1341/slz-1341-AppServiceSlotsLatestTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for TLS either due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for App Service app slots to take advantage of security fixes, if any, and/or new functionalities of the latest version.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1342-FunctionAppsLatestTLS

**Display name:** SLZ - 1342 - Configure Function apps to use the latest TLS version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1342/slz-1342-FunctionAppsLatestTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1342/slz-1342-FunctionAppsLatestTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for TLS either due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for Function apps to take advantage of security fixes, if any, and/or new functionalities of the latest version.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1343-FunctionAppSlotsLatestTLS

**Display name:** SLZ - 1343 - Configure Function app slots to use the latest TLS version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1343/slz-1343-FunctionAppSlotsLatestTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1343/slz-1343-FunctionAppSlotsLatestTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for TLS either due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for Function app slots to take advantage of security fixes, if any, and/or new functionalities of the latest version.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1344-LogicAppsLatestTLS

**Display name:** SLZ - 1344 - Configure Logic Apps to use the latest TLS version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1344/slz-1344-LogicAppsLatestTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1344/slz-1344-LogicAppsLatestTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for TLS due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for Logic Apps to take advantage of security fixes, if any, and/or new functionalities of the latest version.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1345-RedisSecureConnections

**Display name:** SLZ - 1345 - Azure Cache for Redis only secure connections should be enabled

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1345/slz-1345-RedisSecureConnections.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1345/slz-1345-RedisSecureConnections.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure Cache for Redis
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `minimumtlsVersion`

**What it does:** Audit enabling of only connections via SSL to Azure Cache for Redis. Validate both the minimum TLS version and that enableNonSslPort is disabled. Using secure connections ensures authentication between the server and the service and protects data in transit from network layer attacks such as man-in-the-middle, eavesdropping, and session hijacking.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1346-FrontDoorTLS

**Display name:** SLZ - 1346 - Azure Front Door Standard and Premium should be running minimum TLS version of 1.2

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1346/slz-1346-FrontDoorTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1346/slz-1346-FrontDoorTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Front Door custom domains
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Setting minimal TLS version to 1.2 improves security by ensuring your custom domains are accessed from clients using TLS 1.2 or newer. Using versions of TLS less than 1.2 is not recommended since they are weak and do not support modern cryptographic algorithms.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1347-EventHubTLS

**Display name:** SLZ - 1347 - Event Hub namespaces should have the specified minimum TLS version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1347/slz-1347-EventHubTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1347/slz-1347-EventHubTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Deny`, `Audit`, `Disabled`
- **Target:** Event Hubs namespaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `minimumtlsVersion`, `effect`

**What it does:** Configure a minimum TLS version for secure communication between the client application and the Event Hub Namespace. To minimize security risk, the recommended minimum TLS version is the latest released version, which is currently TLS 1.2.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1348-StorageTLS

**Display name:** SLZ - 1348 - Azure Storage should have minimum TLS version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1348/slz-1348-StorageTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1348/slz-1348-StorageTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `tlsVersionRequired`, `effect`

**What it does:** This Azure Policy creates an audit event when the 'Minimum TLS version' setting is not set to 'Version 1.2'.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-1349-ADDomainServicesTLS

**Display name:** SLZ - 1349 - Azure Active Directory Domain Services managed domains should use tls 1.2 only mode

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1349/slz-1349-ADDomainServicesTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1349/slz-1349-ADDomainServicesTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Entra Domain Services managed domains
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Use tls 1.2 only mode for your managed domains. By default, Azure AD Domain Services enables the use of ciphers such as NTLM v1 and tls v1. These ciphers may be required for some legacy applications, but are considered weak and can be disabled if you don't need them. When tls 1.2 only mode is enabled, any client making a request that is not using tls 1.2 will fail. Learn more at https://docs.microsoft.com/azure/active-directory-domain-services/secure-your-domain.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-1350-AzureCosmosTLS12

**Display name:** SLZ - 1350 - Azure COSMOS Database should be running tls version 1.2 or newer

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1350/slz-1350-AzureCosmosTLS12.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1350/slz-1350-AzureCosmosTLS12.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** Cosmos DB accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure SQL Database can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1351-SQLManagedInstanceTLS12

**Display name:** SLZ - 1351 - SQL Managed Instance should have the minimal tls version of 1.2

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1351/slz-1351-SQLManagedInstanceTLS12.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1351/slz-1351-SQLManagedInstanceTLS12.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** SQL managed instances
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Setting minimal tls version to 1.2 improves security by ensuring your SQL Managed Instance can only be accessed from clients using tls 1.2. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1352-ArcSQLManagedInstanceTLS12

**Display name:** SLZ - 1352 - tls protocol 1.2 must be used for Arc SQL managed instances.

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1352/slz-1352-ArcSQLManagedInstanceTLS12.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1352/slz-1352-ArcSQLManagedInstanceTLS12.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.AzureArcData/sqlmanagedinstances
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** As a part of network settings, Microsoft recommends allowing only tls 1.2 for tls protocols in SQL Servers. Learn more on network settings for SQL Server at https://aka.ms/tlsSettingsSQLServer.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1353-SQLDatabaseTLS12

**Display name:** SLZ - 1353 - Azure SQL Database should be running tls version 1.2 or newer

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1353/slz-1353-SQLDatabaseTLS12.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1353/slz-1353-SQLDatabaseTLS12.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** SQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure SQL Database can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1354-PostgreSQLFLEXSSLVersion

**Display name:** SLZ - 1354 - PostgreSQL flexible servers should be running tls version 1.2 or newer

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1354/slz-1354-PostgreSQLFLEXSSLVersion.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1354/slz-1354-PostgreSQLFLEXSSLVersion.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL flexible servers in your environment which is running with tls version less than 1.2.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1355-MariaDBTLSVersion

**Display name:** SLZ - 1355 - Azure MARIA Database should be running tls version 1.2 or newer

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1355/slz-1355-MariaDBTLSVersion.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1355/slz-1355-MariaDBTLSVersion.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** MariaDB servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure SQL Database can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1356-SynapseSQLTLSVersion

**Display name:** SLZ - 1356 - Azure Synapse Workspace SQL Server should be running tls version 1.2 or newer

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1356/slz-1356-SynapseSQLTLSVersion.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1356/slz-1356-SynapseSQLTLSVersion.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure Synapse workspace SQL server can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1357-AzureKubernetesClustersKMS

**Display name:** SLZ - 1357 - Azure Kubernetes Clusters should enable Key Management Service (KMS)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1357/slz-1357-AzureKubernetesClustersKMS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1357/slz-1357-AzureKubernetesClustersKMS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** AKS clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Use Key Management Service (KMS) to encrypt secret data at rest in etcd for Kubernetes cluster security. Learn more at: https://aka.ms/aks/kmsetcdencryption.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Audit-only enforcement identifies drift but does not prevent insecure deployment patterns in new spokes.

**Recommended action:** Use audit results to validate false positives, then promote mature controls to Deny, DeployIfNotExists, or Modify where the policy supports it.

## SLZ-1358-AISNCEncryptionCMK

**Display name:** SLZ - 1358 - Azure AI Services resources should encrypt data at rest with a customer-managed key (CMK) (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1358/slz-1358-AISNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1358/slz-1358-AISNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure AI/Cognitive Services accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`, `excludedKinds`

**What it does:** Using customer-managed keys to encrypt data at rest provides more control over the key lifecycle, including rotation and management. This is particularly relevant for organizations with related compliance requirements. This is not assessed by default and should only be applied when required by compliance or restrictive policy requirements. If not enabled, the data will be encrypted using platform-managed keys. To implement this, update the 'Effect' parameter in the Security Policy for the applicable scope.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1359-AutomationSNCEncryptionCMK

**Display name:** SLZ - 1359 - Azure Automation accounts should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1359/slz-1359-AutomationSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1359/slz-1359-AutomationSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Automation accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your Azure Automation Accounts. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/automation-cmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1360-BackupVaultSNCEncryptionCMK

**Display name:** SLZ - 1360 - Azure Backup Vaults should use customer-managed keys for encrypting backup data(SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1360/slz-1360-BackupVaultSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1360/slz-1360-BackupVaultSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.DataProtection/backupvaults
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`, `checkInfrastructureEncryption`

**What it does:** This policy follows the 'effect' if Encryption Settings are enabled for Backup vaults in the scope. Additionally, option to check if Backup Vault also has Infrastructure Encryption enabled. Learn more at https://aka.ms/az-backup-vault-encryption-at-rest-with-cmk. Please note that when 'Deny' effect is used, it would need you to enable Encryption Settings on the existing Backup Vaults in order to allow other update operations on the vault go through.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1361-BatchSNCEncryptionCMK

**Display name:** SLZ - 1361 - Azure Batch account should use customer-managed keys to encrypt data (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1361/slz-1361-BatchSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1361/slz-1361-BatchSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Batch/batchAccounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your Batch account's data. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/Batch-CMK.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1362-LoadTestingSNCEncryptionCMK

**Display name:** SLZ - 1362 - Azure load testing resource should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1362/slz-1362-LoadTestingSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1362/slz-1362-LoadTestingSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.LoadTestService/loadtests
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys(CMK) to manage the encryption at rest for your Azure Load Testing resource. By default the encryption is done using Service managed keys, customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://docs.microsoft.com/azure/load-testing/how-to-configure-customer-managed-keys?tabs=portal.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1363-RedisEnterpriseSNCEncryptionCMK

**Display name:** SLZ - 1363 - Azure Cache for Redis Enterprise should use customer-managed keys for encrypting disk data (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1363/slz-1363-RedisEnterpriseSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1363/slz-1363-RedisEnterpriseSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Cache/redisEnterprise
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys (CMK) to manage the encryption at rest of your on-disk data. By default, customer data is encrypted with platform-managed keys (PMK), but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/RedisCMK.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1364-CognitiveSearchSNCEncryptionCMK

**Display name:** SLZ - 1364 - Azure Cognitive Search services should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1364/slz-1364-CognitiveSearchSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1364/slz-1364-CognitiveSearchSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure AI Search services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Enabling encryption at rest using a customer-managed key on your Azure Cognitive Search services provides additional control over the key used to encrypt data at rest. This feature is often applicable to customers with special compliance requirements to manage data encryption keys using a key vault.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1365-ContainerInstanceSNCEncryptionCMK

**Display name:** SLZ - 1365 - Azure Container Instance container group should use customer-managed key for encryption (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1365/slz-1365-ContainerInstanceSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1365/slz-1365-ContainerInstanceSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** Microsoft.ContainerInstance/containerGroups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Secure your containers with greater flexibility using customer-managed keys. When you specify a customer-managed key, that key is used to protect and control access to the key that encrypts your data. Using customer-managed keys provides additional capabilities to control rotation of the key encryption key or cryptographically erase data.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1366-ContainerRegistrySNCEncryptionCMK

**Display name:** SLZ - 1366 - Container registries should be encrypted with a customer-managed key (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1366/slz-1366-ContainerRegistrySNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1366/slz-1366-ContainerRegistrySNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** container registries
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of the contents of your registries. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/acr/CMK.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1367-CosmosDBSNCEncryptionCMK

**Display name:** SLZ - 1367 - Azure Cosmos DB accounts should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1367/slz-1367-CosmosDBSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1367/slz-1367-CosmosDBSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Cosmos DB accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your Azure Cosmos DB. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/cosmosdb-cmk.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1368-AzureDataExplorerSNCEncryptionCMK

**Display name:** SLZ - 1368 - Azure Data Explorer encryption at rest should use a customer-managed key (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1368/slz-1368-AzureDataExplorerSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1368/slz-1368-AzureDataExplorerSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Kusto/Clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Enabling encryption at rest using a customer-managed key on your Azure Data Explorer cluster provides additional control over the key being used by the encryption at rest. This feature is oftentimes applicable to customers with special compliance requirements and requires a Key Vault to managing the keys.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1369-AzureDataFactoriesSNCEncryptionCMK

**Display name:** SLZ - 1369 - Azure data factories should be encrypted with a customer-managed key (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1369/slz-1369-AzureDataFactoriesSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1369/slz-1369-AzureDataFactoriesSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Data Factory instances
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your Azure Data Factory. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/adf-cmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK

**Display name:** SLZ - 1370 - ElasticSan Volume Group should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1370/slz-1370-ElasticSanVolumeGroupSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1370/slz-1370-ElasticSanVolumeGroupSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Microsoft.ElasticSan/elasticSans/volumeGroups
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your VolumeGroup. By default, customer data is encrypted with platform-managed keys, but CMKs are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you, with full control and responsibility, including rotation and management.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1371-EventHubNamespaceSNCEncryptionCMK

**Display name:** SLZ - 1371 - Event Hub namespaces should use a customer-managed key for encryption (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1371/slz-1371-EventHubNamespaceSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1371/slz-1371-EventHubNamespaceSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Event Hubs namespaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Azure Event Hubs supports the option of encrypting data at rest with either Microsoft-managed keys (default) or customer-managed keys. Choosing to encrypt data using customer-managed keys enables you to assign, rotate, disable, and revoke access to the keys that Event Hub will use to encrypt data in your namespace. Note that Event Hub only supports encryption with customer-managed keys for namespaces in dedicated clusters.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1372-FluidRelaySNCEncryptionCMK

**Display name:** SLZ - 1372 - Fluid Relay should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1372/slz-1372-FluidRelaySNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1372/slz-1372-FluidRelaySNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Microsoft.FluidRelay/fluidRelayServers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your Fluid Relay server. By default, customer data is encrypted with service-managed keys, but CMKs are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you, with full control and responsibility, including rotation and management. Learn more at https://docs.microsoft.com/azure/azure-fluid-relay/concepts/customer-managed-keys.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1373-HDInsightSNCEncryptionCMK

**Display name:** SLZ - 1373 - Azure HDInsight clusters should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1373/slz-1373-HDInsightSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1373/slz-1373-HDInsightSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.HDInsight/clusters
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your Azure HDInsight clusters. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/hdi.cmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1374-HealthBotsSNCEncryptionCMK

**Display name:** SLZ - 1374 - Azure Health Bots should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1374/slz-1374-HealthBotsSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1374/slz-1374-HealthBotsSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Microsoft.HealthBot/healthBots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys (CMK) to manage the encryption at rest of the data of your healthbots. By default, the data is encrypted at rest with service-managed keys, but CMK are commonly required to meet regulatory compliance standards. CMK enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://docs.microsoft.com/azure/health-bot/cmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1375-HPCCacheSNCEncryptionCMK

**Display name:** SLZ - 1375 - HPC Cache accounts should use customer-managed key for encryption (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1375/slz-1375-HPCCacheSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1375/slz-1375-HPCCacheSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** Microsoft.StorageCache/caches
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Manage encryption at rest of Azure HPC Cache with customer-managed keys. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1376-IoTHubSNCEncryptionCMK

**Display name:** SLZ - 1376 - Azure IoT Hub should use customer-managed key to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1376/slz-1376-IoTHubSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1376/slz-1376-IoTHubSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** IoT Hubs
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Encryption of data at rest in IoT Hub with customer-managed key adds a second layer of encryption on top of the default service-managed keys, enables customer control of keys, custom rotation policies, and ability to manage access to data through key access control. Customer-managed keys must be configured during creation of IoT Hub. For more information on how to configure customer-managed keys, see https://aka.ms/iotcmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1378-LogicAppsSNCEncryptionCMK

**Display name:** SLZ - 1378 - Logic Apps Integration Service Environment should be encrypted with customer-managed keys (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1378/slz-1378-LogicAppsSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1378/slz-1378-LogicAppsSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Logic/integrationServiceEnvironments
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Deploy into Integration Service Environment to manage encryption at rest of Logic Apps data using customer-managed keys. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1379-AzureMLSNCEncryptionCMK

**Display name:** SLZ - 1379 - Azure Machine Learning workspaces should be encrypted with a customer-managed key (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1379/slz-1379-AzureMLSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1379/slz-1379-AzureMLSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Azure Machine Learning workspaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Manage encryption at rest of Azure Machine Learning workspace data with customer-managed keys. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more at https://aka.ms/azureml-workspaces-cmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1380-AzureSynapseWorkspaceCMK

**Display name:** SLZ - 1380 - Azure Synapse workspaces should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1380/slz-1380-AzureSynapseWorkspaceCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1380/slz-1380-AzureSynapseWorkspaceCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Synapse/workspaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to control the encryption at rest of the data stored in Azure Synapse workspaces. Customer-managed keys deliver double encryption by adding a second layer of encryption on top of the default encryption with service-managed keys.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1381-OSAndDataDisksSNCEncryptionCMK

**Display name:** SLZ - 1381 - OS and data disks should be encrypted with a customer-managed key (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1381/slz-1381-OSAndDataDisksSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1381/slz-1381-OSAndDataDisksSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** virtual machines, virtual machine scale sets, managed disks, Microsoft.Compute/images
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Ensure OS and data disks are encrypted using a customer-managed key (CMK) for regulatory compliance. CMKs provide full control over key lifecycle management. Learn more: https://aka.ms/disks-cmk.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK

**Display name:** SLZ - 1382 - PostgreSQL flexible servers should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1382/slz-1382-PostgreSQLFlexibleServersEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1382/slz-1382-PostgreSQLFlexibleServersEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your PostgreSQL flexible servers. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-1384-ServiceBusPremiumEncryptionCMK

**Display name:** SLZ - 1384 - Service Bus Premium namespaces should use a customer-managed key for encryption (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1384/slz-1384-ServiceBusPremiumEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1384/slz-1384-ServiceBusPremiumEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Service Bus namespaces
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Azure Service Bus supports the option of encrypting data at rest with either Microsoft-managed keys (default) or customer-managed keys. Choosing to encrypt data using customer-managed keys enables you to assign, rotate, disable, and revoke access to the keys that Service Bus will use to encrypt data in your namespace. Note that Service Bus only supports encryption with customer-managed keys for premium namespaces.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-1385-StorageAccountEncryptionScopesCMK

**Display name:** SLZ - 1385 - Storage account encryption scopes should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1385/slz-1385-StorageAccountEncryptionScopesCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID1385/slz-1385-StorageAccountEncryptionScopesCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Storage/storageAccounts/encryptionScopes
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your storage account encryption scopes. Customer-managed keys enable the data to be encrypted with an Azure key-vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management. Learn more about storage account encryption scopes at https://aka.ms/encryption-scopes-overview.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** CMK enforcement depends on Key Vault availability, managed identity permissions, purge protection, and key rotation processes.

**Recommended action:** Standardize key hierarchy and recovery procedures before requiring CMK for disks or storage encryption scopes.

## SLZ-213-MySQLLatestTLS

**Display name:** SLZ - 213 - Ensure 'TLS Version' is set to 'TLSV1.2' for MySQL flexible Database

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID213/slz-213-MySQLLatestTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID213/slz-213-MySQLLatestTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Deny`
- **Target:** MySQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `minimaltlsVersion`

**What it does:** Ensure 'TLS Version' is set to 'TLSV1.2' for MySQL flexible Database.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-254-KeyVaultKeysExpirationDateSet

**Display name:** SLZ - 254 - Ensure that the Expiration Date is set for all Keys in Key Vaults (RBAC and Non-RBAC)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID254/slz-254-ensure-that-the-expiration-date-is-set-for-all-keys-in-key-vaults-rbac-and-non-rbac.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID254/slz-254-ensure-that-the-expiration-date-is-set-for-all-keys-in-key-vaults-rbac-and-non-rbac.jsonc)

- **Category:** Key Vault
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** Key Vault keys
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** This policy ensures that all keys in Key Vaults have an expiration date set.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-256-KeyVaultSecretsExpirationDateSet

**Display name:** SLZ - 256 - Ensure that the Expiration Date is set for all Secrets in Key Vaults (RBAC and Non-RBAC)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID256/slz-256-ensure-that-the-expiration-date-is-set-for-all-secrets-in-key-vaults-rbac-and-non-rbac.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID256/slz-256-ensure-that-the-expiration-date-is-set-for-all-secrets-in-key-vaults-rbac-and-non-rbac.jsonc)

- **Category:** Key Vault
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** Microsoft.KeyVault/vaults/secrets
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** This policy ensures that all secrets in Key Vaults have an expiration date set.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-257-KeyVaultRecoverable

**Display name:** SLZ - 257 - Ensure the Key Vault is Recoverable

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID257/slz-257-ensure-the-key-vault-is-recoverable.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID257/slz-257-ensure-the-key-vault-is-recoverable.jsonc)

- **Category:** Key Vault
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Key Vaults
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Malicious deletion of a key vault can lead to permanent data loss. You can prevent permanent data loss by enabling purge protection and soft delete. Purge protection protects you from insider attacks by enforcing a mandatory retention period for soft deleted key vaults. No one inside your organization or Microsoft will be able to purge your key vaults during the soft delete retention period. Keep in mind that key vaults created after September 1st 2019 have soft-delete enabled by default.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-258-KeyVaultRBAC

**Display name:** SLZ - 258 - Enable Role Based Access Control for Azure Key Vault

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID258/slz-258-enable-role-based-access-control-for-azure-key-vault.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID258/slz-258-enable-role-based-access-control-for-azure-key-vault.jsonc)

- **Category:** Key Vault
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Key Vaults
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Enable RBAC permission model across Key Vaults.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-259-KeyVaultPrivateEndpoint

**Display name:** SLZ - 259 - Ensure that Private Endpoints are Used for Azure Key Vault

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID259/slz-259-ensure-that-private-endpoints-are-used-for-azure-key-vault.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID259/slz-259-ensure-that-private-endpoints-are-used-for-azure-key-vault.jsonc)

- **Category:** Key Vault
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Target:** Key Vaults
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** This policy checks does network ACLs are set to DENY and does exists at least one Private Endpoint for KeyVault.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-260-KeyRotationEnabled

**Display name:** SLZ - 260 - Ensure Automatic Key Rotation is Enabled Within Azure Key Vault for the Supported Services 

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID260/slz-260-ensure-key-rotation-on-keys.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID260/slz-260-ensure-key-rotation-on-keys.jsonc)

- **Category:** Key Vault
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Key Vault keys
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Ensure Key Rotation is Enabled Within Azure Key Vault for keys.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-31.15-PostgreSQLSSLVersion

**Display name:** SLZ - 31.15 - PostgreSQL flexible servers should be running tls version 1.2 or newer

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.15-PostgreSQLSSLVersion.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.15-PostgreSQLSSLVersion.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL flexible servers in your environment which is running with tls version less than 1.2.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-31.9-AppGatewayTLS

**Display name:** SLZ - 31.9 - Application Gateway should be deployed with predefined Microsoft policy that is using latest tls version

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.9-AppGatewayTLS.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.9-AppGatewayTLS.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Application Gateways
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** This policy enables you to restrict that Application Gateways is always deployed with predefined Microsoft policy that is using latest tls version.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** TLS enforcement improves baseline security but can break old clients, agents, or integrations, including Entra Domain Services consumers if protocol support is assumed.

**Recommended action:** Validate client compatibility and use staged audit-to-deny rollout for services with legacy dependencies.

## SLZ-35.1-ArcSQLTDE

**Display name:** SLZ - 35.1 - Transparent Data Encryption must be enabled for Arc SQL managed instances.

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.1-ArcSQLTDE.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.1-ArcSQLTDE.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Microsoft.AzureArcData/sqlmanagedinstances
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Enable transparent data encryption (TDE) at-rest on an Azure Arc-enabled SQL Managed Instance. Learn more at https://aka.ms/EnableTDEArcSQLMI.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-35.2-AzureSynapseTDE

**Display name:** SLZ - 35.2 - Azure Synapse Analytics dedicated SQL pools should enable encryption

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.2-AzureSynapseTDE.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.2-AzureSynapseTDE.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`

**What it does:** Enable transparent data encryption for Azure Synapse Analytics dedicated SQL pools to protect data-at-rest and meet compliance requirements. Please note that enabling transparent data encryption for the pool may impact query performance. More details can refer to https://go.microsoft.com/fwlink/?linkid=2147714.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-872.13-DICOMServiceSNCEncryptionCMK

**Display name:** SLZ - 872.13 - DICOM Service should use a customer-managed key to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.13-DICOMServiceSNCEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.13-DICOMServiceSNCEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** Microsoft.HealthcareApis/workspaces/dicomservices
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use a customer-managed key to control the encryption at rest of the data stored in Azure Health Data Services DICOM Service when this is a regulatory or compliance requirement. Customer-managed keys also deliver double encryption by adding a second layer of encryption on top of the default one done with service-managed keys.

**Hub-spoke / identity fit:** Supports strong security baselines, but depends on reliable Key Vault, identity, certificate, and private endpoint operations across subscriptions.

**Potential issues (Medium):** CMK and Key Vault controls create dependencies on vault networking, key permissions, rotation windows, and recovery settings across subscriptions.

**Recommended action:** Standardize vault placement, private DNS, RBAC/access policy model, purge protection, and rotation ownership before enforcement.

## SLZ-872.27-PostgreSQLServersEncryptionCMK

**Display name:** SLZ - 872.27 - PostgreSQL servers should use customer-managed keys to encrypt data at rest (only SNC resources)

**Source:** [`Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.27-PostgreSQLServersEncryptionCMK.jsonc`](../../Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.27-PostgreSQLServersEncryptionCMK.jsonc)

- **Category:** Security
- **Mode:** `not specified`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Security
- **Key parameters:** `effect`, `tagName`, `tagValue`

**What it does:** Use customer-managed keys to manage the encryption at rest of your PostgreSQL servers. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you. You have full control and responsibility for the key lifecycle, including rotation and management.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.
