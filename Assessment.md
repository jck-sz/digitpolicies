# Azure Policy Tenant Impact Assessment

This assessment covers every local Azure Policy definition under `Definitions/policyDefinitions`. It assumes the policies are used only for audit, reporting, and compliance checks. No assignment should create, update, delete, deny, or remediate resources in the tenant or subscriptions.

Total policy definitions assessed: **255**.

<details open>
<summary><h2>Index</h2></summary>


- `C1`
  - `General` (5)
    - `ID149`
      - [C1-SLZ-149-NoCustomAdministratorRoles](#policy-c1-slz-149-nocustomadministratorroles)
    - `ID198`
      - [C1-SLZ-198-AuditingRetentionGreater90days](#policy-c1-slz-198-auditingretentiongreater90days)
    - `ID220`
      - [C1-SLZ-220-AdministrativeActivityLogAlert](#policy-c1-slz-220-administrativeactivitylogalert)
      - [C1-SLZ-220-PolicyActivityLogAlert](#policy-c1-slz-220-policyactivitylogalert)
      - [C1-SLZ-220-SecurityActivityLogAlert](#policy-c1-slz-220-securityactivitylogalert)
  - `Monitoring` (35)
    - `ID051-SLZ-Monitor`
      - [C1-SLZ-51-AppGatewayDiagSettingsToWS](#policy-c1-slz-51-appgatewaydiagsettingstows)
      - [C1-SLZ-51-AppServiceDiagSettingsToWS](#policy-c1-slz-51-appservicediagsettingstows)
      - [C1-SLZ-51-AutomationAccountDiagSettingsToWS](#policy-c1-slz-51-automationaccountdiagsettingstows)
      - [C1-SLZ-51-AzureAPIManagementServiceDiagSettingsToWS](#policy-c1-slz-51-azureapimanagementservicediagsettingstows)
      - [C1-SLZ-51-AzureActivityLogsDiagSettingsToWS](#policy-c1-slz-51-azureactivitylogsdiagsettingstows)
      - [C1-SLZ-51-AzureAnalysisServiceDiagSettingsToWS](#policy-c1-slz-51-azureanalysisservicediagsettingstows)
      - [C1-SLZ-51-AzureBastionDiagSettingsToWS](#policy-c1-slz-51-azurebastiondiagsettingstows)
      - [C1-SLZ-51-AzureBatchDiagSettingsToWS](#policy-c1-slz-51-azurebatchdiagsettingstows)
      - [C1-SLZ-51-AzureCongitiveSearchDiagSettingsToWS](#policy-c1-slz-51-azurecongitivesearchdiagsettingstows)
      - [C1-SLZ-51-AzureCongitiveServicesDiagSettingsToWS](#policy-c1-slz-51-azurecongitiveservicesdiagsettingstows)
      - [C1-SLZ-51-AzureDatalakeAnalyticsDiagSettingsToWS](#policy-c1-slz-51-azuredatalakeanalyticsdiagsettingstows)
      - [C1-SLZ-51-AzureDatalakeStoreDiagSettingsToWS](#policy-c1-slz-51-azuredatalakestorediagsettingstows)
      - [C1-SLZ-51-AzureDirectoryDomainServicesDiagSettingsToWS](#policy-c1-slz-51-azuredirectorydomainservicesdiagsettingstows)
      - [C1-SLZ-51-AzureEventHubDiagSettingsToWS](#policy-c1-slz-51-azureeventhubdiagsettingstows)
      - [C1-SLZ-51-AzureFirewallDiagSettingsToWS](#policy-c1-slz-51-azurefirewalldiagsettingstows)
      - [C1-SLZ-51-AzureFunctionDiagSettingsToWS](#policy-c1-slz-51-azurefunctiondiagsettingstows)
      - [C1-SLZ-51-AzureIntegrationServicesiagSettingsToWS](#policy-c1-slz-51-azureintegrationservicesiagsettingstows)
      - [C1-SLZ-51-AzureKeyVaultDiagSettingsToWS](#policy-c1-slz-51-azurekeyvaultdiagsettingstows)
      - [C1-SLZ-51-AzureLoadBalancerDiagSettingsToWS](#policy-c1-slz-51-azureloadbalancerdiagsettingstows)
      - [C1-SLZ-51-AzureRecoveryServiceDiagSettingsToWS](#policy-c1-slz-51-azurerecoveryservicediagsettingstows)
      - [C1-SLZ-51-AzureSQLManagedInstanceDBDiagSettingsToWS](#policy-c1-slz-51-azuresqlmanagedinstancedbdiagsettingstows)
      - [C1-SLZ-51-AzureSQLManagedInstanceDiagSettingsToWS](#policy-c1-slz-51-azuresqlmanagedinstancediagsettingstows)
      - [C1-SLZ-51-AzureSQLServerDiagSettingsToWS](#policy-c1-slz-51-azuresqlserverdiagsettingstows)
      - [C1-SLZ-51-AzureStreamAnalyticsDiagSettingsToWS](#policy-c1-slz-51-azurestreamanalyticsdiagsettingstows)
      - [C1-SLZ-51-AzureVirtualNetworkDiagSettingsToWS](#policy-c1-slz-51-azurevirtualnetworkdiagsettingstows)
      - [C1-SLZ-51-CdnAndFrontdoorDiagSettingsToWS](#policy-c1-slz-51-cdnandfrontdoordiagsettingstows)
      - [C1-SLZ-51-IoTDiagSettingsToWS](#policy-c1-slz-51-iotdiagsettingstows)
      - [C1-SLZ-51-LogicAppWorkflowsDiagSettingsToWS](#policy-c1-slz-51-logicappworkflowsdiagsettingstows)
      - [C1-SLZ-51-NetworkFrontdoorDiagSettingsToWS](#policy-c1-slz-51-networkfrontdoordiagsettingstows)
      - [C1-SLZ-51-NetworkInterfaceDiagSettingsToWS](#policy-c1-slz-51-networkinterfacediagsettingstows)
      - [C1-SLZ-51-NetworkSecurityGroupsDiagSettingsToWS](#policy-c1-slz-51-networksecuritygroupsdiagsettingstows)
      - [C1-SLZ-51-PowerBIDedicatedCapacityDiagSettingsToWS](#policy-c1-slz-51-powerbidedicatedcapacitydiagsettingstows)
      - [C1-SLZ-51-PublicIPDiagSettingsToWS](#policy-c1-slz-51-publicipdiagsettingstows)
      - [C1-SLZ-51-ServiceBusNamespaceDiagSettingsToWS](#policy-c1-slz-51-servicebusnamespacediagsettingstows)
      - [C1-SLZ-51-StorageAccountsDiagSettingsToWS](#policy-c1-slz-51-storageaccountsdiagsettingstows)
  - `Security` (2)
    - `ID171`
      - [C1-SLZ-171-SecurityContactEmailAdditionalAddress](#policy-c1-slz-171-securitycontactemailadditionaladdress)
    - `ID172`
      - [C1-SLZ-172-AlertsNotifySetToHigh](#policy-c1-slz-172-alertsnotifysettohigh)
  - `Storage` (6)
    - `ID027`
      - [C1-SLZ-27-StorageAccountDiagnosticSettingsToWS](#policy-c1-slz-27-storageaccountdiagnosticsettingstows)
      - [DEPRECATED](#policy-deprecated)
    - `ID189`
      - [C1-SLZ-189-BlobServiceStorageLogging](#policy-c1-slz-189-blobservicestoragelogging)
    - `ID190`
      - [C1-SLZ-190-TableServiceStorageLogging](#policy-c1-slz-190-tableservicestoragelogging)
    - `ID221`
      - [C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible](#policy-c1-slz-221-activitylogresourcesnotpubliclyaccessible)
    - `ID222`
      - [C1-SLZ-222-StorageAccountLogsCMK](#policy-c1-slz-222-storageaccountlogscmk)
- `SLZ`
  - `Analytics` (1)
    - `ID00-NonID-Purview`
      - [SLZ-DenyPurviewAccounts](#policy-slz-denypurviewaccounts)
  - `Compute` (4)
    - `ID165`
      - [SLZ-165-MachinesAuditPeriodSystemUpdatesCheck](#policy-slz-165-machinesauditperiodsystemupdatescheck)
      - [SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck](#policy-slz-165-2-machinesconfigureperiodsystemupdatescheck)
      - [SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck](#policy-slz-165-2-1-machinesconfigureperiodsystemupdatescheck)
    - `ID250`
      - [SLZ-250-OnlyApprovedExtensions](#policy-slz-250-onlyapprovedextensions)
  - `Database` (21)
    - `ID193`
      - [SLZ-193-SQLServerAuditing](#policy-slz-193-sqlserverauditing)
    - `ID194`
      - [SLZ-194-AzureSQLDBIngressFrom0000](#policy-slz-194-azuresqldbingressfrom0000)
    - `ID195`
      - [SLZ-195-SQLServerTDEEncryptionWithCMK](#policy-slz-195-sqlservertdeencryptionwithcmk)
    - `ID196`
      - [SLZ-196-SQLServerAADAdminConfiguration](#policy-slz-196-sqlserveraadadminconfiguration)
    - `ID197`
      - [SLZ-197-SQLDatabaseDataEncryption](#policy-slz-197-sqldatabasedataencryption)
    - `ID204`
      - [SLZ-204-PostgresSQLFlexibleServerSSLConnection](#policy-slz-204-postgressqlflexibleserversslconnection)
      - [SLZ-204-PostgresSQLServerSSLConnection](#policy-slz-204-postgressqlserversslconnection)
    - `ID205`
      - [SLZ-205-PostgresSQLFlexibleServer_log_checkpoints](#policy-slz-205-postgressqlflexibleserver-log-checkpoints)
      - [SLZ-205-PostgresSQLServer_log_checkpoints](#policy-slz-205-postgressqlserver-log-checkpoints)
    - `ID206`
      - [SLZ-206-PostgresSQLServerLogConnections](#policy-slz-206-postgressqlserverlogconnections)
    - `ID207`
      - [SLZ-207-PostgresSQLServerDisconnectionsLogging](#policy-slz-207-postgressqlserverdisconnectionslogging)
    - `ID208`
      - [SLZ-208-PostgresSQLFlexibleServerConnectionThrottling](#policy-slz-208-postgressqlflexibleserverconnectionthrottling)
      - [SLZ-208-PostgresSQLServerConnectionThrottling](#policy-slz-208-postgressqlserverconnectionthrottling)
    - `ID210`
      - [SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess](#policy-slz-210-postgressqlflexibleserverpublicnetworkaccess)
      - [SLZ-210-PostgresSQLServerPublicNetworkAccess](#policy-slz-210-postgressqlserverpublicnetworkaccess)
    - `ID212`
      - [SLZ-212-MySQLSQLServerEnforceSSLConnection](#policy-slz-212-mysqlsqlserverenforcesslconnection)
    - `ID214`
      - [SLZ-214-MySQLSQLServer_audit_log_enabled](#policy-slz-214-mysqlsqlserver-audit-log-enabled)
    - `ID215`
      - [SLZ-215-MySQLSQLServer_audit_log_events](#policy-slz-215-mysqlsqlserver-audit-log-events)
    - `ID216`
      - [SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork](#policy-slz-216-azurecosmosdbfwlimitsforselectednetwork)
    - `ID217`
      - [SLZ-217-AzureCosmosDBPrivateLink](#policy-slz-217-azurecosmosdbprivatelink)
    - `ID218`
      - [SLZ-218-AzureCosmosDBLocalAuthenticationDisabled](#policy-slz-218-azurecosmosdblocalauthenticationdisabled)
  - `Defender` (13)
    - `ID1397`
      - [SLZ-1397-MicrosoftDefenderForCSPM](#policy-slz-1397-microsoftdefenderforcspm)
    - `ID153`
      - [SLZ-153-DefenderCloudPricingForServer](#policy-slz-153-defendercloudpricingforserver)
    - `ID153.2`
      - [SLZ-153-DefenderForEndpoint](#policy-slz-153-defenderforendpoint)
    - `ID154`
      - [SLZ-154-DefenderCloudPricingForApplicationServices](#policy-slz-154-defendercloudpricingforapplicationservices)
    - `ID156`
      - [SLZ-156-DefenderCloudPricingForAzureSQLDB](#policy-slz-156-defendercloudpricingforazuresqldb)
    - `ID157`
      - [SLZ-157-DefenderCloudPricingForDBOnServers](#policy-slz-157-defendercloudpricingfordbonservers)
    - `ID158`
      - [SLZ-158-DefenderCloudPricingForOpenDB](#policy-slz-158-defendercloudpricingforopendb)
    - `ID159`
      - [SLZ-159-DefenderCloudPricingForStorage](#policy-slz-159-defendercloudpricingforstorage)
    - `ID161`
      - [SLZ-161-DefenderCloudPricingForAzureCosmosDB](#policy-slz-161-defendercloudpricingforazurecosmosdb)
    - `ID162`
      - [SLZ-162-DefenderCloudPricingForKeyVault](#policy-slz-162-defendercloudpricingforkeyvault)
    - `ID164`
      - [SLZ-164-DefenderCloudPricingForResourceManager](#policy-slz-164-defendercloudpricingforresourcemanager)
    - `ID168`
      - [SLZ-168-MicrosoftDefenderConfigureVMForVulnerability](#policy-slz-168-microsoftdefenderconfigurevmforvulnerability)
    - `IDdefender`
      - [SLZ-00-MicrosoftDefenderForContainer](#policy-slz-00-microsoftdefenderforcontainer)
  - `General` (18)
    - `ID078`
      - [SLZ-78-AllowedDeploymentRegions](#policy-slz-78-alloweddeploymentregions)
    - `ID238`
      - [SLZ-238.1-ApimProdNoBasicSku](#policy-slz-238-1-apimprodnobasicsku)
      - [SLZ-238.10-AKSProdNoFreeTier](#policy-slz-238-10-aksprodnofreetier)
      - [SLZ-238.11-LBProdNoBasicSku](#policy-slz-238-11-lbprodnobasicsku)
      - [SLZ-238.12-VpnGwProdNoBasicTier](#policy-slz-238-12-vpngwprodnobasictier)
      - [SLZ-238.13-AzureSearchProdNoFreeOrBasicSku](#policy-slz-238-13-azuresearchprodnofreeorbasicsku)
      - [SLZ-238.14-SignalRProdNoFreeTier](#policy-slz-238-14-signalrprodnofreetier)
      - [SLZ-238.2-AppConfigProdNoFreeSku](#policy-slz-238-2-appconfigprodnofreesku)
      - [SLZ-238.3-AppServiceProdNoLowTierSku](#policy-slz-238-3-appserviceprodnolowtiersku)
      - [SLZ-238.4-ADXProdNoDeveloperTier](#policy-slz-238-4-adxprodnodevelopertier)
      - [SLZ-238.5-DatabricksProdNoStandardOrTrialSku](#policy-slz-238-5-databricksprodnostandardortrialsku)
      - [SLZ-238.6-DisksProdNoStandardHDD](#policy-slz-238-6-disksprodnostandardhdd)
      - [SLZ-238.7-ACRProdNoBasicSku](#policy-slz-238-7-acrprodnobasicsku)
      - [SLZ-238.8-EventHubProdNoBasicSku](#policy-slz-238-8-eventhubprodnobasicsku)
      - [SLZ-238.9-KeyVaultProdNoStandardSku](#policy-slz-238-9-keyvaultprodnostandardsku)
    - `ID272`
      - [SLZ-272-ResourceLockForMissionCriticalResources](#policy-slz-272-resourcelockformissioncriticalresources)
    - `ID287`
      - [SLZ-287-IAMPermissionsThroughGroups](#policy-slz-287-iampermissionsthroughgroups)
    - `ID617`
      - [SLZ-617-OnlyAllowedGeoLocations](#policy-slz-617-onlyallowedgeolocations)
  - `Guest-Configuration` (4)
    - `ID00-Guest-Config`
      - [331e8ea8-378a-410f-a2e5-ae22f38bb0da](#policy-331e8ea8-378a-410f-a2e5-ae22f38bb0da)
      - [385f5831-96d4-41db-9a3c-cd3af78aaae6](#policy-385f5831-96d4-41db-9a3c-cd3af78aaae6)
      - [3cf2ab00-13f1-4d0c-8971-2ac904541a7e](#policy-3cf2ab00-13f1-4d0c-8971-2ac904541a7e)
      - [497dff13-db2a-4c0f-8603-28fa3b331ab6](#policy-497dff13-db2a-4c0f-8603-28fa3b331ab6)
  - `Monitoring` (24)
    - `ID223`
      - [SLZ-223-logsKeyVault](#policy-slz-223-logskeyvault)
    - `ID226`
      - [SLZ-226-logsCreatePolicy](#policy-slz-226-logscreatepolicy)
    - `ID227`
      - [SLZ-227-logsDeletePolicy](#policy-slz-227-logsdeletepolicy)
    - `ID228`
      - [SLZ-228-logsCreateUpdateNsg](#policy-slz-228-logscreateupdatensg)
    - `ID229`
      - [SLZ-229-logsDeleteNsg](#policy-slz-229-logsdeletensg)
    - `ID230`
      - [SLZ-230-logsCreateUpdateSecuritySolutions](#policy-slz-230-logscreateupdatesecuritysolutions)
    - `ID231`
      - [SLZ-231-logsDeleteSecuritySolutions](#policy-slz-231-logsdeletesecuritysolutions)
    - `ID232`
      - [SLZ-232-logsCreateUpdateSqlServerFirewallRule](#policy-slz-232-logscreateupdatesqlserverfirewallrule)
    - `ID233`
      - [SLZ-233-logsDeleteSqlServerFirewallRule](#policy-slz-233-logsdeletesqlserverfirewallrule)
    - `ID234`
      - [SLZ-234-logsCreateOrUpdatePublicIpRule](#policy-slz-234-logscreateorupdatepubliciprule)
    - `ID235`
      - [SLZ-235-logsDeletePublicIpRule](#policy-slz-235-logsdeletepubliciprule)
    - `ID236`
      - [SLZ-236.1-webAppsNoInsights](#policy-slz-236-1-webappsnoinsights)
      - [SLZ-236.2-functionAppsNoInsights](#policy-slz-236-2-functionappsnoinsights)
      - [SLZ-236.3-logicAppsNoInsights](#policy-slz-236-3-logicappsnoinsights)
    - `ID324`
      - [SLZ-324-logsCreateSecurityGroups](#policy-slz-324-logscreatesecuritygroups)
      - [SLZ-324-logsDeleteSecurityGroup](#policy-slz-324-logsdeletesecuritygroup)
    - `ID326`
      - [SLZ-326-logsCreateNetworkGateway](#policy-slz-326-logscreatenetworkgateway)
      - [SLZ-326-logsDeleteNetworkGateway](#policy-slz-326-logsdeletenetworkgateway)
    - `ID327`
      - [SLZ-327-logsCreateRouteTables](#policy-slz-327-logscreateroutetables)
      - [SLZ-327-logsCreateRouteTablesRoute](#policy-slz-327-logscreateroutetablesroute)
      - [SLZ-327-logsDeleteSecurityGroup](#policy-slz-327-logsdeletesecuritygroup)
      - [SLZ-327-logsDeleteSecurityGroupRoute](#policy-slz-327-logsdeletesecuritygrouproute)
    - `ID328`
      - [SLZ-328-logsCreateVirtualNetwork](#policy-slz-328-logscreatevirtualnetwork)
      - [SLZ-328-logsDeleteVirtualNetworks](#policy-slz-328-logsdeletevirtualnetworks)
  - `Network` (36)
    - `ID10.6`
      - [SLZ-10.6-DisablePublicNetworkWebApps](#policy-slz-10-6-disablepublicnetworkwebapps)
    - `ID1325`
      - [SLZ-1325-WAFonAPGT](#policy-slz-1325-wafonapgt)
    - `ID1326`
      - [SLZ-1326-WAFSkuV2](#policy-slz-1326-wafskuv2)
    - `ID1327`
      - [SLZ-1327-WAFonFrontDoor](#policy-slz-1327-wafonfrontdoor)
    - `ID1328`
      - [SLZ-1328-WAFonFrontDoor-Detection](#policy-slz-1328-wafonfrontdoor-detection)
    - `ID1329`
      - [SLZ-1329-DisablePublicNetworkFunctionApps](#policy-slz-1329-disablepublicnetworkfunctionapps)
    - `ID1330`
      - [SLZ-1330-PrivateEndpointAPI](#policy-slz-1330-privateendpointapi)
    - `ID1331`
      - [SLZ-1331-DisablePublicAccessAPI](#policy-slz-1331-disablepublicaccessapi)
      - [SLZ-1331.2-DisablePublicAccessAPIPE](#policy-slz-1331-2-disablepublicaccessapipe)
    - `ID1332`
      - [SLZ-1332-APIAllowedSku](#policy-slz-1332-apiallowedsku)
    - `ID1333`
      - [SLZ-1333-NoPublicIpOnNics](#policy-slz-1333-nopubliciponnics)
    - `ID1334`
      - [SLZ-1334-KubernetesInternalLB](#policy-slz-1334-kubernetesinternallb)
    - `ID1335`
      - [SLZ-1335-NoPublicIpOnAKSNodePools](#policy-slz-1335-nopubliciponaksnodepools)
    - `ID1336`
      - [SLZ-1336-ContainerAppsNoPublicNA](#policy-slz-1336-containerappsnopublicna)
    - `ID1337`
      - [SLZ-1337-ContainerAppDisableExternalNetworkAccess](#policy-slz-1337-containerappdisableexternalnetworkaccess)
    - `ID1338`
      - [SLZ-1338-WAFonAPGT-Detection](#policy-slz-1338-wafonapgt-detection)
    - `ID239`
      - [SLZ-239-RPDAccessDisabledForInternet](#policy-slz-239-rpdaccessdisabledforinternet)
    - `ID240`
      - [SLZ-240-SSHAccessDisabledForInternet](#policy-slz-240-sshaccessdisabledforinternet)
    - `ID241`
      - [SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted](#policy-slz-241-udpaccessfrominternetevalutatedandrestricted)
    - `ID242`
      - [SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted](#policy-slz-242-httpsaccessfrominternetevalutatedandrestricted)
    - `ID244`
      - [SLZ-244-NetworkWatcherEnabled](#policy-slz-244-networkwatcherenabled)
    - `ID332`
      - [SLZ-332-NSGNoIngressFrom0000For22or3389](#policy-slz-332-nsgnoingressfrom0000for22or3389)
    - `ID333`
      - [SLZ-333-NSGNoIngressFrom0For22or3389](#policy-slz-333-nsgnoingressfrom0for22or3389)
    - `ID629`
      - [SLZ-629-VirtualNetworksDDOSProtection](#policy-slz-629-virtualnetworksddosprotection)
    - `ID983`
      - [SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted](#policy-slz-983-ftpaccessfrominternetevaluatedandrestricted)
    - `ID984`
      - [SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted](#policy-slz-984-mongodbaccessfrominternetevalutatedandrestricted)
    - `ID985`
      - [SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted](#policy-slz-985-cassandraaccessfrominternetevalutatedandrestricted)
    - `ID986`
      - [SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted](#policy-slz-986-elasticsearchaccessfrominternetevalutatedandrestricted)
    - `ID987`
      - [SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted](#policy-slz-987-kafkaaccessfrominternetevalutatedandrestricted)
    - `ID988`
      - [SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted](#policy-slz-988-memcachedaccessfrominternetevalutatedandrestricted)
    - `ID989`
      - [SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted](#policy-slz-989-mysqlaccessfrominternetevalutatedandrestricted)
    - `ID990`
      - [SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted](#policy-slz-990-oracleaccessfrominternetevalutatedandrestricted)
    - `ID991`
      - [SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted](#policy-slz-991-postgresaccessfrominternetevalutatedandrestricted)
    - `ID992`
      - [SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted](#policy-slz-992-redisaccessfrominternetevalutatedandrestricted)
    - `ID993`
      - [SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted](#policy-slz-993-winsqlserveraccessfrominternetevalutatedandrestricted)
    - `ID994`
      - [SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted](#policy-slz-994-telnetaccessfrominternetevalutatedandrestricted)
  - `Security` (57)
    - `ID1340`
      - [SLZ-1340-AppServiceLatestTLS](#policy-slz-1340-appservicelatesttls)
    - `ID1341`
      - [SLZ-1341-AppServiceSlotsLatestTLS](#policy-slz-1341-appserviceslotslatesttls)
    - `ID1342`
      - [SLZ-1342-FunctionAppsLatestTLS](#policy-slz-1342-functionappslatesttls)
    - `ID1343`
      - [SLZ-1343-FunctionAppSlotsLatestTLS](#policy-slz-1343-functionappslotslatesttls)
    - `ID1344`
      - [SLZ-1344-LogicAppsLatestTLS](#policy-slz-1344-logicappslatesttls)
    - `ID1345`
      - [SLZ-1345-RedisSecureConnections](#policy-slz-1345-redissecureconnections)
    - `ID1346`
      - [SLZ-1346-FrontDoorTLS](#policy-slz-1346-frontdoortls)
    - `ID1347`
      - [SLZ-1347-EventHubTLS](#policy-slz-1347-eventhubtls)
    - `ID1348`
      - [SLZ-1348-StorageTLS](#policy-slz-1348-storagetls)
    - `ID1349`
      - [SLZ-1349-ADDomainServicesTLS](#policy-slz-1349-addomainservicestls)
    - `ID1350`
      - [SLZ-1350-AzureCosmosTLS12](#policy-slz-1350-azurecosmostls12)
    - `ID1351`
      - [SLZ-1351-SQLManagedInstanceTLS12](#policy-slz-1351-sqlmanagedinstancetls12)
    - `ID1352`
      - [SLZ-1352-ArcSQLManagedInstanceTLS12](#policy-slz-1352-arcsqlmanagedinstancetls12)
    - `ID1353`
      - [SLZ-1353-SQLDatabaseTLS12](#policy-slz-1353-sqldatabasetls12)
    - `ID1354`
      - [SLZ-1354-PostgreSQLFLEXSSLVersion](#policy-slz-1354-postgresqlflexsslversion)
    - `ID1355`
      - [SLZ-1355-MariaDBTLSVersion](#policy-slz-1355-mariadbtlsversion)
    - `ID1356`
      - [SLZ-1356-SynapseSQLTLSVersion](#policy-slz-1356-synapsesqltlsversion)
    - `ID1357`
      - [SLZ-1357-AzureKubernetesClustersKMS](#policy-slz-1357-azurekubernetesclusterskms)
    - `ID1358`
      - [SLZ-1358-AISNCEncryptionCMK](#policy-slz-1358-aisncencryptioncmk)
    - `ID1359`
      - [SLZ-1359-AutomationSNCEncryptionCMK](#policy-slz-1359-automationsncencryptioncmk)
    - `ID1360`
      - [SLZ-1360-BackupVaultSNCEncryptionCMK](#policy-slz-1360-backupvaultsncencryptioncmk)
    - `ID1361`
      - [SLZ-1361-BatchSNCEncryptionCMK](#policy-slz-1361-batchsncencryptioncmk)
    - `ID1362`
      - [SLZ-1362-LoadTestingSNCEncryptionCMK](#policy-slz-1362-loadtestingsncencryptioncmk)
    - `ID1363`
      - [SLZ-1363-RedisEnterpriseSNCEncryptionCMK](#policy-slz-1363-redisenterprisesncencryptioncmk)
    - `ID1364`
      - [SLZ-1364-CognitiveSearchSNCEncryptionCMK](#policy-slz-1364-cognitivesearchsncencryptioncmk)
    - `ID1365`
      - [SLZ-1365-ContainerInstanceSNCEncryptionCMK](#policy-slz-1365-containerinstancesncencryptioncmk)
    - `ID1366`
      - [SLZ-1366-ContainerRegistrySNCEncryptionCMK](#policy-slz-1366-containerregistrysncencryptioncmk)
    - `ID1367`
      - [SLZ-1367-CosmosDBSNCEncryptionCMK](#policy-slz-1367-cosmosdbsncencryptioncmk)
    - `ID1368`
      - [SLZ-1368-AzureDataExplorerSNCEncryptionCMK](#policy-slz-1368-azuredataexplorersncencryptioncmk)
    - `ID1369`
      - [SLZ-1369-AzureDataFactoriesSNCEncryptionCMK](#policy-slz-1369-azuredatafactoriessncencryptioncmk)
    - `ID1370`
      - [SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK](#policy-slz-1370-elasticsanvolumegroupsncencryptioncmk)
    - `ID1371`
      - [SLZ-1371-EventHubNamespaceSNCEncryptionCMK](#policy-slz-1371-eventhubnamespacesncencryptioncmk)
    - `ID1372`
      - [SLZ-1372-FluidRelaySNCEncryptionCMK](#policy-slz-1372-fluidrelaysncencryptioncmk)
    - `ID1373`
      - [SLZ-1373-HDInsightSNCEncryptionCMK](#policy-slz-1373-hdinsightsncencryptioncmk)
    - `ID1374`
      - [SLZ-1374-HealthBotsSNCEncryptionCMK](#policy-slz-1374-healthbotssncencryptioncmk)
    - `ID1375`
      - [SLZ-1375-HPCCacheSNCEncryptionCMK](#policy-slz-1375-hpccachesncencryptioncmk)
    - `ID1376`
      - [SLZ-1376-IoTHubSNCEncryptionCMK](#policy-slz-1376-iothubsncencryptioncmk)
    - `ID1378`
      - [SLZ-1378-LogicAppsSNCEncryptionCMK](#policy-slz-1378-logicappssncencryptioncmk)
    - `ID1379`
      - [SLZ-1379-AzureMLSNCEncryptionCMK](#policy-slz-1379-azuremlsncencryptioncmk)
    - `ID1380`
      - [SLZ-1380-AzureSynapseWorkspaceCMK](#policy-slz-1380-azuresynapseworkspacecmk)
    - `ID1381`
      - [SLZ-1381-OSAndDataDisksSNCEncryptionCMK](#policy-slz-1381-osanddatadiskssncencryptioncmk)
    - `ID1382`
      - [SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK](#policy-slz-1382-postgresqlflexibleserversencryptioncmk)
    - `ID1384`
      - [SLZ-1384-ServiceBusPremiumEncryptionCMK](#policy-slz-1384-servicebuspremiumencryptioncmk)
    - `ID1385`
      - [SLZ-1385-StorageAccountEncryptionScopesCMK](#policy-slz-1385-storageaccountencryptionscopescmk)
    - `ID213`
      - [SLZ-213-MySQLLatestTLS](#policy-slz-213-mysqllatesttls)
    - `ID254`
      - [SLZ-254-KeyVaultKeysExpirationDateSet](#policy-slz-254-keyvaultkeysexpirationdateset)
    - `ID256`
      - [SLZ-256-KeyVaultSecretsExpirationDateSet](#policy-slz-256-keyvaultsecretsexpirationdateset)
    - `ID257`
      - [SLZ-257-KeyVaultRecoverable](#policy-slz-257-keyvaultrecoverable)
    - `ID258`
      - [SLZ-258-KeyVaultRBAC](#policy-slz-258-keyvaultrbac)
    - `ID259`
      - [SLZ-259-KeyVaultPrivateEndpoint](#policy-slz-259-keyvaultprivateendpoint)
    - `ID260`
      - [SLZ-260-KeyRotationEnabled](#policy-slz-260-keyrotationenabled)
    - `ID31`
      - [SLZ-31.15-PostgreSQLSSLVersion](#policy-slz-31-15-postgresqlsslversion)
      - [SLZ-31.9-AppGatewayTLS](#policy-slz-31-9-appgatewaytls)
    - `ID35`
      - [SLZ-35.1-ArcSQLTDE](#policy-slz-35-1-arcsqltde)
      - [SLZ-35.2-AzureSynapseTDE](#policy-slz-35-2-azuresynapsetde)
    - `ID872`
      - [SLZ-872.13-DICOMServiceSNCEncryptionCMK](#policy-slz-872-13-dicomservicesncencryptioncmk)
      - [SLZ-872.27-PostgreSQLServersEncryptionCMK](#policy-slz-872-27-postgresqlserversencryptioncmk)
  - `Storage` (10)
    - `ID177`
      - [SLZ-177-StorageAccountsSecureTransfer](#policy-slz-177-storageaccountssecuretransfer)
    - `ID178`
      - [SLZ-178-StorageAccountsInfrastructureEncryption](#policy-slz-178-storageaccountsinfrastructureencryption)
    - `ID179`
      - [SLZ-179-StorageAccountsExpirationReminder](#policy-slz-179-storageaccountsexpirationreminder)
    - `ID183`
      - [SLZ-183-StorageAccountsPublicAccess](#policy-slz-183-storageaccountspublicaccess)
    - `ID184`
      - [SLZ-184-StorageAccountsDefaultNetworkAccessRule](#policy-slz-184-storageaccountsdefaultnetworkaccessrule)
    - `ID185`
      - [SLZ-185-StorageAccountsAllowAzureServices](#policy-slz-185-storageaccountsallowazureservices)
    - `ID186`
      - [SLZ-186-StorageAccountsPrivateEndpoints](#policy-slz-186-storageaccountsprivateendpoints)
    - `ID187`
      - [SLZ-187-StorageBlobsAndContainerSoftDelete](#policy-slz-187-storageblobsandcontainersoftdelete)
    - `ID248`
      - [SLZ-248-OSandDataDisksCMKEncryption](#policy-slz-248-osanddatadiskscmkencryption)
    - `ID249`
      - [SLZ-249-UnattachedDisksCMKEncryption](#policy-slz-249-unattacheddiskscmkencryption)
  - `Tagging` (5)
    - `ID00-NonID-Tags`
      - [SLZ-604-CheckDataSensitivityTagsOnSubscriptions](#policy-slz-604-checkdatasensitivitytagsonsubscriptions)
      - [SLZ-878-CheckProjectTagOnSubscription](#policy-slz-878-checkprojecttagonsubscription)
      - [SLZ-CheckEnvironmentTagOnSubscription](#policy-slz-checkenvironmenttagonsubscription)
      - [SLZ-CheckOrganizationTagOnSubscription](#policy-slz-checkorganizationtagonsubscription)
      - [SLZ-TagInheritanceFromSub](#policy-slz-taginheritancefromsub)
  - `Web` (14)
    - `ID261`
      - [SLZ-261-AppServiceAuthentication](#policy-slz-261-appserviceauthentication)
    - `ID262`
      - [SLZ-262-AppServiceHTTPtoHTTPSRedirection](#policy-slz-262-appservicehttptohttpsredirection)
      - [SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection](#policy-slz-262-appserviceslotshttptohttpsredirection)
    - `ID265`
      - [SLZ-265-AppServiceAADRegistration](#policy-slz-265-appserviceaadregistration)
    - `ID267`
      - [SLZ-267-AppServiceLatestPythonVersion](#policy-slz-267-appservicelatestpythonversion)
      - [SLZ-267-AppServiceSlotsLatestPythonVersion](#policy-slz-267-appserviceslotslatestpythonversion)
    - `ID268`
      - [SLZ-268-AppServiceLatestJavaVersion](#policy-slz-268-appservicelatestjavaversion)
      - [SLZ-268-AppServiceSlotsLatestJavaVersion](#policy-slz-268-appserviceslotslatestjavaversion)
    - `ID269`
      - [SLZ-269-AppServiceLatestHTTPVersion](#policy-slz-269-appservicelatesthttpversion)
      - [SLZ-269-AppServiceLatestHTTPVersionWebApp](#policy-slz-269-appservicelatesthttpversionwebapp)
      - [SLZ-269-AppServiceSlotsLatestHTTPVersion](#policy-slz-269-appserviceslotslatesthttpversion)
    - `ID270`
      - [SLZ-270-AppServiceFTPDeployments](#policy-slz-270-appserviceftpdeployments)
      - [SLZ-270-AppServiceFTPDeploymentsWebApp](#policy-slz-270-appserviceftpdeploymentswebapp)
      - [SLZ-270-AppServiceSlotsFTPDeployments](#policy-slz-270-appserviceslotsftpdeployments)

</details>

<details open>
<summary><h2>Assessment</h2></summary>


<details open>
<summary><h3>C1</h3></summary>

<details open>
<summary><h4>General</h4></summary>

<a id="policy-c1-slz-149-nocustomadministratorroles"></a>
<details open>
<summary><h6>C1-SLZ-149-NoCustomAdministratorRoles</h6></summary>


- **Display name:** C1 - SLZ - 149 - Ensure That No Custom Administrator Roles Exists
- **Folder:** `C1/General/ID149`
- **Affected Azure resource types:** `Microsoft.Authorization/roleDefinitions`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks custom Role definitions in Azure and makes sure that the only custom roles match the allowed custom roles defined in the policy definition. In audit mode it will show which custom roles are not compliant, i.e. not in the list of allowed role names.

**How to align the environment:** Encode the checked setting for `Microsoft.Authorization/roleDefinitions` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `allowedCustomRolesNames` (default `11 values`; List of allowed custom roles (role ids) for subscription administrators).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-c1-slz-198-auditingretentiongreater90days"></a>
<details open>
<summary><h6>C1-SLZ-198-AuditingRetentionGreater90days</h6></summary>


- **Display name:** C1 - SLZ - 198 - Ensure that 'Auditing' Retention is 'greater than 90 days'
- **Folder:** `C1/General/ID198`
- **Affected Azure resource types:** `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`, `Microsoft.Resources/deployments`
- **Cost impact:** Yes - retained logs or deleted data consume billable storage.

**Breakdown of what the policy does:** The policy checks Azure SQL servers and Azure SQL server auditing settings and makes sure 'Auditing' Retention is 'greater than 90 days'. In audit mode it shows which Azure SQL servers and Azure SQL server auditing settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`, `Microsoft.Resources/deployments` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `retentionDays` (default `90`; The value in days of the retention period (0 indicates unlimited retention)); `storageAccountsResourceGroup` (default: none; Auditing writes database events to an audit log in your Azure Storage account (a storage account will be created in each region where a SQL Server is created that will be shared...).

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<details open>
<summary><h5>ID220</h5></summary>

<a id="policy-c1-slz-220-administrativeactivitylogalert"></a>
<details open>
<summary><h6>C1-SLZ-220-AdministrativeActivityLogAlert</h6></summary>


- **Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Administrative operations
- **Folder:** `C1/General/ID220`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for administrative operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for administrative operations. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationNameAdministrative` (default: none; allowed `Microsoft.Sql/servers/firewallRules/write`, `Microsoft.Sql/servers/firewallRules/delete`, `Microsoft.Network/networkSecurityGroups/write`, `Microsoft.Network/networkSecurityGroups/delete`, `Microsoft.ClassicNetwork/networkSecurityGroups/write`, `Microsoft.ClassicNetwork/networkSecurityGroups/delete`, `Microsoft.Network/networkSecurityGroups/securityRules/write`, `Microsoft.Network/networkSecurityGroups/securityRules/delete`, plus 2 more; Administrative Operation name for which activity log alert should be configured).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-c1-slz-220-policyactivitylogalert"></a>
<details open>
<summary><h6>C1-SLZ-220-PolicyActivityLogAlert</h6></summary>


- **Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Policy operations
- **Folder:** `C1/General/ID220`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for policy assignment create, update, or delete operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for policy assignment create, update, or delete operations. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationNamePolicy` (default: none; allowed `Microsoft.Authorization/policyAssignments/write`, `Microsoft.Authorization/policyAssignments/delete`; Policy Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-c1-slz-220-securityactivitylogalert"></a>
<details open>
<summary><h6>C1-SLZ-220-SecurityActivityLogAlert</h6></summary>


- **Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Security operations
- **Folder:** `C1/General/ID220`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for security operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for security operations. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationNameSecurity` (default: none; allowed `Microsoft.Security/policies/write`, `Microsoft.Security/securitySolutions/write`, `Microsoft.Security/securitySolutions/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

</details>

</details>

<details open>
<summary><h4>Monitoring</h4></summary>

<details open>
<summary><h5>ID051-SLZ-Monitor</h5></summary>

<a id="policy-c1-slz-51-azuredirectorydomainservicesdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureDirectoryDomainServicesDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Active Directory Domain Services to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.AAD/DomainServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AAD/DomainServices/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Microsoft Entra Domain Services instances and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Microsoft Entra Domain Services instances are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.AAD/DomainServices` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-automationaccountdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AutomationAccountDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Automation Account to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Automation/automationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Automation/automationAccounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Automation Accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Automation Accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Automation/automationAccounts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azureactivitylogsdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureActivityLogsDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Activity logs to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure subscriptions and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure subscriptions are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azureanalysisservicediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureAnalysisServiceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Analysis Services to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.AnalysisServices/servers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AnalysisServices/servers/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure Analysis Services servers and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure Analysis Services servers are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.AnalysisServices/servers` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azureapimanagementservicediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureAPIManagementServiceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure API Management Service to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ApiManagement/service/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks API Management services and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which API Management services are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.ApiManagement/service` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-appservicediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AppServiceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure App service to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which App Service apps are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Web/sites` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; Resource ID of the Log Analytics workspace); `policyName` (default `setByPolicy`; Policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-appgatewaydiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AppGatewayDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Application Gateway to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/applicationGateways/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Application Gateways and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Application Gateways are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/applicationGateways` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurebastiondiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureBastionDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Bastion to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/bastionHosts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/bastionHosts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure Bastion hosts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure Bastion hosts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/bastionHosts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurebatchdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureBatchDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Batch to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Batch/batchAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Batch/batchAccounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure Batch accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure Batch accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Batch/batchAccounts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurecongitivesearchdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureCongitiveSearchDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Cognitive Search to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Search/searchServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Search/searchServices/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure AI Search services and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure AI Search services are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Search/searchServices` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurecongitiveservicesdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureCongitiveServicesDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Cognitive Services to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.CognitiveServices/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.CognitiveServices/accounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure AI services accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure AI services accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.CognitiveServices/accounts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azuredatalakeanalyticsdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureDatalakeAnalyticsDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Datalake Analytics to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.DataLakeAnalytics/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeAnalytics/accounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Data Lake Analytics accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Data Lake Analytics accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.DataLakeAnalytics/accounts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azuredatalakestorediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureDatalakeStoreDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Datalake Store to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.DataLakeStore/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeStore/accounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Data Lake Store accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Data Lake Store accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.DataLakeStore/accounts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azureeventhubdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureEventHubDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Event Hub to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.EventHub/namespaces/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Event Hubs namespaces and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Event Hubs namespaces are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.EventHub/namespaces` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurefirewalldiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureFirewallDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Firewall to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/azurefirewalls`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/azurefirewalls/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure Firewalls and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure Firewalls are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/azurefirewalls` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurefunctiondiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureFunctionDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Function App to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which App Service apps are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Web/sites` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azureintegrationservicesiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureIntegrationServicesiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Integration Services to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Logic/integrationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/integrationAccounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks integration accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which integration accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Logic/integrationAccounts` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurekeyvaultdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureKeyVaultDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Key Vaults to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.KeyVault/vaults/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Key Vaults and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Key Vaults are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.KeyVault/vaults` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azureloadbalancerdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureLoadBalancerDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Loadbalancers to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/loadBalancers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/loadBalancers/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Load Balancers and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Load Balancers are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/loadBalancers` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurerecoveryservicediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureRecoveryServiceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Recovery Service to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.RecoveryServices/Vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.RecoveryServices/Vaults/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks vaults and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which vaults are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.RecoveryServices/Vaults` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azuresqlmanagedinstancedbdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureSQLManagedInstanceDBDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Managed Instance Database to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Sql/managedInstances/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/databases/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks databases and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which databases are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Sql/managedInstances/databases` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azuresqlmanagedinstancediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureSQLManagedInstanceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Managed Instance to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Sql/managedInstances`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure SQL Managed Instances and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure SQL Managed Instances are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Sql/managedInstances` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azuresqlserverdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureSQLServerDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Server to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Sql/servers/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/servers/databases/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Azure SQL databases and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Azure SQL databases are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Sql/servers/databases` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurestreamanalyticsdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureStreamAnalyticsDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Stream Analytics to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.StreamAnalytics/streamingjobs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.StreamAnalytics/streamingjobs/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks streamingjobs and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which streamingjobs are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.StreamAnalytics/streamingjobs` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-azurevirtualnetworkdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-AzureVirtualNetworkDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Virtual Network to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworkGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/virtualNetworkGateways/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks virtual network gateways and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which virtual network gateways are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/virtualNetworkGateways` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's storage account); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-cdnandfrontdoordiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-CdnAndFrontdoorDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Enable logging by category group for Front Door and CDN profiles (microsoft.cdn/profiles) to Log Analytics
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Insights/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks diagnostic settings and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which diagnostic settings are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each affected resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-iotdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-IoTDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for IoT (Internet of Things) Hub to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Devices/IotHubs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Devices/IotHubs/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks IoT Hubs and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which IoT Hubs are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Devices/IotHubs` resource in the subscription.

**Parameters or variables to specify or consider:** `policyName` (default `setByPolicy`; policy name); `workspaceId` (default `setByPolicy`; workspace id).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-logicappworkflowsdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-LogicAppWorkflowsDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Logic App Workflows to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Logic/workflows`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/workflows/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Logic Apps workflows and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Logic Apps workflows are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Logic/workflows` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-networkfrontdoordiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-NetworkFrontdoorDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Frontdoor to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/frontdoors`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/frontdoors/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks frontdoors and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which frontdoors are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/frontdoors` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-networkinterfacediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-NetworkInterfaceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Interface to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/networkInterfaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkInterfaces/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks network interfaces and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which network interfaces are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/networkInterfaces` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-networksecuritygroupsdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-NetworkSecurityGroupsDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Security Groups to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkSecurityGroups/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Network Security Groups and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Network Security Groups are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/networkSecurityGroups` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-powerbidedicatedcapacitydiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-PowerBIDedicatedCapacityDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for PowerBI Dedicated Capacity to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.PowerBIDedicated/capacities`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.PowerBIDedicated/capacities/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Power BI dedicated capacities and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Power BI dedicated capacities are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.PowerBIDedicated/capacities` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-publicipdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-PublicIPDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Public IP Address to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Network/publicIPAddresses`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/publicIPAddresses/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks public IP addresses and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which public IP addresses are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/publicIPAddresses` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-servicebusnamespacediagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-ServiceBusNamespaceDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Service Bus Namespace to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.ServiceBus/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ServiceBus/namespaces/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Service Bus namespaces and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Service Bus namespaces are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.ServiceBus/namespaces` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-51-storageaccountsdiagsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-51-StorageAccountsDiagSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Affected Azure resource types:** `Microsoft.Storage/workspaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/workspaces/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/tableServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks workspaces and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which workspaces are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Storage/workspaces` resource in the subscription.

**Parameters or variables to specify or consider:** `workspaceId` (default: none; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

</details>

</details>

<details open>
<summary><h4>Security</h4></summary>

<a id="policy-c1-slz-171-securitycontactemailadditionaladdress"></a>
<details open>
<summary><h6>C1-SLZ-171-SecurityContactEmailAdditionalAddress</h6></summary>


- **Display name:** C1 - SLZ - 171 - Ensure 'Additional email addresses' is Configured with a Security Contact Email
- **Folder:** `C1/Security/ID171`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/securityContacts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Microsoft Defender for Cloud security contact settings and makes sure 'Additional email addresses' is Configured with a Security Contact Email. In audit mode it shows which subscriptions do not have the required security contact or notification setting configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `emailSecurityContact` (default `ec-digit-csirc@ec.europa.eu`; Provide email addresses (semi-colon separated) for Defender for Cloud contact details); `minimalSeverity` (default `High`; allowed `High`, `Medium`, `Low`; Defines the minimal alert severity which will be sent as email notifications).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-c1-slz-172-alertsnotifysettohigh"></a>
<details open>
<summary><h6>C1-SLZ-172-AlertsNotifySetToHigh</h6></summary>


- **Display name:** C1 - SLZ - 172 - Ensure That 'Notify about alerts with the following severity' is Set to 'High'
- **Folder:** `C1/Security/ID172`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/securityContacts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Microsoft Defender for Cloud security contact settings and makes sure 'Notify about alerts with the following severity' is Set to 'High'. In audit mode it shows which subscriptions do not have the required security contact or notification setting configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

</details>

<details open>
<summary><h4>Storage</h4></summary>

<details open>
<summary><h5>ID027</h5></summary>

<a id="policy-c1-slz-27-storageaccountdiagnosticsettingstows"></a>
<details open>
<summary><h6>C1-SLZ-27-StorageAccountDiagnosticSettingsToWS</h6></summary>


- **Display name:** C1 - SLZ - 27 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace
- **Folder:** `C1/Storage/ID027`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Storage accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Storage/storageAccounts` resource in the subscription.

**Parameters or variables to specify or consider:** `profileName` (default `setbypolicy_logAnalytics`; The diagnostic settings profile name); `logAnalytics` (default: none; Select Log Analytics workspace from the dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permission...); `metricsEnabled` (default `True`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-deprecated"></a>
<details open>
<summary><h6>DEPRECATED</h6></summary>


- **Display name:** C1 - SLZ - 27 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace
- **Folder:** `C1/Storage/ID027`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Storage accounts are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Storage/storageAccounts` resource in the subscription.

**Parameters or variables to specify or consider:** `logAnalytics` (default: none; Select Log Analytics workspace from dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permissions (o...); `metricsEnabled` (default `False`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False); `profileName` (default `setbypolicy_logAnalytics`; The diagnostic settings profile name); `logsEnabled` (default `True`; allowed `True`, `False`; Whether to enable logs stream to the Log Analytics workspace - True or False).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

</details>

<a id="policy-c1-slz-189-blobservicestoragelogging"></a>
<details open>
<summary><h6>C1-SLZ-189-BlobServiceStorageLogging</h6></summary>


- **Display name:** C1 - SLZ - 189 - Ensure Storage Logging is Enabled for Blob Service for 'Read', 'Write', and 'Delete' Requests
- **Folder:** `C1/Storage/ID189`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/blobServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Storage blob services and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Storage blob services are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Storage/storageAccounts/blobServices` resource in the subscription.

**Parameters or variables to specify or consider:** `logAnalytics` (default: none; Select Log Analytics workspace from the dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permission...); `metricsEnabled` (default `False`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False); `profileName` (default `blobServicesDiagnosticsLogsToWorkspace`; The diagnostic settings profile name); `logsEnabled` (default `True`; allowed `True`, `False`; Whether to enable logs stream to the Log Analytics workspace - True or False).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-190-tableservicestoragelogging"></a>
<details open>
<summary><h6>C1-SLZ-190-TableServiceStorageLogging</h6></summary>


- **Display name:** C1 - SLZ - 190 - Ensure Storage Logging is Enabled for Table Service for 'Read', 'Write', and 'Delete' Requests
- **Folder:** `C1/Storage/ID190`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/tableServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Storage table services and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Storage table services are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Storage/storageAccounts/tableServices` resource in the subscription.

**Parameters or variables to specify or consider:** `logAnalytics` (default: none; Select Log Analytics workspace from the dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permission...); `metricsEnabled` (default `False`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False); `profileName` (default `tableServicesDiagnosticsLogsToWorkspace`; The diagnostic settings profile name); `logsEnabled` (default `True`; allowed `True`, `False`; Whether to enable logs stream to the Log Analytics workspace - True or False).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-221-activitylogresourcesnotpubliclyaccessible"></a>
<details open>
<summary><h6>C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible</h6></summary>


- **Display name:** C1 - SLZ - 221 - Ensure Activity Log Storage and LAW are not Publicly Accessible
- **Folder:** `C1/Storage/ID221`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.OperationalInsights/workspaces`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Storage accounts and workspaces and makes sure diagnostic logs and, where applicable, metrics are configured to be sent to the approved Log Analytics workspace. In audit mode it shows which Storage accounts and workspaces are missing the expected diagnostic settings or are sending them to the wrong workspace.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Storage/storageAccounts` resource in the subscription.

**Parameters or variables to specify or consider:** `targetStorageAccountName` (default: none; Name of the storage account that should not allow public access); `targetLogAnalyticsWorkspaceName` (default: none; Name of the Log Analytics workspace that should not allow public network access for ingestion and query).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-c1-slz-222-storageaccountlogscmk"></a>
<details open>
<summary><h6>C1-SLZ-222-StorageAccountLogsCMK</h6></summary>


- **Display name:** C1-SLZ - 222 - Ensure the storage account containing the container with activity logs is encrypted with Customer Managed Key
- **Folder:** `C1/Storage/ID222`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Keyvault`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Storage accounts and microsoft. keyvault and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Storage accounts and microsoft. keyvault are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Storage/storageAccounts`, `Microsoft.Keyvault` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `storageAccount` (default: none; Name Storage account).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

</details>

</details>

<details open>
<summary><h3>SLZ</h3></summary>

<a id="policy-slz-denypurviewaccounts"></a>
<details open>
<summary><h6>SLZ-DenyPurviewAccounts</h6></summary>


- **Display name:** SLZ - Deny purview accounts
- **Folder:** `SLZ/Analytics/ID00-NonID-Purview`
- **Affected Azure resource types:** `Microsoft.Purview/accounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Microsoft Purview account deployments and makes sure they follow the allowed landing-zone stance for Purview. In audit mode it shows which Purview accounts are present and therefore need review or an approved exception.

**How to align the environment:** Encode the checked setting for `Microsoft.Purview/accounts` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<details open>
<summary><h4>Compute</h4></summary>

<details open>
<summary><h5>ID165</h5></summary>

<a id="policy-slz-165-machinesauditperiodsystemupdatescheck"></a>
<details open>
<summary><h6>SLZ-165-MachinesAuditPeriodSystemUpdatesCheck</h6></summary>


- **Display name:** SLZ - 165 - Machines should be configured to periodically check for missing system updates
- **Folder:** `SLZ/Compute/ID165`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks virtual machines and makes sure they are configured to periodically check for missing system updates. In audit mode it shows which machines are not reporting the expected update-assessment configuration.

**How to align the environment:** Change production deployments of `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines` to use approved SKUs or tiers and keep non-production exceptions explicit.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires teams to select approved production SKUs in Terraform-managed deployments and budget for higher service tiers where needed.

</details>

<a id="policy-slz-165-2-1-machinesconfigureperiodsystemupdatescheck"></a>
<details open>
<summary><h6>SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck</h6></summary>


- **Display name:** SLZ - 165.2.1 - Configure periodic checking for missing system updates on azure LINUX virtual machines
- **Folder:** `SLZ/Compute/ID165`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which virtual machines still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** `assessmentMode` (default `AutomaticByPlatform`; allowed `ImageDefault`, `AutomaticByPlatform`; Assessment mode for the machines.); `osType` (default `Linux`; allowed `Windows`, `Linux`; OS type for the machines.); `locations` (default `[]`; The list of locations from which machines need to be targeted.); `tagValues` (default `object value`; The list of tags that need to matched for getting target machines.); `tagOperator` (default `Any`; allowed `All`, `Any`; Matching condition for resource tags).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-165-2-machinesconfigureperiodsystemupdatescheck"></a>
<details open>
<summary><h6>SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck</h6></summary>


- **Display name:** SLZ - 165.2.2 - Configure periodic checking for missing system updates on azure WINDOWS virtual machines
- **Folder:** `SLZ/Compute/ID165`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which virtual machines still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** `assessmentMode` (default `AutomaticByPlatform`; allowed `ImageDefault`, `AutomaticByPlatform`; Assessment mode for the machines.); `osType` (default `Windows`; allowed `Windows`, `Linux`; OS type for the machines.); `locations` (default `[]`; The list of locations from which machines need to be targeted.); `tagValues` (default `object value`; The list of tags that need to matched for getting target machines.); `tagOperator` (default `Any`; allowed `All`, `Any`; Matching condition for resource tags).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

</details>

<a id="policy-slz-250-onlyapprovedextensions"></a>
<details open>
<summary><h6>SLZ-250-OnlyApprovedExtensions</h6></summary>


- **Display name:** SLZ - 250 - Ensure that Only Approved Extensions Are Installed
- **Folder:** `SLZ/Compute/ID250`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines/extensions`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machine extensions and makes sure only extensions from the approved list are installed. In audit mode it shows which machines have extensions that are not on the approved list.

**How to align the environment:** Ensure VM identities, Guest Configuration extensions, package reachability, and update-assessment settings are present through VM baseline modules.

**Parameters or variables to specify or consider:** `approvedExtensions` (default `36 values`; The list of approved extension types that can be installed. Example: AzureDiskEncryption).

**Operational impact:** Requires VM identity, extension, outbound connectivity, and guest configuration package readiness, even when the policy is only reporting.

</details>

</details>

<details open>
<summary><h4>Database</h4></summary>

<a id="policy-slz-193-sqlserverauditing"></a>
<details open>
<summary><h6>SLZ-193-SQLServerAuditing</h6></summary>


- **Display name:** SLZ - 193 - Auditing on SQL server should be enabled
- **Folder:** `SLZ/Database/ID193`
- **Affected Azure resource types:** `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`
- **Cost impact:** Yes - audit logs require billable storage or Log Analytics ingestion.

**Breakdown of what the policy does:** The policy checks Azure SQL servers and Azure SQL server auditing settings and makes sure auditing on SQL server should be enabled. In audit mode it shows which Azure SQL servers and Azure SQL server auditing settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `setting` (default `enabled`; allowed `enabled`, `disabled`; Desired Auditing setting).

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<a id="policy-slz-194-azuresqldbingressfrom0000"></a>
<details open>
<summary><h6>SLZ-194-AzureSQLDBIngressFrom0000</h6></summary>


- **Display name:** SLZ - 194 - Ensure no Azure SQL Databases allow ingress from 0.0.0.0/0 (ANY IP)
- **Folder:** `SLZ/Database/ID194`
- **Affected Azure resource types:** `Microsoft.Sql/servers/firewallRules`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Azure SQL server firewall rules and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which Azure SQL server firewall rules are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.Sql/servers/firewallRules` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

<a id="policy-slz-195-sqlservertdeencryptionwithcmk"></a>
<details open>
<summary><h6>SLZ-195-SQLServerTDEEncryptionWithCMK</h6></summary>


- **Display name:** SLZ - 195 - Ensure SQL server's Transparent Data Encryption (TDE) protector is encrypted with Customer-managed key
- **Folder:** `SLZ/Database/ID195`
- **Affected Azure resource types:** `Microsoft.Sql/servers`, `Microsoft.Sql/servers/encryptionProtector`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure SQL servers and encryption protector and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure SQL servers and encryption protector are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Sql/servers`, `Microsoft.Sql/servers/encryptionProtector` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-196-sqlserveraadadminconfiguration"></a>
<details open>
<summary><h6>SLZ-196-SQLServerAADAdminConfiguration</h6></summary>


- **Display name:** SLZ - 196 - Ensure that Azure Active Directory Admin is Configured for SQL Servers
- **Folder:** `SLZ/Database/ID196`
- **Affected Azure resource types:** `Microsoft.Sql/servers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure SQL servers and makes sure azure Active Directory Admin is Configured for SQL Servers. In audit mode it shows which Azure SQL servers do not have that database setting configured as required.

**How to align the environment:** Ensure VM identities, Guest Configuration extensions, package reachability, and update-assessment settings are present through VM baseline modules.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires VM identity, extension, outbound connectivity, and guest configuration package readiness, even when the policy is only reporting.

</details>

<a id="policy-slz-197-sqldatabasedataencryption"></a>
<details open>
<summary><h6>SLZ-197-SQLDatabaseDataEncryption</h6></summary>


- **Display name:** SLZ - 197 - Ensure that 'Data encryption' is set to 'On' on a SQL Database
- **Folder:** `SLZ/Database/ID197`
- **Affected Azure resource types:** `Microsoft.Sql/servers/databases`, `Microsoft.Sql/servers/databases/transparentDataEncryption`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure SQL databases and Azure SQL database TDE settings and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure SQL databases and Azure SQL database TDE settings are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Sql/servers/databases`, `Microsoft.Sql/servers/databases/transparentDataEncryption` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<details open>
<summary><h5>ID204</h5></summary>

<a id="policy-slz-204-postgressqlflexibleserversslconnection"></a>
<details open>
<summary><h6>SLZ-204-PostgresSQLFlexibleServerSSLConnection</h6></summary>


- **Display name:** SLZ - 204 - Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server FLEXIBLE
- **Folder:** `SLZ/Database/ID204`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-204-postgressqlserversslconnection"></a>
<details open>
<summary><h6>SLZ-204-PostgresSQLServerSSLConnection</h6></summary>


- **Display name:** SLZ - 204 - Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server SINGLE
- **Folder:** `SLZ/Database/ID204`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Database for PostgreSQL single servers still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

</details>

<details open>
<summary><h5>ID205</h5></summary>

<a id="policy-slz-205-postgressqlflexibleserver-log-checkpoints"></a>
<details open>
<summary><h6>SLZ-205-PostgresSQLFlexibleServer_log_checkpoints</h6></summary>


- **Display name:** SLZ - 205 - Ensure Server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Flexible Server
- **Folder:** `SLZ/Database/ID205`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings and makes sure server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Flexible Server. In audit mode it shows which Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<a id="policy-slz-205-postgressqlserver-log-checkpoints"></a>
<details open>
<summary><h6>SLZ-205-PostgresSQLServer_log_checkpoints</h6></summary>


- **Display name:** SLZ - 205 - Ensure Server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Server
- **Folder:** `SLZ/Database/ID205`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings and makes sure server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Server. In audit mode it shows which Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

</details>

<a id="policy-slz-206-postgressqlserverlogconnections"></a>
<details open>
<summary><h6>SLZ-206-PostgresSQLServerLogConnections</h6></summary>


- **Display name:** SLZ - 206 - Log connections should be enabled for PostgreSQL database servers
- **Folder:** `SLZ/Database/ID206`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings and makes sure log connections should be enabled for PostgreSQL database servers. In audit mode it shows which Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<a id="policy-slz-207-postgressqlserverdisconnectionslogging"></a>
<details open>
<summary><h6>SLZ-207-PostgresSQLServerDisconnectionsLogging</h6></summary>


- **Display name:** SLZ - 207 - Disconnections should be logged for PostgreSQL database servers.
- **Folder:** `SLZ/Database/ID207`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings and makes sure disconnections should be logged for PostgreSQL database servers. In audit mode it shows which Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<details open>
<summary><h5>ID208</h5></summary>

<a id="policy-slz-208-postgressqlflexibleserverconnectionthrottling"></a>
<details open>
<summary><h6>SLZ-208-PostgresSQLFlexibleServerConnectionThrottling</h6></summary>


- **Display name:** SLZ - 208 - Connection throttling should be enabled for PostgreSQL database servers FLEXIBLE
- **Folder:** `SLZ/Database/ID208`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings and makes sure connection throttling should be enabled for PostgreSQL database servers FLEXIBLE. In audit mode it shows which Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<a id="policy-slz-208-postgressqlserverconnectionthrottling"></a>
<details open>
<summary><h6>SLZ-208-PostgresSQLServerConnectionThrottling</h6></summary>


- **Display name:** SLZ - 208 - Connection throttling should be enabled for PostgreSQL database servers
- **Folder:** `SLZ/Database/ID208`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings and makes sure connection throttling should be enabled for PostgreSQL database servers. In audit mode it shows which Azure Database for PostgreSQL single servers and PostgreSQL server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

</details>

<details open>
<summary><h5>ID210</h5></summary>

<a id="policy-slz-210-postgressqlflexibleserverpublicnetworkaccess"></a>
<details open>
<summary><h6>SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess</h6></summary>


- **Display name:** SLZ - 210 - Public network access should be disabled for PostgreSQL flexible servers
- **Folder:** `SLZ/Database/ID210`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which Azure Database for PostgreSQL flexible servers are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.DBforPostgreSQL/flexibleServers` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

<a id="policy-slz-210-postgressqlserverpublicnetworkaccess"></a>
<details open>
<summary><h6>SLZ-210-PostgresSQLServerPublicNetworkAccess</h6></summary>


- **Display name:** SLZ - 210 - Public network access should be disabled for PostgreSQL servers
- **Folder:** `SLZ/Database/ID210`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which Azure Database for PostgreSQL single servers are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.DBforPostgreSQL/servers` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

</details>

<a id="policy-slz-212-mysqlsqlserverenforcesslconnection"></a>
<details open>
<summary><h6>SLZ-212-MySQLSQLServerEnforceSSLConnection</h6></summary>


- **Display name:** SLZ - 212 - Ensure 'Enforce SSL connection' is set to 'Enabled' for Standard MySQL Database Server
- **Folder:** `SLZ/Database/ID212`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/servers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for MySQL servers and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Database for MySQL servers still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforMySQL/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-214-mysqlsqlserver-audit-log-enabled"></a>
<details open>
<summary><h6>SLZ-214-MySQLSQLServer_audit_log_enabled</h6></summary>


- **Display name:** SLZ - 214 - Ensure server parameter 'audit_log_enabled' is set to 'ON' for MySQL Database Server
- **Folder:** `SLZ/Database/ID214`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for MySQL flexible servers and MySQL flexible server configuration settings and makes sure server parameter 'audit_log_enabled' is set to 'ON' for MySQL Database Server. In audit mode it shows which Azure Database for MySQL flexible servers and MySQL flexible server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<a id="policy-slz-215-mysqlsqlserver-audit-log-events"></a>
<details open>
<summary><h6>SLZ-215-MySQLSQLServer_audit_log_events</h6></summary>


- **Display name:** SLZ - 215 - Ensure server parameter 'audit_log_events' has 'CONNECTION' set for MySQL Database Server
- **Folder:** `SLZ/Database/ID215`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for MySQL flexible servers and MySQL flexible server configuration settings and makes sure server parameter 'audit_log_events' has 'CONNECTION' set for MySQL Database Server. In audit mode it shows which Azure Database for MySQL flexible servers and MySQL flexible server configuration settings do not have that database setting configured as required.

**How to align the environment:** Update database modules for `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

</details>

<a id="policy-slz-216-azurecosmosdbfwlimitsforselectednetwork"></a>
<details open>
<summary><h6>SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork</h6></summary>


- **Display name:** SLZ - 216 - Ensure That 'Firewalls & Networks' Is Limited to use selected Networks Instead of All Networks
- **Folder:** `SLZ/Database/ID216`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Cosmos DB accounts and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which Azure Cosmos DB accounts still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.DocumentDB/databaseAccounts`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-217-azurecosmosdbprivatelink"></a>
<details open>
<summary><h6>SLZ-217-AzureCosmosDBPrivateLink</h6></summary>


- **Display name:** SLZ - 217 - CosmosDB accounts should use private link
- **Folder:** `SLZ/Database/ID217`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Azure Cosmos DB accounts and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which Azure Cosmos DB accounts are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.DocumentDB/databaseAccounts` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

<a id="policy-slz-218-azurecosmosdblocalauthenticationdisabled"></a>
<details open>
<summary><h6>SLZ-218-AzureCosmosDBLocalAuthenticationDisabled</h6></summary>


- **Display name:** SLZ - 218 - Cosmos DB database accounts should have local authentication methods disabled
- **Folder:** `SLZ/Database/ID218`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Cosmos DB accounts and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Cosmos DB accounts still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DocumentDB/databaseAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

</details>

<details open>
<summary><h4>Defender</h4></summary>

<a id="policy-slz-1397-microsoftdefenderforcspm"></a>
<details open>
<summary><h6>SLZ-1397-MicrosoftDefenderForCSPM</h6></summary>


- **Display name:** SLZ - 1397 - Configure Microsoft Defender for CSPM
- **Folder:** `SLZ/Defender/ID1397`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `isSensitiveDataDiscoveryEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Sensitive Data Discovery add-on feature); `isContainerRegistriesVulnerabilityAssessmentsEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Container Registries Vulnerability Assessments add-on feature); `isAgentlessDiscoveryForKubernetesEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Agentless Discovery for Kubernetes add-on feature); `isAgentlessVmScanningEnabled` (default `false`; allowed `true`, `false`; Enable or disable the Agentless VM Scanning add-on feature); `isEntraPermissionsManagementEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Permissions Management add-on feature).

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-153-defenderforendpoint"></a>
<details open>
<summary><h6>SLZ-153-DefenderForEndpoint</h6></summary>


- **Display name:** SLZ - 153 - Configure Microsoft Defender Endpoint Integration
- **Folder:** `SLZ/Defender/ID153.2`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/settings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-153-defendercloudpricingforserver"></a>
<details open>
<summary><h6>SLZ-153-DefenderCloudPricingForServer</h6></summary>


- **Display name:** SLZ - 153 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Servers
- **Folder:** `SLZ/Defender/ID153`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `subPlan` (default `P2`; allowed `P1`, `P2`; Select a Defender for Servers plan); `isAgentlessVmScanningEnabled` (default `false`; allowed `true`, `false`; Enable or disable the Agentless VM Scanning add-on feature); `isMdeDesignatedSubscriptionEnabled` (default `false`; allowed `true`, `false`; Enable or disable the MDE Designated Subscription add-on feature).

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-154-defendercloudpricingforapplicationservices"></a>
<details open>
<summary><h6>SLZ-154-DefenderCloudPricingForApplicationServices</h6></summary>


- **Display name:** SLZ - 154 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Application Services
- **Folder:** `SLZ/Defender/ID154`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-156-defendercloudpricingforazuresqldb"></a>
<details open>
<summary><h6>SLZ-156-DefenderCloudPricingForAzureSQLDB</h6></summary>


- **Display name:** SLZ - 156 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (Azure SQL Databases)
- **Folder:** `SLZ/Defender/ID156`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-157-defendercloudpricingfordbonservers"></a>
<details open>
<summary><h6>SLZ-157-DefenderCloudPricingForDBOnServers</h6></summary>


- **Display name:** SLZ - 157 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (SQL servers on machines)
- **Folder:** `SLZ/Defender/ID157`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-158-defendercloudpricingforopendb"></a>
<details open>
<summary><h6>SLZ-158-DefenderCloudPricingForOpenDB</h6></summary>


- **Display name:** SLZ - 158 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for OpenDB (Open-source relational db)
- **Folder:** `SLZ/Defender/ID158`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-159-defendercloudpricingforstorage"></a>
<details open>
<summary><h6>SLZ-159-DefenderCloudPricingForStorage</h6></summary>


- **Display name:** SLZ - 159 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Storage
- **Folder:** `SLZ/Defender/ID159`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-161-defendercloudpricingforazurecosmosdb"></a>
<details open>
<summary><h6>SLZ-161-DefenderCloudPricingForAzureCosmosDB</h6></summary>


- **Display name:** SLZ - 161 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (Azure Cosmos Db)
- **Folder:** `SLZ/Defender/ID161`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-162-defendercloudpricingforkeyvault"></a>
<details open>
<summary><h6>SLZ-162-DefenderCloudPricingForKeyVault</h6></summary>


- **Display name:** SLZ - 162 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Key Vaults
- **Folder:** `SLZ/Defender/ID162`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-164-defendercloudpricingforresourcemanager"></a>
<details open>
<summary><h6>SLZ-164-DefenderCloudPricingForResourceManager</h6></summary>


- **Display name:** SLZ - 164 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Resource Manager
- **Folder:** `SLZ/Defender/ID164`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-168-microsoftdefenderconfigurevmforvulnerability"></a>
<details open>
<summary><h6>SLZ-168-MicrosoftDefenderConfigureVMForVulnerability</h6></summary>


- **Display name:** SLZ - 168 - Configure machines to receive a vulnerability assessment provider
- **Folder:** `SLZ/Defender/ID168`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines`, `Microsoft.Security/assessments`, `Microsoft.Compute/virtualMachines/providers/serverVulnerabilityAssessments`, `Microsoft.HybridCompute/machines/providers/serverVulnerabilityAssessments`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `vaType` (default `mdeTvm`; allowed `default`, `mdeTvm`; Select the vulnerability assessment solution to provision to machines.).

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

<a id="policy-slz-00-microsoftdefenderforcontainer"></a>
<details open>
<summary><h6>SLZ-00-MicrosoftDefenderForContainer</h6></summary>


- **Display name:** SLZ - 00 - Configure Microsoft Defender for CONTAINERS
- **Folder:** `SLZ/Defender/IDdefender`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Cost impact:** Yes [High impact] - paid Microsoft Defender for Cloud plan or add-on.

**Breakdown of what the policy does:** The policy checks subscription-level Microsoft Defender for Cloud configuration and makes sure the required Defender plan, pricing tier, integration, or add-on is configured as expected. In audit mode it shows which subscriptions are missing the expected Defender configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `isContainerRegistriesVulnerabilityAssessmentsEnabled` (default `true`; allowed `true`, `false`; Controls the container registries vulnerability assessments add-on).

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

</details>

</details>

<details open>
<summary><h4>General</h4></summary>

<a id="policy-slz-78-alloweddeploymentregions"></a>
<details open>
<summary><h6>SLZ-78-AllowedDeploymentRegions</h6></summary>


- **Display name:** SLZ - 78 - Designate allowed resource deployment region
- **Folder:** `SLZ/General/ID078`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks where Azure resources are deployed and makes sure deployments stay within the allowed regions or geographies. In audit mode it shows which resources are outside the approved location list.

**How to align the environment:** Constrain deployment locations in Terraform and subscription vending processes to the approved region list, with documented exceptions for unavailable services.

**Parameters or variables to specify or consider:** `listOfAllowedLocations` (default: none; allowed `global`, `europe`, `northeurope`, `westeurope`, `francecentral`, `germanywestcentral`, `norwayeast`, `polandcentral`, plus 6 more; The list of locations that can be specified when deploying resources.).

**Operational impact:** Requires deployment pipelines to constrain locations and handle service-specific regional availability exceptions.

</details>

<details open>
<summary><h5>ID238</h5></summary>

<a id="policy-slz-238-1-apimprodnobasicsku"></a>
<details open>
<summary><h6>SLZ-238.1-ApimProdNoBasicSku</h6></summary>


- **Display name:** SLZ - 238.1 - Ensure API Management in PROD does not use Basic or Consumption SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-10-aksprodnofreetier"></a>
<details open>
<summary><h6>SLZ-238.10-AKSProdNoFreeTier</h6></summary>


- **Display name:** SLZ - 238.10 - Ensure AKS in PROD does not use Free tier
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-11-lbprodnobasicsku"></a>
<details open>
<summary><h6>SLZ-238.11-LBProdNoBasicSku</h6></summary>


- **Display name:** SLZ - 238.11 - Ensure Load Balancer in PROD does not use Basic SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Network/loadBalancers`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Network/loadBalancers` resource in the subscription.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-slz-238-12-vpngwprodnobasictier"></a>
<details open>
<summary><h6>SLZ-238.12-VpnGwProdNoBasicTier</h6></summary>


- **Display name:** SLZ - 238.12 - Ensure VPN Gateway in PROD does not use Basic tier
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworkGateways`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-13-azuresearchprodnofreeorbasicsku"></a>
<details open>
<summary><h6>SLZ-238.13-AzureSearchProdNoFreeOrBasicSku</h6></summary>


- **Display name:** SLZ - 238.13 - Ensure Azure Cognitive Search in PROD does not use Free or Basic SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Search/searchServices`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-14-signalrprodnofreetier"></a>
<details open>
<summary><h6>SLZ-238.14-SignalRProdNoFreeTier</h6></summary>


- **Display name:** SLZ - 238.14 - Ensure Azure SignalR in PROD does not use Free tier
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.SignalRService/SignalR`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-2-appconfigprodnofreesku"></a>
<details open>
<summary><h6>SLZ-238.2-AppConfigProdNoFreeSku</h6></summary>


- **Display name:** SLZ - 238.2 - Ensure App Configuration in PROD does not use Free SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.AppConfiguration/configurationStores`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-3-appserviceprodnolowtiersku"></a>
<details open>
<summary><h6>SLZ-238.3-AppServiceProdNoLowTierSku</h6></summary>


- **Display name:** SLZ - 238.3 - Ensure App Service Plan in PROD does not use Free, Shared, or Basic SKUs
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Web/serverfarms`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-4-adxprodnodevelopertier"></a>
<details open>
<summary><h6>SLZ-238.4-ADXProdNoDeveloperTier</h6></summary>


- **Display name:** SLZ - 238.4 - Ensure Azure Data Explorer in PROD does not use Developer Tier
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Kusto/clusters`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-5-databricksprodnostandardortrialsku"></a>
<details open>
<summary><h6>SLZ-238.5-DatabricksProdNoStandardOrTrialSku</h6></summary>


- **Display name:** SLZ - 238.5 - Ensure Azure Databricks in PROD does not use Standard or Trial SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Databricks/workspaces`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-6-disksprodnostandardhdd"></a>
<details open>
<summary><h6>SLZ-238.6-DisksProdNoStandardHDD</h6></summary>


- **Display name:** SLZ - 238.6 - Ensure Disks in PROD are not using Standard HDD (Standard_LRS)
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.Compute/disks`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-7-acrprodnobasicsku"></a>
<details open>
<summary><h6>SLZ-238.7-ACRProdNoBasicSku</h6></summary>


- **Display name:** SLZ - 238.7 - Ensure ACR in PROD does not use Basic SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.ContainerRegistry/registries`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-8-eventhubprodnobasicsku"></a>
<details open>
<summary><h6>SLZ-238.8-EventHubProdNoBasicSku</h6></summary>


- **Display name:** SLZ - 238.8 - Ensure Event Hubs in PROD do not use Basic SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-238-9-keyvaultprodnostandardsku"></a>
<details open>
<summary><h6>SLZ-238.9-KeyVaultProdNoStandardSku</h6></summary>


- **Display name:** SLZ - 238.9 - Ensure Key Vault in PROD does not use Standard SKU
- **Folder:** `SLZ/General/ID238`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

</details>

<a id="policy-slz-272-resourcelockformissioncriticalresources"></a>
<details open>
<summary><h6>SLZ-272-ResourceLockForMissionCriticalResources</h6></summary>


- **Display name:** SLZ - 272 - Ensure that Resource Locks are set for Mission-Critical
- **Folder:** `SLZ/General/ID272`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions/resourceGroups`, `Microsoft.Authorization/locks`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tagName` (default: none; The Tag name to audit against (i.e. Environment, CostCenter, etc.)); `tagValue` (default: none; Value of the tag to audit against (i.e. Prod/UAT/TEST, 12345, etc.)).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-287-iampermissionsthroughgroups"></a>
<details open>
<summary><h6>SLZ-287-IAMPermissionsThroughGroups</h6></summary>


- **Display name:** SLZ - 287 - Ensure IAM Users Receive Permissions Only Through Groups
- **Folder:** `SLZ/General/ID287`
- **Affected Azure resource types:** `Microsoft.Authorization/roleAssignments`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure role assignments and makes sure user access is granted through groups rather than unmanaged direct user assignments. In audit mode it shows which direct user assignments need review or migration to group-based access.

**How to align the environment:** Encode the checked setting for `Microsoft.Authorization/roleAssignments` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-617-onlyallowedgeolocations"></a>
<details open>
<summary><h6>SLZ-617-OnlyAllowedGeoLocations</h6></summary>


- **Display name:** SLZ - 617 - Only allowed geo locations
- **Folder:** `SLZ/General/ID617`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks where Azure resources are deployed and makes sure deployments stay within the allowed regions or geographies. In audit mode it shows which resources are outside the approved location list.

**How to align the environment:** Constrain deployment locations in Terraform and subscription vending processes to the approved region list, with documented exceptions for unavailable services.

**Parameters or variables to specify or consider:** `listOfAllowedLocations` (default `14 values`; The list of locations that can be specified when deploying resources.).

**Operational impact:** Requires deployment pipelines to constrain locations and handle service-specific regional availability exceptions.

</details>

</details>

<details open>
<summary><h4>Guest-Configuration</h4></summary>

<details open>
<summary><h5>ID00-Guest-Config</h5></summary>

<a id="policy-385f5831-96d4-41db-9a3c-cd3af78aaae6"></a>
<details open>
<summary><h6>385f5831-96d4-41db-9a3c-cd3af78aaae6</h6></summary>


- **Display name:** SLZ - 01 Guest Configuration - Guest Configuration assignments on Windows
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines, virtual machine extensions, Guest Configuration assignments, and related resources and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which virtual machines, virtual machine extensions, Guest Configuration assignments, and related resources still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-331e8ea8-378a-410f-a2e5-ae22f38bb0da"></a>
<details open>
<summary><h6>331e8ea8-378a-410f-a2e5-ae22f38bb0da</h6></summary>


- **Display name:** SLZ - 02 Guest Configuration - Guest Configuration assignments on Linux
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines, virtual machine extensions, Guest Configuration assignments, and related resources and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which virtual machines, virtual machine extensions, Guest Configuration assignments, and related resources still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-3cf2ab00-13f1-4d0c-8971-2ac904541a7e"></a>
<details open>
<summary><h6>3cf2ab00-13f1-4d0c-8971-2ac904541a7e</h6></summary>


- **Display name:** SLZ - 03 Guest Configuration - Add system-assigned on VMs with no identities
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which virtual machines still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-497dff13-db2a-4c0f-8603-28fa3b331ab6"></a>
<details open>
<summary><h6>497dff13-db2a-4c0f-8603-28fa3b331ab6</h6></summary>


- **Display name:** SLZ - 04 Guest Configuration - Add system-assigned on VMs with User-Assigned identities
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which virtual machines still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

</details>

</details>

<details open>
<summary><h4>Monitoring</h4></summary>

<a id="policy-slz-223-logskeyvault"></a>
<details open>
<summary><h6>SLZ-223-logsKeyVault</h6></summary>


- **Display name:** SLZ - 223 - Ensure that logging for Azure Key Vault is 'Enabled'
- **Folder:** `SLZ/Monitoring/ID223`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure logging for Azure Key Vault is 'Enabled'. In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.KeyVault/vaults` resource in the subscription.

**Parameters or variables to specify or consider:** `requiredRetentionDays` (default `365`; The required resource logs retention in days).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-slz-226-logscreatepolicy"></a>
<details open>
<summary><h6>SLZ-226-logsCreatePolicy</h6></summary>


- **Display name:** SLZ - 226 - Ensure that Activity Log Alert exists for Create Policy Assignment
- **Folder:** `SLZ/Monitoring/ID226`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Create Policy Assignment operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Create Policy Assignment operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Authorization/policyAssignments/write`; Policy Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-227-logsdeletepolicy"></a>
<details open>
<summary><h6>SLZ-227-logsDeletePolicy</h6></summary>


- **Display name:** SLZ - 227 - Ensure that Activity Log Alert exists for Delete Policy Assignment
- **Folder:** `SLZ/Monitoring/ID227`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Delete Policy Assignment operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Delete Policy Assignment operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Authorization/policyAssignments/delete`; Policy Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-228-logscreateupdatensg"></a>
<details open>
<summary><h6>SLZ-228-logsCreateUpdateNsg</h6></summary>


- **Display name:** SLZ - 228 - Ensure that Activity Log Alert exists for Create or Update Network Security Group
- **Folder:** `SLZ/Monitoring/ID228`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Create or Update Network Security Group operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Create or Update Network Security Group operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/networkSecurityGroups/write`; Administrative Operation name for which activity log alert should be configured).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-229-logsdeletensg"></a>
<details open>
<summary><h6>SLZ-229-logsDeleteNsg</h6></summary>


- **Display name:** SLZ - 229 - Ensure that Activity Log Alert exists for Delete Network Security Group
- **Folder:** `SLZ/Monitoring/ID229`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Delete Network Security Group operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Delete Network Security Group operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/networkSecurityGroups/delete`; Administrative Operation name for which activity log alert should be configured).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-230-logscreateupdatesecuritysolutions"></a>
<details open>
<summary><h6>SLZ-230-logsCreateUpdateSecuritySolutions</h6></summary>


- **Display name:** SLZ - 230 - Ensure that Activity Log Alert exists for Create or Update Security Solution
- **Folder:** `SLZ/Monitoring/ID230`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Create or Update Security Solution operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Create or Update Security Solution operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Security/securitySolutions/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-231-logsdeletesecuritysolutions"></a>
<details open>
<summary><h6>SLZ-231-logsDeleteSecuritySolutions</h6></summary>


- **Display name:** SLZ - 231 - Ensure that Activity Log Alert exists for Delete Security Solution
- **Folder:** `SLZ/Monitoring/ID231`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Delete Security Solution operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Delete Security Solution operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Security/securitySolutions/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-232-logscreateupdatesqlserverfirewallrule"></a>
<details open>
<summary><h6>SLZ-232-logsCreateUpdateSqlServerFirewallRule</h6></summary>


- **Display name:** SLZ - 232 - Ensure that Activity Log Alert exists for Create or Update SQL Server Firewall Rule
- **Folder:** `SLZ/Monitoring/ID232`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Create or Update SQL Server Firewall Rule operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Create or Update SQL Server Firewall Rule operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Sql/servers/firewallRules/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-233-logsdeletesqlserverfirewallrule"></a>
<details open>
<summary><h6>SLZ-233-logsDeleteSqlServerFirewallRule</h6></summary>


- **Display name:** SLZ - 233 - Ensure that Activity Log Alert exists for Delete SQL Server Firewall Rule
- **Folder:** `SLZ/Monitoring/ID233`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Delete SQL Server Firewall Rule operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Delete SQL Server Firewall Rule operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Sql/servers/firewallRules/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-234-logscreateorupdatepubliciprule"></a>
<details open>
<summary><h6>SLZ-234-logsCreateOrUpdatePublicIpRule</h6></summary>


- **Display name:** SLZ - 234 - Ensure that Activity Log Alert exists for Create or Update Public IP Address rule
- **Folder:** `SLZ/Monitoring/ID234`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Create or Update Public IP Address rule operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Create or Update Public IP Address rule operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/publicIPAddresses/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-235-logsdeletepubliciprule"></a>
<details open>
<summary><h6>SLZ-235-logsDeletePublicIpRule</h6></summary>


- **Display name:** SLZ - 235 - Ensure that Activity Log Alert exists for Delete Public IP Address rule
- **Folder:** `SLZ/Monitoring/ID235`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for the Delete Public IP Address rule operation. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the Delete Public IP Address rule operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/publicIPAddresses/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<details open>
<summary><h5>ID236</h5></summary>

<a id="policy-slz-236-1-webappsnoinsights"></a>
<details open>
<summary><h6>SLZ-236.1-webAppsNoInsights</h6></summary>


- **Display name:** SLZ - 236.1 - Audit Web Apps without Application Insights
- **Folder:** `SLZ/Monitoring/ID236`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure web Apps without Application Insights. In audit mode it shows which App Service apps are not compliant with that requirement.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Web/sites` resource in the subscription.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-slz-236-2-functionappsnoinsights"></a>
<details open>
<summary><h6>SLZ-236.2-functionAppsNoInsights</h6></summary>


- **Display name:** SLZ - 236.2 - Audit Function Apps without Application Insights
- **Folder:** `SLZ/Monitoring/ID236`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure function Apps without Application Insights. In audit mode it shows which App Service apps are not compliant with that requirement.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Web/sites` resource in the subscription.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-slz-236-3-logicappsnoinsights"></a>
<details open>
<summary><h6>SLZ-236.3-logicAppsNoInsights</h6></summary>


- **Display name:** SLZ - 236.3 - Audit Logic Apps without Application Insights
- **Folder:** `SLZ/Monitoring/ID236`
- **Affected Azure resource types:** `Microsoft.Logic/workflows`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks Logic Apps workflows and makes sure logic Apps without Application Insights. In audit mode it shows which Logic Apps workflows are not compliant with that requirement.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.Logic/workflows` resource in the subscription.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires a known Log Analytics workspace.

</details>

</details>

<details open>
<summary><h5>ID324</h5></summary>

<a id="policy-slz-324-logscreatesecuritygroups"></a>
<details open>
<summary><h6>SLZ-324-logsCreateSecurityGroups</h6></summary>


- **Display name:** SLZ - 324 - Ensure a log metric filter and alarm exist for Create security group changes
- **Folder:** `SLZ/Monitoring/ID324`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/networkSecurityGroups/securityRules/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-324-logsdeletesecuritygroup"></a>
<details open>
<summary><h6>SLZ-324-logsDeleteSecurityGroup</h6></summary>


- **Display name:** SLZ - 324 - Ensure a log metric filter and alarm exist for Delete security group changes
- **Folder:** `SLZ/Monitoring/ID324`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/networkSecurityGroups/securityRules/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

</details>

<details open>
<summary><h5>ID326</h5></summary>

<a id="policy-slz-326-logscreatenetworkgateway"></a>
<details open>
<summary><h6>SLZ-326-logsCreateNetworkGateway</h6></summary>


- **Display name:** SLZ - 326 - Ensure a log metric filter and alarm exist for Create Network Gateway
- **Folder:** `SLZ/Monitoring/ID326`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/virtualNetworkGateways/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-326-logsdeletenetworkgateway"></a>
<details open>
<summary><h6>SLZ-326-logsDeleteNetworkGateway</h6></summary>


- **Display name:** SLZ - 326 - Ensure a log metric filter and alarm exist for Delete Network Gateway
- **Folder:** `SLZ/Monitoring/ID326`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/virtualNetworkGateways/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

</details>

<details open>
<summary><h5>ID327</h5></summary>

<a id="policy-slz-327-logscreateroutetables"></a>
<details open>
<summary><h6>SLZ-327-logsCreateRouteTables</h6></summary>


- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Create Route Tables
- **Folder:** `SLZ/Monitoring/ID327`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/routeTables/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-327-logscreateroutetablesroute"></a>
<details open>
<summary><h6>SLZ-327-logsCreateRouteTablesRoute</h6></summary>


- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Create Route Tables Route
- **Folder:** `SLZ/Monitoring/ID327`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/routeTables/routes/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-327-logsdeletesecuritygroup"></a>
<details open>
<summary><h6>SLZ-327-logsDeleteSecurityGroup</h6></summary>


- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Delete Route Tables
- **Folder:** `SLZ/Monitoring/ID327`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/routeTables/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-327-logsdeletesecuritygrouproute"></a>
<details open>
<summary><h6>SLZ-327-logsDeleteSecurityGroupRoute</h6></summary>


- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Delete Route Tables Route
- **Folder:** `SLZ/Monitoring/ID327`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/routeTables/routes/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

</details>

<details open>
<summary><h5>ID328</h5></summary>

<a id="policy-slz-328-logscreatevirtualnetwork"></a>
<details open>
<summary><h6>SLZ-328-logsCreateVirtualNetwork</h6></summary>


- **Display name:** SLZ - 328 - Ensure a log metric filter and alarm exist for Create Virtual Networks
- **Folder:** `SLZ/Monitoring/ID328`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/virtualNetworks/write`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

<a id="policy-slz-328-logsdeletevirtualnetworks"></a>
<details open>
<summary><h6>SLZ-328-logsDeleteVirtualNetworks</h6></summary>


- **Display name:** SLZ - 328 - Ensure a log metric filter and alarm exist for Delete Virtual Networks
- **Folder:** `SLZ/Monitoring/ID328`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Cost impact:** Yes - Azure Monitor activity log alert rules and action processing.

**Breakdown of what the policy does:** The policy checks each subscription and makes sure an Azure Monitor activity log alert exists for important Azure Policy operations. In audit mode it shows which subscriptions do not have the expected alert rule configured.

**How to align the environment:** Create an Azure Monitor activity log alert in each in-scope subscription for the the configured operation. The alert can be created manually or managed with Terraform; make sure it is enabled, filters the intended operation name, and routes to the correct action group or incident process.

**Parameters or variables to specify or consider:** `operationName` (default: none; allowed `Microsoft.Network/virtualNetworks/delete`; Security Operation name for which activity log alert should exist).

**Operational impact:** Requires ownership of the alert rule and action group routing. The practical impact is operational rather than technical: someone must receive, triage, and periodically test the alert.

</details>

</details>

</details>

<details open>
<summary><h4>Network</h4></summary>

<a id="policy-slz-10-6-disablepublicnetworkwebapps"></a>
<details open>
<summary><h6>SLZ-10.6-DisablePublicNetworkWebApps</h6></summary>


- **Display name:** SLZ - 10.6 - Public Network Access Control for Web Apps
- **Folder:** `SLZ/Network/ID10.6`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Cost impact:** Yes - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which App Service apps still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.Web/sites`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-1325-wafonapgt"></a>
<details open>
<summary><h6>SLZ-1325-WAFonAPGT</h6></summary>


- **Display name:** SLZ - 1325 - Web Application Firewall (WAF) Must Be Enabled on Application Gateways
- **Folder:** `SLZ/Network/ID1325`
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`
- **Cost impact:** Yes [High impact] - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks Application Gateways and makes sure Web Application Firewall protection is enabled with an approved WAF-capable configuration. In audit mode it shows which Application Gateways do not have the required WAF protection.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

</details>

<a id="policy-slz-1326-wafskuv2"></a>
<details open>
<summary><h6>SLZ-1326-WAFSkuV2</h6></summary>


- **Display name:** SLZ - 1326 - Application Gateway Must Use WAF_v2 SKU
- **Folder:** `SLZ/Network/ID1326`
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`
- **Cost impact:** Yes [High impact] - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks Application Gateways and makes sure Web Application Firewall protection is enabled with an approved WAF-capable configuration. In audit mode it shows which Application Gateways do not have the required WAF protection.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

</details>

<a id="policy-slz-1327-wafonfrontdoor"></a>
<details open>
<summary><h6>SLZ-1327-WAFonFrontDoor</h6></summary>


- **Display name:** SLZ - 1327 - Azure CDN profiles of type Front Door should have a Web Application Firewall configured
- **Folder:** `SLZ/Network/ID1327`
- **Affected Azure resource types:** `Microsoft.Cdn/profiles`, `Microsoft.Cdn/profiles/securityPolicies`
- **Cost impact:** Yes [High impact] - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks profiles and security policies and makes sure Web Application Firewall protection is enabled with an approved WAF-capable configuration. In audit mode it shows which profiles and security policies do not have the required WAF protection.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

</details>

<a id="policy-slz-1328-wafonfrontdoor-detection"></a>
<details open>
<summary><h6>SLZ-1328-WAFonFrontDoor-Detection</h6></summary>


- **Display name:** SLZ - 1328 - Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service
- **Folder:** `SLZ/Network/ID1328`
- **Affected Azure resource types:** `Microsoft.Network/frontdoorwebapplicationfirewallpolicies`
- **Cost impact:** Yes [High impact] - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks frontdoorwebapplicationfirewallpolicies and makes sure Web Application Firewall protection is enabled with an approved WAF-capable configuration. In audit mode it shows which frontdoorwebapplicationfirewallpolicies do not have the required WAF protection.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `modeRequirement` (default `Detection`; allowed `Prevention`, `Detection`; Mode required for all WAF policies).

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

</details>

<a id="policy-slz-1329-disablepublicnetworkfunctionapps"></a>
<details open>
<summary><h6>SLZ-1329-DisablePublicNetworkFunctionApps</h6></summary>


- **Display name:** SLZ - 1329 - Public Network Access Control for Function Apps
- **Folder:** `SLZ/Network/ID1329`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Cost impact:** Yes - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which App Service apps still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.Web/sites`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-1330-privateendpointapi"></a>
<details open>
<summary><h6>SLZ-1330-PrivateEndpointAPI</h6></summary>


- **Display name:** SLZ - 1330 - Ensure Private Endpoint for Azure API Management Services
- **Folder:** `SLZ/Network/ID1330`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks API Management services and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which API Management services are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.ApiManagement/service` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

<details open>
<summary><h5>ID1331</h5></summary>

<a id="policy-slz-1331-disablepublicaccessapi"></a>
<details open>
<summary><h6>SLZ-1331-DisablePublicAccessAPI</h6></summary>


- **Display name:** SLZ - 1331 - Ensure Public network access must be Disabled
- **Folder:** `SLZ/Network/ID1331`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks API Management services and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which API Management services still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.ApiManagement/service`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-1331-2-disablepublicaccessapipe"></a>
<details open>
<summary><h6>SLZ-1331.2-DisablePublicAccessAPIPE</h6></summary>


- **Display name:** SLZ - 1331.2 - Ensure Public network access must be Disabled for API management with Private Endpoints
- **Folder:** `SLZ/Network/ID1331`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks API Management services and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which API Management services are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.ApiManagement/service` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

</details>

<a id="policy-slz-1332-apiallowedsku"></a>
<details open>
<summary><h6>SLZ-1332-APIAllowedSku</h6></summary>


- **Display name:** SLZ - 1332 - Enforce Allowed SKUs for Azure API Management Service
- **Folder:** `SLZ/Network/ID1332`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks API Management services and makes sure production or in-scope deployments do not use disallowed low, free, basic, trial, developer, or otherwise unsuitable SKUs. In audit mode it shows which API Management services are using a SKU or tier that does not meet the policy.

**How to align the environment:** Change production deployments of `Microsoft.ApiManagement/service` to use approved SKUs or tiers and keep non-production exceptions explicit.

**Parameters or variables to specify or consider:** `listOfAllowedSKUs` (default `["Developer", "Premium", "Isolated", "Standard", "Basic"]`; allowed `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium`, `Isolated`, `Consumption`; The list of SKUs permitted for Azure API Management service.).

**Operational impact:** Requires teams to select approved production SKUs in Terraform-managed deployments and budget for higher service tiers where needed.

</details>

<a id="policy-slz-1333-nopubliciponnics"></a>
<details open>
<summary><h6>SLZ-1333-NoPublicIpOnNics</h6></summary>


- **Display name:** SLZ - 1333 - Network Interfaces Should Not Have Public IPs
- **Folder:** `SLZ/Network/ID1333`
- **Affected Azure resource types:** `Microsoft.Network/networkInterfaces`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks network interfaces and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which network interfaces still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkInterfaces`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-1334-kubernetesinternallb"></a>
<details open>
<summary><h6>SLZ-1334-KubernetesInternalLB</h6></summary>


- **Display name:** SLZ - 1334 - Kubernetes Clusters Should Use Internal Load Balancers
- **Folder:** `SLZ/Network/ID1334`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Kubernetes Service clusters and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Kubernetes Service clusters still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.ContainerService/managedClusters` in the resource deployment module.

**Parameters or variables to specify or consider:** `source` (default `Original`; allowed `All`, `Generated`, `Original`; The source k8s object for constraint evaluation. 'Original' means evaluate only the GroupVersionKind specified. 'Generated' means evaluate only Gatekeeper ExpansionTemplates. 'A...); `warn` (default `False`; Whether or not to return warnings back to the user in the kubectl CLI.); `excludedNamespaces` (default `["kube-system", "gatekeeper-system", "azure-arc", "azure-extensions-usage-system"]`; List of namespaces to exclude from policy evaluation. System namespaces 'kube-system', 'gatekeeper-system', and 'azure-arc' are always excluded by design.); `namespaces` (default `[]`; List of namespaces to include in the policy evaluation. An empty list means all namespaces are included.); `labelSelector` (default `object value`; Label query to select Kubernetes resources for policy evaluation. An empty selector matches all resources.).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1335-nopubliciponaksnodepools"></a>
<details open>
<summary><h6>SLZ-1335-NoPublicIpOnAKSNodePools</h6></summary>


- **Display name:** SLZ - 1335 - Prevent Public IP on AKS Node Pools
- **Folder:** `SLZ/Network/ID1335`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Kubernetes Service clusters and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which Azure Kubernetes Service clusters still allow public access and need review.

**How to align the environment:** Encode the checked setting for `Microsoft.ContainerService/managedClusters` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-1336-containerappsnopublicna"></a>
<details open>
<summary><h6>SLZ-1336-ContainerAppsNoPublicNA</h6></summary>


- **Display name:** SLZ - 1336 - Container Apps Environment Should Disable Public Network Access
- **Folder:** `SLZ/Network/ID1336`
- **Affected Azure resource types:** `Microsoft.App/managedEnvironments`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Container Apps environments and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which Container Apps environments still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.App/managedEnvironments`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-1337-containerappdisableexternalnetworkaccess"></a>
<details open>
<summary><h6>SLZ-1337-ContainerAppDisableExternalNetworkAccess</h6></summary>


- **Display name:** SLZ - 1337 - Container Apps Should Disable External Network Access
- **Folder:** `SLZ/Network/ID1337`
- **Affected Azure resource types:** `Microsoft.App/containerApps`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Container Apps and makes sure container Apps Should Disable External Network Access. In audit mode it shows which Container Apps are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.App/containerApps` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-1338-wafonapgt-detection"></a>
<details open>
<summary><h6>SLZ-1338-WAFonAPGT-Detection</h6></summary>


- **Display name:** SLZ - 1338 - Web Application Firewall (WAF) should use the specified mode for Application Gateway
- **Folder:** `SLZ/Network/ID1338`
- **Affected Azure resource types:** `Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies`
- **Cost impact:** Yes [High impact] - WAF-capable Application Gateway or Front Door SKU.

**Breakdown of what the policy does:** The policy checks application gateway web application firewall policies and makes sure Web Application Firewall protection is enabled with an approved WAF-capable configuration. In audit mode it shows which application gateway web application firewall policies do not have the required WAF protection.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `modeRequirement` (default `Detection`; allowed `Prevention`, `Detection`; Mode required for all WAF policies).

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

</details>

<a id="policy-slz-239-rpdaccessdisabledforinternet"></a>
<details open>
<summary><h6>SLZ-239-RPDAccessDisabledForInternet</h6></summary>


- **Display name:** SLZ - 239 - Ensure that RDP access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID239`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose RDP access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-240-sshaccessdisabledforinternet"></a>
<details open>
<summary><h6>SLZ-240-SSHAccessDisabledForInternet</h6></summary>


- **Display name:** SLZ - 240 - Ensure that SSH access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID240`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose SSH access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-241-udpaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 241 - Ensure that UDP access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID241`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose the restricted service or administration port access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-242-httpsaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 242 - Ensure that HTTP access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID242`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose HTTP access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-244-networkwatcherenabled"></a>
<details open>
<summary><h6>SLZ-244-NetworkWatcherEnabled</h6></summary>


- **Display name:** SLZ - 244 - Ensure that Network Watcher is 'Enabled'
- **Folder:** `SLZ/Network/ID244`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworks`, `Microsoft.Network/networkWatchers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual networks and Network Watcher resources and makes sure network Watcher is 'Enabled'. In audit mode it shows which virtual networks and Network Watcher resources are not compliant with that requirement.

**How to align the environment:** Constrain deployment locations in Terraform and subscription vending processes to the approved region list, with documented exceptions for unavailable services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires deployment pipelines to constrain locations and handle service-specific regional availability exceptions.

</details>

<a id="policy-slz-332-nsgnoingressfrom0000for22or3389"></a>
<details open>
<summary><h6>SLZ-332-NSGNoIngressFrom0000For22or3389</h6></summary>


- **Display name:** SLZ - 332 - Ensure no security groups allow ingress from 0.0.0.0/0 to remote server administration ports
- **Folder:** `SLZ/Network/ID332`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose RDP access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-333-nsgnoingressfrom0for22or3389"></a>
<details open>
<summary><h6>SLZ-333-NSGNoIngressFrom0For22or3389</h6></summary>


- **Display name:** SLZ - 333 - Ensure no security groups allow ingress from ::/0 to remote server administration ports
- **Folder:** `SLZ/Network/ID333`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and makes sure no security groups allow ingress from ::/0 to remote server administration ports. In audit mode it shows which Network Security Group rules are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Network/networkSecurityGroups/securityRules` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-629-virtualnetworksddosprotection"></a>
<details open>
<summary><h6>SLZ-629-VirtualNetworksDDOSProtection</h6></summary>


- **Display name:** SLZ - 629 - Enforce DDoS Protection
- **Folder:** `SLZ/Network/ID629`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworks`, `Microsoft.Resources/deployments`
- **Cost impact:** Yes [High impact] - Azure DDoS Protection plan.

**Breakdown of what the policy does:** The policy checks virtual networks and makes sure they are protected by the expected Azure DDoS Protection plan. In audit mode it shows which virtual networks are not associated with the required DDoS plan.

**How to align the environment:** Create or reference the approved DDoS Protection plan and associate in-scope virtual networks through the network landing-zone module.

**Parameters or variables to specify or consider:** `planId` (default: none; DDoS Protection Plan resource to be associated to the virtual networks).

**Operational impact:** Requires a DDoS Protection plan and consistent virtual network association model.

</details>

<a id="policy-slz-983-ftpaccessfrominternetevaluatedandrestricted"></a>
<details open>
<summary><h6>SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted</h6></summary>


- **Display name:** SLZ - 983 - Ensure that FTP access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID983`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose the restricted service or administration port access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `ports` (default `["20", "21"]`; FTP ports to be blocked).

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-984-mongodbaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 984 - Ensure that MongoDB access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID984`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose MongoDB access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `ports` (default `["27017", "27018"]`; MongoDB ports to be blocked).

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-985-cassandraaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 985 - Ensure that Cassandra access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID985`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose Cassandra access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `ports` (default `["7199", "9160", "8888"]`; Cassandra ports to be blocked).

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-986-elasticsearchaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 986 - Ensure that Elasticsearch/Kibana  access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID986`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose Elasticsearch/Kibana access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `ports` (default `["9200", "9300", "5601"]`; Elasticsearch/Kibana ports to be blocked).

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-987-kafkaaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 987 - Ensure that Kafka access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID987`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose Kafka access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-988-memcachedaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 988 - Ensure that Memcached access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID988`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose Memcached access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-989-mysqlaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 989 - Ensure that MySQL access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID989`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose MySQL access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-990-oracleaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 990 - Ensure that Oracle access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID990`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose the restricted service or administration port access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `ports` (default `["1521", "2483"]`; Oracle ports to be blocked).

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-991-postgresaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 991 - Ensure that Postgres access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID991`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose PostgreSQL access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-992-redisaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 992 - Ensure that Redis access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID992`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose Redis access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-993-winsqlserveraccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 993 - Ensure that Windows SQL Server access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID993`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose SQL Server access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `ports` (default `["1433", "1434"]`; Windows SQL Server ports to be blocked).

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-994-telnetaccessfrominternetevalutatedandrestricted"></a>
<details open>
<summary><h6>SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted</h6></summary>


- **Display name:** SLZ - 994 - Ensure that Telnet access from the Internet is evaluated and restricted
- **Folder:** `SLZ/Network/ID994`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Network Security Group rules and looks for rules that expose Telnet access from the Internet or an unrestricted source range. In audit mode it shows which NSG rules create that public exposure.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

</details>

<details open>
<summary><h4>Security</h4></summary>

<a id="policy-slz-1340-appservicelatesttls"></a>
<details open>
<summary><h6>SLZ-1340-AppServiceLatestTLS</h6></summary>


- **Display name:** SLZ - 1340 - App Service apps should use the latest tls version
- **Folder:** `SLZ/Security/ID1340`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service apps and App Service configuration still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1341-appserviceslotslatesttls"></a>
<details open>
<summary><h6>SLZ-1341-AppServiceSlotsLatestTLS</h6></summary>


- **Display name:** SLZ - 1341 - App Service app slots should use the latest TLS version
- **Folder:** `SLZ/Security/ID1341`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service deployment slots and App Service slot configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service deployment slots and App Service slot configuration still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1342-functionappslatesttls"></a>
<details open>
<summary><h6>SLZ-1342-FunctionAppsLatestTLS</h6></summary>


- **Display name:** SLZ - 1342 - Configure Function apps to use the latest TLS version
- **Folder:** `SLZ/Security/ID1342`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service apps and App Service configuration still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1343-functionappslotslatesttls"></a>
<details open>
<summary><h6>SLZ-1343-FunctionAppSlotsLatestTLS</h6></summary>


- **Display name:** SLZ - 1343 - Configure Function app slots to use the latest TLS version
- **Folder:** `SLZ/Security/ID1343`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service deployment slots and App Service slot configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service deployment slots and App Service slot configuration still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1344-logicappslatesttls"></a>
<details open>
<summary><h6>SLZ-1344-LogicAppsLatestTLS</h6></summary>


- **Display name:** SLZ - 1344 - Configure Logic Apps to use the latest TLS version
- **Folder:** `SLZ/Security/ID1344`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service apps and App Service configuration still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1345-redissecureconnections"></a>
<details open>
<summary><h6>SLZ-1345-RedisSecureConnections</h6></summary>


- **Display name:** SLZ - 1345 - Azure Cache for Redis only secure connections should be enabled
- **Folder:** `SLZ/Security/ID1345`
- **Affected Azure resource types:** `Microsoft.Cache/redis`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks redis and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which redis still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Cache/redis` in the resource deployment module.

**Parameters or variables to specify or consider:** `minimumtlsVersion` (default `1.2`; allowed `1.2`; Specify the minimum TLS version required for secure connections.).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1346-frontdoortls"></a>
<details open>
<summary><h6>SLZ-1346-FrontDoorTLS</h6></summary>


- **Display name:** SLZ - 1346 - Azure Front Door Standard and Premium should be running minimum TLS version of 1.2
- **Folder:** `SLZ/Security/ID1346`
- **Affected Azure resource types:** `Microsoft.Cdn/profiles/customDomains`
- **Cost impact:** Yes [High impact] - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks custom domains and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which custom domains still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Cdn/profiles/customDomains` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1347-eventhubtls"></a>
<details open>
<summary><h6>SLZ-1347-EventHubTLS</h6></summary>


- **Display name:** SLZ - 1347 - Event Hub namespaces should have the specified minimum TLS version
- **Folder:** `SLZ/Security/ID1347`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Event Hubs namespaces and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Event Hubs namespaces still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.EventHub/namespaces` in the resource deployment module.

**Parameters or variables to specify or consider:** `minimumtlsVersion` (default `1.2`; allowed `1.0`, `1.1`, `1.2`; Minimum version of TLS required to access data in the Event Hub Namespace).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1348-storagetls"></a>
<details open>
<summary><h6>SLZ-1348-StorageTLS</h6></summary>


- **Display name:** SLZ - 1348 - Azure Storage should have minimum TLS version
- **Folder:** `SLZ/Security/ID1348`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Storage accounts still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Storage/storageAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** `tlsVersionRequired` (default `tls1_2`; The TLS version that should be configured on the Storage Account).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1349-addomainservicestls"></a>
<details open>
<summary><h6>SLZ-1349-ADDomainServicesTLS</h6></summary>


- **Display name:** SLZ - 1349 - Azure Active Directory Domain Services managed domains should use tls 1.2 only mode
- **Folder:** `SLZ/Security/ID1349`
- **Affected Azure resource types:** `Microsoft.AAD/domainServices`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks domain services and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which domain services still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.AAD/domainServices` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1350-azurecosmostls12"></a>
<details open>
<summary><h6>SLZ-1350-AzureCosmosTLS12</h6></summary>


- **Display name:** SLZ - 1350 - Azure COSMOS Database should be running tls version 1.2 or newer
- **Folder:** `SLZ/Security/ID1350`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Cosmos DB accounts and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Cosmos DB accounts still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DocumentDB/databaseAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1351-sqlmanagedinstancetls12"></a>
<details open>
<summary><h6>SLZ-1351-SQLManagedInstanceTLS12</h6></summary>


- **Display name:** SLZ - 1351 - SQL Managed Instance should have the minimal tls version of 1.2
- **Folder:** `SLZ/Security/ID1351`
- **Affected Azure resource types:** `Microsoft.Sql/managedInstances`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure SQL Managed Instances and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure SQL Managed Instances still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Sql/managedInstances` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1352-arcsqlmanagedinstancetls12"></a>
<details open>
<summary><h6>SLZ-1352-ArcSQLManagedInstanceTLS12</h6></summary>


- **Display name:** SLZ - 1352 - tls protocol 1.2 must be used for Arc SQL managed instances.
- **Folder:** `SLZ/Security/ID1352`
- **Affected Azure resource types:** `Microsoft.AzureArcData/sqlmanagedinstances`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks sqlmanagedinstances and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which sqlmanagedinstances still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.AzureArcData/sqlmanagedinstances` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1353-sqldatabasetls12"></a>
<details open>
<summary><h6>SLZ-1353-SQLDatabaseTLS12</h6></summary>


- **Display name:** SLZ - 1353 - Azure SQL Database should be running tls version 1.2 or newer
- **Folder:** `SLZ/Security/ID1353`
- **Affected Azure resource types:** `Microsoft.Sql/servers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure SQL servers and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure SQL servers still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Sql/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1354-postgresqlflexsslversion"></a>
<details open>
<summary><h6>SLZ-1354-PostgreSQLFLEXSSLVersion</h6></summary>


- **Display name:** SLZ - 1354 - PostgreSQL flexible servers should be running tls version 1.2 or newer
- **Folder:** `SLZ/Security/ID1354`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/flexibleServers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Database for PostgreSQL flexible servers and PostgreSQL flexible server configuration settings still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/flexibleServers/configurations` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1355-mariadbtlsversion"></a>
<details open>
<summary><h6>SLZ-1355-MariaDBTLSVersion</h6></summary>


- **Display name:** SLZ - 1355 - Azure MARIA Database should be running tls version 1.2 or newer
- **Folder:** `SLZ/Security/ID1355`
- **Affected Azure resource types:** `Microsoft.DBForMariaDB/servers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks servers and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which servers still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBForMariaDB/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1356-synapsesqltlsversion"></a>
<details open>
<summary><h6>SLZ-1356-SynapseSQLTLSVersion</h6></summary>


- **Display name:** SLZ - 1356 - Azure Synapse Workspace SQL Server should be running tls version 1.2 or newer
- **Folder:** `SLZ/Security/ID1356`
- **Affected Azure resource types:** `Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks dedicated s q lminimaltls settings and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which dedicated s q lminimaltls settings still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-1357-azurekubernetesclusterskms"></a>
<details open>
<summary><h6>SLZ-1357-AzureKubernetesClustersKMS</h6></summary>


- **Display name:** SLZ - 1357 - Azure Kubernetes Clusters should enable Key Management Service (KMS)
- **Folder:** `SLZ/Security/ID1357`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure Kubernetes Service clusters and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Kubernetes Service clusters still allow the older or less secure protocol setting.

**How to align the environment:** Configure `Microsoft.ContainerService/managedClusters` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1358-aisncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1358-AISNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1358 - Azure AI Services resources should encrypt data at rest with a customer-managed key (CMK) (only SNC resources)
- **Folder:** `SLZ/Security/ID1358`
- **Affected Azure resource types:** `Microsoft.CognitiveServices/accounts`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure AI services accounts and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure AI services accounts are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.CognitiveServices/accounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.); `excludedKinds` (default `16 values`; The list of excluded API kinds for customer-managed key, default is the list of API kinds that don't have data stored in Cognitive Services).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1359-automationsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1359-AutomationSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1359 - Azure Automation accounts should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1359`
- **Affected Azure resource types:** `Microsoft.Automation/automationAccounts`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Automation Accounts and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Automation Accounts are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Automation/automationAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1360-backupvaultsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1360-BackupVaultSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1360 - Azure Backup Vaults should use customer-managed keys for encrypting backup data(SNC resources)
- **Folder:** `SLZ/Security/ID1360`
- **Affected Azure resource types:** `Microsoft.DataProtection/backupvaults`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks backupvaults and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which backupvaults are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.DataProtection/backupvaults` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.); `checkInfrastructureEncryption` (default `False`; allowed `True`, `False`; Check if Infrastructure Encryption is enabled on Backup Vaults. For more details refer to https://aka.ms/az-backup-vault-infra-encryption-at-rest-with-cmk.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1361-batchsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1361-BatchSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1361 - Azure Batch account should use customer-managed keys to encrypt data (only SNC resources)
- **Folder:** `SLZ/Security/ID1361`
- **Affected Azure resource types:** `Microsoft.Batch/batchAccounts`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure Batch accounts and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure Batch accounts are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Batch/batchAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1362-loadtestingsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1362-LoadTestingSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1362 - Azure load testing resource should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1362`
- **Affected Azure resource types:** `Microsoft.LoadTestService/loadtests`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks loadtests and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which loadtests are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.LoadTestService/loadtests` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1363-redisenterprisesncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1363-RedisEnterpriseSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1363 - Azure Cache for Redis Enterprise should use customer-managed keys for encrypting disk data (only SNC resources)
- **Folder:** `SLZ/Security/ID1363`
- **Affected Azure resource types:** `Microsoft.Cache/redisEnterprise`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks redis enterprise and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which redis enterprise are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Cache/redisEnterprise` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1364-cognitivesearchsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1364-CognitiveSearchSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1364 - Azure Cognitive Search services should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1364`
- **Affected Azure resource types:** `Microsoft.Search/searchServices`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure AI Search services and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure AI Search services are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Search/searchServices` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1365-containerinstancesncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1365-ContainerInstanceSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1365 - Azure Container Instance container group should use customer-managed key for encryption (only SNC resources)
- **Folder:** `SLZ/Security/ID1365`
- **Affected Azure resource types:** `Microsoft.ContainerInstance/containerGroups`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks container groups and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which container groups are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.ContainerInstance/containerGroups` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1366-containerregistrysncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1366-ContainerRegistrySNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1366 - Container registries should be encrypted with a customer-managed key (only SNC resources)
- **Folder:** `SLZ/Security/ID1366`
- **Affected Azure resource types:** `Microsoft.ContainerRegistry/registries`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Container Registries and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Container Registries are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.ContainerRegistry/registries` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1367-cosmosdbsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1367-CosmosDBSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1367 - Azure Cosmos DB accounts should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1367`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure Cosmos DB accounts and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure Cosmos DB accounts are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.DocumentDB/databaseAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1368-azuredataexplorersncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1368-AzureDataExplorerSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1368 - Azure Data Explorer encryption at rest should use a customer-managed key (only SNC resources)
- **Folder:** `SLZ/Security/ID1368`
- **Affected Azure resource types:** `Microsoft.Kusto/Clusters`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks clusters and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which clusters are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Kusto/Clusters` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1369-azuredatafactoriessncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1369-AzureDataFactoriesSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1369 - Azure data factories should be encrypted with a customer-managed key (only SNC resources)
- **Folder:** `SLZ/Security/ID1369`
- **Affected Azure resource types:** `Microsoft.DataFactory/factories`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks factories and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which factories are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.DataFactory/factories` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1370-elasticsanvolumegroupsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1370 - ElasticSan Volume Group should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1370`
- **Affected Azure resource types:** `Microsoft.ElasticSan/elasticSans/volumeGroups`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks volume groups and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which volume groups are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.ElasticSan/elasticSans/volumeGroups` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1371-eventhubnamespacesncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1371-EventHubNamespaceSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1371 - Event Hub namespaces should use a customer-managed key for encryption (only SNC resources)
- **Folder:** `SLZ/Security/ID1371`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`, `Microsoft.Keyvault`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Event Hubs namespaces and microsoft. keyvault and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Event Hubs namespaces and microsoft. keyvault are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.EventHub/namespaces`, `Microsoft.Keyvault` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1372-fluidrelaysncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1372-FluidRelaySNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1372 - Fluid Relay should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1372`
- **Affected Azure resource types:** `Microsoft.FluidRelay/fluidRelayServers`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks fluid relay servers and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which fluid relay servers are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.FluidRelay/fluidRelayServers` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1373-hdinsightsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1373-HDInsightSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1373 - Azure HDInsight clusters should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1373`
- **Affected Azure resource types:** `Microsoft.HDInsight/clusters`
- **Cost impact:** Yes - Log Analytics ingestion and retention.

**Breakdown of what the policy does:** The policy checks clusters and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which clusters are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Make sure diagnostic settings are enabled for each `Microsoft.HDInsight/clusters` resource in the subscription.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires a known Log Analytics workspace.

</details>

<a id="policy-slz-1374-healthbotssncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1374-HealthBotsSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1374 - Azure Health Bots should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1374`
- **Affected Azure resource types:** `Microsoft.HealthBot/healthBots`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks health bots and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which health bots are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.HealthBot/healthBots` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1375-hpccachesncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1375-HPCCacheSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1375 - HPC Cache accounts should use customer-managed key for encryption (only SNC resources)
- **Folder:** `SLZ/Security/ID1375`
- **Affected Azure resource types:** `Microsoft.StorageCache/caches`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks caches and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which caches are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.StorageCache/caches` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1376-iothubsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1376-IoTHubSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1376 - Azure IoT Hub should use customer-managed key to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1376`
- **Affected Azure resource types:** `Microsoft.Devices/IotHubs`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks IoT Hubs and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which IoT Hubs are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Devices/IotHubs` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1378-logicappssncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1378-LogicAppsSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1378 - Logic Apps Integration Service Environment should be encrypted with customer-managed keys (only SNC resources)
- **Folder:** `SLZ/Security/ID1378`
- **Affected Azure resource types:** `Microsoft.Logic/integrationServiceEnvironments`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks integration service environments and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which integration service environments are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Logic/integrationServiceEnvironments` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1379-azuremlsncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1379-AzureMLSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1379 - Azure Machine Learning workspaces should be encrypted with a customer-managed key (only SNC resources)
- **Folder:** `SLZ/Security/ID1379`
- **Affected Azure resource types:** `Microsoft.MachineLearningServices/workspaces`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks workspaces and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which workspaces are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.MachineLearningServices/workspaces` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1380-azuresynapseworkspacecmk"></a>
<details open>
<summary><h6>SLZ-1380-AzureSynapseWorkspaceCMK</h6></summary>


- **Display name:** SLZ - 1380 - Azure Synapse workspaces should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1380`
- **Affected Azure resource types:** `Microsoft.Synapse/workspaces`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks workspaces and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which workspaces are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Synapse/workspaces` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1381-osanddatadiskssncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1381-OSAndDataDisksSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1381 - OS and data disks should be encrypted with a customer-managed key (only SNC resources)
- **Folder:** `SLZ/Security/ID1381`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, `Microsoft.Compute/images`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks virtual machines, virtual machine scale sets, managed disks, and related resources and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which virtual machines, virtual machine scale sets, managed disks, and related resources are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, and related child resources to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to identify resources included in this policy.); `tagValue` (default `SNC`; Value of the tag to identify resources included in this policy.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1382-postgresqlflexibleserversencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1382 - PostgreSQL flexible servers should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1382`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure Database for PostgreSQL flexible servers are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.DBforPostgreSQL/flexibleServers` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1384-servicebuspremiumencryptioncmk"></a>
<details open>
<summary><h6>SLZ-1384-ServiceBusPremiumEncryptionCMK</h6></summary>


- **Display name:** SLZ - 1384 - Service Bus Premium namespaces should use a customer-managed key for encryption (only SNC resources)
- **Folder:** `SLZ/Security/ID1384`
- **Affected Azure resource types:** `Microsoft.ServiceBus/namespaces`, `Microsoft.Keyvault`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Service Bus namespaces and microsoft. keyvault and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Service Bus namespaces and microsoft. keyvault are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.ServiceBus/namespaces`, `Microsoft.Keyvault` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-1385-storageaccountencryptionscopescmk"></a>
<details open>
<summary><h6>SLZ-1385-StorageAccountEncryptionScopesCMK</h6></summary>


- **Display name:** SLZ - 1385 - Storage account encryption scopes should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID1385`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/encryptionScopes`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks encryption scopes and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which encryption scopes are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Storage/storageAccounts/encryptionScopes` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-213-mysqllatesttls"></a>
<details open>
<summary><h6>SLZ-213-MySQLLatestTLS</h6></summary>


- **Display name:** SLZ - 213 - Ensure 'TLS Version' is set to 'TLSV1.2' for MySQL flexible Database
- **Folder:** `SLZ/Security/ID213`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/servers`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for MySQL servers and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Database for MySQL servers still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforMySQL/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** `minimaltlsVersion` (default `tls1_2`; allowed `tls1_2`, `tls1_3`; Select version minimum tls version Azure Database for MySQL server to enforce).

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-254-keyvaultkeysexpirationdateset"></a>
<details open>
<summary><h6>SLZ-254-KeyVaultKeysExpirationDateSet</h6></summary>


- **Display name:** SLZ - 254 - Ensure that the Expiration Date is set for all Keys in Key Vaults (RBAC and Non-RBAC)
- **Folder:** `SLZ/Security/ID254`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults/keys`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure the Expiration Date is set for all Keys in Key Vaults (RBAC and Non-RBAC). In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires Key Vault configuration standards to be embedded in Terraform where Key Vault is Terraform-managed and operational key or secret lifecycle processes.

</details>

<a id="policy-slz-256-keyvaultsecretsexpirationdateset"></a>
<details open>
<summary><h6>SLZ-256-KeyVaultSecretsExpirationDateSet</h6></summary>


- **Display name:** SLZ - 256 - Ensure that the Expiration Date is set for all Secrets in Key Vaults (RBAC and Non-RBAC)
- **Folder:** `SLZ/Security/ID256`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults/secrets`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure the Expiration Date is set for all Secrets in Key Vaults (RBAC and Non-RBAC). In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires Key Vault configuration standards to be embedded in Terraform where Key Vault is Terraform-managed and operational key or secret lifecycle processes.

</details>

<a id="policy-slz-257-keyvaultrecoverable"></a>
<details open>
<summary><h6>SLZ-257-KeyVaultRecoverable</h6></summary>


- **Display name:** SLZ - 257 - Ensure the Key Vault is Recoverable
- **Folder:** `SLZ/Security/ID257`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure the Key Vault is Recoverable. In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires Key Vault configuration standards to be embedded in Terraform where Key Vault is Terraform-managed and operational key or secret lifecycle processes.

</details>

<a id="policy-slz-258-keyvaultrbac"></a>
<details open>
<summary><h6>SLZ-258-KeyVaultRBAC</h6></summary>


- **Display name:** SLZ - 258 - Enable Role Based Access Control for Azure Key Vault
- **Folder:** `SLZ/Security/ID258`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure enable Role Based Access Control for Azure Key Vault. In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires Key Vault configuration standards to be embedded in Terraform where Key Vault is Terraform-managed and operational key or secret lifecycle processes.

</details>

<a id="policy-slz-259-keyvaultprivateendpoint"></a>
<details open>
<summary><h6>SLZ-259-KeyVaultPrivateEndpoint</h6></summary>


- **Display name:** SLZ - 259 - Ensure that Private Endpoints are Used for Azure Key Vault
- **Folder:** `SLZ/Security/ID259`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Key Vaults and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which Key Vaults are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.KeyVault/vaults` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

<a id="policy-slz-260-keyrotationenabled"></a>
<details open>
<summary><h6>SLZ-260-KeyRotationEnabled</h6></summary>


- **Display name:** SLZ - 260 - Ensure Automatic Key Rotation is Enabled Within Azure Key Vault for the Supported Services
- **Folder:** `SLZ/Security/ID260`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults/keys`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure automatic Key Rotation is Enabled Within Azure Key Vault for the Supported Services. In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires Key Vault configuration standards to be embedded in Terraform where Key Vault is Terraform-managed and operational key or secret lifecycle processes.

</details>

<details open>
<summary><h5>ID31</h5></summary>

<a id="policy-slz-31-15-postgresqlsslversion"></a>
<details open>
<summary><h6>SLZ-31.15-PostgreSQLSSLVersion</h6></summary>


- **Display name:** SLZ - 31.15 - PostgreSQL flexible servers should be running tls version 1.2 or newer
- **Folder:** `SLZ/Security/ID31`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL flexible servers and PostgreSQL server configuration settings and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Azure Database for PostgreSQL flexible servers and PostgreSQL server configuration settings still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/servers/configurations` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-31-9-appgatewaytls"></a>
<details open>
<summary><h6>SLZ-31.9-AppGatewayTLS</h6></summary>


- **Display name:** SLZ - 31.9 - Application Gateway should be deployed with predefined Microsoft policy that is using latest tls version
- **Folder:** `SLZ/Security/ID31`
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Application Gateways and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Application Gateways still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Network/applicationGateways` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

</details>

<details open>
<summary><h5>ID35</h5></summary>

<a id="policy-slz-35-1-arcsqltde"></a>
<details open>
<summary><h6>SLZ-35.1-ArcSQLTDE</h6></summary>


- **Display name:** SLZ - 35.1 - Transparent Data Encryption must be enabled for Arc SQL managed instances.
- **Folder:** `SLZ/Security/ID35`
- **Affected Azure resource types:** `Microsoft.AzureArcData/sqlmanagedinstances`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks sqlmanagedinstances and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which sqlmanagedinstances are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.AzureArcData/sqlmanagedinstances` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-35-2-azuresynapsetde"></a>
<details open>
<summary><h6>SLZ-35.2-AzureSynapseTDE</h6></summary>


- **Display name:** SLZ - 35.2 - Azure Synapse Analytics dedicated SQL pools should enable encryption
- **Folder:** `SLZ/Security/ID35`
- **Affected Azure resource types:** `Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks transparent data encryption and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which transparent data encryption are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

</details>

<details open>
<summary><h5>ID872</h5></summary>

<a id="policy-slz-872-13-dicomservicesncencryptioncmk"></a>
<details open>
<summary><h6>SLZ-872.13-DICOMServiceSNCEncryptionCMK</h6></summary>


- **Display name:** SLZ - 872.13 - DICOM Service should use a customer-managed key to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID872`
- **Affected Azure resource types:** `Microsoft.HealthcareApis/workspaces/dicomservices`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks dicomservices and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which dicomservices are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.HealthcareApis/workspaces/dicomservices` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-872-27-postgresqlserversencryptioncmk"></a>
<details open>
<summary><h6>SLZ-872.27-PostgreSQLServersEncryptionCMK</h6></summary>


- **Display name:** SLZ - 872.27 - PostgreSQL servers should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Folder:** `SLZ/Security/ID872`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/keys`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Azure Database for PostgreSQL single servers and keys and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Azure Database for PostgreSQL single servers and keys are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/keys` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

</details>

</details>

<details open>
<summary><h4>Storage</h4></summary>

<a id="policy-slz-177-storageaccountssecuretransfer"></a>
<details open>
<summary><h6>SLZ-177-StorageAccountsSecureTransfer</h6></summary>


- **Display name:** SLZ - 177 - Secure transfer to storage accounts should be enabled
- **Folder:** `SLZ/Storage/ID177`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which Storage accounts still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Storage/storageAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-178-storageaccountsinfrastructureencryption"></a>
<details open>
<summary><h6>SLZ-178-StorageAccountsInfrastructureEncryption</h6></summary>


- **Display name:** SLZ - 178 - Storage accounts should have infrastructure encryption
- **Folder:** `SLZ/Storage/ID178`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure storage accounts should have infrastructure encryption. In audit mode it shows which Storage accounts are not compliant with that requirement.

**How to align the environment:** Configure `Microsoft.Storage/storageAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-179-storageaccountsexpirationreminder"></a>
<details open>
<summary><h6>SLZ-179-StorageAccountsExpirationReminder</h6></summary>


- **Display name:** SLZ - 179 - Ensure that 'Enable key rotation reminders' is enabled for each Storage Account
- **Folder:** `SLZ/Storage/ID179`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Key Vaults, keys, or secrets and makes sure 'Enable key rotation reminders' is enabled for each Storage Account. In audit mode it shows which vaults, keys, or secrets do not meet the required lifecycle, recovery, RBAC, expiry, private access, or rotation setting.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires Key Vault configuration standards to be embedded in Terraform where Key Vault is Terraform-managed and operational key or secret lifecycle processes.

</details>

<a id="policy-slz-183-storageaccountspublicaccess"></a>
<details open>
<summary><h6>SLZ-183-StorageAccountsPublicAccess</h6></summary>


- **Display name:** SLZ - 183 - Storage account public access should be disallowed
- **Folder:** `SLZ/Storage/ID183`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which Storage accounts still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.Storage/storageAccounts`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-184-storageaccountsdefaultnetworkaccessrule"></a>
<details open>
<summary><h6>SLZ-184-StorageAccountsDefaultNetworkAccessRule</h6></summary>


- **Display name:** SLZ - 184 - Ensure Default Network Access Rule for Storage Accounts is Set to Deny
- **Folder:** `SLZ/Storage/ID184`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure public network access or public IP exposure is disabled or limited to the approved access pattern. In audit mode it shows which Storage accounts still allow public access and need review.

**How to align the environment:** Remove broad public access from `Microsoft.Storage/storageAccounts`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

</details>

<a id="policy-slz-185-storageaccountsallowazureservices"></a>
<details open>
<summary><h6>SLZ-185-StorageAccountsAllowAzureServices</h6></summary>


- **Display name:** SLZ - 185 - Ensure 'Allow Azure services on the trusted services list to access this storage account' is Enabled
- **Folder:** `SLZ/Storage/ID185`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks Storage accounts and makes sure 'Allow Azure services on the trusted services list to access this storage account' is Enabled. In audit mode it shows which Storage accounts are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Storage/storageAccounts` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-186-storageaccountsprivateendpoints"></a>
<details open>
<summary><h6>SLZ-186-StorageAccountsPrivateEndpoints</h6></summary>


- **Display name:** SLZ - 186 - Ensure Private Endpoints are used to access Storage Accounts
- **Folder:** `SLZ/Storage/ID186`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Storage/storageAccounts/privateEndpointConnections`, `Microsoft.Resources/deployments`, `Microsoft.Network/privateEndpoints`
- **Cost impact:** Yes - Private Endpoint and Private DNS charges.

**Breakdown of what the policy does:** The policy checks Storage accounts, private endpoint connections, private endpoints, and related resources and makes sure access is routed through private endpoints or Private Link instead of public access. In audit mode it shows which Storage accounts, private endpoint connections, private endpoints, and related resources are missing the required private connectivity.

**How to align the environment:** Change deployment modules for `Microsoft.Storage/storageAccounts`, `Microsoft.Storage/storageAccounts/privateEndpointConnections`, `Microsoft.Resources/deployments`, and related child resources to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `privateEndpointSubnetId` (default: none; A subnet with private endpoint network policies disabled.).

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

</details>

<a id="policy-slz-187-storageblobsandcontainersoftdelete"></a>
<details open>
<summary><h6>SLZ-187-StorageBlobsAndContainerSoftDelete</h6></summary>


- **Display name:** SLZ - 187 - Azure Storage Blobs and Containers should have Soft Delete enabled (Minimum 30 days)
- **Folder:** `SLZ/Storage/ID187`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/blobServices`
- **Cost impact:** Yes - retained logs or deleted data consume billable storage.

**Breakdown of what the policy does:** The policy checks Storage blob services and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which Storage blob services are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Encode the checked setting for `Microsoft.Storage/storageAccounts/blobServices` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `retentionInDays` (default: none; How long should deleted resources be retained for (minimum 30 days).).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-248-osanddatadiskscmkencryption"></a>
<details open>
<summary><h6>SLZ-248-OSandDataDisksCMKEncryption</h6></summary>


- **Display name:** SLZ - 248 - Ensure that 'OS and Data' disks are encrypted with Customer Managed Key (CMK) for SNC data
- **Folder:** `SLZ/Storage/ID248`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, `Microsoft.Compute/galleries/images/versions`, `Microsoft.Compute/images`
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks virtual machines, virtual machine scale sets, managed disks, and related resources and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which virtual machines, virtual machine scale sets, managed disks, and related resources are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, and related child resources to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

<a id="policy-slz-249-unattacheddiskscmkencryption"></a>
<details open>
<summary><h6>SLZ-249-UnattachedDisksCMKEncryption</h6></summary>


- **Display name:** SLZ - 249 - Ensure that 'Unattached disks' are encrypted with 'Customer Managed Key' (CMK) for SNC data
- **Folder:** `SLZ/Storage/ID249`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Cost impact:** Yes - higher approved Azure service SKU/tier.

**Breakdown of what the policy does:** The policy checks in-scope Azure resources and makes sure encryption is enabled using the required customer-managed key or data-encryption configuration. In audit mode it shows which in-scope Azure resources are still using an unsupported encryption setup or are missing the expected encryption setting.

**How to align the environment:** Configure the affected resources to use the required encryption setting, customer-managed key, or service-managed encryption control in Terraform where the resource is managed by Terraform, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Name parameter.).

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in Terraform-managed resources.

</details>

</details>

<details open>
<summary><h4>Tagging</h4></summary>

<details open>
<summary><h5>ID00-NonID-Tags</h5></summary>

<a id="policy-slz-taginheritancefromsub"></a>
<details open>
<summary><h6>SLZ-TagInheritanceFromSub</h6></summary>


- **Display name:** Tag Inheritance
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName1` (default `ec.EnvironmentType`; Environment tag); `tag-TagName2` (default `ec.DataSensitivityLevel`; DataSensitivity tag); `tag-TagName3` (default `ec.GovIS2SeqNum`; Project tag); `tag-TagName4` (default `ec.SystemOwner`; Organization tag).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-604-checkdatasensitivitytagsonsubscriptions"></a>
<details open>
<summary><h6>SLZ-604-CheckDataSensitivityTagsOnSubscriptions</h6></summary>


- **Display name:** SLZ - 604 - Check ec.DataSensitivityLevel Tag on Subscription
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName2` (default `ec.DataSensitivityLevel`; ec.DataSensitivityLevel tag).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-checkenvironmenttagonsubscription"></a>
<details open>
<summary><h6>SLZ-CheckEnvironmentTagOnSubscription</h6></summary>


- **Display name:** SLZ - XXX - Check Environment Tag on Subscription
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName1` (default `ec.EnvironmentType`; Environment tag).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-checkorganizationtagonsubscription"></a>
<details open>
<summary><h6>SLZ-CheckOrganizationTagOnSubscription</h6></summary>


- **Display name:** SLZ - XXX - Check Organization Tag on Subscription
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName4` (default `ec.SystemOwner`; Organization tag).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-878-checkprojecttagonsubscription"></a>
<details open>
<summary><h6>SLZ-878-CheckProjectTagOnSubscription</h6></summary>


- **Display name:** SLZ - 878 - Check Project Tag on Subscription
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName3` (default `ec.GovIS2SeqNum`; Project tag).

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

</details>

</details>

<details open>
<summary><h4>Web</h4></summary>

<a id="policy-slz-261-appserviceauthentication"></a>
<details open>
<summary><h6>SLZ-261-AppServiceAuthentication</h6></summary>


- **Display name:** SLZ - 261 - Ensure App Service Authentication is set up for apps in Azure App Service
- **Folder:** `SLZ/Web/ID261`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure app Service Authentication is set up for apps in Azure App Service. In audit mode it shows which App Service apps and App Service configuration are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<details open>
<summary><h5>ID262</h5></summary>

<a id="policy-slz-262-appserviceslotshttptohttpsredirection"></a>
<details open>
<summary><h6>SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection</h6></summary>


- **Display name:** SLZ - 262 - Ensure Web App Redirects All HTTP traffic to HTTPS in Azure App Service Slots
- **Folder:** `SLZ/Web/ID262`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service deployment slots and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service deployment slots still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites/slots` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

<a id="policy-slz-262-appservicehttptohttpsredirection"></a>
<details open>
<summary><h6>SLZ-262-AppServiceHTTPtoHTTPSRedirection</h6></summary>


- **Display name:** SLZ - 262 - Ensure Web App Redirects All HTTP traffic to HTTPS in Azure App Service
- **Folder:** `SLZ/Web/ID262`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service apps still allow the older or less secure protocol setting.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites` in the resource deployment module.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

</details>

</details>

<a id="policy-slz-265-appserviceaadregistration"></a>
<details open>
<summary><h6>SLZ-265-AppServiceAADRegistration</h6></summary>


- **Display name:** SLZ - 265 - Ensure that Register with Azure Active Directory is enabled on App Service
- **Folder:** `SLZ/Web/ID265`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks virtual machines and Guest Configuration readiness or guest operating-system settings required by the baseline. In audit mode it shows which machines are missing the expected identity, extension, assignment, or guest setting result.

**How to align the environment:** Ensure VM identities, Guest Configuration extensions, package reachability, and update-assessment settings are present through VM baseline modules.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires VM identity, extension, outbound connectivity, and guest configuration package readiness, even when the policy is only reporting.

</details>

<details open>
<summary><h5>ID267</h5></summary>

<a id="policy-slz-267-appserviceslotslatestpythonversion"></a>
<details open>
<summary><h6>SLZ-267-AppServiceSlotsLatestPythonVersion</h6></summary>


- **Display name:** SLZ - 267 - Ensure that 'Python version' is the Latest Stable Version, if Used to Run the Web App Slots
- **Folder:** `SLZ/Web/ID267`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service deployment slots and App Service slot configuration and makes sure 'Python version' is the Latest Stable Version, if Used to Run the Web App Slots. In audit mode it shows which App Service deployment slots and App Service slot configuration are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `pythonVersion` (default ``; Specify a supported Python version for App Service); `pythonVersion2` (default ``; Specify a supported Python version for App Service); `pythonPrefix` (default `PYTHON|`; Specify a supported Python prefix for App Service).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-267-appservicelatestpythonversion"></a>
<details open>
<summary><h6>SLZ-267-AppServiceLatestPythonVersion</h6></summary>


- **Display name:** SLZ - 267 - Ensure that 'Python version' is the Latest Stable Version, if Used to Run the Web App
- **Folder:** `SLZ/Web/ID267`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure 'Python version' is the Latest Stable Version, if Used to Run the Web App. In audit mode it shows which App Service apps and App Service configuration are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `pythonVersion` (default ``; Specify a supported Python version for App Service); `pythonVersion2` (default ``; Specify a supported Python version for App Service); `pythonPrefix` (default `PYTHON|`; Specify a supported Python prefix for App Service).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

</details>

<details open>
<summary><h5>ID268</h5></summary>

<a id="policy-slz-268-appserviceslotslatestjavaversion"></a>
<details open>
<summary><h6>SLZ-268-AppServiceSlotsLatestJavaVersion</h6></summary>


- **Display name:** SLZ - 268 - Ensure that 'Java version' is the latest, if used to run the Web App for Slots
- **Folder:** `SLZ/Web/ID268`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service deployment slots and App Service slot configuration and makes sure 'Java version' is the latest, if used to run the Web App for Slots. In audit mode it shows which App Service deployment slots and App Service slot configuration are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `javaVersion` (default ``; Specify a supported Java version for App Service).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-268-appservicelatestjavaversion"></a>
<details open>
<summary><h6>SLZ-268-AppServiceLatestJavaVersion</h6></summary>


- **Display name:** SLZ - 268 - Ensure that 'Java version' is the latest, if used to run the Web App
- **Folder:** `SLZ/Web/ID268`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure 'Java version' is the latest, if used to run the Web App. In audit mode it shows which App Service apps and App Service configuration are not compliant with that requirement.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `javaVersion` (default ``; Specify a supported Java version for App Service).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

</details>

<details open>
<summary><h5>ID269</h5></summary>

<a id="policy-slz-269-appserviceslotslatesthttpversion"></a>
<details open>
<summary><h6>SLZ-269-AppServiceSlotsLatestHTTPVersion</h6></summary>


- **Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Web App for Slots
- **Folder:** `SLZ/Web/ID269`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-269-appservicelatesthttpversionwebapp"></a>
<details open>
<summary><h6>SLZ-269-AppServiceLatestHTTPVersionWebApp</h6></summary>


- **Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Web App
- **Folder:** `SLZ/Web/ID269`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

<a id="policy-slz-269-appservicelatesthttpversion"></a>
<details open>
<summary><h6>SLZ-269-AppServiceLatestHTTPVersion</h6></summary>


- **Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Function App
- **Folder:** `SLZ/Web/ID269`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks subscription or resource tags and makes sure the required governance tag is present with an accepted value. In audit mode it shows which subscriptions or resources are missing the required tag or have an unexpected tag value.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** None.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

</details>

</details>

<details open>
<summary><h5>ID270</h5></summary>

<a id="policy-slz-270-appserviceftpdeploymentswebapp"></a>
<details open>
<summary><h6>SLZ-270-AppServiceFTPDeploymentsWebApp</h6></summary>


- **Display name:** SLZ - 270 - Ensure FTP deployments are Disabled
- **Folder:** `SLZ/Web/ID270`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service apps and App Service configuration still allow the older or less secure protocol setting.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `allowFTPS` (default `False`; true value will force using FTPSOnly).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-270-appserviceslotsftpdeployments"></a>
<details open>
<summary><h6>SLZ-270-AppServiceSlotsFTPDeployments</h6></summary>


- **Display name:** SLZ - 270 - Ensure FTP deployments are Disabled for Slots
- **Folder:** `SLZ/Web/ID270`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service deployment slots and App Service slot configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service deployment slots and App Service slot configuration still allow the older or less secure protocol setting.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `allowFTPS` (default `False`; true value will force using FTPSOnly).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

<a id="policy-slz-270-appserviceftpdeployments"></a>
<details open>
<summary><h6>SLZ-270-AppServiceFTPDeployments</h6></summary>


- **Display name:** SLZ - 270 - Ensure FTP deployments are Disabled
- **Folder:** `SLZ/Web/ID270`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Cost impact:** No

**Breakdown of what the policy does:** The policy checks App Service apps and App Service configuration and makes sure insecure protocols are disabled and the required TLS, SSL, HTTPS, HTTP, FTP, or secure-transfer setting is used. In audit mode it shows which App Service apps and App Service configuration still allow the older or less secure protocol setting.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in Terraform where the resource is managed by Terraform and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `allowFTPS` (default `False`; true value will force using FTPSOnly).

**Operational impact:** Requires the owning platform or workload team to encode the checked property in Terraform where the resource is Terraform-managed and monitor compliance drift.

</details>

</details>

</details>

</details>

</details>

