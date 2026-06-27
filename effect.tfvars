# Generated effect override template for snippet.tf.
# Only initiative assignment parameters whose names start with effect- are included.
# Keep each parameter in this shape: "parameter-name" = { value = ... }.
# Allowed/default comments come from the initiative first, then from referenced local custom policy definitions when the initiative omits them.

initiative_parameters = {
  # Initiative: C1-AzureLandingZoneCore
  # Source: Definitions/policySetDefinitions/C1/c1-AzureLandingZoneCore.jsonc
  "C1-AzureLandingZoneCore" = {
    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-AMA" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-189-BlobServiceStorageLogging" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-190-TableServiceStorageLogging" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-27-StorageAccountDiagnosticSettingsToWS" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists" (inferred from referenced policy definitions)
    # Possible values: ["AuditIfNotExists", "DeployIfNotExists", "Disabled"] (inferred common values from referenced policy definitions)
    "effect-C1-SLZ-51" = { value = "DeployIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-222-StorageAccountLogsCMK" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_AMA_DefaultPipeline_Arc" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_AMA_DefaultPipeline_DCRA_Arc" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_AMA_DefaultPipeline_VM" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployDefaultWorkspace" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployMicrosoftDefenderForSQLWindowsAgent_Arc" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployMicrosoftDefenderForSQLWindowsAgent_VM" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployWindowsAMA_Arc" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployWindowsAMA_VM" = { value = "DeployIfNotExists" }

    # Default: "Modify"
    # Possible values: ["Modify", "Disabled"]
    "effect-SLZ-MIToEnableGCforVMs" = { value = "Modify" }

  }

  # Initiative: C1-ManagedPolicies
  # Source: Definitions/policySetDefinitions/C1/c1-managed-policies.jsonc
  "C1-ManagedPolicies" = {
    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-C1-SLZ-149-NoCustomAdministratorRoles" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-C1-SLZ-171-SecurityContactEmailAdditionalAddress" = { value = "DeployIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-172-AlertsNotifySetToHigh" = { value = "AuditIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["AuditIfNotExists", "DeployIfNotExists", "Disabled"]
    "effect-C1-SLZ-198-AuditingRetentionGreater90days" = { value = "DeployIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-220" = { value = "AuditIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible" = { value = "Deny" }

  }

  # Initiative: SLZ-ALZ-PolicySet
  # Source: Definitions/policySetDefinitions/SLZ/SLZ-ALZ-PolicySet.jsonc
  "SLZ-ALZ-PolicySet" = {
    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-00-MicrosoftDefenderForContainer" = { value = "DeployIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-10.6-DisablePublicNetworkWebApps" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1325-WAFonAPGT" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1326-WAFSkuV2" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-1327-WAFonFrontDoor" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1328-WAFonFrontDoor-Detection" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1329-DisablePublicNetworkFunctionApps" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-1330-PrivateEndpointAPI" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disable"]
    "effect-SLZ-1331-DisablePublicAccessAPI" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1331.2-DisablePublicAccessAPIPE" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1332-APIAllowedSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1333-NoPublicIpOnNics" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1334-KubernetesInternalLB" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1335-NoPublicIpOnAKSNodePools" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1336-ContainerAppsNoPublicNA" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1337-ContainerAppDisableExternalNetworkAccess" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1338-WAFonAPGT-Detection" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1340-AppServiceLatestTLS" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1341-AppServiceSlotsLatestTLS" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1342-FunctionAppsLatestTLS" = { value = "AuditIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1343-FunctionAppSlotsLatestTLS" = { value = "DeployIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "DeployIfNotExists", "Disabled"]
    "effect-SLZ-1344-LogicAppsLatestTLS" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1345-RedisSecureConnections" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1346-FrontDoorTLS" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Deny", "Audit", "Disabled"]
    "effect-SLZ-1347-EventHubTLS" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-1348-StorageTLS" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1349-ADDomainServicesTLS" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1350-AzureCosmosTLS12" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1351-SQLManagedInstanceTLS12" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1352-ArcSQLManagedInstanceTLS12" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1353-SQLDatabaseTLS12" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-1354-PostgreSQLFLEXSSLVersion" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1355-MariaDBTLSVersion" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1356-SynapseSQLTLSVersion" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-1357-AzureKubernetesClustersKMS" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1358-AISNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1359-AutomationSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1360-BackupVaultSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1361-BatchSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1362-LoadTestingSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1363-RedisEnterpriseSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1364-CognitiveSearchSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-1365-ContainerInstanceSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1366-ContainerRegistrySNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1367-CosmosDBSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1368-AzureDataExplorerSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1369-AzureDataFactoriesSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-1371-EventHubNamespaceSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-1372-FluidRelaySNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1373-HDInsightSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-1374-HealthBotsSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-1375-HPCCacheSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1376-IoTHubSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1378-LogicAppsSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1379-AzureMLSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1380-AzureSynapseWorkspaceCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1381-OSAndDataDisksSNCEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-1384-ServiceBusPremiumEncryptionCMK" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1385-StorageAccountEncryptionScopesCMK" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-153-DefenderCloudPricingForServer" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-153-DefenderForEndpoint" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-154-DefenderCloudPricingForApplicationServices" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-156-DefenderCloudPricingForAzureSQLDB" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-157-DefenderCloudPricingForDBOnServers" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-158-DefenderCloudPricingForOpenDB" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-159-DefenderCloudPricingForStorage" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-161-DefenderCloudPricingForAzureCosmosDB" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-162-DefenderCloudPricingForKeyVault" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-164-DefenderCloudPricingForResourceManager" = { value = "DeployIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-165-MachinesAuditPeriodSystemUpdatesCheck" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-168-MicrosoftDefenderConfigureVMForVulnerability" = { value = "DeployIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-177-StorageAccountsSecureTransfer" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-178-StorageAccountsInfrastructureEncryption" = { value = "Deny" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-179-StorageAccountsExpirationReminder" = { value = "Audit" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-183-StorageAccountsPublicAccess" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-184-StorageAccountsDefaultNetworkAccessRule" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-185-StorageAccountsAllowAzureServices" = { value = "Deny" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-186-StorageAccountsPrivateEndpoints" = { value = "DeployIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Modify", "Deny", "Audit", "Disabled"]
    "effect-SLZ-187-StorageBlobsAndContainerSoftDelete" = { value = "Deny" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-193-SQLServerAuditing" = { value = "AuditIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-194-AzureSQLDBIngressFrom0000" = { value = "Deny" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-195-SQLServerTDEEncryptionWithCMK" = { value = "Audit" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-196-SQLServerAADAdminConfiguration" = { value = "Deny" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-197-SQLDatabaseDataEncryption" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-204-PostgresSQLFlexibleServerSSLConnection" = { value = "DeployIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-204-PostgresSQLServerSSLConnection" = { value = "Deny" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-205-PostgresSQLFlexibleServer_log_checkpoints" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-205-PostgresSQLServer_log_checkpoints" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-206-PostgresSQLServerLogConnections" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-207-PostgresSQLServerDisconnectionsLogging" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-208-PostgresSQLFlexibleServerConnectionThrottling" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-208-PostgresSQLServerConnectionThrottling" = { value = "DeployIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-210-PostgresSQLServerPublicNetworkAccess" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-212-MySQLSQLServerEnforceSSLConnection" = { value = "Deny" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "DeployIfNotExists", "Deny"]
    "effect-SLZ-213-MySQLLatestTLS" = { value = "AuditIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-214-MySQLSQLServer_audit_log_enabled" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-215-MySQLSQLServer_audit_log_events" = { value = "DeployIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-217-AzureCosmosDBPrivateLink" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-218-AzureCosmosDBLocalAuthenticationDisabled" = { value = "Deny" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-223-logsKeyVault" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-226-logsCreatePolicy" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-227-logsDeletePolicy" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-228-logsCreateUpdateNsg" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-229-logsDeleteNsg" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-230-logsCreateUpdateSecuritySolutions" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-231-logsDeleteSecuritySolutions" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-232-logsCreateUpdateSqlServerFirewallRule" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-233-logsDeleteSqlServerFirewallRule" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-234-logsCreateOrUpdatePublicIpRule" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-235-logsDeletePublicIpRule" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-236.1-webAppsNoInsights" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-236.2-functionAppsNoInsights" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-236.3-logicAppsNoInsights" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.1-ApimProdNoBasicSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.10-AKSProdNoFreeTier" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.11-LBProdNoBasicSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.12-VpnGwProdNoBasicTier" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.13-AzureSearchProdNoFreeOrBasicSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.14-SignalRProdNoFreeTier" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.2-AppConfigProdNoFreeSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.3-AppServiceProdNoLowTierSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.4-ADXProdNoDeveloperTier" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.5-DatabricksProdNoStandardOrTrialSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.6-DisksProdNoStandardHDD" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.7-ACRProdNoBasicSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.8-EventHubProdNoBasicSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.9-KeyVaultProdNoStandardSku" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-239-RPDAccessDisabledForInternet" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-240-SSHAccessDisabledForInternet" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-244-NetworkWatcherEnabled" = { value = "DeployIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-248-OSandDataDisksCMKEncryption" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-249-UnattachedDisksCMKEncryption" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-250-OnlyApprovedExtensions" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-254-KeyVaultKeysExpirationDateSet" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-256-KeyVaultSecretsExpirationDateSet" = { value = "Audit" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-257-KeyVaultRecoverable" = { value = "Deny" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-258-KeyVaultRBAC" = { value = "Deny" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-259-KeyVaultPrivateEndpoint" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-260-KeyRotationEnabled" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-261-AppServiceAuthentication" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-262-AppServiceHTTPtoHTTPSRedirection" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-265-AppServiceAADRegistration" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-267-AppServiceLatestPythonVersion" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-267-AppServiceSlotsLatestPythonVersion" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-268-AppServiceLatestJavaVersion" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-268-AppServiceSlotsLatestJavaVersion" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-269-AppServiceLatestHTTPVersion" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-269-AppServiceLatestHTTPVersionWebApp" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-269-AppServiceSlotsLatestHTTPVersion" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-270-AppServiceFTPDeployments" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-270-AppServiceFTPDeploymentsWebApp" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-270-AppServiceSlotsFTPDeployments" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-272-ResourceLockForMissionCriticalResources" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-287-IAMPermissionsThroughGroups" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-31.15-PostgreSQLSSLVersion" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-31.9-AppGatewayTLS" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-324-logsCreateSecurityGroups" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-324-logsDeleteSecurityGroup" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-326-logsCreateNetworkGateway" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-326-logsDeleteNetworkGateway" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsCreateRouteTables" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsCreateRouteTablesRoute" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsDeleteSecurityGroup" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsDeleteSecurityGroupRoute" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-328-logsCreateVirtualNetwork" = { value = "AuditIfNotExists" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-328-logsDeleteVirtualNetworks" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-332-NSGNoIngressFrom0000For22or3389" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-333-NSGNoIngressFrom0For22or3389" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-35.1-ArcSQLTDE" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-35.2-AzureSynapseTDE" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-604-CheckDataSensitivityTagsOnSubscriptions" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-617-OnlyAllowedGeoLocations" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["auditIfNotExists", "DeployIfNotExists", "Disabled"]
    "effect-SLZ-629-VirtualNetworksDDOSProtection" = { value = "DeployIfNotExists" }

    # Default: "Deny"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-78-AllowedDeploymentRegions" = { value = "Deny" }

    # Default: "Audit"
    # Possible values: ["Audit", "Disabled"]
    "effect-SLZ-872.13-DICOMServiceSNCEncryptionCMK" = { value = "Audit" }

    # Default: "AuditIfNotExists"
    # Possible values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-872.27-PostgreSQLServersEncryptionCMK" = { value = "AuditIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-878-CheckProjectTagOnSubscription" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny"]
    "effect-SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-CheckEnvironmentTagOnSubscription" = { value = "Audit" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-CheckOrganizationTagOnSubscription" = { value = "Audit" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForAzureKubernetesServiceClusters" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForLinuxAgentDeploy" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForLinuxHybridAgentDeploy" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForWindowsAgentDeploy" = { value = "DeployIfNotExists" }

    # Default: "DeployIfNotExists"
    # Possible values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForWindowsArcAgentDeploy" = { value = "DeployIfNotExists" }

    # Default: "Audit"
    # Possible values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-DenyPurviewAccounts" = { value = "Audit" }

  }

}
