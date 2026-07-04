# Azure Policy Tenant Impact Assessment

This assessment covers every local Azure Policy definition under `Definitions/policyDefinitions`. It assumes the policies are used only for audit, reporting, and compliance checks. No assignment should create, update, delete, deny, or remediate resources in the tenant or subscriptions.

Important audit-only interpretation: where a policy supports `Audit`, assign `Audit`. Where a policy only supports `AuditIfNotExists`, assign `AuditIfNotExists` because it is reporting-only for missing related configuration. Where a policy only supports `DeployIfNotExists`, `modify`, or another non-audit effect, the policy must be changed or excluded before it can satisfy the requested operating model.

Total policy definitions assessed: **255**.

## Index

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

## Assessment

<a id="policy-c1-slz-149-nocustomadministratorroles"></a>
### C1-SLZ-149-NoCustomAdministratorRoles

- **Display name:** C1 - SLZ - 149 - Ensure That No Custom Administrator Roles Exists
- **Source:** [`Definitions/policyDefinitions/C1/General/ID149/C1-slz-149-ensure-that-no-custom-administrator-roles-exists.jsonc`](Definitions/policyDefinitions/C1/General/ID149/C1-slz-149-ensure-that-no-custom-administrator-roles-exists.jsonc)
- **Folder:** `C1/General/ID149`
- **Category:** `General`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Authorization/roleDefinitions`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** That policy will check that no custom roles are assigned based on custom roles names. It evaluates `Microsoft.Authorization/roleDefinitions`. Key rule fields include `Microsoft.Authorization/roleDefinitions/type`, `Microsoft.Authorization/roleDefinitions/roleName`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.Authorization/roleDefinitions` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Choose the effect type: 'Audit', 'Deny', or 'Disabled'); `allowedCustomRolesNames` (default `11 values`; List of allowed custom roles (role ids) for subscription administrators).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-c1-slz-198-auditingretentiongreater90days"></a>
### C1-SLZ-198-AuditingRetentionGreater90days

- **Display name:** C1 - SLZ - 198 - Ensure that 'Auditing' Retention is 'greater than 90 days'
- **Source:** [`Definitions/policyDefinitions/C1/General/ID198/C1-slz-198-ensure-that-'auditing'-retention-is-'greater-than-90-days'.jsonc`](Definitions/policyDefinitions/C1/General/ID198/C1-slz-198-ensure-that-'auditing'-retention-is-'greater-than-90-days'.jsonc)
- **Folder:** `C1/General/ID198`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`, `Microsoft.Resources/deployments`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** For incident investigation purposes, we recommend setting the data retention for your SQL Server' auditing to storage account destination to at least 90 days. It evaluates `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`, `Microsoft.Resources/deployments`. Key rule fields include `Microsoft.Sql/auditingSettings.state`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`, `Microsoft.Resources/deployments` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `retentionDays` (default `90`; The value in days of the retention period (0 indicates unlimited retention)); `storageAccountsResourceGroup` (default no default; Auditing writes database events to an audit log in your Azure Storage account (a storage account will be created in each region where a SQL Server is created that will be shared...).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-220-administrativeactivitylogalert"></a>
### C1-SLZ-220-AdministrativeActivityLogAlert

- **Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Administrative operations
- **Source:** [`Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-administrative-opetations.jsonc`](Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-administrative-opetations.jsonc)
- **Folder:** `C1/General/ID220`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy audits specific Administrative operations with no activity log alerts configured. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationNameAdministrative` (default no default; allowed `Microsoft.Sql/servers/firewallRules/write`, `Microsoft.Sql/servers/firewallRules/delete`, `Microsoft.Network/networkSecurityGroups/write`, `Microsoft.Network/networkSecurityGroups/delete`, `Microsoft.ClassicNetwork/networkSecurityGroups/write`, `Microsoft.ClassicNetwork/networkSecurityGroups/delete`, `Microsoft.Network/networkSecurityGroups/securityRules/write`, `Microsoft.Network/networkSecurityGroups/securityRules/delete`, plus 2 more; Administrative Operation name for which activity log alert should be configured).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-c1-slz-220-policyactivitylogalert"></a>
### C1-SLZ-220-PolicyActivityLogAlert

- **Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Policy operations
- **Source:** [`Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-policy-opetations.jsonc`](Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-policy-opetations.jsonc)
- **Folder:** `C1/General/ID220`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy audits specific Policy operations with no activity log alerts configured. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationNamePolicy` (default no default; allowed `Microsoft.Authorization/policyAssignments/write`, `Microsoft.Authorization/policyAssignments/delete`; Policy Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-c1-slz-220-securityactivitylogalert"></a>
### C1-SLZ-220-SecurityActivityLogAlert

- **Display name:** C1 - SLZ - 220 - An activity log alert should exist for specific Security operations
- **Source:** [`Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-security-opetations.jsonc`](Definitions/policyDefinitions/C1/General/ID220/C1-slz-220-monitor-security-opetations.jsonc)
- **Folder:** `C1/General/ID220`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy audits specific Security operations with no activity log alerts configured. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationNameSecurity` (default no default; allowed `Microsoft.Security/policies/write`, `Microsoft.Security/securitySolutions/write`, `Microsoft.Security/securitySolutions/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-c1-slz-51-azuredirectorydomainservicesdiagsettingstows"></a>
### C1-SLZ-51-AzureDirectoryDomainServicesDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Active Directory Domain Services to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-active-directory-domain-services-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-active-directory-domain-services-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.AAD/DomainServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AAD/DomainServices/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.AAD/DomainServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AAD/DomainServices/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.AAD/DomainServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AAD/DomainServices/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.AAD/DomainServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AAD/DomainServices/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-automationaccountdiagsettingstows"></a>
### C1-SLZ-51-AutomationAccountDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Automation Account to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-automation-account-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-automation-account-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Automation/automationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Automation/automationAccounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Automation/automationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Automation/automationAccounts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Automation/automationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Automation/automationAccounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Automation/automationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Automation/automationAccounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azureactivitylogsdiagsettingstows"></a>
### C1-SLZ-51-AzureActivityLogsDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Activity logs to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-activity-logs-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-activity-logs-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Resources/subscriptions`, `Microsoft.Insights/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azureanalysisservicediagsettingstows"></a>
### C1-SLZ-51-AzureAnalysisServiceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Analysis Services to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-analysis-services-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-analysis-services-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.AnalysisServices/servers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AnalysisServices/servers/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.AnalysisServices/servers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AnalysisServices/servers/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.AnalysisServices/servers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AnalysisServices/servers/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.AnalysisServices/servers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.AnalysisServices/servers/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azureapimanagementservicediagsettingstows"></a>
### C1-SLZ-51-AzureAPIManagementServiceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure API Management Service to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-api-management-service-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-api-management-service-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ApiManagement/service/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.ApiManagement/service`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ApiManagement/service/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.ApiManagement/service`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ApiManagement/service/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.ApiManagement/service`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ApiManagement/service/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-appservicediagsettingstows"></a>
### C1-SLZ-51-AppServiceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure App service to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-app-service-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-app-service-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `Indexed`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings`. Key rule fields include `kind`, `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; Resource ID of the Log Analytics workspace); `policyName` (default `setByPolicy`; Policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-appgatewaydiagsettingstows"></a>
### C1-SLZ-51-AppGatewayDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Application Gateway to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-application-gateway-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-application-gateway-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/applicationGateways/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/applicationGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/applicationGateways/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/applicationGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/applicationGateways/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/applicationGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/applicationGateways/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurebastiondiagsettingstows"></a>
### C1-SLZ-51-AzureBastionDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Bastion to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-bastion-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-bastion-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/bastionHosts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/bastionHosts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/bastionHosts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/bastionHosts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/bastionHosts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/bastionHosts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/bastionHosts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/bastionHosts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurebatchdiagsettingstows"></a>
### C1-SLZ-51-AzureBatchDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Batch to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-batch-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-batch-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Batch/batchAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Batch/batchAccounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Batch/batchAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Batch/batchAccounts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Batch/batchAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Batch/batchAccounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Batch/batchAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Batch/batchAccounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurecongitivesearchdiagsettingstows"></a>
### C1-SLZ-51-AzureCongitiveSearchDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Cognitive Search to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-search-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-search-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Search/searchServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Search/searchServices/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Search/searchServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Search/searchServices/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Search/searchServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Search/searchServices/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Search/searchServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Search/searchServices/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurecongitiveservicesdiagsettingstows"></a>
### C1-SLZ-51-AzureCongitiveServicesDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Cognitive Services to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-services-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-cognitive-services-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.CognitiveServices/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.CognitiveServices/accounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.CognitiveServices/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.CognitiveServices/accounts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.CognitiveServices/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.CognitiveServices/accounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.CognitiveServices/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.CognitiveServices/accounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azuredatalakeanalyticsdiagsettingstows"></a>
### C1-SLZ-51-AzureDatalakeAnalyticsDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Datalake Analytics to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-analytics-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-analytics-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DataLakeAnalytics/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeAnalytics/accounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.DataLakeAnalytics/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeAnalytics/accounts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.DataLakeAnalytics/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeAnalytics/accounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.DataLakeAnalytics/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeAnalytics/accounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azuredatalakestorediagsettingstows"></a>
### C1-SLZ-51-AzureDatalakeStoreDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Datalake Store to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-store-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-datalake-store-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DataLakeStore/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeStore/accounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.DataLakeStore/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeStore/accounts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.DataLakeStore/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeStore/accounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.DataLakeStore/accounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.DataLakeStore/accounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azureeventhubdiagsettingstows"></a>
### C1-SLZ-51-AzureEventHubDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Event Hub to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-event-hub-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-event-hub-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.EventHub/namespaces/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.EventHub/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.EventHub/namespaces/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.EventHub/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.EventHub/namespaces/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.EventHub/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.EventHub/namespaces/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurefirewalldiagsettingstows"></a>
### C1-SLZ-51-AzureFirewallDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Firewall to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-firewall-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-firewall-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/azurefirewalls`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/azurefirewalls/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/azurefirewalls`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/azurefirewalls/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/azurefirewalls`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/azurefirewalls/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/azurefirewalls`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/azurefirewalls/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurefunctiondiagsettingstows"></a>
### C1-SLZ-51-AzureFunctionDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Function App to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-function-app-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-function-app-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings`. Key rule fields include `kind`, `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Web/sites`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Web/sites/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azureintegrationservicesiagsettingstows"></a>
### C1-SLZ-51-AzureIntegrationServicesiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Integration Services to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-integration-services-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-integration-services-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Logic/integrationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/integrationAccounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Logic/integrationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/integrationAccounts/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Logic/integrationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/integrationAccounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Logic/integrationAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/integrationAccounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurekeyvaultdiagsettingstows"></a>
### C1-SLZ-51-AzureKeyVaultDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Key Vaults to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-key-vaults-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-key-vaults-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.KeyVault/vaults/providers/diagnosticSettings`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.KeyVault/vaults/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.KeyVault/vaults/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.KeyVault/vaults/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azureloadbalancerdiagsettingstows"></a>
### C1-SLZ-51-AzureLoadBalancerDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Loadbalancers to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-loadbalancers-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-loadbalancers-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/loadBalancers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/loadBalancers/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/loadBalancers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/loadBalancers/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/loadBalancers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/loadBalancers/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/loadBalancers`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/loadBalancers/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurerecoveryservicediagsettingstows"></a>
### C1-SLZ-51-AzureRecoveryServiceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Recovery Service to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-recovery-service-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-recovery-service-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.RecoveryServices/Vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.RecoveryServices/Vaults/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.RecoveryServices/Vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.RecoveryServices/Vaults/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.RecoveryServices/Vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.RecoveryServices/Vaults/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.RecoveryServices/Vaults`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.RecoveryServices/Vaults/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azuresqlmanagedinstancedbdiagsettingstows"></a>
### C1-SLZ-51-AzureSQLManagedInstanceDBDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Managed Instance Database to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-database-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-database-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/managedInstances/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/databases/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Sql/managedInstances/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/databases/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Sql/managedInstances/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/databases/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Sql/managedInstances/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/databases/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azuresqlmanagedinstancediagsettingstows"></a>
### C1-SLZ-51-AzureSQLManagedInstanceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Managed Instance to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-managed-instance-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/managedInstances`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Sql/managedInstances`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Sql/managedInstances`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Sql/managedInstances`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/managedInstances/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azuresqlserverdiagsettingstows"></a>
### C1-SLZ-51-AzureSQLServerDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure SQL Server to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-server-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-sql-server-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/servers/databases/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Sql/servers/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/servers/databases/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Sql/servers/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/servers/databases/providers/diagnosticSettings`. Key rule fields include `name`, `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Sql/servers/databases`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Sql/servers/databases/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurestreamanalyticsdiagsettingstows"></a>
### C1-SLZ-51-AzureStreamAnalyticsDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Stream Analytics to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-stream-analytics-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-stream-analytics-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.StreamAnalytics/streamingjobs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.StreamAnalytics/streamingjobs/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.StreamAnalytics/streamingjobs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.StreamAnalytics/streamingjobs/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.StreamAnalytics/streamingjobs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.StreamAnalytics/streamingjobs/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.StreamAnalytics/streamingjobs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.StreamAnalytics/streamingjobs/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-azurevirtualnetworkdiagsettingstows"></a>
### C1-SLZ-51-AzureVirtualNetworkDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Azure Virtual Network to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-virtual-network-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-azure-virtual-network-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworkGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/virtualNetworkGateways/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/virtualNetworkGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/virtualNetworkGateways/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/virtualNetworkGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/virtualNetworkGateways/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/virtualNetworkGateways`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/virtualNetworkGateways/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's storage account); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-cdnandfrontdoordiagsettingstows"></a>
### C1-SLZ-51-CdnAndFrontdoorDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Enable logging by category group for Front Door and CDN profiles (microsoft.cdn/profiles) to Log Analytics
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-cdn-and-frontdoor-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-cdn-and-frontdoor-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `Indexed`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Insights/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Resource logs should be enabled to track activities and events that take place on your resources and give you visibility and insights into any changes that occur. This policy deploys a diagnostic setting using a category group to route logs to a Log Analyti... It evaluates `Microsoft.Insights/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Insights/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-iotdiagsettingstows"></a>
### C1-SLZ-51-IoTDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for IoT (Internet of Things) Hub to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-iot-internet-of-things-hub-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-iot-internet-of-things-hub-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Devices/IotHubs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Devices/IotHubs/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Devices/IotHubs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Devices/IotHubs/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Devices/IotHubs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Devices/IotHubs/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Devices/IotHubs`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Devices/IotHubs/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `policyName` (default `setByPolicy`; policy name); `workspaceId` (default `setByPolicy`; workspace id).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-logicappworkflowsdiagsettingstows"></a>
### C1-SLZ-51-LogicAppWorkflowsDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Logic App Workflows to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-logic-app-workflows-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-logic-app-workflows-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Logic/workflows`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/workflows/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Logic/workflows`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/workflows/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Logic/workflows`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/workflows/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Logic/workflows`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Logic/workflows/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-networkfrontdoordiagsettingstows"></a>
### C1-SLZ-51-NetworkFrontdoorDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Frontdoor to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-frontdoor-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-frontdoor-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/frontdoors`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/frontdoors/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/frontdoors`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/frontdoors/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/frontdoors`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/frontdoors/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/frontdoors`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/frontdoors/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-networkinterfacediagsettingstows"></a>
### C1-SLZ-51-NetworkInterfaceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Interface to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-interface-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-interface-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkInterfaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkInterfaces/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/networkInterfaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkInterfaces/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/networkInterfaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkInterfaces/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/networkInterfaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkInterfaces/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-networksecuritygroupsdiagsettingstows"></a>
### C1-SLZ-51-NetworkSecurityGroupsDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Network Security Groups to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-security-groups-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-network-security-groups-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkSecurityGroups/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/networkSecurityGroups`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkSecurityGroups/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/networkSecurityGroups`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkSecurityGroups/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/networkSecurityGroups`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/networkSecurityGroups/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-powerbidedicatedcapacitydiagsettingstows"></a>
### C1-SLZ-51-PowerBIDedicatedCapacityDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for PowerBI Dedicated Capacity to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-powerbi-dedicated-capacity-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-powerbi-dedicated-capacity-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.PowerBIDedicated/capacities`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.PowerBIDedicated/capacities/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.PowerBIDedicated/capacities`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.PowerBIDedicated/capacities/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.PowerBIDedicated/capacities`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.PowerBIDedicated/capacities/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.PowerBIDedicated/capacities`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.PowerBIDedicated/capacities/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-publicipdiagsettingstows"></a>
### C1-SLZ-51-PublicIPDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Public IP Address to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-public-ip-address-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-public-ip-address-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/publicIPAddresses`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/publicIPAddresses/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Network/publicIPAddresses`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/publicIPAddresses/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Network/publicIPAddresses`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/publicIPAddresses/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/publicIPAddresses`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Network/publicIPAddresses/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-servicebusnamespacediagsettingstows"></a>
### C1-SLZ-51-ServiceBusNamespaceDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Service Bus Namespace to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-service-bus-namespace-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-service-bus-namespace-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ServiceBus/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ServiceBus/namespaces/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.ServiceBus/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ServiceBus/namespaces/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.ServiceBus/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ServiceBus/namespaces/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.ServiceBus/namespaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.ServiceBus/namespaces/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-51-storageaccountsdiagsettingstows"></a>
### C1-SLZ-51-StorageAccountsDiagSettingsToWS

- **Display name:** C1 - SLZ - 51 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Monitoring/ID051-SLZ-Monitor/C1-slz-51-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Monitoring/ID051-SLZ-Monitor`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/workspaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/workspaces/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/tableServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Storage/workspaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/workspaces/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/tableServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/providers/diagnosticSettings` against the conditions in its policy rule. It evaluates `Microsoft.Storage/workspaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/workspaces/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/tableServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/workspaces/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Storage/workspaces`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/workspaces/blobServices/providers/diagnosticSettings`, and related child resources to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or Disable the execution of the policy); `workspaceId` (default no default; ID of Landing Zone's log analytics workspace); `policyName` (default `setByPolicy`; policy name).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-171-securitycontactemailadditionaladdress"></a>
### C1-SLZ-171-SecurityContactEmailAdditionalAddress

- **Display name:** C1 - SLZ - 171 - Ensure 'Additional email addresses' is Configured with a Security Contact Email
- **Source:** [`Definitions/policyDefinitions/C1/Security/ID171/C1-slz-171-ensure-'additional-email-addresses'-is-configured-with-a-security-contact-email.jsonc`](Definitions/policyDefinitions/C1/Security/ID171/C1-slz-171-ensure-'additional-email-addresses'-is-configured-with-a-security-contact-email.jsonc)
- **Folder:** `C1/Security/ID171`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/securityContacts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy ensures that defined email address is added to security contacts. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/securityContacts`. Key rule fields include `Microsoft.Security/securityContacts/email`, `Microsoft.Security/securityContacts/isEnabled`, `Microsoft.Security/securityContacts/notificationsSources[*].Alert.minimalSeverity`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Create the required Azure Monitor activity log alert rules and action group wiring at subscription scope.

**Parameters or variables to specify or consider:** `emailSecurityContact` (default `ec-digit-csirc@ec.europa.eu`; Provide email addresses (semi-colon separated) for Defender for Cloud contact details); `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Enable or disable the execution of the policy); `minimalSeverity` (default `High`; allowed `High`, `Medium`, `Low`; Defines the minimal alert severity which will be sent as email notifications).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires standard Azure Monitor alert definitions, action groups, and subscription-level alert lifecycle ownership.

**Common false positives / exceptions:** A subscription can be monitored centrally by another alerting pattern, causing this policy to flag a missing local alert.

**Evidence / compliance signal:** Compliance evidence is the subscription missing the required activity log alert rule for the configured operation name.

**Potential issues:** Alert presence does not prove the action group routing or incident process is effective. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-172-alertsnotifysettohigh"></a>
### C1-SLZ-172-AlertsNotifySetToHigh

- **Display name:** C1 - SLZ - 172 - Ensure That 'Notify about alerts with the following severity' is Set to 'High'
- **Source:** [`Definitions/policyDefinitions/C1/Security/ID172/C1-slz-172-alert-severity-set-high.jsonc`](Definitions/policyDefinitions/C1/Security/ID172/C1-slz-172-alert-severity-set-high.jsonc)
- **Folder:** `C1/Security/ID172`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/securityContacts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Notify about alerts with the severity Set to 'High' in Cloud Security Contacts It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/securityContacts`. Key rule fields include `Microsoft.Security/securityContacts/alertNotifications`, `Microsoft.Security/securityContacts/isEnabled`, `Microsoft.Security/securityContacts/notificationsSources[*]`, `Microsoft.Security/securityContacts/notificationsSources[*].sourceType`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Create the required Azure Monitor activity log alert rules and action group wiring at subscription scope.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires standard Azure Monitor alert definitions, action groups, and subscription-level alert lifecycle ownership.

**Common false positives / exceptions:** A subscription can be monitored centrally by another alerting pattern, causing this policy to flag a missing local alert.

**Evidence / compliance signal:** Compliance evidence is the subscription missing the required activity log alert rule for the configured operation name.

**Potential issues:** Alert presence does not prove the action group routing or incident process is effective.

<a id="policy-c1-slz-27-storageaccountdiagnosticsettingstows"></a>
### C1-SLZ-27-StorageAccountDiagnosticSettingsToWS

- **Display name:** C1 - SLZ - 27 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Storage/ID027/C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Storage/ID027/C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Storage/ID027`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Deploys the diagnostic settings for Storage accounts to stream resource logs to a Log Analytics workspace when any storage accounts which is missing this diagnostic settings is created or updated. It evaluates `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `profileName` (default `setbypolicy_logAnalytics`; The diagnostic settings profile name); `logAnalytics` (default no default; Select Log Analytics workspace from the dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permission...); `metricsEnabled` (default `True`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-deprecated"></a>
### DEPRECATED

- **Display name:** C1 - SLZ - 27 - Configure diagnostic settings for Storage Accounts to Log Analytics workspace
- **Source:** [`Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)
- **Folder:** `C1/Storage/ID027`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Deploys the diagnostic settings for Storage accounts to stream resource logs to a Log Analytics workspace when any storage accounts which is missing this diagnostic settings is created or updated. It evaluates `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/fileServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/queueServices/providers/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Storage/storageAccounts`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/providers/diagnosticSettings`, and related child resources to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy); `logAnalytics` (default no default; Select Log Analytics workspace from dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permissions (o...); `metricsEnabled` (default `False`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False); `profileName` (default `setbypolicy_logAnalytics`; The diagnostic settings profile name); `logsEnabled` (default `True`; allowed `True`, `False`; Whether to enable logs stream to the Log Analytics workspace - True or False).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-189-blobservicestoragelogging"></a>
### C1-SLZ-189-BlobServiceStorageLogging

- **Display name:** C1 - SLZ - 189 - Ensure Storage Logging is Enabled for Blob Service for 'Read', 'Write', and 'Delete' Requests
- **Source:** [`Definitions/policyDefinitions/C1/Storage/ID189/C1-slz-189-azure-storage-blobs-logging.jsonc`](Definitions/policyDefinitions/C1/Storage/ID189/C1-slz-189-azure-storage-blobs-logging.jsonc)
- **Folder:** `C1/Storage/ID189`
- **Category:** `Storage`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/blobServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Deploys the diagnostic settings for Blob Services to stream resource logs to a Log Analytics workspace when any blob Service which is missing this diagnostic settings is created or updated. Note: This policy is not triggered upon Storage Account creation an... It evaluates `Microsoft.Storage/storageAccounts/blobServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Storage/storageAccounts/blobServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/blobServices/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `logAnalytics` (default no default; Select Log Analytics workspace from the dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permission...); `metricsEnabled` (default `False`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False); `profileName` (default `blobServicesDiagnosticsLogsToWorkspace`; The diagnostic settings profile name); `logsEnabled` (default `True`; allowed `True`, `False`; Whether to enable logs stream to the Log Analytics workspace - True or False).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-190-tableservicestoragelogging"></a>
### C1-SLZ-190-TableServiceStorageLogging

- **Display name:** C1 - SLZ - 190 - Ensure Storage Logging is Enabled for Table Service for 'Read', 'Write', and 'Delete' Requests
- **Source:** [`Definitions/policyDefinitions/C1/Storage/ID190/C1-slz-190-ensure-storage-logging-is-enabled-for-table-service-for-'read',-'write',-and-'delete'-reques.jsonc`](Definitions/policyDefinitions/C1/Storage/ID190/C1-slz-190-ensure-storage-logging-is-enabled-for-table-service-for-'read',-'write',-and-'delete'-reques.jsonc)
- **Folder:** `C1/Storage/ID190`
- **Category:** `Storage`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/tableServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Deploys the diagnostic settings for Table Services to stream resource logs to a Log Analytics workspace when any table Service which is missing this diagnostic settings is created or updated. Note: This policy is not triggered upon Storage Account creation... It evaluates `Microsoft.Storage/storageAccounts/tableServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/metrics.enabled`, `Microsoft.Insights/diagnosticSettings/workspaceId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Storage/storageAccounts/tableServices`, `Microsoft.Insights/diagnosticSettings`, `Microsoft.Storage/storageAccounts/tableServices/providers/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `logAnalytics` (default no default; Select Log Analytics workspace from the dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permission...); `metricsEnabled` (default `False`; allowed `True`, `False`; Whether to enable metrics stream to the Log Analytics workspace - True or False); `profileName` (default `tableServicesDiagnosticsLogsToWorkspace`; The diagnostic settings profile name); `logsEnabled` (default `True`; allowed `True`, `False`; Whether to enable logs stream to the Log Analytics workspace - True or False).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-221-activitylogresourcesnotpubliclyaccessible"></a>
### C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible

- **Display name:** C1 - SLZ - 221 - Ensure Activity Log Storage and LAW are not Publicly Accessible
- **Source:** [`Definitions/policyDefinitions/C1/Storage/ID221/C1-slz-221-ensure-the-storage-container-storing-the-activity-logs-is-not-publicly-accessible.jsonc`](Definitions/policyDefinitions/C1/Storage/ID221/C1-slz-221-ensure-the-storage-container-storing-the-activity-logs-is-not-publicly-accessible.jsonc)
- **Folder:** `C1/Storage/ID221`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.OperationalInsights/workspaces`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensures that the storage account for activity logs and the Log Analytics workspace do not allow public access. It evaluates `Microsoft.Storage/storageAccounts`, `Microsoft.OperationalInsights/workspaces`. Key rule fields include `name`, `Microsoft.Storage/storageAccounts/allowBlobPublicAccess`, `Microsoft.OperationalInsights/workspaces/publicNetworkAccessForIngestion`, `Microsoft.OperationalInsights/workspaces/publicNetworkAccessForQuery`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Storage/storageAccounts`, `Microsoft.OperationalInsights/workspaces` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; The effect determines what happens when the policy rule is evaluated to match); `targetStorageAccountName` (default no default; Name of the storage account that should not allow public access); `targetLogAnalyticsWorkspaceName` (default no default; Name of the Log Analytics workspace that should not allow public network access for ingestion and query).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-c1-slz-222-storageaccountlogscmk"></a>
### C1-SLZ-222-StorageAccountLogsCMK

- **Display name:** C1-SLZ - 222 - Ensure the storage account containing the container with activity logs is encrypted with Customer Managed Key
- **Source:** [`Definitions/policyDefinitions/C1/Storage/ID222/C1-slz-222-Storage-Logs-Encrypted-CMK.jsonc`](Definitions/policyDefinitions/C1/Storage/ID222/C1-slz-222-Storage-Logs-Encrypted-CMK.jsonc)
- **Folder:** `C1/Storage/ID222`
- **Category:** `Key Vault`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Deny`, `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Keyvault`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure the storage account containing the container with activity logs is encrypted with Customer Managed Key It evaluates `Microsoft.Storage/storageAccounts`, `Microsoft.Keyvault`. Key rule fields include `name`, `Microsoft.Storage/storageAccounts/encryption.keySource`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Storage/storageAccounts`, `Microsoft.Keyvault` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Deny`, `Audit`, `Disabled`; Enable or disable the execution of the policy); `storageAccount` (default no default; Name Storage account).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-denypurviewaccounts"></a>
### SLZ-DenyPurviewAccounts

- **Display name:** SLZ - Deny purview accounts
- **Source:** [`Definitions/policyDefinitions/SLZ/Analytics/ID00-NonID-Purview/slz-purview-account-not-allowed.jsonc`](Definitions/policyDefinitions/SLZ/Analytics/ID00-NonID-Purview/slz-purview-account-not-allowed.jsonc)
- **Folder:** `SLZ/Analytics/ID00-NonID-Purview`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Purview/accounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Deny the creation of purview accounts It evaluates `Microsoft.Purview/accounts`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.Purview/accounts` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; The effect to enforce for this policy. Possible values are Audit, Deny, or Disabled.).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-165-machinesauditperiodsystemupdatescheck"></a>
### SLZ-165-MachinesAuditPeriodSystemUpdatesCheck

- **Display name:** SLZ - 165 - Machines should be configured to periodically check for missing system updates
- **Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165-machines-should-be-configured-to-periodically-check-for-missing-system-updates.jsonc`](Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165-machines-should-be-configured-to-periodically-check-for-missing-system-updates.jsonc)
- **Folder:** `SLZ/Compute/ID165`
- **Category:** `Azure Update Manager`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** The policy evaluates resources of type `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines` against the conditions in its policy rule. It evaluates `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines`. Key rule fields include `Microsoft.Compute/virtualMachines/osProfile.computerName`, `Microsoft.Compute/imagePublisher`, `Microsoft.Compute/imageOffer`, `Microsoft.Compute/imageSKU`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change production deployments of `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines` to use approved SKUs or tiers and keep non-production exceptions explicit.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; The desired effect of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires teams to select approved production SKUs in IaC and budget for higher service tiers where needed.

**Common false positives / exceptions:** Development, sandbox, trial, or cost-controlled non-production workloads may intentionally use lower SKUs.

**Evidence / compliance signal:** Compliance evidence is a production-tagged or in-scope resource using a disallowed free, basic, trial, developer, or low-cost SKU.

**Potential issues:** Production SKU checks depend on reliable environment tagging or scoping; otherwise development resources may be incorrectly reported.

<a id="policy-slz-165-2-1-machinesconfigureperiodsystemupdatescheck"></a>
### SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck

- **Display name:** SLZ - 165.2.1 - Configure periodic checking for missing system updates on azure LINUX virtual machines
- **Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.1-configure-to-periodically-check-for-missing-system-updates.jsonc`](Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.1-configure-to-periodically-check-for-missing-system-updates.jsonc)
- **Folder:** `SLZ/Compute/ID165`
- **Category:** `Azure Update Manager`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Configure auto-assessment (every 24 hours) for OS updates on native Azure virtual machines. You can control the scope of assignment according to machine subscription, resource group, location or tag. Learn more about this for Windows: https://aka.ms/compute... It evaluates `Microsoft.Compute/virtualMachines`. Key rule fields include `location`, `[if(equals(tolower(parameters('osType')), 'windows'), 'Microsoft.Compute/virtualMachines/osProfile.windowsConfiguration.patchSettings.assessmentMode', 'Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration.patchSettings.assessmentMode')]`, `Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType`, `Microsoft.Compute/virtualMachines/osProfile.computerName`, `Microsoft.Compute/imageId`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.createOption`, `Microsoft.Compute/imagePublisher`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Modify`, `Disabled`; The desired effect of the policy.); `assessmentMode` (default `AutomaticByPlatform`; allowed `ImageDefault`, `AutomaticByPlatform`; Assessment mode for the machines.); `osType` (default `Linux`; allowed `Windows`, `Linux`; OS type for the machines.); `locations` (default `[]`; The list of locations from which machines need to be targeted.); `tagValues` (default `object value`; The list of tags that need to matched for getting target machines.); `tagOperator` (default `Any`; allowed `All`, `Any`; Matching condition for resource tags).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-165-2-machinesconfigureperiodsystemupdatescheck"></a>
### SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck

- **Display name:** SLZ - 165.2.2 - Configure periodic checking for missing system updates on azure WINDOWS virtual machines
- **Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.2-configure-to-periodically-check-for-missing-system-updates.jsonc`](Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.2-configure-to-periodically-check-for-missing-system-updates.jsonc)
- **Folder:** `SLZ/Compute/ID165`
- **Category:** `Azure Update Manager`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Configure auto-assessment (every 24 hours) for OS updates on native Azure virtual machines. You can control the scope of assignment according to machine subscription, resource group, location or tag. Learn more about this for Windows: https://aka.ms/compute... It evaluates `Microsoft.Compute/virtualMachines`. Key rule fields include `location`, `[if(equals(tolower(parameters('osType')), 'windows'), 'Microsoft.Compute/virtualMachines/osProfile.windowsConfiguration.patchSettings.assessmentMode', 'Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration.patchSettings.assessmentMode')]`, `Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType`, `Microsoft.Compute/virtualMachines/osProfile.computerName`, `Microsoft.Compute/imageId`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.createOption`, `Microsoft.Compute/imagePublisher`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Modify`, `Disabled`; The desired effect of the policy.); `assessmentMode` (default `AutomaticByPlatform`; allowed `ImageDefault`, `AutomaticByPlatform`; Assessment mode for the machines.); `osType` (default `Windows`; allowed `Windows`, `Linux`; OS type for the machines.); `locations` (default `[]`; The list of locations from which machines need to be targeted.); `tagValues` (default `object value`; The list of tags that need to matched for getting target machines.); `tagOperator` (default `Any`; allowed `All`, `Any`; Matching condition for resource tags).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-250-onlyapprovedextensions"></a>
### SLZ-250-OnlyApprovedExtensions

- **Display name:** SLZ - 250 - Ensure that Only Approved Extensions Are Installed
- **Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID250/slz-250-ensure-that-only-approved-extensions-are-installed.jsonc`](Definitions/policyDefinitions/SLZ/Compute/ID250/slz-250-ensure-that-only-approved-extensions-are-installed.jsonc)
- **Folder:** `SLZ/Compute/ID250`
- **Category:** `Guest Configuration`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines/extensions`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy governs the virtual machine extensions that are not approved. It evaluates `Microsoft.Compute/virtualMachines/extensions`. Key rule fields include `Microsoft.Compute/virtualMachines/extensions/type`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Ensure VM identities, Guest Configuration extensions, package reachability, and update-assessment settings are present through VM baseline modules.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; The effect determines what happens when the policy rule is evaluated to match); `approvedExtensions` (default `36 values`; The list of approved extension types that can be installed. Example: AzureDiskEncryption).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires VM identity, extension, outbound connectivity, and guest configuration package readiness, even when the policy is only reporting.

**Common false positives / exceptions:** Unsupported OS images, sealed appliances, Arc connectivity gaps, or blocked egress can appear as non-compliance.

**Evidence / compliance signal:** Compliance evidence is a VM missing the expected identity, extension, assignment, or guest setting result.

**Potential issues:** Guest Configuration can be noisy where VM images, extensions, identities, or egress are not standardized.

<a id="policy-slz-193-sqlserverauditing"></a>
### SLZ-193-SQLServerAuditing

- **Display name:** SLZ - 193 - Auditing on SQL server should be enabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID193/slz-193-auditing-on-sql-should-be-on.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID193/slz-193-auditing-on-sql-should-be-on.jsonc)
- **Folder:** `SLZ/Database/ID193`
- **Category:** `SQL`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Auditing on your SQL Server should be enabled to track database activities across all databases on the server and save them in an audit log. It evaluates `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings`. Key rule fields include `kind`, `Microsoft.Sql/auditingSettings.state`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.Sql/servers`, `Microsoft.Sql/servers/auditingSettings` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `setting` (default `enabled`; allowed `enabled`, `disabled`; Desired Auditing setting).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place.

<a id="policy-slz-194-azuresqldbingressfrom0000"></a>
### SLZ-194-AzureSQLDBIngressFrom0000

- **Display name:** SLZ - 194 - Ensure no Azure SQL Databases allow ingress from 0.0.0.0/0 (ANY IP)
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID194/slz-194-ensure-no-azure-sql-databases-allow-ingress-from-0.0.0.00-any-ip.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID194/slz-194-ensure-no-azure-sql-databases-allow-ingress-from-0.0.0.00-any-ip.jsonc)
- **Folder:** `SLZ/Database/ID194`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers/firewallRules`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Disabling the public network access property improves security by ensuring your Azure SQL Database can only be accessed from a private endpoint. This configuration denies all logins that match IP or virtual network based firewall rules. It evaluates `Microsoft.Sql/servers/firewallRules`. Key rule fields include `Microsoft.Sql/servers/firewallRules/startIpAddress`, `Microsoft.Sql/servers/firewallRules/endIpAddress`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change deployment modules for `Microsoft.Sql/servers/firewallRules` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-195-sqlservertdeencryptionwithcmk"></a>
### SLZ-195-SQLServerTDEEncryptionWithCMK

- **Display name:** SLZ - 195 - Ensure SQL server's Transparent Data Encryption (TDE) protector is encrypted with Customer-managed key
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID195/slz-195-sql-tde-encrypted-with-customer-managed-keys.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID195/slz-195-sql-tde-encrypted-with-customer-managed-keys.jsonc)
- **Folder:** `SLZ/Database/ID195`
- **Category:** `SQL`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers`, `Microsoft.Sql/servers/encryptionProtector`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures that SQL Server's Transparent Data Encryption (TDE) protector is encrypted with a customer-managed key. It evaluates `Microsoft.Sql/servers`, `Microsoft.Sql/servers/encryptionProtector`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.Sql/servers/keyid`, `Microsoft.Sql/servers/encryptionProtector/serverKeyType`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Sql/servers`, `Microsoft.Sql/servers/encryptionProtector` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-196-sqlserveraadadminconfiguration"></a>
### SLZ-196-SQLServerAADAdminConfiguration

- **Display name:** SLZ - 196 - Ensure that Azure Active Directory Admin is Configured for SQL Servers
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID196/slz-196-ensure-that-azure-active-directory-admin-is-configured-for-sql-servers.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID196/slz-196-ensure-that-azure-active-directory-admin-is-configured-for-sql-servers.jsonc)
- **Folder:** `SLZ/Database/ID196`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Deny the creation of SQL servers without an Azure AD account as an authentication method. AAD enables simplified permission management and centralized identity management of database users and other Microsoft services It evaluates `Microsoft.Sql/servers`. Key rule fields include `Microsoft.Sql/servers/administrators.administratorType`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Ensure VM identities, Guest Configuration extensions, package reachability, and update-assessment settings are present through VM baseline modules.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the audit policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires VM identity, extension, outbound connectivity, and guest configuration package readiness, even when the policy is only reporting.

**Common false positives / exceptions:** Unsupported OS images, sealed appliances, Arc connectivity gaps, or blocked egress can appear as non-compliance.

**Evidence / compliance signal:** Compliance evidence is a VM missing the expected identity, extension, assignment, or guest setting result.

**Potential issues:** Guest Configuration can be noisy where VM images, extensions, identities, or egress are not standardized. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-197-sqldatabasedataencryption"></a>
### SLZ-197-SQLDatabaseDataEncryption

- **Display name:** SLZ - 197 - Ensure that 'Data encryption' is set to 'On' on a SQL Database
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID197/slz-197-ensure-that-'data-encryption'-is-set-to-'on'-on-a-sql-database.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID197/slz-197-ensure-that-'data-encryption'-is-set-to-'on'-on-a-sql-database.jsonc)
- **Folder:** `SLZ/Database/ID197`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/servers/databases`, `Microsoft.Sql/servers/databases/transparentDataEncryption`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Transparent data encryption should be enabled to protect data-at-rest and meet compliance requirements It evaluates `Microsoft.Sql/servers/databases`, `Microsoft.Sql/servers/databases/transparentDataEncryption`. Key rule fields include `name`, `Microsoft.Sql/transparentDataEncryption.status`, `Microsoft.Sql/servers/databases/transparentDataEncryption/state`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Configure `Microsoft.Sql/servers/databases`, `Microsoft.Sql/servers/databases/transparentDataEncryption` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-204-postgressqlflexibleserversslconnection"></a>
### SLZ-204-PostgresSQLFlexibleServerSSLConnection

- **Display name:** SLZ - 204 - Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server FLEXIBLE
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_FLEXIBLE.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_FLEXIBLE.jsonc)
- **Folder:** `SLZ/Database/ID204`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Database for PostgreSQL supports connecting your Azure Database for PostgreSQL server to client applications using Secure Sockets Layer (SSL). It evaluates `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/flexibleServers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-204-postgressqlserversslconnection"></a>
### SLZ-204-PostgresSQLServerSSLConnection

- **Display name:** SLZ - 204 - Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server SINGLE
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_SINGLE.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_SINGLE.jsonc)
- **Folder:** `SLZ/Database/ID204`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Azure Database for PostgreSQL supports connecting your Azure Database for PostgreSQL server to client applications using Secure Sockets Layer (SSL). It evaluates `Microsoft.DBforPostgreSQL/servers`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/sslEnforcement`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Disabled`, `Deny`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-205-postgressqlflexibleserver-log-checkpoints"></a>
### SLZ-205-PostgresSQLFlexibleServer_log_checkpoints

- **Display name:** SLZ - 205 - Ensure Server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Flexible Server
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-flexible-server.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-flexible-server.jsonc)
- **Folder:** `SLZ/Database/ID205`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL databases in your environment without log_checkpoints setting enabled. It evaluates `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-205-postgressqlserver-log-checkpoints"></a>
### SLZ-205-PostgresSQLServer_log_checkpoints

- **Display name:** SLZ - 205 - Ensure Server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Server
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-server.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-server.jsonc)
- **Folder:** `SLZ/Database/ID205`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL databases in your environment without log_checkpoints setting enabled. It evaluates `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/flexibleServers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-206-postgressqlserverlogconnections"></a>
### SLZ-206-PostgresSQLServerLogConnections

- **Display name:** SLZ - 206 - Log connections should be enabled for PostgreSQL database servers
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID206/slz-206-log-connections-should-be-enabled-for-postgresql-database-servers.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID206/slz-206-log-connections-should-be-enabled-for-postgresql-database-servers.jsonc)
- **Folder:** `SLZ/Database/ID206`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL databases in your environment without log_connections setting enabled. It evaluates `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-207-postgressqlserverdisconnectionslogging"></a>
### SLZ-207-PostgresSQLServerDisconnectionsLogging

- **Display name:** SLZ - 207 - Disconnections should be logged for PostgreSQL database servers.
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID207/slz-207-disconnections-should-be-logged-for-postgresql-database-servers..jsonc`](Definitions/policyDefinitions/SLZ/Database/ID207/slz-207-disconnections-should-be-logged-for-postgresql-database-servers..jsonc)
- **Folder:** `SLZ/Database/ID207`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL databases in your environment without log_disconnections enabled. It evaluates `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-208-postgressqlflexibleserverconnectionthrottling"></a>
### SLZ-208-PostgresSQLFlexibleServerConnectionThrottling

- **Display name:** SLZ - 208 - Connection throttling should be enabled for PostgreSQL database servers FLEXIBLE
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-flexible-servers.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-flexible-servers.jsonc)
- **Folder:** `SLZ/Database/ID208`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL databases in your environment without Connection throttling enabled. This setting enables temporary connection throttling per IP for too many invalid password login failures. It evaluates `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/flexibleServers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/flexibleservers`, `Microsoft.DBforPostgreSQL/flexibleservers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-208-postgressqlserverconnectionthrottling"></a>
### SLZ-208-PostgresSQLServerConnectionThrottling

- **Display name:** SLZ - 208 - Connection throttling should be enabled for PostgreSQL database servers
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-servers.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-servers.jsonc)
- **Folder:** `SLZ/Database/ID208`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL databases in your environment without Connection throttling enabled. This setting enables temporary connection throttling per IP for too many invalid password login failures. It evaluates `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-210-postgressqlflexibleserverpublicnetworkaccess"></a>
### SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess

- **Display name:** SLZ - 210 - Public network access should be disabled for PostgreSQL flexible servers
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-flexible-servers.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-flexible-servers.jsonc)
- **Folder:** `SLZ/Database/ID210`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Disabling the public network access property improves security by ensuring your Azure Database for PostgreSQL flexible servers can only be accessed from a private endpoint. This configuration strictly disables access from any public address space outside of... It evaluates `Microsoft.DBforPostgreSQL/flexibleServers`. Key rule fields include `Microsoft.DBforPostgreSQL/flexibleServers/createMode`, `Microsoft.DBforPostgreSQL/flexibleServers/network.delegatedSubnetResourceId`, `Microsoft.DBforPostgreSQL/flexibleServers/network.privateDnsZoneArmResourceId`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change deployment modules for `Microsoft.DBforPostgreSQL/flexibleServers` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-210-postgressqlserverpublicnetworkaccess"></a>
### SLZ-210-PostgresSQLServerPublicNetworkAccess

- **Display name:** SLZ - 210 - Public network access should be disabled for PostgreSQL servers
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-servers.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-servers.jsonc)
- **Folder:** `SLZ/Database/ID210`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Disabling the public network access property improves security by ensuring your Azure Database for PostgreSQL servers can only be accessed from a private endpoint. This configuration strictly disables access from any public address space outside of Azure IP... It evaluates `Microsoft.DBforPostgreSQL/servers`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/publicNetworkAccess`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change deployment modules for `Microsoft.DBforPostgreSQL/servers` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-212-mysqlsqlserverenforcesslconnection"></a>
### SLZ-212-MySQLSQLServerEnforceSSLConnection

- **Display name:** SLZ - 212 - Ensure 'Enforce SSL connection' is set to 'Enabled' for Standard MySQL Database Server
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID212/slz-212-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-standard-mysql-database-server.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID212/slz-212-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-standard-mysql-database-server.jsonc)
- **Folder:** `SLZ/Database/ID212`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/servers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Azure Database for MySQL supports connecting your Azure Database for MySQL server to client applications using Secure Sockets Layer (SSL). Enforcing SSL connections between your database server and your client applications helps protect against 'man in the... It evaluates `Microsoft.DBforMySQL/servers`. Key rule fields include `Microsoft.DBforMySQL/servers/sslEnforcement`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforMySQL/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-214-mysqlsqlserver-audit-log-enabled"></a>
### SLZ-214-MySQLSQLServer_audit_log_enabled

- **Display name:** SLZ - 214 - Ensure server parameter 'audit_log_enabled' is set to 'ON' for MySQL Database Server
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID214/slz-214-ensure-server-parameter-'audit_log_enabled'-is-set-to-'on'-for-mysql-database-server.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID214/slz-214-ensure-server-parameter-'audit_log_enabled'-is-set-to-'on'-for-mysql-database-server.jsonc)
- **Folder:** `SLZ/Database/ID214`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Enabling audit_log_enabled helps MySQL Database to log items such as connection attempts to the server, DDL/DML access, and more. Log data can be used to identify, troubleshoot, and repair configuration errors and suboptimal performance. It evaluates `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations`. Key rule fields include `Microsoft.DBForMySql/flexibleServers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-215-mysqlsqlserver-audit-log-events"></a>
### SLZ-215-MySQLSQLServer_audit_log_events

- **Display name:** SLZ - 215 - Ensure server parameter 'audit_log_events' has 'CONNECTION' set for MySQL Database Server
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID215/slz-215-ensure-server-parameter-'audit_log_events'-is-set-to-'CONNECTION'-for-mysql-database-server.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID215/slz-215-ensure-server-parameter-'audit_log_events'-is-set-to-'CONNECTION'-for-mysql-database-server.jsonc)
- **Folder:** `SLZ/Database/ID215`
- **Category:** `SQL`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensures that the MySQL Database Server parameter audit_log_events includes CONNECTION to log connection events for enhanced security and compliance. It evaluates `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations`. Key rule fields include `Microsoft.DBForMySql/flexibleServers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update database modules for `Microsoft.DBforMySQL/flexibleServers`, `Microsoft.DBforMySQL/flexibleServers/configurations` to set the required audit, logging, authentication, firewall, TLS, encryption, or private access configuration.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires database server modules to set audit, encryption, TLS, firewall, authentication, or logging options consistently.

**Common false positives / exceptions:** Legacy database engines, migration windows, or vendor-managed appliances may not support the required setting immediately.

**Evidence / compliance signal:** Compliance evidence is the database/server child setting or server property not matching the required audit, logging, encryption, TLS, firewall, or authentication value.

**Potential issues:** Database settings can be split across server, database, and child configuration resources, so remediation often needs module changes in more than one place. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-216-azurecosmosdbfwlimitsforselectednetwork"></a>
### SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork

- **Display name:** SLZ - 216 - Ensure That 'Firewalls & Networks' Is Limited to use selected Networks Instead of All Networks
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID216/slz-216-ensure-that-'firewalls-&-networks'-is-limited-to-use-selected-networks-instead-of-all-networ.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID216/slz-216-ensure-that-'firewalls-&-networks'-is-limited-to-use-selected-networks-instead-of-all-networ.jsonc)
- **Folder:** `SLZ/Database/ID216`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Firewall rules should be defined on your Azure Cosmos DB accounts to prevent traffic from unauthorized sources. Accounts that have at least one IP rule defined with the virtual network filter enabled are deemed compliant. Accounts disabling public access ar... It evaluates `Microsoft.DocumentDB/databaseAccounts`. Key rule fields include `Microsoft.DocumentDB/databaseAccounts/publicNetworkAccess`, `Microsoft.DocumentDB/databaseAccounts/isVirtualNetworkFilterEnabled`, `Microsoft.DocumentDB/databaseAccounts/ipRules`, `Microsoft.DocumentDB/databaseAccounts/ipRules[*]`, `Microsoft.DocumentDB/databaseAccounts/ipRangeFilter`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.DocumentDB/databaseAccounts`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; The desired effect of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-217-azurecosmosdbprivatelink"></a>
### SLZ-217-AzureCosmosDBPrivateLink

- **Display name:** SLZ - 217 - CosmosDB accounts should use private link
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID217/slz-217-cosmosdb-accounts-should-use-private-link.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID217/slz-217-cosmosdb-accounts-should-use-private-link.jsonc)
- **Folder:** `SLZ/Database/ID217`
- **Category:** `Cosmos DB`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Azure Private Link lets you connect your virtual network to Azure services without a public IP address at the source or destination. The Private Link platform handles the connectivity between the consumer and services over the Azure backbone network. By map... It evaluates `Microsoft.DocumentDB/databaseAccounts`. Key rule fields include `Microsoft.DocumentDB/databaseAccounts/privateEndpointConnections[*]`, `Microsoft.DocumentDB/databaseAccounts/privateEndpointConnections[*].privateLinkServiceConnectionState.status`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change deployment modules for `Microsoft.DocumentDB/databaseAccounts` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-218-azurecosmosdblocalauthenticationdisabled"></a>
### SLZ-218-AzureCosmosDBLocalAuthenticationDisabled

- **Display name:** SLZ - 218 - Cosmos DB database accounts should have local authentication methods disabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Database/ID218/slz-218-cosmos-db-database-accounts-should-have-local-authentication-methods-disabled.jsonc`](Definitions/policyDefinitions/SLZ/Database/ID218/slz-218-cosmos-db-database-accounts-should-have-local-authentication-methods-disabled.jsonc)
- **Folder:** `SLZ/Database/ID218`
- **Category:** `Cosmos DB`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Disabling local authentication methods improves security by ensuring that Cosmos DB database accounts exclusively require Azure Active Directory identities for authentication. Learn more at: https://docs.microsoft.com/azure/cosmos-db/how-to-setup-rbac#disab... It evaluates `Microsoft.DocumentDB/databaseAccounts`. Key rule fields include `Microsoft.DocumentDB/databaseAccounts/disableLocalAuth`, `Microsoft.DocumentDB/databaseAccounts/capabilities[*].name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DocumentDB/databaseAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-1397-microsoftdefenderforcspm"></a>
### SLZ-1397-MicrosoftDefenderForCSPM

- **Display name:** SLZ - 1397 - Configure Microsoft Defender for CSPM
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID1397/slz-1397-configure-microsoft-defender-for-CSPM.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID1397/slz-1397-configure-microsoft-defender-for-CSPM.jsonc)
- **Folder:** `SLZ/Defender/ID1397`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Audit-only assignment is not supported by the current `effect` parameter. To meet the requested model, change the definition to expose an audit effect or exclude this policy.

**Breakdown of what the policy does:** Defender Cloud Security Posture Management (CSPM) provides enhanced posture capabilities and a new intelligent cloud security graph to help identify, prioritize, and reduce risk. Defender CSPM is available in addition to the free foundational security postu... It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`, `Microsoft.Security/pricings/extensions[*]`, `Microsoft.Security/pricings/extensions[*].name`, `Microsoft.Security/pricings/extensions[*].isEnabled`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `isSensitiveDataDiscoveryEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Sensitive Data Discovery add-on feature); `isContainerRegistriesVulnerabilityAssessmentsEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Container Registries Vulnerability Assessments add-on feature); `isAgentlessDiscoveryForKubernetesEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Agentless Discovery for Kubernetes add-on feature); `isAgentlessVmScanningEnabled` (default `false`; allowed `true`, `false`; Enable or disable the Agentless VM Scanning add-on feature); `isEntraPermissionsManagementEnabled` (default `true`; allowed `true`, `false`; Enable or disable the Permissions Management add-on feature).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-slz-153-defenderforendpoint"></a>
### SLZ-153-DefenderForEndpoint

- **Display name:** SLZ - 153 - Configure Microsoft Defender Endpoint Integration
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID153.2/slz-153-configure-microsoft-defender-endpoint-integration.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID153.2/slz-153-configure-microsoft-defender-endpoint-integration.jsonc)
- **Folder:** `SLZ/Defender/ID153.2`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/settings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Configures the Microsoft Defender for Endpoint integration settings, within Microsoft Defender for Cloud (also known as WDATP), for Windows downlevel machines onboarded to MDE via MMA, and auto provisioning of MDE on Windows Server 2019 , Windows Virtual De... It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/settings`. Key rule fields include `Microsoft.Security/settings/DataExportSetting.enabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-153-defendercloudpricingforserver"></a>
### SLZ-153-DefenderCloudPricingForServer

- **Display name:** SLZ - 153 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Servers
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID153/slz-153-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-servers.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID153/slz-153-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-servers.jsonc)
- **Folder:** `SLZ/Defender/ID153`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Audit-only assignment is not supported by the current `effect` parameter. To meet the requested model, change the definition to expose an audit effect or exclude this policy.

**Breakdown of what the policy does:** Azure Defender for servers provides real-time threat protection for server workloads and generates hardening recommendations as well as alerts about suspicious activities. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`, `Microsoft.Security/pricings/subPlan`, `Microsoft.Security/pricings/extensions[*]`, `Microsoft.Security/pricings/extensions[*].name`, `Microsoft.Security/pricings/extensions[*].isEnabled`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `subPlan` (default `P2`; allowed `P1`, `P2`; Select a Defender for Servers plan); `isAgentlessVmScanningEnabled` (default `false`; allowed `true`, `false`; Enable or disable the Agentless VM Scanning add-on feature); `isMdeDesignatedSubscriptionEnabled` (default `false`; allowed `true`, `false`; Enable or disable the MDE Designated Subscription add-on feature).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-slz-154-defendercloudpricingforapplicationservices"></a>
### SLZ-154-DefenderCloudPricingForApplicationServices

- **Display name:** SLZ - 154 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Application Services
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID154/slz-154-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-application-.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID154/slz-154-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-application-.jsonc)
- **Folder:** `SLZ/Defender/ID154`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Defender for App Service leverages the scale of the cloud, and the visibility that Azure has as a cloud provider, to monitor for common web app attacks. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-156-defendercloudpricingforazuresqldb"></a>
### SLZ-156-DefenderCloudPricingForAzureSQLDB

- **Display name:** SLZ - 156 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (Azure SQL Databases)
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID156/slz-156-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID156/slz-156-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc)
- **Folder:** `SLZ/Defender/ID156`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Defender for SQL provides functionality for surfacing and mitigating potential database vulnerabilities, detecting anomalous activities that could indicate threats to SQL databases, and discovering and classifying sensitive data. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-157-defendercloudpricingfordbonservers"></a>
### SLZ-157-DefenderCloudPricingForDBOnServers

- **Display name:** SLZ - 157 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (SQL servers on machines)
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID157/slz-157-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-sq.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID157/slz-157-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-sq.jsonc)
- **Folder:** `SLZ/Defender/ID157`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Defender for SQL provides functionality for surfacing and mitigating potential database vulnerabilities, detecting anomalous activities that could indicate threats to SQL databases, and discovering and classifying sensitive data. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-158-defendercloudpricingforopendb"></a>
### SLZ-158-DefenderCloudPricingForOpenDB

- **Display name:** SLZ - 158 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for OpenDB (Open-source relational db)
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID158/slz-158-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-opendb-open-.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID158/slz-158-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-opendb-open-.jsonc)
- **Folder:** `SLZ/Defender/ID158`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Defender for open-source relational databases detects anomalous activities indicating unusual and potentially harmful attempts to access or exploit databases. Learn more about the capabilities of Azure Defender for open-source relational databases at... It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-159-defendercloudpricingforstorage"></a>
### SLZ-159-DefenderCloudPricingForStorage

- **Display name:** SLZ - 159 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Storage
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID159/slz-159-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-storage.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID159/slz-159-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-storage.jsonc)
- **Folder:** `SLZ/Defender/ID159`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Audit-only assignment is not supported by the current `effect` parameter. To meet the requested model, change the definition to expose an audit effect or exclude this policy.

**Breakdown of what the policy does:** Microsoft Defender for Storage is an Azure-native layer of security intelligence that detects potential threats to your storage accounts. This policy will enable the basic Defender for Storage capabilities (Activity Monitoring). It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`, `Microsoft.Security/pricings/subPlan`, `Microsoft.Security/pricings/extensions[*]`, `Microsoft.Security/pricings/extensions[*].name`, `Microsoft.Security/pricings/extensions[*].isEnabled`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-slz-161-defendercloudpricingforazurecosmosdb"></a>
### SLZ-161-DefenderCloudPricingForAzureCosmosDB

- **Display name:** SLZ - 161 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Databases (Azure Cosmos Db)
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID161/slz-161-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID161/slz-161-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-databases-az.jsonc)
- **Folder:** `SLZ/Defender/ID161`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Microsoft Defender for Azure Cosmos DB is an Azure-native layer of security that detects attempts to exploit databases in your Azure Cosmos DB accounts. Defender for Azure Cosmos DB detects potential SQL injections, known bad actors based on Microsoft Threa... It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-162-defendercloudpricingforkeyvault"></a>
### SLZ-162-DefenderCloudPricingForKeyVault

- **Display name:** SLZ - 162 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Key Vaults
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID162/slz-162-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-key-vaults.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID162/slz-162-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-key-vaults.jsonc)
- **Folder:** `SLZ/Defender/ID162`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Microsoft Defender for Key Vault provides an additional layer of protection and security intelligence by detecting unusual and potentially harmful attempts to access or exploit key vault accounts. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-164-defendercloudpricingforresourcemanager"></a>
### SLZ-164-DefenderCloudPricingForResourceManager

- **Display name:** SLZ - 164 - Configure Microsoft Defender for Cloud princing tier for Microsoft Defender for Resource Manager
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID164/slz-164-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-resource-man.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID164/slz-164-configure-microsoft-defender-for-cloud-princing-tier-for-microsoft-defender-for-resource-man.jsonc)
- **Folder:** `SLZ/Defender/ID164`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Defender for Resource Manager automatically monitors the resource management operations in your organization. Azure Defender detects threats and alerts you about suspicious activity. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Effect).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-168-microsoftdefenderconfigurevmforvulnerability"></a>
### SLZ-168-MicrosoftDefenderConfigureVMForVulnerability

- **Display name:** SLZ - 168 - Configure machines to receive a vulnerability assessment provider
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/ID168/slz-configure-microsoft-defender-for-vulnerability-assessment.jsonc`](Definitions/policyDefinitions/SLZ/Defender/ID168/slz-configure-microsoft-defender-for-vulnerability-assessment.jsonc)
- **Folder:** `SLZ/Defender/ID168`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines`, `Microsoft.Security/assessments`, `Microsoft.Compute/virtualMachines/providers/serverVulnerabilityAssessments`, `Microsoft.HybridCompute/machines/providers/serverVulnerabilityAssessments`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Azure Defender includes vulnerability scanning for your machines at no extra cost. You don't need a Qualys license or even a Qualys account - everything's handled seamlessly inside Security Center. When you enable this policy, Azure Defender automatically d... It evaluates `Microsoft.Compute/virtualMachines`, `Microsoft.HybridCompute/machines`, `Microsoft.Security/assessments`, `Microsoft.Compute/virtualMachines/providers/serverVulnerabilityAssessments`, `Microsoft.HybridCompute/machines/providers/serverVulnerabilityAssessments`. Key rule fields include `tags`, `Microsoft.Security/assessments/status.code`, `Microsoft.Security/assessments/status.cause`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Enable or disable the execution of the policy); `vaType` (default `mdeTvm`; allowed `default`, `mdeTvm`; Select the vulnerability assessment solution to provision to machines.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-00-microsoftdefenderforcontainer"></a>
### SLZ-00-MicrosoftDefenderForContainer

- **Display name:** SLZ - 00 - Configure Microsoft Defender for CONTAINERS
- **Source:** [`Definitions/policyDefinitions/SLZ/Defender/IDdefender/slz-configure-microsoft-defender-for-containers.jsonc`](Definitions/policyDefinitions/SLZ/Defender/IDdefender/slz-configure-microsoft-defender-for-containers.jsonc)
- **Folder:** `SLZ/Defender/IDdefender`
- **Category:** `Security Center`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** New capabilities are continuously being added to Defender for Containers plan, which may require the user's explicit enablement. Use this policy to make sure all new capabilities will be enabled. It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Security/pricings`. Key rule fields include `Microsoft.Security/pricings/pricingTier`, `Microsoft.Security/pricings/extensions[*]`, `Microsoft.Security/pricings/extensions[*].name`, `Microsoft.Security/pricings/extensions[*].isEnabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Enable the required Microsoft Defender for Cloud plan or pricing setting at subscription scope through the security baseline process, or document an approved exception.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`; Enable or disable the execution of the policy); `isContainerRegistriesVulnerabilityAssessmentsEnabled` (default `true`; allowed `true`, `false`; Controls the container registries vulnerability assessments add-on).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription security-plan ownership, budgeting, and a rollout decision for Defender plans before compliance can be restored.

**Common false positives / exceptions:** Subscriptions intentionally outside Defender coverage, trial migrations, or centrally managed security plans may need explicit exemptions.

**Evidence / compliance signal:** Compliance evidence is the subscription security pricing or Defender setting not matching the required plan value.

**Potential issues:** The checked-in definitions may remediate paid Defender plans if assigned with DeployIfNotExists, which conflicts with an audit-only rollout unless adjusted. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-78-alloweddeploymentregions"></a>
### SLZ-78-AllowedDeploymentRegions

- **Display name:** SLZ - 78 - Designate allowed resource deployment region
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID078/slz-78-designate-allowed-resource-deployment-region.jsonc`](Definitions/policyDefinitions/SLZ/General/ID078/slz-78-designate-allowed-resource-deployment-region.jsonc)
- **Folder:** `SLZ/General/ID078`
- **Category:** `General`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy maintains a set of best available regions where your subscription can deploy resources. The objective of this policy is to ensure that your subscription has full access to Azure services with optimal performance. Should you need additional or di... It evaluates Not detected directly in the policy rule.. Key rule fields include `location`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Constrain deployment locations in IaC and subscription vending pipelines to the approved region list, with documented exceptions for unavailable services.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `listOfAllowedLocations` (default no default; allowed `global`, `europe`, `northeurope`, `westeurope`, `francecentral`, `germanywestcentral`, `norwayeast`, `polandcentral`, plus 6 more; The list of locations that can be specified when deploying resources.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires deployment pipelines to constrain locations and handle service-specific regional availability exceptions.

**Common false positives / exceptions:** Services with limited regional availability or disaster-recovery resources may need approved location exceptions.

**Evidence / compliance signal:** Compliance evidence is a resource or resource group deployed outside the allowed location list.

**Potential issues:** Allowed location policies need regular review as Azure service regional availability changes. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-238-1-apimprodnobasicsku"></a>
### SLZ-238.1-ApimProdNoBasicSku

- **Display name:** SLZ - 238.1 - Ensure API Management in PROD does not use Basic or Consumption SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.1-apimprodnobasicsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.1-apimprodnobasicsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits API Management services tagged as production (tag ec.EnvironmentType=PROD) that are running on the Basic or Consumption SKU. Production workloads must use Developer, Standard or Premium SKU for adequate performance and support. It evaluates `Microsoft.ApiManagement/service`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.ApiManagement/service/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-10-aksprodnofreetier"></a>
### SLZ-238.10-AKSProdNoFreeTier

- **Display name:** SLZ - 238.10 - Ensure AKS in PROD does not use Free tier
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.10-aksprodnofreetier.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.10-aksprodnofreetier.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits AKS clusters tagged as production (tag ec.EnvironmentType=PROD) that are using the Free pricing tier. Production workloads must use Standard or Premium tiers to ensure SLA-backed reliability and support. It evaluates `Microsoft.ContainerService/managedClusters`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.ContainerService/managedClusters/sku.tier`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-11-lbprodnobasicsku"></a>
### SLZ-238.11-LBProdNoBasicSku

- **Display name:** SLZ - 238.11 - Ensure Load Balancer in PROD does not use Basic SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.11-lbprodnobasicsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.11-lbprodnobasicsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/loadBalancers`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure Load Balancers tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU. Basic SKU lacks SLA, diagnostics, and zone redundancy  -  not suitable for production environments. It evaluates `Microsoft.Network/loadBalancers`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Network/loadBalancers/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Network/loadBalancers` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-238-12-vpngwprodnobasictier"></a>
### SLZ-238.12-VpnGwProdNoBasicTier

- **Display name:** SLZ - 238.12 - Ensure VPN Gateway in PROD does not use Basic tier
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.12-vpngwprodnobasictier.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.12-vpngwprodnobasictier.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworkGateways`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure VPN Gateways tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU tier. The Basic tier lacks SLA, BGP support, and active-active configurations, making it unsuitable for production. It evaluates `Microsoft.Network/virtualNetworkGateways`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Network/virtualNetworkGateways/sku.tier`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-13-azuresearchprodnofreeorbasicsku"></a>
### SLZ-238.13-AzureSearchProdNoFreeOrBasicSku

- **Display name:** SLZ - 238.13 - Ensure Azure Cognitive Search in PROD does not use Free or Basic SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.13-azuresearchprodnofreeorbasicsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.13-azuresearchprodnofreeorbasicsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Search/searchServices`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Cognitive Search services tagged as production (tag ec.EnvironmentType=PROD) that are using Free or Basic SKU. These SKUs are not suitable for production due to limited capacity, features, and no SLA. It evaluates `Microsoft.Search/searchServices`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Search/searchServices/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-14-signalrprodnofreetier"></a>
### SLZ-238.14-SignalRProdNoFreeTier

- **Display name:** SLZ - 238.14 - Ensure Azure SignalR in PROD does not use Free tier
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.14-signalrprodnofreetier.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.14-signalrprodnofreetier.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.SignalRService/SignalR`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure SignalR services tagged as production (tag ec.EnvironmentType=PROD) that are using the Free tier. The Free tier has no SLA and is not intended for production workloads. It evaluates `Microsoft.SignalRService/SignalR`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.SignalRService/SignalR/sku.tier`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-2-appconfigprodnofreesku"></a>
### SLZ-238.2-AppConfigProdNoFreeSku

- **Display name:** SLZ - 238.2 - Ensure App Configuration in PROD does not use Free SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.2-appconfigprodnofreesku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.2-appconfigprodnofreesku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.AppConfiguration/configurationStores`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits App Configuration resources tagged as production (tag ec.EnvironmentType=PROD) that are using the Free SKU. Production workloads must use the Standard SKU for availability, throughput, and support. It evaluates `Microsoft.AppConfiguration/configurationStores`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.AppConfiguration/configurationStores/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-3-appserviceprodnolowtiersku"></a>
### SLZ-238.3-AppServiceProdNoLowTierSku

- **Display name:** SLZ - 238.3 - Ensure App Service Plan in PROD does not use Free, Shared, or Basic SKUs
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.3-appserviceprodnolowtiersku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.3-appserviceprodnolowtiersku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/serverfarms`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits App Service Plans tagged as production (tag ec.EnvironmentType=PROD) that are using Free, Shared, or Basic SKUs (F1, D1, B1-B3). Production workloads must run on Standard, Premium, or Isolated tiers for adequate performance and support. It evaluates `Microsoft.Web/serverfarms`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Web/serverfarms/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-4-adxprodnodevelopertier"></a>
### SLZ-238.4-ADXProdNoDeveloperTier

- **Display name:** SLZ - 238.4 - Ensure Azure Data Explorer in PROD does not use Developer Tier
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.4-adxprodnodevelopertier.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.4-adxprodnodevelopertier.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Kusto/clusters`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure Data Explorer clusters tagged as production (tag ec.EnvironmentType=PROD) that are using the Developer SKU tier. Developer tier is not suitable for production workloads due to lack of SLA and limited capacity. It evaluates `Microsoft.Kusto/clusters`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Kusto/clusters/sku.tier`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-5-databricksprodnostandardortrialsku"></a>
### SLZ-238.5-DatabricksProdNoStandardOrTrialSku

- **Display name:** SLZ - 238.5 - Ensure Azure Databricks in PROD does not use Standard or Trial SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.5-databricksprodnostandardortrialsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.5-databricksprodnostandardortrialsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Databricks/workspaces`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure Databricks workspaces tagged as production (tag ec.EnvironmentType=PROD) that are using the Standard or Trial SKUs. Production workloads must use the Premium SKU for required enterprise features and support. It evaluates `Microsoft.Databricks/workspaces`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Databricks/workspaces/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-6-disksprodnostandardhdd"></a>
### SLZ-238.6-DisksProdNoStandardHDD

- **Display name:** SLZ - 238.6 - Ensure Disks in PROD are not using Standard HDD (Standard_LRS)
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.6-disksprodnostandardhdd.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.6-disksprodnostandardhdd.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/disks`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits managed disks tagged as production (tag ec.EnvironmentType=PROD) that are using Standard HDD (Standard_LRS) SKU. This tier is not recommended for production workloads due to limited performance and SLA. It evaluates `Microsoft.Compute/disks`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Compute/disks/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-7-acrprodnobasicsku"></a>
### SLZ-238.7-ACRProdNoBasicSku

- **Display name:** SLZ - 238.7 - Ensure ACR in PROD does not use Basic SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.7-acrprodnobasicsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.7-acrprodnobasicsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ContainerRegistry/registries`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure Container Registries tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU. Production registries must use Standard or Premium SKU for reliability, scale, and support. It evaluates `Microsoft.ContainerRegistry/registries`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.ContainerRegistry/registries/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-8-eventhubprodnobasicsku"></a>
### SLZ-238.8-EventHubProdNoBasicSku

- **Display name:** SLZ - 238.8 - Ensure Event Hubs in PROD do not use Basic SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.8-eventhubprodnobasicsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.8-eventhubprodnobasicsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`
- **Policy risk/severity:** Low
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure Event Hub namespaces tagged as production (tag ec.EnvironmentType=PROD) that are using the Basic SKU. Production workloads must use Standard, Premium, or Dedicated tiers for adequate performance and support. It evaluates `Microsoft.EventHub/namespaces`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.EventHub/namespaces/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-238-9-keyvaultprodnostandardsku"></a>
### SLZ-238.9-KeyVaultProdNoStandardSku

- **Display name:** SLZ - 238.9 - Ensure Key Vault in PROD does not use Standard SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID238/slz-238.9-keyvaultprodnostandardsku.jsonc`](Definitions/policyDefinitions/SLZ/General/ID238/slz-238.9-keyvaultprodnostandardsku.jsonc)
- **Folder:** `SLZ/General/ID238`
- **Category:** `Security`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audits Azure Key Vaults tagged as production (tag ec.EnvironmentType=PROD) that are using the Standard SKU. Premium SKU is required in production for advanced security features such as HSM-backed keys. It evaluates `Microsoft.KeyVault/vaults`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.KeyVault/vaults/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.EnvironmentType`; The tag name that marks production resources.); `tagValue` (default `PROD`; The tag value that represents production.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-272-resourcelockformissioncriticalresources"></a>
### SLZ-272-ResourceLockForMissionCriticalResources

- **Display name:** SLZ - 272 - Ensure that Resource Locks are set for Mission-Critical
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID272/slz-272-ensure-that-resource-locks-are-set-for-mission-critical.jsonc`](Definitions/policyDefinitions/SLZ/General/ID272/slz-272-ensure-that-resource-locks-are-set-for-mission-critical.jsonc)
- **Folder:** `SLZ/General/ID272`
- **Category:** `General`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions/resourceGroups`, `Microsoft.Authorization/locks`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Resource lock is applied for resources where defined TAG and its VALUE is applied. It evaluates `Microsoft.Resources/subscriptions/resourceGroups`, `Microsoft.Authorization/locks`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Authorization/locks/level`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; AuditIfNotExists or Disabled the execution of the Policy); `tagName` (default no default; The Tag name to audit against (i.e. Environment, CostCenter, etc.)); `tagValue` (default no default; Value of the tag to audit against (i.e. Prod/UAT/TEST, 12345, etc.)).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-287-iampermissionsthroughgroups"></a>
### SLZ-287-IAMPermissionsThroughGroups

- **Display name:** SLZ - 287 - Ensure IAM Users Receive Permissions Only Through Groups
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID287/slz-287-ensure-iam-users-receive-permissions-only-through-groups.jsonc`](Definitions/policyDefinitions/SLZ/General/ID287/slz-287-ensure-iam-users-receive-permissions-only-through-groups.jsonc)
- **Folder:** `SLZ/General/ID287`
- **Category:** `RBAC`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Authorization/roleAssignments`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy will allow admins to only assign role assignment at group level and not user level It evaluates `Microsoft.Authorization/roleAssignments`. Key rule fields include `Microsoft.Authorization/roleAssignments/principalType`, `Microsoft.Authorization/roleAssignments/principalId`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.Authorization/roleAssignments` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-617-onlyallowedgeolocations"></a>
### SLZ-617-OnlyAllowedGeoLocations

- **Display name:** SLZ - 617 - Only allowed geo locations
- **Source:** [`Definitions/policyDefinitions/SLZ/General/ID617/slz-617-only-allowed-geo-locations.jsonc`](Definitions/policyDefinitions/SLZ/General/ID617/slz-617-only-allowed-geo-locations.jsonc)
- **Folder:** `SLZ/General/ID617`
- **Category:** `General`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Cloud regions that must not be used must be "locked out" using technical policies or other technical controls to prevent data storage It evaluates Not detected directly in the policy rule.. Key rule fields include `location`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Constrain deployment locations in IaC and subscription vending pipelines to the approved region list, with documented exceptions for unavailable services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Choose between 'Audit' or 'Deny' effects.); `listOfAllowedLocations` (default `14 values`; The list of locations that can be specified when deploying resources.).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires deployment pipelines to constrain locations and handle service-specific regional availability exceptions.

**Common false positives / exceptions:** Services with limited regional availability or disaster-recovery resources may need approved location exceptions.

**Evidence / compliance signal:** Compliance evidence is a resource or resource group deployed outside the allowed location list.

**Potential issues:** Allowed location policies need regular review as Azure service regional availability changes.

<a id="policy-385f5831-96d4-41db-9a3c-cd3af78aaae6"></a>
### 385f5831-96d4-41db-9a3c-cd3af78aaae6

- **Display name:** SLZ - 01 Guest Configuration - Guest Configuration assignments on Windows
- **Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-01-guest-configuration-windows.jsonc`](Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-01-guest-configuration-windows.jsonc)
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Category:** `Guest Configuration`
- **Mode:** `Indexed`
- **Source default effect:** `deployIfNotExists`
- **Allowed effects:** not declared
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Audit-only assignment is not supported because the policy has a fixed `deployIfNotExists` effect and no assignment-time `effect` parameter.

**Breakdown of what the policy does:** This policy deploys the Windows Guest Configuration extension to Windows virtual machines hosted in Azure that are supported by Guest Configuration. The Windows Guest Configuration extension is a prerequisite for all Windows Guest Configuration assignments... It evaluates `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration`. Key rule fields include `Microsoft.Compute/imagePublisher`, `Microsoft.Compute/imageSKU`, `Microsoft.Compute/imageOffer`, `Microsoft.Compute/virtualMachines/osProfile.windowsConfiguration`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType`, `Microsoft.Compute/virtualMachines/extensions/publisher`, `Microsoft.Compute/virtualMachines/extensions/type`, `Microsoft.Compute/virtualMachines/extensions/provisioningState`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-331e8ea8-378a-410f-a2e5-ae22f38bb0da"></a>
### 331e8ea8-378a-410f-a2e5-ae22f38bb0da

- **Display name:** SLZ - 02 Guest Configuration - Guest Configuration assignments on Linux
- **Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-02-guest-configuration-linux.jsonc`](Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-02-guest-configuration-linux.jsonc)
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Category:** `Guest Configuration`
- **Mode:** `Indexed`
- **Source default effect:** `deployIfNotExists`
- **Allowed effects:** not declared
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Audit-only assignment is not supported because the policy has a fixed `deployIfNotExists` effect and no assignment-time `effect` parameter.

**Breakdown of what the policy does:** This policy deploys the Linux Guest Configuration extension to Linux virtual machines hosted in Azure that are supported by Guest Configuration. The Linux Guest Configuration extension is a prerequisite for all Linux Guest Configuration assignments and must... It evaluates `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration`. Key rule fields include `Microsoft.Compute/imagePublisher`, `Microsoft.Compute/imageSKU`, `Microsoft.Compute/imageOffer`, `Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType`, `Microsoft.Compute/virtualMachines/extensions/publisher`, `Microsoft.Compute/virtualMachines/extensions/type`, `Microsoft.Compute/virtualMachines/extensions/provisioningState`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachines/extensions`, `Microsoft.GuestConfiguration` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-3cf2ab00-13f1-4d0c-8971-2ac904541a7e"></a>
### 3cf2ab00-13f1-4d0c-8971-2ac904541a7e

- **Display name:** SLZ - 03 Guest Configuration - Add system-assigned on VMs with no identities
- **Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-03-guest-configuration-no-identities.jsonc`](Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-03-guest-configuration-no-identities.jsonc)
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Category:** `Guest Configuration`
- **Mode:** `Indexed`
- **Source default effect:** `modify`
- **Allowed effects:** not declared
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Audit-only assignment is not supported because the policy has a fixed `modify` effect and no assignment-time `effect` parameter.

**Breakdown of what the policy does:** This policy adds a system-assigned managed identity to virtual machines hosted in Azure that are supported by Guest Configuration but do not have any managed identities. A system-assigned managed identity is a prerequisite for all Guest Configuration assign... It evaluates `Microsoft.Compute/virtualMachines`. Key rule fields include `Microsoft.Compute/imagePublisher`, `Microsoft.Compute/imageSKU`, `Microsoft.Compute/imageOffer`, `Microsoft.Compute/virtualMachines/osProfile.windowsConfiguration`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType`, `Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration`, `identity.type`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-497dff13-db2a-4c0f-8603-28fa3b331ab6"></a>
### 497dff13-db2a-4c0f-8603-28fa3b331ab6

- **Display name:** SLZ - 04 Guest Configuration - Add system-assigned on VMs with User-Assigned identities
- **Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-04-guest-configuration-user-assigned-identities.jsonc`](Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-04-guest-configuration-user-assigned-identities.jsonc)
- **Folder:** `SLZ/Guest-Configuration/ID00-Guest-Config`
- **Category:** `Guest Configuration`
- **Mode:** `Indexed`
- **Source default effect:** `modify`
- **Allowed effects:** not declared
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Audit-only assignment is not supported because the policy has a fixed `modify` effect and no assignment-time `effect` parameter.

**Breakdown of what the policy does:** This policy adds a system-assigned managed identity to virtual machines hosted in Azure that are supported by Guest Configuration and have at least one user-assigned identity but do not have a system-assigned managed identity. A system-assigned managed iden... It evaluates `Microsoft.Compute/virtualMachines`. Key rule fields include `Microsoft.Compute/imagePublisher`, `Microsoft.Compute/imageSKU`, `Microsoft.Compute/imageOffer`, `Microsoft.Compute/virtualMachines/osProfile.windowsConfiguration`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType`, `Microsoft.Compute/virtualMachines/osProfile.linuxConfiguration`, `identity.type`. As written, this policy is not compatible with the requested audit-only assignment until the effect behavior is changed or the policy is excluded.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Compute/virtualMachines` in the resource deployment module.

**Parameters or variables to specify or consider:** None declared.

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. Audit-only assignment is not supported by the current effect parameterization and requires a policy change or exclusion.

<a id="policy-slz-223-logskeyvault"></a>
### SLZ-223-logsKeyVault

- **Display name:** SLZ - 223 - Ensure that logging for Azure Key Vault is 'Enabled'
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID223/slz-223-logs-keyVault.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID223/slz-223-logs-keyVault.jsonc)
- **Folder:** `SLZ/Monitoring/ID223`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that logging for Azure Key Vault is 'Enabled' It evaluates `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings`. Key rule fields include `Microsoft.Insights/diagnosticSettings/logs[*]`, `Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled`, `Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days`, `Microsoft.Insights/diagnosticSettings/logs.enabled`, `Microsoft.Insights/diagnosticSettings/storageAccountId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.KeyVault/vaults`, `Microsoft.Insights/diagnosticSettings` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `requiredRetentionDays` (default `365`; The required resource logs retention in days).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-226-logscreatepolicy"></a>
### SLZ-226-logsCreatePolicy

- **Display name:** SLZ - 226 - Ensure that Activity Log Alert exists for Create Policy Assignment
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID226/slz-226-logs-CreatePolicy.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID226/slz-226-logs-CreatePolicy.jsonc)
- **Folder:** `SLZ/Monitoring/ID226`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Create Policy Assignment It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Authorization/policyAssignments/write`; Policy Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-227-logsdeletepolicy"></a>
### SLZ-227-logsDeletePolicy

- **Display name:** SLZ - 227 - Ensure that Activity Log Alert exists for Delete Policy Assignment
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID227/slz-227-logs-DeletePolicy.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID227/slz-227-logs-DeletePolicy.jsonc)
- **Folder:** `SLZ/Monitoring/ID227`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Delete Policy Assignment It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Authorization/policyAssignments/delete`; Policy Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-228-logscreateupdatensg"></a>
### SLZ-228-logsCreateUpdateNsg

- **Display name:** SLZ - 228 - Ensure that Activity Log Alert exists for Create or Update Network Security Group
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID228/slz-228-logs-CreateOrUpdateNSG.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID228/slz-228-logs-CreateOrUpdateNSG.jsonc)
- **Folder:** `SLZ/Monitoring/ID228`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Create or Update Network Security Group It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/networkSecurityGroups/write`; Administrative Operation name for which activity log alert should be configured).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-229-logsdeletensg"></a>
### SLZ-229-logsDeleteNsg

- **Display name:** SLZ - 229 - Ensure that Activity Log Alert exists for Delete Network Security Group
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID229/slz-229-logs-DeleteNSG.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID229/slz-229-logs-DeleteNSG.jsonc)
- **Folder:** `SLZ/Monitoring/ID229`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Delete Network Security Group It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/networkSecurityGroups/delete`; Administrative Operation name for which activity log alert should be configured).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-230-logscreateupdatesecuritysolutions"></a>
### SLZ-230-logsCreateUpdateSecuritySolutions

- **Display name:** SLZ - 230 - Ensure that Activity Log Alert exists for Create or Update Security Solution
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID230/slz-230-logs-CreateOrUpdateSecuritySolutions.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID230/slz-230-logs-CreateOrUpdateSecuritySolutions.jsonc)
- **Folder:** `SLZ/Monitoring/ID230`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Create or Update Security Solution It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Security/securitySolutions/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-231-logsdeletesecuritysolutions"></a>
### SLZ-231-logsDeleteSecuritySolutions

- **Display name:** SLZ - 231 - Ensure that Activity Log Alert exists for Delete Security Solution
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID231/slz-231-logs-DeleteSecuritySolutions.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID231/slz-231-logs-DeleteSecuritySolutions.jsonc)
- **Folder:** `SLZ/Monitoring/ID231`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Delete Security Solution It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Security/securitySolutions/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-232-logscreateupdatesqlserverfirewallrule"></a>
### SLZ-232-logsCreateUpdateSqlServerFirewallRule

- **Display name:** SLZ - 232 - Ensure that Activity Log Alert exists for Create or Update SQL Server Firewall Rule
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID232/slz-232-logs-CreateUpdateSqlServerFirewallRule.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID232/slz-232-logs-CreateUpdateSqlServerFirewallRule.jsonc)
- **Folder:** `SLZ/Monitoring/ID232`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Create or Update SQL Server Firewall Rule It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Sql/servers/firewallRules/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-233-logsdeletesqlserverfirewallrule"></a>
### SLZ-233-logsDeleteSqlServerFirewallRule

- **Display name:** SLZ - 233 - Ensure that Activity Log Alert exists for Delete SQL Server Firewall Rule
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID233/slz-233-logs-DeleteSqlServerFirewallRule.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID233/slz-233-logs-DeleteSqlServerFirewallRule.jsonc)
- **Folder:** `SLZ/Monitoring/ID233`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Delete SQL Server Firewall Rule It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Sql/servers/firewallRules/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-234-logscreateorupdatepubliciprule"></a>
### SLZ-234-logsCreateOrUpdatePublicIpRule

- **Display name:** SLZ - 234 - Ensure that Activity Log Alert exists for Create or Update Public IP Address rule
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID234/slz-234-logs-CreateOrUpdatePublicIpRule.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID234/slz-234-logs-CreateOrUpdatePublicIpRule.jsonc)
- **Folder:** `SLZ/Monitoring/ID234`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Create or Update Public IP Address rule It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/publicIPAddresses/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-235-logsdeletepubliciprule"></a>
### SLZ-235-logsDeletePublicIpRule

- **Display name:** SLZ - 235 - Ensure that Activity Log Alert exists for Delete Public IP Address rule
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID235/slz-235-logs-DeletePublicIpRule.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID235/slz-235-logs-DeletePublicIpRule.jsonc)
- **Folder:** `SLZ/Monitoring/ID235`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that Activity Log Alert exists for Delete Public IP Address rule It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/publicIPAddresses/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-236-1-webappsnoinsights"></a>
### SLZ-236.1-webAppsNoInsights

- **Display name:** SLZ - 236.1 - Audit Web Apps without Application Insights
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.1-webAppsNoInsights.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.1-webAppsNoInsights.jsonc)
- **Folder:** `SLZ/Monitoring/ID236`
- **Category:** `Monitoring`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audit Web Apps that are not linked to an Application Insights resource. It evaluates `Microsoft.Web/sites`. Key rule fields include `tags['hidden-link: /app-insights-resource-id']`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Web/sites` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-236-2-functionappsnoinsights"></a>
### SLZ-236.2-functionAppsNoInsights

- **Display name:** SLZ - 236.2 - Audit Function Apps without Application Insights
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.2-functionAppsNoInsights.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.2-functionAppsNoInsights.jsonc)
- **Folder:** `SLZ/Monitoring/ID236`
- **Category:** `Monitoring`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audit Function Apps that are not linked to an Application Insights resource. It evaluates `Microsoft.Web/sites`. Key rule fields include `kind`, `tags['hidden-link: /app-insights-resource-id']`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Web/sites` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-236-3-logicappsnoinsights"></a>
### SLZ-236.3-logicAppsNoInsights

- **Display name:** SLZ - 236.3 - Audit Logic Apps without Application Insights
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.3-logicAppsNoInsights.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID236/slz-236.3-logicAppsNoInsights.jsonc)
- **Folder:** `SLZ/Monitoring/ID236`
- **Category:** `Monitoring`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Logic/workflows`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audit Logic Apps that are not linked to an Application Insights resource. It evaluates `Microsoft.Logic/workflows`. Key rule fields include `tags['hidden-link: /app-insights-resource-id']`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Logic/workflows` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-324-logscreatesecuritygroups"></a>
### SLZ-324-logsCreateSecurityGroups

- **Display name:** SLZ - 324 - Ensure a log metric filter and alarm exist for Create security group changes
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-CreateOrUpdateSecurityGroup.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-CreateOrUpdateSecurityGroup.jsonc)
- **Folder:** `SLZ/Monitoring/ID324`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Create security group changes It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/networkSecurityGroups/securityRules/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-324-logsdeletesecuritygroup"></a>
### SLZ-324-logsDeleteSecurityGroup

- **Display name:** SLZ - 324 - Ensure a log metric filter and alarm exist for Delete security group changes
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-DeleteSecurityGroup.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID324/slz-324-logs-DeleteSecurityGroup.jsonc)
- **Folder:** `SLZ/Monitoring/ID324`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Delete security group changes It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/networkSecurityGroups/securityRules/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-326-logscreatenetworkgateway"></a>
### SLZ-326-logsCreateNetworkGateway

- **Display name:** SLZ - 326 - Ensure a log metric filter and alarm exist for Create Network Gateway
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-CreateOrUpdateNetworkGateway.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-CreateOrUpdateNetworkGateway.jsonc)
- **Folder:** `SLZ/Monitoring/ID326`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Create Network Gateway It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/virtualNetworkGateways/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-326-logsdeletenetworkgateway"></a>
### SLZ-326-logsDeleteNetworkGateway

- **Display name:** SLZ - 326 - Ensure a log metric filter and alarm exist for Delete Network Gateway
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-DeleteNetworkGateway.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID326/slz-326-logs-DeleteNetworkGateway.jsonc)
- **Folder:** `SLZ/Monitoring/ID326`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Delete Network Gateway It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/virtualNetworkGateways/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-327-logscreateroutetables"></a>
### SLZ-327-logsCreateRouteTables

- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Create Route Tables
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTables.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTables.jsonc)
- **Folder:** `SLZ/Monitoring/ID327`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Create Route Tables It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/routeTables/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-327-logscreateroutetablesroute"></a>
### SLZ-327-logsCreateRouteTablesRoute

- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Create Route Tables Route
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTablesRoute.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-CreateOrUpdateRouteTablesRoute.jsonc)
- **Folder:** `SLZ/Monitoring/ID327`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Create Route Tables Route It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/routeTables/routes/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-327-logsdeletesecuritygroup"></a>
### SLZ-327-logsDeleteSecurityGroup

- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Delete Route Tables
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTables.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTables.jsonc)
- **Folder:** `SLZ/Monitoring/ID327`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Delete Route Tables It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/routeTables/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-327-logsdeletesecuritygrouproute"></a>
### SLZ-327-logsDeleteSecurityGroupRoute

- **Display name:** SLZ - 327 - Ensure a log metric filter and alarm exist for Delete Route Tables Route
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTablesRoute.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID327/slz-327-logs-DeleteRouteTablesRoute.jsonc)
- **Folder:** `SLZ/Monitoring/ID327`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Delete Route Tables Route It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/routeTables/routes/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-328-logscreatevirtualnetwork"></a>
### SLZ-328-logsCreateVirtualNetwork

- **Display name:** SLZ - 328 - Ensure a log metric filter and alarm exist for Create Virtual Networks
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-CreateOrUpdateVirtualNetworks.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-CreateOrUpdateVirtualNetworks.jsonc)
- **Folder:** `SLZ/Monitoring/ID328`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Create Virtual Networks It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/virtualNetworks/write`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-328-logsdeletevirtualnetworks"></a>
### SLZ-328-logsDeleteVirtualNetworks

- **Display name:** SLZ - 328 - Ensure a log metric filter and alarm exist for Delete Virtual Networks
- **Source:** [`Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-DeleteVirtualNetwork.jsonc`](Definitions/policyDefinitions/SLZ/Monitoring/ID328/slz-328-logs-DeleteVirtualNetwork.jsonc)
- **Folder:** `SLZ/Monitoring/ID328`
- **Category:** `Monitoring`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure a log metric filter and alarm exist for Delete Virtual Networks It evaluates `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts`. Key rule fields include `Microsoft.Insights/ActivityLogAlerts/enabled`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*]`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].field`, `Microsoft.Insights/ActivityLogAlerts/condition.allOf[*].equals`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.Resources/subscriptions`, `Microsoft.Insights/ActivityLogAlerts` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `operationName` (default no default; allowed `Microsoft.Network/virtualNetworks/delete`; Security Operation name for which activity log alert should exist).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-10-6-disablepublicnetworkwebapps"></a>
### SLZ-10.6-DisablePublicNetworkWebApps

- **Display name:** SLZ - 10.6 - Public Network Access Control for Web Apps
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID10.6/slz-10.6-DisablePublicNetworkWebApps.json`](Definitions/policyDefinitions/SLZ/Network/ID10.6/slz-10.6-DisablePublicNetworkWebApps.json)
- **Folder:** `SLZ/Network/ID10.6`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures public network access is disabled for Azure Web Apps by auditing or denying non-compliance. It evaluates `Microsoft.Web/sites`. Key rule fields include `Microsoft.Web/sites/publicNetworkAccess`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Web/sites`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-1325-wafonapgt"></a>
### SLZ-1325-WAFonAPGT

- **Display name:** SLZ - 1325 - Web Application Firewall (WAF) Must Be Enabled on Application Gateways
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1325/slz-1325-WAFonAPGT.json`](Definitions/policyDefinitions/SLZ/Network/ID1325/slz-1325-WAFonAPGT.json)
- **Folder:** `SLZ/Network/ID1325`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that Web Application Firewall (WAF) is enabled for Azure Application Gateways either through the built-in WAF configuration or a linked firewall policy. It evaluates `Microsoft.Network/applicationGateways`. Key rule fields include `Microsoft.Network/applicationGateways/webApplicationFirewallConfiguration`, `Microsoft.Network/applicationGateways/firewallPolicy`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

**Common false positives / exceptions:** Internal-only apps, non-HTTP workloads, or shared ingress services may be valid exceptions when protected elsewhere.

**Evidence / compliance signal:** Compliance evidence is an ingress resource missing WAF mode, WAF policy, or a required WAF-capable SKU.

**Potential issues:** The effect parameter metadata is malformed in this definition. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1326-wafskuv2"></a>
### SLZ-1326-WAFSkuV2

- **Display name:** SLZ - 1326 - Application Gateway Must Use WAF_v2 SKU
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1326/slz-1326-WAFSkuV2.json`](Definitions/policyDefinitions/SLZ/Network/ID1326/slz-1326-WAFSkuV2.json)
- **Folder:** `SLZ/Network/ID1326`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that Azure Application Gateways are configured with the WAF_v2 SKU, enhancing security by enabling Web Application Firewall (WAF) protection. It evaluates `Microsoft.Network/applicationGateways`. Key rule fields include `Microsoft.Network/applicationGateways/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

**Common false positives / exceptions:** Internal-only apps, non-HTTP workloads, or shared ingress services may be valid exceptions when protected elsewhere.

**Evidence / compliance signal:** Compliance evidence is an ingress resource missing WAF mode, WAF policy, or a required WAF-capable SKU.

**Potential issues:** The effect parameter metadata is malformed in this definition. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1327-wafonfrontdoor"></a>
### SLZ-1327-WAFonFrontDoor

- **Display name:** SLZ - 1327 - Azure CDN profiles of type Front Door should have a Web Application Firewall configured
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1327/slz-1327-WAFonFrontDoor.json`](Definitions/policyDefinitions/SLZ/Network/ID1327/slz-1327-WAFonFrontDoor.json)
- **Folder:** `SLZ/Network/ID1327`
- **Category:** `CDN`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Cdn/profiles`, `Microsoft.Cdn/profiles/securityPolicies`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy audits Azure CDN profiles of type Front Door to ensure they have a Web Application Firewall (WAF) configured for enhanced security. It evaluates `Microsoft.Cdn/profiles`, `Microsoft.Cdn/profiles/securityPolicies`. Key rule fields include `kind`, `Microsoft.Cdn/profiles/securityPolicies/parameters.type`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

**Common false positives / exceptions:** Internal-only apps, non-HTTP workloads, or shared ingress services may be valid exceptions when protected elsewhere.

**Evidence / compliance signal:** Compliance evidence is an ingress resource missing WAF mode, WAF policy, or a required WAF-capable SKU.

**Potential issues:** Some definitions without an exposed audit effect cannot be used as-is for reporting-only assignment.

<a id="policy-slz-1328-wafonfrontdoor-detection"></a>
### SLZ-1328-WAFonFrontDoor-Detection

- **Display name:** SLZ - 1328 - Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1328/slz-1328-WAFonFrontDoor-Detection.json`](Definitions/policyDefinitions/SLZ/Network/ID1328/slz-1328-WAFonFrontDoor-Detection.json)
- **Folder:** `SLZ/Network/ID1328`
- **Category:** `Network`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/frontdoorwebapplicationfirewallpolicies`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Mandates the use of 'Detection' or 'Prevention' mode to be active on all Web Application Firewall policies for Azure Front Door Service. It evaluates `Microsoft.Network/frontdoorwebapplicationfirewallpolicies`. Key rule fields include `Microsoft.Network/frontdoorWebApplicationFirewallPolicies/policySettings.mode`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `modeRequirement` (default `Detection`; allowed `Prevention`, `Detection`; Mode required for all WAF policies).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

**Common false positives / exceptions:** Internal-only apps, non-HTTP workloads, or shared ingress services may be valid exceptions when protected elsewhere.

**Evidence / compliance signal:** Compliance evidence is an ingress resource missing WAF mode, WAF policy, or a required WAF-capable SKU.

**Potential issues:** Some definitions without an exposed audit effect cannot be used as-is for reporting-only assignment.

<a id="policy-slz-1329-disablepublicnetworkfunctionapps"></a>
### SLZ-1329-DisablePublicNetworkFunctionApps

- **Display name:** SLZ - 1329 - Public Network Access Control for Function Apps
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1329/slz-1329-DisablePublicNetworkFunctionApps.json`](Definitions/policyDefinitions/SLZ/Network/ID1329/slz-1329-DisablePublicNetworkFunctionApps.json)
- **Folder:** `SLZ/Network/ID1329`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures public network access is disabled for Azure Function Apps, by auditing or denying non-compliance. It evaluates `Microsoft.Web/sites`. Key rule fields include `kind`, `Microsoft.Web/sites/publicNetworkAccess`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Web/sites`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-1330-privateendpointapi"></a>
### SLZ-1330-PrivateEndpointAPI

- **Display name:** SLZ - 1330 - Ensure Private Endpoint for Azure API Management Services
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1330/slz-1330-PrivateEndpointAPI.json`](Definitions/policyDefinitions/SLZ/Network/ID1330/slz-1330-PrivateEndpointAPI.json)
- **Folder:** `SLZ/Network/ID1330`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy ensures that Azure API Management Services have at least one approved private endpoint connection for enhanced network security. It evaluates `Microsoft.ApiManagement/service`. Key rule fields include `Microsoft.ApiManagement/service/privateEndpointConnections[*]`, `Microsoft.ApiManagement/service/privateEndpointConnections[*].privateLinkServiceConnectionState.status`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Change deployment modules for `Microsoft.ApiManagement/service` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Audit non-compliant resources or disable the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete.

<a id="policy-slz-1331-disablepublicaccessapi"></a>
### SLZ-1331-DisablePublicAccessAPI

- **Display name:** SLZ - 1331 - Ensure Public network access must be Disabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331-DisablePublicAccessAPI.json`](Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331-DisablePublicAccessAPI.json)
- **Folder:** `SLZ/Network/ID1331`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that Azure API Management Services have public network access disabled It evaluates `Microsoft.ApiManagement/service`. Key rule fields include `Microsoft.ApiManagement/service/publicNetworkAccess`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.ApiManagement/service`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1331-2-disablepublicaccessapipe"></a>
### SLZ-1331.2-DisablePublicAccessAPIPE

- **Display name:** SLZ - 1331.2 - Ensure Public network access must be Disabled for API management with Private Endpoints
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331.2-DisablePAwithPE.json`](Definitions/policyDefinitions/SLZ/Network/ID1331/slz-1331.2-DisablePAwithPE.json)
- **Folder:** `SLZ/Network/ID1331`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that Azure API Management Services have public network access disabled for API management with Private Endpoints It evaluates `Microsoft.ApiManagement/service`. Key rule fields include `Microsoft.ApiManagement/service/privateEndpointConnections[*]`, `Microsoft.ApiManagement/service/publicNetworkAccess`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change deployment modules for `Microsoft.ApiManagement/service` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1332-apiallowedsku"></a>
### SLZ-1332-APIAllowedSku

- **Display name:** SLZ - 1332 - Enforce Allowed SKUs for Azure API Management Service
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1332/slz-1332-APIAllowedSku.json`](Definitions/policyDefinitions/SLZ/Network/ID1332/slz-1332-APIAllowedSku.json)
- **Folder:** `SLZ/Network/ID1332`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ApiManagement/service`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures that only approved SKUs can be specified for Azure API Management Service to standardize service tiers and control resource allocation. It evaluates `Microsoft.ApiManagement/service`. Key rule fields include `Microsoft.ApiManagement/service/sku.name`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change production deployments of `Microsoft.ApiManagement/service` to use approved SKUs or tiers and keep non-production exceptions explicit.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `listOfAllowedSKUs` (default `["Developer", "Premium", "Isolated", "Standard", "Basic"]`; allowed `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium`, `Isolated`, `Consumption`; The list of SKUs permitted for Azure API Management service.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires teams to select approved production SKUs in IaC and budget for higher service tiers where needed.

**Common false positives / exceptions:** Development, sandbox, trial, or cost-controlled non-production workloads may intentionally use lower SKUs.

**Evidence / compliance signal:** Compliance evidence is a production-tagged or in-scope resource using a disallowed free, basic, trial, developer, or low-cost SKU.

**Potential issues:** Production SKU checks depend on reliable environment tagging or scoping; otherwise development resources may be incorrectly reported.

<a id="policy-slz-1333-nopubliciponnics"></a>
### SLZ-1333-NoPublicIpOnNics

- **Display name:** SLZ - 1333 - Network Interfaces Should Not Have Public IPs
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1333/slz-1333-NoPublicIpOnNics.json`](Definitions/policyDefinitions/SLZ/Network/ID1333/slz-1333-NoPublicIpOnNics.json)
- **Folder:** `SLZ/Network/ID1333`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkInterfaces`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures network interfaces are not configured with public IP addresses. Public IPs allow inbound and outbound internet access, which should be reviewed by the network security team. It evaluates `Microsoft.Network/networkInterfaces`. Key rule fields include `Microsoft.Network/networkInterfaces/ipconfigurations[*].publicIpAddress.id`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkInterfaces`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-1334-kubernetesinternallb"></a>
### SLZ-1334-KubernetesInternalLB

- **Display name:** SLZ - 1334 - Kubernetes Clusters Should Use Internal Load Balancers
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1334/slz-1334-KubernetesInternalLB.json`](Definitions/policyDefinitions/SLZ/Network/ID1334/slz-1334-KubernetesInternalLB.json)
- **Folder:** `SLZ/Network/ID1334`
- **Category:** `not declared`
- **Mode:** `Microsoft.Kubernetes.Data`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures Kubernetes clusters use internal load balancers to restrict access to applications within the same virtual network. Learn more at: https://aka.ms/kubepolicydoc. It evaluates `Microsoft.ContainerService/managedClusters`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.ContainerService/managedClusters` in the resource deployment module.

**Parameters or variables to specify or consider:** `source` (default `Original`; allowed `All`, `Generated`, `Original`; The source k8s object for constraint evaluation. 'Original' means evaluate only the GroupVersionKind specified. 'Generated' means evaluate only Gatekeeper ExpansionTemplates. 'A...); `warn` (default `False`; Whether or not to return warnings back to the user in the kubectl CLI.); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Controls how policy violations are handled. 'Audit' flags non-compliant resources. 'Deny' blocks them. 'Disabled' turns off the policy.); `excludedNamespaces` (default `["kube-system", "gatekeeper-system", "azure-arc", "azure-extensions-usage-system"]`; List of namespaces to exclude from policy evaluation. System namespaces 'kube-system', 'gatekeeper-system', and 'azure-arc' are always excluded by design.); `namespaces` (default `[]`; List of namespaces to include in the policy evaluation. An empty list means all namespaces are included.); `labelSelector` (default `object value`; Label query to select Kubernetes resources for policy evaluation. An empty selector matches all resources.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1335-nopubliciponaksnodepools"></a>
### SLZ-1335-NoPublicIpOnAKSNodePools

- **Display name:** SLZ - 1335 - Prevent Public IP on AKS Node Pools
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1335/slz-1335-NoPublicIpOnAKSNodePools.json`](Definitions/policyDefinitions/SLZ/Network/ID1335/slz-1335-NoPublicIpOnAKSNodePools.json)
- **Folder:** `SLZ/Network/ID1335`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that Azure Kubernetes Service (AKS) node pools do not have public IP addresses, preventing unnecessary public exposure of cluster nodes. It evaluates `Microsoft.ContainerService/managedClusters`. Key rule fields include `Microsoft.ContainerService/managedClusters/agentPoolProfiles[*]`, `Microsoft.ContainerService/managedClusters/agentPoolProfiles[*].enableNodePublicIP`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.ContainerService/managedClusters` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enforce, audit, or disable this policy enforcement.).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1336-containerappsnopublicna"></a>
### SLZ-1336-ContainerAppsNoPublicNA

- **Display name:** SLZ - 1336 - Container Apps Environment Should Disable Public Network Access
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1336/slz-1336-ContainerAppsNoPublicNA.json`](Definitions/policyDefinitions/SLZ/Network/ID1336/slz-1336-ContainerAppsNoPublicNA.json)
- **Folder:** `SLZ/Network/ID1336`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.App/managedEnvironments`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that public network access is disabled for Container Apps environments by requiring the use of an internal load balancer. This improves security by removing the need for a public IP address and preventing direct internet access to all co... It evaluates `Microsoft.App/managedEnvironments`. Key rule fields include `Microsoft.App/managedEnvironments/vnetConfiguration`, `Microsoft.App/managedEnvironments/vnetConfiguration.internal`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.App/managedEnvironments`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1337-containerappdisableexternalnetworkaccess"></a>
### SLZ-1337-ContainerAppDisableExternalNetworkAccess

- **Display name:** SLZ - 1337 - Container Apps Should Disable External Network Access
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1337/slz-1337-ContainerAppDisableExternalNetworkAccess.json`](Definitions/policyDefinitions/SLZ/Network/ID1337/slz-1337-ContainerAppDisableExternalNetworkAccess.json)
- **Folder:** `SLZ/Network/ID1337`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit` (declared under `metadata`; schema should be fixed)
- **Allowed effects:** `Audit`, `Deny`, `Disabled` (declared under `metadata`; schema should be fixed)
- **Affected Azure resource types:** `Microsoft.App/containerApps`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** The definition appears intended to support `Audit`, but `allowedValues` and `defaultValue` are nested under parameter `metadata` instead of the parameter schema. Pass `Audit` explicitly and fix the definition before broad assignment.

**Breakdown of what the policy does:** This policy ensures that external network access is disabled for Container Apps by enforcing internal-only ingress. This restricts inbound communication to only callers within the same Container Apps environment. It evaluates `Microsoft.App/containerApps`. Key rule fields include `Microsoft.App/containerApps/configuration.ingress`, `Microsoft.App/containerApps/configuration.ingress.external`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.App/containerApps` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (intended default `Audit` declared under metadata; intended allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior. The intended `Audit` default and allowed values are stored under `metadata`, so Azure Policy may not treat them as parameter schema; fix the definition or pass `Audit` explicitly before assignment.

<a id="policy-slz-1338-wafonapgt-detection"></a>
### SLZ-1338-WAFonAPGT-Detection

- **Display name:** SLZ - 1338 - Web Application Firewall (WAF) should use the specified mode for Application Gateway
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID1338/slz-1338-WAFonAPGT-Detection.json`](Definitions/policyDefinitions/SLZ/Network/ID1338/slz-1338-WAFonAPGT-Detection.json)
- **Folder:** `SLZ/Network/ID1338`
- **Category:** `Network`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Mandates the use of 'Detection' or 'Prevention' mode to be active on all Web Application Firewall policies for Application Gateway. It evaluates `Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies`. Key rule fields include `Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/policySettings.mode`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Deploy the affected ingress service with a WAF-capable SKU and attach an approved WAF policy in the workload or platform networking module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `modeRequirement` (default `Detection`; allowed `Prevention`, `Detection`; Mode required for all WAF policies).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires application gateway or Front Door architecture to include WAF-capable SKU and policy configuration.

**Common false positives / exceptions:** Internal-only apps, non-HTTP workloads, or shared ingress services may be valid exceptions when protected elsewhere.

**Evidence / compliance signal:** Compliance evidence is an ingress resource missing WAF mode, WAF policy, or a required WAF-capable SKU.

**Potential issues:** Some definitions without an exposed audit effect cannot be used as-is for reporting-only assignment.

<a id="policy-slz-239-rpdaccessdisabledforinternet"></a>
### SLZ-239-RPDAccessDisabledForInternet

- **Display name:** SLZ - 239 - Ensure that RDP access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID239/slz-239-ensure-that-rdp-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID239/slz-239-ensure-that-rdp-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID239`
- **Category:** `Guest Configuration`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 3389 It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-240-sshaccessdisabledforinternet"></a>
### SLZ-240-SSHAccessDisabledForInternet

- **Display name:** SLZ - 240 - Ensure that SSH access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID240/slz-240-ensure-that-ssh-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID240/slz-240-ensure-that-ssh-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID240`
- **Category:** `Guest Configuration`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 22 It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-241-udpaccessfrominternetevalutatedandrestricted"></a>
### SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 241 - Ensure that UDP access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID241/slz-241-ensure-that-UDP-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID241/slz-241-ensure-that-UDP-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID241`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for UDP ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/protocol`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-242-httpsaccessfrominternetevalutatedandrestricted"></a>
### SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 242 - Ensure that HTTP access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID242/slz-242-ensure-that-HTTPs-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID242/slz-242-ensure-that-HTTPs-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID242`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 80 and 443. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-244-networkwatcherenabled"></a>
### SLZ-244-NetworkWatcherEnabled

- **Display name:** SLZ - 244 - Ensure that Network Watcher is 'Enabled'
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID244/slz-244-ensure-that-network-watcher-is-'enabled'.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID244/slz-244-ensure-that-network-watcher-is-'enabled'.jsonc)
- **Folder:** `SLZ/Network/ID244`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworks`, `Microsoft.Network/networkWatchers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy creates a network watcher resource in regions with virtual networks. You need to ensure existence of a resource group named networkWatcherRG, which will be used to deploy network watcher instances. It evaluates `Microsoft.Network/virtualNetworks`, `Microsoft.Network/networkWatchers`. Key rule fields include `location`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Constrain deployment locations in IaC and subscription vending pipelines to the approved region list, with documented exceptions for unavailable services.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires deployment pipelines to constrain locations and handle service-specific regional availability exceptions.

**Common false positives / exceptions:** Services with limited regional availability or disaster-recovery resources may need approved location exceptions.

**Evidence / compliance signal:** Compliance evidence is a resource or resource group deployed outside the allowed location list.

**Potential issues:** Allowed location policies need regular review as Azure service regional availability changes. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-332-nsgnoingressfrom0000for22or3389"></a>
### SLZ-332-NSGNoIngressFrom0000For22or3389

- **Display name:** SLZ - 332 - Ensure no security groups allow ingress from 0.0.0.0/0 to remote server administration ports
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID332/slz-332-ensure-no-security-groups-allow-ingress-from-0.0.0.00-to-remote-server-administration-ports.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID332/slz-332-ensure-no-security-groups-allow-ingress-from-0.0.0.00-to-remote-server-administration-ports.jsonc)
- **Folder:** `SLZ/Network/ID332`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy audits it there are rules that allows ingress from 0.0.0.0/0 to 22 or 3389 ports It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-333-nsgnoingressfrom0for22or3389"></a>
### SLZ-333-NSGNoIngressFrom0For22or3389

- **Display name:** SLZ - 333 - Ensure no security groups allow ingress from ::/0 to remote server administration ports
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID333/slz-333-ensure-no-security-groups-allow-ingress-from-0-to-remote-server-administration-ports.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID333/slz-333-ensure-no-security-groups-allow-ingress-from-0-to-remote-server-administration-ports.jsonc)
- **Folder:** `SLZ/Network/ID333`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy audits it there are rules that allows ingress from ::/0 to 22 or 3389 ports It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.Network/networkSecurityGroups/securityRules` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-629-virtualnetworksddosprotection"></a>
### SLZ-629-VirtualNetworksDDOSProtection

- **Display name:** SLZ - 629 - Enforce DDoS Protection
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID629/slz-629-protect-vnets-with-DDoS.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID629/slz-629-protect-vnets-with-DDoS.jsonc)
- **Folder:** `SLZ/Network/ID629`
- **Category:** `Network`
- **Mode:** `Indexed`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `auditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/virtualNetworks`, `Microsoft.Resources/deployments`
- **Policy risk/severity:** High
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Protect your virtual networks against volumetric and protocol attacks with Azure DDoS Protection. For more information, visit https://aka.ms/ddosprotectiondocs. It evaluates `Microsoft.Network/virtualNetworks`, `Microsoft.Resources/deployments`. Key rule fields include `Microsoft.Network/virtualNetworks/enableDdosProtection`, `Microsoft.Network/virtualNetworks/ddosProtectionPlan`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Create or reference the approved DDoS Protection plan and associate in-scope virtual networks through the network landing-zone module.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `auditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `planId` (default no default; DDoS Protection Plan resource to be associated to the virtual networks).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires a DDoS Protection plan and consistent virtual network association model.

**Common false positives / exceptions:** Small isolated subscriptions or networks protected by another approved perimeter may be exception candidates.

**Evidence / compliance signal:** Compliance evidence is a virtual network that is not associated with the required DDoS Protection plan.

**Potential issues:** DDoS plan requirements can be expensive and may not fit every subscription without central network architecture decisions. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-983-ftpaccessfrominternetevaluatedandrestricted"></a>
### SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted

- **Display name:** SLZ - 983 - Ensure that FTP access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID983/slz-983-ensure-that-ftp-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID983/slz-983-ensure-that-ftp-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID983`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for FTP ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRanges[*]`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefixes[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*].access`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `ports` (default `["20", "21"]`; FTP ports to be blocked).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-984-mongodbaccessfrominternetevalutatedandrestricted"></a>
### SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 984 - Ensure that MongoDB access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID984/slz-984-ensure-that-mongodb-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID984/slz-984-ensure-that-mongodb-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID984`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for MongoDB ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRanges[*]`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefixes[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*].access`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `ports` (default `["27017", "27018"]`; MongoDB ports to be blocked).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-985-cassandraaccessfrominternetevalutatedandrestricted"></a>
### SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 985 - Ensure that Cassandra access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID985/slz-985-ensure-that-cassandra-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID985/slz-985-ensure-that-cassandra-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID985`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for Cassandra ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRanges[*]`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefixes[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*].access`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `ports` (default `["7199", "9160", "8888"]`; Cassandra ports to be blocked).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-986-elasticsearchaccessfrominternetevalutatedandrestricted"></a>
### SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 986 - Ensure that Elasticsearch/Kibana  access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID986/slz-986-ensure-that-elasticsearchkibana-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID986/slz-986-ensure-that-elasticsearchkibana-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID986`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for Elasticsearch/Kibana ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRanges[*]`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefixes[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*].access`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `ports` (default `["9200", "9300", "5601"]`; Elasticsearch/Kibana ports to be blocked).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-987-kafkaaccessfrominternetevalutatedandrestricted"></a>
### SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 987 - Ensure that Kafka access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID987/slz-987-ensure-that-kafka-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID987/slz-987-ensure-that-kafka-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID987`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 9092. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-988-memcachedaccessfrominternetevalutatedandrestricted"></a>
### SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 988 - Ensure that Memcached access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID988/slz-988-ensure-that-memcached-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID988/slz-988-ensure-that-memcached-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID988`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 11211. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/protocol`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-989-mysqlaccessfrominternetevalutatedandrestricted"></a>
### SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 989 - Ensure that MySQL access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID989/slz-989-ensure-that-mysql-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID989/slz-989-ensure-that-mysql-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID989`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 3306. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-990-oracleaccessfrominternetevalutatedandrestricted"></a>
### SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 990 - Ensure that Oracle access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID990/slz-990-ensure-that-oracle-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID990/slz-990-ensure-that-oracle-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID990`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for Oracle ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRanges[*]`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefixes[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*].access`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `ports` (default `["1521", "2483"]`; Oracle ports to be blocked).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-991-postgresaccessfrominternetevalutatedandrestricted"></a>
### SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 991 - Ensure that Postgres access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID991/slz-991-ensure-that-postgres-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID991/slz-991-ensure-that-postgres-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID991`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 5432. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-992-redisaccessfrominternetevalutatedandrestricted"></a>
### SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 992 - Ensure that Redis access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID992/slz-992-ensure-that-redis-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID992/slz-992-ensure-that-redis-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID992`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 6379. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-993-winsqlserveraccessfrominternetevalutatedandrestricted"></a>
### SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 993 - Ensure that Windows SQL Server access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID993/slz-993-ensure-that-windows-sql-server-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID993/slz-993-ensure-that-windows-sql-server-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID993`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for Windows SQL Server ports. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/access`, `Microsoft.Network/networkSecurityGroups/securityRules/direction`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRanges[*]`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefixes[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*]`, `Microsoft.Network/networkSecurityGroups/securityRules[*].access`, plus 5 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`, `Microsoft.Network/networkSecurityGroups`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `ports` (default `["1433", "1434"]`; Windows SQL Server ports to be blocked).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-994-telnetaccessfrominternetevalutatedandrestricted"></a>
### SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted

- **Display name:** SLZ - 994 - Ensure that Telnet access from the Internet is evaluated and restricted
- **Source:** [`Definitions/policyDefinitions/SLZ/Network/ID994/slz-994-ensure-that-telnet-access-from-the-internet-is-evaluated-and-restricted.jsonc`](Definitions/policyDefinitions/SLZ/Network/ID994/slz-994-ensure-that-telnet-access-from-the-internet-is-evaluated-and-restricted.jsonc)
- **Folder:** `SLZ/Network/ID994`
- **Category:** `Network`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.Network/networkSecurityGroups/securityRules`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy ensures that network security rule exists for INTERNET address prefix for port 23. It evaluates `Microsoft.Network/networkSecurityGroups/securityRules`. Key rule fields include `Microsoft.Network/networkSecurityGroups/securityRules/protocol`, `Microsoft.Network/networkSecurityGroups/securityRules/destinationPortRange`, `Microsoft.Network/networkSecurityGroups/securityRules/sourceAddressPrefix`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Network/networkSecurityGroups/securityRules`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound.

<a id="policy-slz-1340-appservicelatesttls"></a>
### SLZ-1340-AppServiceLatestTLS

- **Display name:** SLZ - 1340 - App Service apps should use the latest tls version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1340/slz-1340-AppServiceLatestTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1340/slz-1340-AppServiceLatestTLS.jsonc)
- **Folder:** `SLZ/Security/ID1340`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for tls either due to security flaws, include additional functionality, and enhance speed. Upgrade to the latest tls version for App Service apps to take advantage of security fixes, if any, and/or new functionaliti... It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/minTlsVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1341-appserviceslotslatesttls"></a>
### SLZ-1341-AppServiceSlotsLatestTLS

- **Display name:** SLZ - 1341 - App Service app slots should use the latest TLS version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1341/slz-1341-AppServiceSlotsLatestTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1341/slz-1341-AppServiceSlotsLatestTLS.jsonc)
- **Folder:** `SLZ/Security/ID1341`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for TLS either due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for App Service app slots to take advantage of security fixes, if any, and/or new functionalities... It evaluates `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/config/minTlsVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Effect).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1342-functionappslatesttls"></a>
### SLZ-1342-FunctionAppsLatestTLS

- **Display name:** SLZ - 1342 - Configure Function apps to use the latest TLS version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1342/slz-1342-FunctionAppsLatestTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1342/slz-1342-FunctionAppsLatestTLS.jsonc)
- **Folder:** `SLZ/Security/ID1342`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for TLS either due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for Function apps to take advantage of security fixes, if any, and/or new functionalities of the... It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/mintlsVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1343-functionappslotslatesttls"></a>
### SLZ-1343-FunctionAppSlotsLatestTLS

- **Display name:** SLZ - 1343 - Configure Function app slots to use the latest TLS version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1343/slz-1343-FunctionAppSlotsLatestTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1343/slz-1343-FunctionAppSlotsLatestTLS.jsonc)
- **Folder:** `SLZ/Security/ID1343`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for TLS either due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for Function app slots to take advantage of security fixes, if any, and/or new functionalities of... It evaluates `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/config/mintlsVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-1344-logicappslatesttls"></a>
### SLZ-1344-LogicAppsLatestTLS

- **Display name:** SLZ - 1344 - Configure Logic Apps to use the latest TLS version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1344/slz-1344-LogicAppsLatestTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1344/slz-1344-LogicAppsLatestTLS.jsonc)
- **Folder:** `SLZ/Security/ID1344`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for TLS due to security flaws, additional functionality, and enhanced speed. Upgrade to the latest TLS version for Logic Apps to take advantage of security fixes, if any, and/or new functionalities of the latest ver... It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/mintlsVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1345-redissecureconnections"></a>
### SLZ-1345-RedisSecureConnections

- **Display name:** SLZ - 1345 - Azure Cache for Redis only secure connections should be enabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1345/slz-1345-RedisSecureConnections.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1345/slz-1345-RedisSecureConnections.jsonc)
- **Folder:** `SLZ/Security/ID1345`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Cache/redis`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audit enabling of only connections via SSL to Azure Cache for Redis. Validate both the minimum TLS version and that enableNonSslPort is disabled. Using secure connections ensures authentication between the server and the service and protects data in transit... It evaluates `Microsoft.Cache/redis`. Key rule fields include `Microsoft.Cache/Redis/enableNonSslPort`, `Microsoft.Cache/Redis/minimumtlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Cache/redis` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `minimumtlsVersion` (default `1.2`; allowed `1.2`; Specify the minimum TLS version required for secure connections.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1346-frontdoortls"></a>
### SLZ-1346-FrontDoorTLS

- **Display name:** SLZ - 1346 - Azure Front Door Standard and Premium should be running minimum TLS version of 1.2
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1346/slz-1346-FrontDoorTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1346/slz-1346-FrontDoorTLS.jsonc)
- **Folder:** `SLZ/Security/ID1346`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Cdn/profiles/customDomains`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes [High impact]
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Setting minimal TLS version to 1.2 improves security by ensuring your custom domains are accessed from clients using TLS 1.2 or newer. Using versions of TLS less than 1.2 is not recommended since they are weak and do not support modern cryptographic algorit... It evaluates `Microsoft.Cdn/profiles/customDomains`. Key rule fields include `Microsoft.Cdn/profiles/customDomains/tlsSettings.minimumtlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Cdn/profiles/customDomains` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1347-eventhubtls"></a>
### SLZ-1347-EventHubTLS

- **Display name:** SLZ - 1347 - Event Hub namespaces should have the specified minimum TLS version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1347/slz-1347-EventHubTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1347/slz-1347-EventHubTLS.jsonc)
- **Folder:** `SLZ/Security/ID1347`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Deny`, `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Configure a minimum TLS version for secure communication between the client application and the Event Hub Namespace. To minimize security risk, the recommended minimum TLS version is the latest released version, which is currently TLS 1.2. It evaluates `Microsoft.EventHub/namespaces`. Key rule fields include `Microsoft.EventHub/namespaces/minimumtlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.EventHub/namespaces` in the resource deployment module.

**Parameters or variables to specify or consider:** `minimumtlsVersion` (default `1.2`; allowed `1.0`, `1.1`, `1.2`; Minimum version of TLS required to access data in the Event Hub Namespace); `effect` (default `Audit`; allowed `Deny`, `Audit`, `Disabled`; Deny, Audit or Disabled the execution of the Policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1348-storagetls"></a>
### SLZ-1348-StorageTLS

- **Display name:** SLZ - 1348 - Azure Storage should have minimum TLS version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1348/slz-1348-StorageTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1348/slz-1348-StorageTLS.jsonc)
- **Folder:** `SLZ/Security/ID1348`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This Azure Policy creates an audit event when the 'Minimum TLS version' setting is not set to 'Version 1.2'. It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `Microsoft.Storage/storageAccounts/minimumtlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Storage/storageAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** `tlsVersionRequired` (default `tls1_2`; The TLS version that should be configured on the Storage Account); `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Audit or Disabled the execution of the Policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1349-addomainservicestls"></a>
### SLZ-1349-ADDomainServicesTLS

- **Display name:** SLZ - 1349 - Azure Active Directory Domain Services managed domains should use tls 1.2 only mode
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1349/slz-1349-ADDomainServicesTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1349/slz-1349-ADDomainServicesTLS.jsonc)
- **Folder:** `SLZ/Security/ID1349`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.AAD/domainServices`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use tls 1.2 only mode for your managed domains. By default, Azure AD Domain Services enables the use of ciphers such as NTLM v1 and tls v1. These ciphers may be required for some legacy applications, but are considered weak and can be disabled if you don't... It evaluates `Microsoft.AAD/domainServices`. Key rule fields include `Microsoft.AAD/domainServices/domainSecuritySettings.tlsV1`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.AAD/domainServices` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1350-azurecosmostls12"></a>
### SLZ-1350-AzureCosmosTLS12

- **Display name:** SLZ - 1350 - Azure COSMOS Database should be running tls version 1.2 or newer
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1350/slz-1350-AzureCosmosTLS12.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1350/slz-1350-AzureCosmosTLS12.jsonc)
- **Folder:** `SLZ/Security/ID1350`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure SQL Database can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities. It evaluates `Microsoft.DocumentDB/databaseAccounts`. Key rule fields include `Microsoft.DocumentDB/databaseAccounts/minimaltlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DocumentDB/databaseAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1351-sqlmanagedinstancetls12"></a>
### SLZ-1351-SQLManagedInstanceTLS12

- **Display name:** SLZ - 1351 - SQL Managed Instance should have the minimal tls version of 1.2
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1351/slz-1351-SQLManagedInstanceTLS12.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1351/slz-1351-SQLManagedInstanceTLS12.jsonc)
- **Folder:** `SLZ/Security/ID1351`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Sql/managedInstances`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Setting minimal tls version to 1.2 improves security by ensuring your SQL Managed Instance can only be accessed from clients using tls 1.2. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities. It evaluates `Microsoft.Sql/managedInstances`. Key rule fields include `Microsoft.Sql/managedInstances/minimaltlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Sql/managedInstances` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1352-arcsqlmanagedinstancetls12"></a>
### SLZ-1352-ArcSQLManagedInstanceTLS12

- **Display name:** SLZ - 1352 - tls protocol 1.2 must be used for Arc SQL managed instances.
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1352/slz-1352-ArcSQLManagedInstanceTLS12.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1352/slz-1352-ArcSQLManagedInstanceTLS12.jsonc)
- **Folder:** `SLZ/Security/ID1352`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.AzureArcData/sqlmanagedinstances`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** As a part of network settings, Microsoft recommends allowing only tls 1.2 for tls protocols in SQL Servers. Learn more on network settings for SQL Server at https://aka.ms/tlsSettingsSQLServer. It evaluates `Microsoft.AzureArcData/sqlmanagedinstances`. Key rule fields include `Microsoft.AzureArcData/sqlManagedInstances/k8sRaw.spec.settings.network.tlsprotocols`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.AzureArcData/sqlmanagedinstances` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1353-sqldatabasetls12"></a>
### SLZ-1353-SQLDatabaseTLS12

- **Display name:** SLZ - 1353 - Azure SQL Database should be running tls version 1.2 or newer
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1353/slz-1353-SQLDatabaseTLS12.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1353/slz-1353-SQLDatabaseTLS12.jsonc)
- **Folder:** `SLZ/Security/ID1353`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.Sql/servers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure SQL Database can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities. It evaluates `Microsoft.Sql/servers`. Key rule fields include `Microsoft.Sql/servers/minimaltlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Sql/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1354-postgresqlflexsslversion"></a>
### SLZ-1354-PostgreSQLFLEXSSLVersion

- **Display name:** SLZ - 1354 - PostgreSQL flexible servers should be running tls version 1.2 or newer
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1354/slz-1354-PostgreSQLFLEXSSLVersion.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1354/slz-1354-PostgreSQLFLEXSSLVersion.jsonc)
- **Folder:** `SLZ/Security/ID1354`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/flexibleServers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL flexible servers in your environment which is running with tls version less than 1.2. It evaluates `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/flexibleServers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/flexibleServers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/flexibleServers/configurations` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1355-mariadbtlsversion"></a>
### SLZ-1355-MariaDBTLSVersion

- **Display name:** SLZ - 1355 - Azure MARIA Database should be running tls version 1.2 or newer
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1355/slz-1355-MariaDBTLSVersion.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1355/slz-1355-MariaDBTLSVersion.jsonc)
- **Folder:** `SLZ/Security/ID1355`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.DBForMariaDB/servers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure SQL Database can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented security vulnerabilities. It evaluates `Microsoft.DBForMariaDB/servers`. Key rule fields include `Microsoft.DBForMariaDB/servers/minimalTlsVersion`, `Microsoft.Sql/servers/minimaltlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBForMariaDB/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1356-synapsesqltlsversion"></a>
### SLZ-1356-SynapseSQLTLSVersion

- **Display name:** SLZ - 1356 - Azure Synapse Workspace SQL Server should be running tls version 1.2 or newer
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1356/slz-1356-SynapseSQLTLSVersion.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1356/slz-1356-SynapseSQLTLSVersion.jsonc)
- **Folder:** `SLZ/Security/ID1356`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Setting tls version to 1.2 or newer improves security by ensuring your Azure Synapse workspace SQL server can only be accessed from clients using tls 1.2 or newer. Using versions of tls less than 1.2 is not recommended since they have well documented securi... It evaluates `Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings`. Key rule fields include `Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings/minimaltlsVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Synapse/workspaces/dedicatedSQLminimaltlsSettings` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-1357-azurekubernetesclusterskms"></a>
### SLZ-1357-AzureKubernetesClustersKMS

- **Display name:** SLZ - 1357 - Azure Kubernetes Clusters should enable Key Management Service (KMS)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1357/slz-1357-AzureKubernetesClustersKMS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1357/slz-1357-AzureKubernetesClustersKMS.jsonc)
- **Folder:** `SLZ/Security/ID1357`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ContainerService/managedClusters`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use Key Management Service (KMS) to encrypt secret data at rest in etcd for Kubernetes cluster security. Learn more at: https://aka.ms/aks/kmsetcdencryption. It evaluates `Microsoft.ContainerService/managedClusters`. Key rule fields include `identity.type`, `Microsoft.ContainerService/managedClusters/securityProfile.azureKeyVaultKms.enabled`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.ContainerService/managedClusters` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1358-aisncencryptioncmk"></a>
### SLZ-1358-AISNCEncryptionCMK

- **Display name:** SLZ - 1358 - Azure AI Services resources should encrypt data at rest with a customer-managed key (CMK) (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1358/slz-1358-AISNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1358/slz-1358-AISNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1358`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.CognitiveServices/accounts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Using customer-managed keys to encrypt data at rest provides more control over the key lifecycle, including rotation and management. This is particularly relevant for organizations with related compliance requirements. This is not assessed by default and sh... It evaluates `Microsoft.CognitiveServices/accounts`. Key rule fields include `Microsoft.CognitiveServices/accounts/encryption.keySource`, `kind`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.CognitiveServices/accounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; The effect determines what happens when the policy rule is evaluated to match); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.); `excludedKinds` (default `16 values`; The list of excluded API kinds for customer-managed key, default is the list of API kinds that don't have data stored in Cognitive Services).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1359-automationsncencryptioncmk"></a>
### SLZ-1359-AutomationSNCEncryptionCMK

- **Display name:** SLZ - 1359 - Azure Automation accounts should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1359/slz-1359-AutomationSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1359/slz-1359-AutomationSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1359`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Automation/automationAccounts`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your Azure Automation Accounts. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer... It evaluates `Microsoft.Automation/automationAccounts`. Key rule fields include `Microsoft.Automation/automationAccounts/encryption.keySource`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Automation/automationAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; 'Audit' allows a non-compliant resource to be created or updated, but flags it as non-compliant. 'Deny' blocks the non-compliant resource creation or update. 'Disabled' turns of...); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1360-backupvaultsncencryptioncmk"></a>
### SLZ-1360-BackupVaultSNCEncryptionCMK

- **Display name:** SLZ - 1360 - Azure Backup Vaults should use customer-managed keys for encrypting backup data(SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1360/slz-1360-BackupVaultSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1360/slz-1360-BackupVaultSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1360`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DataProtection/backupvaults`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy follows the 'effect' if Encryption Settings are enabled for Backup vaults in the scope. Additionally, option to check if Backup Vault also has Infrastructure Encryption enabled. Learn more at https://aka.ms/az-backup-vault-encryption-at-rest-wit... It evaluates `Microsoft.DataProtection/backupvaults`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.DataProtection/backupVaults/securitySettings.encryptionSettings.state`, `Microsoft.DataProtection/backupVaults/securitySettings.encryptionSettings.infrastructureEncryption`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.DataProtection/backupvaults` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.); `checkInfrastructureEncryption` (default `False`; allowed `True`, `False`; Check if Infrastructure Encryption is enabled on Backup Vaults. For more details refer to https://aka.ms/az-backup-vault-infra-encryption-at-rest-with-cmk.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1361-batchsncencryptioncmk"></a>
### SLZ-1361-BatchSNCEncryptionCMK

- **Display name:** SLZ - 1361 - Azure Batch account should use customer-managed keys to encrypt data (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1361/slz-1361-BatchSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1361/slz-1361-BatchSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1361`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Batch/batchAccounts`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your Batch account's data. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-mana... It evaluates `Microsoft.Batch/batchAccounts`. Key rule fields include `Microsoft.Batch/batchAccounts/encryption.keySource`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Batch/batchAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; The desired effect of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1362-loadtestingsncencryptioncmk"></a>
### SLZ-1362-LoadTestingSNCEncryptionCMK

- **Display name:** SLZ - 1362 - Azure load testing resource should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1362/slz-1362-LoadTestingSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1362/slz-1362-LoadTestingSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1362`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.LoadTestService/loadtests`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys(CMK) to manage the encryption at rest for your Azure Load Testing resource. By default the encryption is done using Service managed keys, customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and... It evaluates `Microsoft.LoadTestService/loadtests`. Key rule fields include `Microsoft.LoadTestService/loadTests/encryption.keyUrl`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.LoadTestService/loadtests` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy.); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1363-redisenterprisesncencryptioncmk"></a>
### SLZ-1363-RedisEnterpriseSNCEncryptionCMK

- **Display name:** SLZ - 1363 - Azure Cache for Redis Enterprise should use customer-managed keys for encrypting disk data (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1363/slz-1363-RedisEnterpriseSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1363/slz-1363-RedisEnterpriseSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1363`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Cache/redisEnterprise`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys (CMK) to manage the encryption at rest of your on-disk data. By default, customer data is encrypted with platform-managed keys (PMK), but customer-managed keys are commonly required to meet regulatory compliance standards. Customer... It evaluates `Microsoft.Cache/redisEnterprise`. Key rule fields include `Microsoft.Cache/redisEnterprise/encryption.customerManagedKeyEncryption`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Cache/redisEnterprise` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1364-cognitivesearchsncencryptioncmk"></a>
### SLZ-1364-CognitiveSearchSNCEncryptionCMK

- **Display name:** SLZ - 1364 - Azure Cognitive Search services should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1364/slz-1364-CognitiveSearchSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1364/slz-1364-CognitiveSearchSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1364`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Search/searchServices`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Enabling encryption at rest using a customer-managed key on your Azure Cognitive Search services provides additional control over the key used to encrypt data at rest. This feature is often applicable to customers with special compliance requirements to man... It evaluates `Microsoft.Search/searchServices`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.Search/searchServices/encryptionWithCmk.enforcement`, `Microsoft.Search/searchServices/encryptionWithCmk.encryptionComplianceStatus`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Search/searchServices` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1365-containerinstancesncencryptioncmk"></a>
### SLZ-1365-ContainerInstanceSNCEncryptionCMK

- **Display name:** SLZ - 1365 - Azure Container Instance container group should use customer-managed key for encryption (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1365/slz-1365-ContainerInstanceSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1365/slz-1365-ContainerInstanceSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1365`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.ContainerInstance/containerGroups`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Secure your containers with greater flexibility using customer-managed keys. When you specify a customer-managed key, that key is used to protect and control access to the key that encrypts your data. Using customer-managed keys provides additional capabili... It evaluates `Microsoft.ContainerInstance/containerGroups`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.ContainerInstance/containerGroups/encryptionProperties.vaultBaseUrl`, `Microsoft.ContainerInstance/containerGroups/encryptionProperties.keyName`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.ContainerInstance/containerGroups` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1366-containerregistrysncencryptioncmk"></a>
### SLZ-1366-ContainerRegistrySNCEncryptionCMK

- **Display name:** SLZ - 1366 - Container registries should be encrypted with a customer-managed key (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1366/slz-1366-ContainerRegistrySNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1366/slz-1366-ContainerRegistrySNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1366`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ContainerRegistry/registries`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of the contents of your registries. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Cust... It evaluates `Microsoft.ContainerRegistry/registries`. Key rule fields include `Microsoft.ContainerRegistry/registries/encryption.status`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.ContainerRegistry/registries` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1367-cosmosdbsncencryptioncmk"></a>
### SLZ-1367-CosmosDBSNCEncryptionCMK

- **Display name:** SLZ - 1367 - Azure Cosmos DB accounts should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1367/slz-1367-CosmosDBSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1367/slz-1367-CosmosDBSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1367`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DocumentDB/databaseAccounts`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your Azure Cosmos DB. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-manage... It evaluates `Microsoft.DocumentDB/databaseAccounts`. Key rule fields include `Microsoft.DocumentDB/databaseAccounts/keyVaultKeyUri`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.DocumentDB/databaseAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; The desired effect of the policy.); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1368-azuredataexplorersncencryptioncmk"></a>
### SLZ-1368-AzureDataExplorerSNCEncryptionCMK

- **Display name:** SLZ - 1368 - Azure Data Explorer encryption at rest should use a customer-managed key (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1368/slz-1368-AzureDataExplorerSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1368/slz-1368-AzureDataExplorerSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1368`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Kusto/Clusters`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Enabling encryption at rest using a customer-managed key on your Azure Data Explorer cluster provides additional control over the key being used by the encryption at rest. This feature is oftentimes applicable to customers with special compliance requiremen... It evaluates `Microsoft.Kusto/Clusters`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.Kusto/clusters/keyVaultProperties`, `Microsoft.Kusto/clusters/keyVaultProperties.keyName`, `Microsoft.Kusto/clusters/keyVaultProperties.keyVersion`, `Microsoft.Kusto/clusters/keyVaultProperties.keyVaultUri`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Kusto/Clusters` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1369-azuredatafactoriessncencryptioncmk"></a>
### SLZ-1369-AzureDataFactoriesSNCEncryptionCMK

- **Display name:** SLZ - 1369 - Azure data factories should be encrypted with a customer-managed key (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1369/slz-1369-AzureDataFactoriesSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1369/slz-1369-AzureDataFactoriesSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1369`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DataFactory/factories`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your Azure Data Factory. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-manage... It evaluates `Microsoft.DataFactory/factories`. Key rule fields include `Microsoft.DataFactory/factories/encryption.vaultBaseUrl`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.DataFactory/factories` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1370-elasticsanvolumegroupsncencryptioncmk"></a>
### SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK

- **Display name:** SLZ - 1370 - ElasticSan Volume Group should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1370/slz-1370-ElasticSanVolumeGroupSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1370/slz-1370-ElasticSanVolumeGroupSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1370`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ElasticSan/elasticSans/volumeGroups`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your VolumeGroup. By default, customer data is encrypted with platform-managed keys, but CMKs are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data... It evaluates `Microsoft.ElasticSan/elasticSans/volumeGroups`. Key rule fields include `Microsoft.ElasticSan/elasticSans/volumeGroups/encryption`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.ElasticSan/elasticSans/volumeGroups` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1371-eventhubnamespacesncencryptioncmk"></a>
### SLZ-1371-EventHubNamespaceSNCEncryptionCMK

- **Display name:** SLZ - 1371 - Event Hub namespaces should use a customer-managed key for encryption (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1371/slz-1371-EventHubNamespaceSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1371/slz-1371-EventHubNamespaceSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1371`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.EventHub/namespaces`, `Microsoft.Keyvault`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Azure Event Hubs supports the option of encrypting data at rest with either Microsoft-managed keys (default) or customer-managed keys. Choosing to encrypt data using customer-managed keys enables you to assign, rotate, disable, and revoke access to the keys... It evaluates `Microsoft.EventHub/namespaces`, `Microsoft.Keyvault`. Key rule fields include `Microsoft.EventHub/namespaces/clusterArmId`, `Microsoft.EventHub/namespaces/encryption.keySource`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.EventHub/namespaces`, `Microsoft.Keyvault` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1372-fluidrelaysncencryptioncmk"></a>
### SLZ-1372-FluidRelaySNCEncryptionCMK

- **Display name:** SLZ - 1372 - Fluid Relay should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1372/slz-1372-FluidRelaySNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1372/slz-1372-FluidRelaySNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1372`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.FluidRelay/fluidRelayServers`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your Fluid Relay server. By default, customer data is encrypted with service-managed keys, but CMKs are commonly required to meet regulatory compliance standards. Customer-managed keys enable the... It evaluates `Microsoft.FluidRelay/fluidRelayServers`. Key rule fields include `Microsoft.FluidRelay/fluidRelayServers/encryption.customerManagedKeyEncryption`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.FluidRelay/fluidRelayServers` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1373-hdinsightsncencryptioncmk"></a>
### SLZ-1373-HDInsightSNCEncryptionCMK

- **Display name:** SLZ - 1373 - Azure HDInsight clusters should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1373/slz-1373-HDInsightSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1373/slz-1373-HDInsightSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1373`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.HDInsight/clusters`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your Azure HDInsight clusters. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-... It evaluates `Microsoft.HDInsight/clusters`. Key rule fields include `Microsoft.HDInsight/clusters/diskEncryptionProperties.keyName`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Update Terraform/Bicep modules for `Microsoft.HDInsight/clusters` to create diagnostic settings that send required logs and metrics to the approved workspace or sink. Backfill existing resources with the same standard.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires consistent diagnostic settings in deployment modules, a known Log Analytics workspace or monitoring sink, and review of ingestion volume and retention.

**Common false positives / exceptions:** Resources can appear non-compliant when diagnostic categories differ by region or API version, when a different approved sink is used, or when the workspace parameter is wrong.

**Evidence / compliance signal:** Compliance evidence is a non-compliant resource missing the expected diagnostic setting, categories, metrics, or workspace/sink association.

**Potential issues:** High log volume can increase Log Analytics costs, and category names are not identical for all resource API versions.

<a id="policy-slz-1374-healthbotssncencryptioncmk"></a>
### SLZ-1374-HealthBotsSNCEncryptionCMK

- **Display name:** SLZ - 1374 - Azure Health Bots should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1374/slz-1374-HealthBotsSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1374/slz-1374-HealthBotsSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1374`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.HealthBot/healthBots`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys (CMK) to manage the encryption at rest of the data of your healthbots. By default, the data is encrypted at rest with service-managed keys, but CMK are commonly required to meet regulatory compliance standards. CMK enable the data... It evaluates `Microsoft.HealthBot/healthBots`. Key rule fields include `Microsoft.HealthBot/healthBots/keyVaultProperties.keyVaultUri`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.HealthBot/healthBots` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; The desired effect of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1375-hpccachesncencryptioncmk"></a>
### SLZ-1375-HPCCacheSNCEncryptionCMK

- **Display name:** SLZ - 1375 - HPC Cache accounts should use customer-managed key for encryption (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1375/slz-1375-HPCCacheSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1375/slz-1375-HPCCacheSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1375`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Affected Azure resource types:** `Microsoft.StorageCache/caches`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Manage encryption at rest of Azure HPC Cache with customer-managed keys. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable... It evaluates `Microsoft.StorageCache/caches`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `identity.type`, `Microsoft.StorageCache/caches/encryptionSettings.keyEncryptionKey.keyUrl`, `Microsoft.StorageCache/caches/encryptionSettings.keyEncryptionKey.sourceVault.Id`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.StorageCache/caches` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`, `Deny`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1376-iothubsncencryptioncmk"></a>
### SLZ-1376-IoTHubSNCEncryptionCMK

- **Display name:** SLZ - 1376 - Azure IoT Hub should use customer-managed key to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1376/slz-1376-IoTHubSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1376/slz-1376-IoTHubSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1376`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Devices/IotHubs`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Encryption of data at rest in IoT Hub with customer-managed key adds a second layer of encryption on top of the default service-managed keys, enables customer control of keys, custom rotation policies, and ability to manage access to data through key access... It evaluates `Microsoft.Devices/IotHubs`. Key rule fields include `Microsoft.Devices/IotHubs/encryption.keyVaultProperties[*]`, `Microsoft.Devices/IotHubs/encryption.keyVaultProperties[*].keyIdentifier`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Devices/IotHubs` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; The desired effect of the policy.); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1378-logicappssncencryptioncmk"></a>
### SLZ-1378-LogicAppsSNCEncryptionCMK

- **Display name:** SLZ - 1378 - Logic Apps Integration Service Environment should be encrypted with customer-managed keys (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1378/slz-1378-LogicAppsSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1378/slz-1378-LogicAppsSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1378`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Logic/integrationServiceEnvironments`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Deploy into Integration Service Environment to manage encryption at rest of Logic Apps data using customer-managed keys. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory com... It evaluates `Microsoft.Logic/integrationServiceEnvironments`. Key rule fields include `Microsoft.Logic/integrationServiceEnvironments/encryptionConfiguration`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Logic/integrationServiceEnvironments` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1379-azuremlsncencryptioncmk"></a>
### SLZ-1379-AzureMLSNCEncryptionCMK

- **Display name:** SLZ - 1379 - Azure Machine Learning workspaces should be encrypted with a customer-managed key (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1379/slz-1379-AzureMLSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1379/slz-1379-AzureMLSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1379`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.MachineLearningServices/workspaces`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Manage encryption at rest of Azure Machine Learning workspace data with customer-managed keys. By default, customer data is encrypted with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Custome... It evaluates `Microsoft.MachineLearningServices/workspaces`. Key rule fields include `kind`, `Microsoft.MachineLearningServices/workspaces/encryption.status`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.MachineLearningServices/workspaces` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1380-azuresynapseworkspacecmk"></a>
### SLZ-1380-AzureSynapseWorkspaceCMK

- **Display name:** SLZ - 1380 - Azure Synapse workspaces should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1380/slz-1380-AzureSynapseWorkspaceCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1380/slz-1380-AzureSynapseWorkspaceCMK.jsonc)
- **Folder:** `SLZ/Security/ID1380`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Synapse/workspaces`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to control the encryption at rest of the data stored in Azure Synapse workspaces. Customer-managed keys deliver double encryption by adding a second layer of encryption on top of the default encryption with service-managed keys. It evaluates `Microsoft.Synapse/workspaces`. Key rule fields include `Microsoft.Synapse/workspaces/encryption.cmk.key.name`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Synapse/workspaces` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1381-osanddatadiskssncencryptioncmk"></a>
### SLZ-1381-OSAndDataDisksSNCEncryptionCMK

- **Display name:** SLZ - 1381 - OS and data disks should be encrypted with a customer-managed key (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1381/slz-1381-OSAndDataDisksSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1381/slz-1381-OSAndDataDisksSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1381`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, `Microsoft.Compute/images`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure OS and data disks are encrypted using a customer-managed key (CMK) for regulatory compliance. CMKs provide full control over key lifecycle management. Learn more: https://aka.ms/disks-cmk. It evaluates `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, `Microsoft.Compute/images`. Key rule fields include `[concat('tags[', parameters('tagName'), ']')]`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/virtualMachines/storageProfile.dataDisks[*].managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/virtualMachineScaleSets/virtualMachineProfile.storageProfile.osDisk.managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/virtualMachineScaleSets/virtualMachineProfile.storageProfile.dataDisks[*]`, `Microsoft.Compute/virtualMachineScaleSets/virtualMachineProfile.storageProfile.dataDisks[*].managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/disks/encryption.diskEncryptionSetId`, `Microsoft.Compute/images/storageProfile.osDisk.diskEncryptionSet.id`, plus 1 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, and related child resources to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to identify resources included in this policy.); `tagValue` (default `SNC`; Value of the tag to identify resources included in this policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1382-postgresqlflexibleserversencryptioncmk"></a>
### SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK

- **Display name:** SLZ - 1382 - PostgreSQL flexible servers should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1382/slz-1382-PostgreSQLFlexibleServersEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1382/slz-1382-PostgreSQLFlexibleServersEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1382`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your PostgreSQL flexible servers. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Cus... It evaluates `Microsoft.DBforPostgreSQL/flexibleServers`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.DBforPostgreSQL/flexibleServers/dataEncryption.type`, `Microsoft.DBforPostgreSQL/flexibleServers/dataEncryption.primaryKeyURI`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.DBforPostgreSQL/flexibleServers` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1384-servicebuspremiumencryptioncmk"></a>
### SLZ-1384-ServiceBusPremiumEncryptionCMK

- **Display name:** SLZ - 1384 - Service Bus Premium namespaces should use a customer-managed key for encryption (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1384/slz-1384-ServiceBusPremiumEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1384/slz-1384-ServiceBusPremiumEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID1384`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.ServiceBus/namespaces`, `Microsoft.Keyvault`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Azure Service Bus supports the option of encrypting data at rest with either Microsoft-managed keys (default) or customer-managed keys. Choosing to encrypt data using customer-managed keys enables you to assign, rotate, disable, and revoke access to the key... It evaluates `Microsoft.ServiceBus/namespaces`, `Microsoft.Keyvault`. Key rule fields include `Microsoft.ServiceBus/namespaces/sku.tier`, `Microsoft.ServiceBus/namespaces/encryption.keySource`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.ServiceBus/namespaces`, `Microsoft.Keyvault` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-1385-storageaccountencryptionscopescmk"></a>
### SLZ-1385-StorageAccountEncryptionScopesCMK

- **Display name:** SLZ - 1385 - Storage account encryption scopes should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID1385/slz-1385-StorageAccountEncryptionScopesCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID1385/slz-1385-StorageAccountEncryptionScopesCMK.jsonc)
- **Folder:** `SLZ/Security/ID1385`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/encryptionScopes`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your storage account encryption scopes. Customer-managed keys enable the data to be encrypted with an Azure key-vault key created and owned by you. You have full control and responsibility for th... It evaluates `Microsoft.Storage/storageAccounts/encryptionScopes`. Key rule fields include `Microsoft.Storage/storageAccounts/encryptionScopes/source`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Storage/storageAccounts/encryptionScopes` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the audit policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-213-mysqllatesttls"></a>
### SLZ-213-MySQLLatestTLS

- **Display name:** SLZ - 213 - Ensure 'TLS Version' is set to 'TLSV1.2' for MySQL flexible Database
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID213/slz-213-MySQLLatestTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID213/slz-213-MySQLLatestTLS.jsonc)
- **Folder:** `SLZ/Security/ID213`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `DeployIfNotExists`, `Deny`
- **Affected Azure resource types:** `Microsoft.DBforMySQL/servers`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure 'TLS Version' is set to 'TLSV1.2' for MySQL flexible Database It evaluates `Microsoft.DBforMySQL/servers`. Key rule fields include `Microsoft.DBforMySQL/servers/sslEnforcement`, `Microsoft.DBforMySQL/servers/minimalTlsVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforMySQL/servers` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `DeployIfNotExists`, `Deny`; Enable or disable the execution of the policy); `minimaltlsVersion` (default `tls1_2`; allowed `tls1_2`, `tls1_3`; Select version minimum tls version Azure Database for MySQL server to enforce).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-254-keyvaultkeysexpirationdateset"></a>
### SLZ-254-KeyVaultKeysExpirationDateSet

- **Display name:** SLZ - 254 - Ensure that the Expiration Date is set for all Keys in Key Vaults (RBAC and Non-RBAC)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID254/slz-254-ensure-that-the-expiration-date-is-set-for-all-keys-in-key-vaults-rbac-and-non-rbac.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID254/slz-254-ensure-that-the-expiration-date-is-set-for-all-keys-in-key-vaults-rbac-and-non-rbac.jsonc)
- **Folder:** `SLZ/Security/ID254`
- **Category:** `Key Vault`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults/keys`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures that all keys in Key Vaults have an expiration date set. It evaluates `Microsoft.KeyVault/vaults/keys`. Key rule fields include `Microsoft.KeyVault/vaults/keys/attributes.exp`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires Key Vault configuration standards to be embedded in IaC and operational key or secret lifecycle processes.

**Common false positives / exceptions:** Break-glass vaults, temporary migration secrets, or service-managed key constraints can require narrowly scoped exceptions.

**Evidence / compliance signal:** Compliance evidence is a Key Vault, key, or secret missing the required RBAC, recoverability, expiry, rotation, or private access state.

**Potential issues:** Key Vault controls can conflict with break-glass or migration scenarios if exception handling is not documented.

<a id="policy-slz-256-keyvaultsecretsexpirationdateset"></a>
### SLZ-256-KeyVaultSecretsExpirationDateSet

- **Display name:** SLZ - 256 - Ensure that the Expiration Date is set for all Secrets in Key Vaults (RBAC and Non-RBAC)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID256/slz-256-ensure-that-the-expiration-date-is-set-for-all-secrets-in-key-vaults-rbac-and-non-rbac.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID256/slz-256-ensure-that-the-expiration-date-is-set-for-all-secrets-in-key-vaults-rbac-and-non-rbac.jsonc)
- **Folder:** `SLZ/Security/ID256`
- **Category:** `Key Vault`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults/secrets`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy ensures that all secrets in Key Vaults have an expiration date set. It evaluates `Microsoft.KeyVault/vaults/secrets`. Key rule fields include `Microsoft.KeyVault/vaults/secrets/attributes.exp`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires Key Vault configuration standards to be embedded in IaC and operational key or secret lifecycle processes.

**Common false positives / exceptions:** Break-glass vaults, temporary migration secrets, or service-managed key constraints can require narrowly scoped exceptions.

**Evidence / compliance signal:** Compliance evidence is a Key Vault, key, or secret missing the required RBAC, recoverability, expiry, rotation, or private access state.

**Potential issues:** Key Vault controls can conflict with break-glass or migration scenarios if exception handling is not documented.

<a id="policy-slz-257-keyvaultrecoverable"></a>
### SLZ-257-KeyVaultRecoverable

- **Display name:** SLZ - 257 - Ensure the Key Vault is Recoverable
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID257/slz-257-ensure-the-key-vault-is-recoverable.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID257/slz-257-ensure-the-key-vault-is-recoverable.jsonc)
- **Folder:** `SLZ/Security/ID257`
- **Category:** `Key Vault`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Malicious deletion of a key vault can lead to permanent data loss. You can prevent permanent data loss by enabling purge protection and soft delete. Purge protection protects you from insider attacks by enforcing a mandatory retention period for soft delete... It evaluates `Microsoft.KeyVault/vaults`. Key rule fields include `Microsoft.KeyVault/vaults/createMode`, `Microsoft.KeyVault/vaults/enableSoftDelete`, `Microsoft.KeyVault/vaults/enablePurgeProtection`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires Key Vault configuration standards to be embedded in IaC and operational key or secret lifecycle processes.

**Common false positives / exceptions:** Break-glass vaults, temporary migration secrets, or service-managed key constraints can require narrowly scoped exceptions.

**Evidence / compliance signal:** Compliance evidence is a Key Vault, key, or secret missing the required RBAC, recoverability, expiry, rotation, or private access state.

**Potential issues:** Key Vault controls can conflict with break-glass or migration scenarios if exception handling is not documented. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-258-keyvaultrbac"></a>
### SLZ-258-KeyVaultRBAC

- **Display name:** SLZ - 258 - Enable Role Based Access Control for Azure Key Vault
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID258/slz-258-enable-role-based-access-control-for-azure-key-vault.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID258/slz-258-enable-role-based-access-control-for-azure-key-vault.jsonc)
- **Folder:** `SLZ/Security/ID258`
- **Category:** `Key Vault`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Enable RBAC permission model across Key Vaults. It evaluates `Microsoft.KeyVault/vaults`. Key rule fields include `Microsoft.KeyVault/vaults/createMode`, `Microsoft.KeyVault/vaults/enableRbacAuthorization`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires Key Vault configuration standards to be embedded in IaC and operational key or secret lifecycle processes.

**Common false positives / exceptions:** Break-glass vaults, temporary migration secrets, or service-managed key constraints can require narrowly scoped exceptions.

**Evidence / compliance signal:** Compliance evidence is a Key Vault, key, or secret missing the required RBAC, recoverability, expiry, rotation, or private access state.

**Potential issues:** Key Vault controls can conflict with break-glass or migration scenarios if exception handling is not documented. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-259-keyvaultprivateendpoint"></a>
### SLZ-259-KeyVaultPrivateEndpoint

- **Display name:** SLZ - 259 - Ensure that Private Endpoints are Used for Azure Key Vault
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID259/slz-259-ensure-that-private-endpoints-are-used-for-azure-key-vault.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID259/slz-259-ensure-that-private-endpoints-are-used-for-azure-key-vault.jsonc)
- **Folder:** `SLZ/Security/ID259`
- **Category:** `Key Vault`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy checks does network ACLs are set to DENY and does exists at least one Private Endpoint for KeyVault It evaluates `Microsoft.KeyVault/vaults`. Key rule fields include `Microsoft.KeyVault/vaults/privateEndpointConnections[*]`, `Microsoft.KeyVault/vaults/privateEndpointConnections[*].privateLinkServiceConnectionState.status`, `Microsoft.KeyVault/vaults/networkAcls.defaultAction`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Change deployment modules for `Microsoft.KeyVault/vaults` to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete.

<a id="policy-slz-260-keyrotationenabled"></a>
### SLZ-260-KeyRotationEnabled

- **Display name:** SLZ - 260 - Ensure Automatic Key Rotation is Enabled Within Azure Key Vault for the Supported Services
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID260/slz-260-ensure-key-rotation-on-keys.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID260/slz-260-ensure-key-rotation-on-keys.jsonc)
- **Folder:** `SLZ/Security/ID260`
- **Category:** `Key Vault`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.KeyVault/vaults/keys`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure Key Rotation is Enabled Within Azure Key Vault for keys It evaluates `Microsoft.KeyVault/vaults/keys`. Key rule fields include `Microsoft.KeyVault/vaults/keys/rotationPolicy`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; 'Audit' allows a non-compliant resource to be created but flags it as non-compliant. 'Deny' blocks the resource creation and update. 'Disabled' turns off the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires Key Vault configuration standards to be embedded in IaC and operational key or secret lifecycle processes.

**Common false positives / exceptions:** Break-glass vaults, temporary migration secrets, or service-managed key constraints can require narrowly scoped exceptions.

**Evidence / compliance signal:** Compliance evidence is a Key Vault, key, or secret missing the required RBAC, recoverability, expiry, rotation, or private access state.

**Potential issues:** Key Vault controls can conflict with break-glass or migration scenarios if exception handling is not documented.

<a id="policy-slz-31-15-postgresqlsslversion"></a>
### SLZ-31.15-PostgreSQLSSLVersion

- **Display name:** SLZ - 31.15 - PostgreSQL flexible servers should be running tls version 1.2 or newer
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.15-PostgreSQLSSLVersion.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.15-PostgreSQLSSLVersion.jsonc)
- **Folder:** `SLZ/Security/ID31`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/servers/configurations`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy helps audit any PostgreSQL flexible servers in your environment which is running with tls version less than 1.2. It evaluates `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/servers/configurations`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/configurations/value`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.DBforPostgreSQL/flexibleServers`, `Microsoft.DBforPostgreSQL/servers/configurations` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-31-9-appgatewaytls"></a>
### SLZ-31.9-AppGatewayTLS

- **Display name:** SLZ - 31.9 - Application Gateway should be deployed with predefined Microsoft policy that is using latest tls version
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.9-AppGatewayTLS.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID31/slz-31.9-AppGatewayTLS.jsonc)
- **Folder:** `SLZ/Security/ID31`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Network/applicationGateways`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** This policy enables you to restrict that Application Gateways is always deployed with predefined Microsoft policy that is using latest tls version It evaluates `Microsoft.Network/applicationGateways`. Key rule fields include `Microsoft.Network/applicationGateways/sslPolicy.minProtocolVersion`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Network/applicationGateways` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-35-1-arcsqltde"></a>
### SLZ-35.1-ArcSQLTDE

- **Display name:** SLZ - 35.1 - Transparent Data Encryption must be enabled for Arc SQL managed instances.
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.1-ArcSQLTDE.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.1-ArcSQLTDE.jsonc)
- **Folder:** `SLZ/Security/ID35`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.AzureArcData/sqlmanagedinstances`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Enable transparent data encryption (TDE) at-rest on an Azure Arc-enabled SQL Managed Instance. Learn more at https://aka.ms/EnableTDEArcSQLMI. It evaluates `Microsoft.AzureArcData/sqlmanagedinstances`. Key rule fields include `Microsoft.AzureArcData/sqlManagedInstances/k8sRaw.spec.security.transparentDataEncryption`, `Microsoft.AzureArcData/sqlManagedInstances/k8sRaw.spec.security.transparentDataEncryption.mode`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.AzureArcData/sqlmanagedinstances` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-35-2-azuresynapsetde"></a>
### SLZ-35.2-AzureSynapseTDE

- **Display name:** SLZ - 35.2 - Azure Synapse Analytics dedicated SQL pools should enable encryption
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.2-AzureSynapseTDE.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID35/slz-35.2-AzureSynapseTDE.jsonc)
- **Folder:** `SLZ/Security/ID35`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Enable transparent data encryption for Azure Synapse Analytics dedicated SQL pools to protect data-at-rest and meet compliance requirements. Please note that enabling transparent data encryption for the pool may impact query performance. More details can re... It evaluates `Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption`. Key rule fields include `Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption/status`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Synapse/workspaces/sqlPools/transparentDataEncryption` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Choose Deny or disable the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-872-13-dicomservicesncencryptioncmk"></a>
### SLZ-872.13-DICOMServiceSNCEncryptionCMK

- **Display name:** SLZ - 872.13 - DICOM Service should use a customer-managed key to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.13-DICOMServiceSNCEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.13-DICOMServiceSNCEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID872`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.HealthcareApis/workspaces/dicomservices`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use a customer-managed key to control the encryption at rest of the data stored in Azure Health Data Services DICOM Service when this is a regulatory or compliance requirement. Customer-managed keys also deliver double encryption by adding a second layer of... It evaluates `Microsoft.HealthcareApis/workspaces/dicomservices`. Key rule fields include `Microsoft.HealthcareApis/workspaces/dicomservices/encryption.customerManagedKeyEncryption.keyEncryptionKeyUrl`, `[concat('tags[',parameters('tagName'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.HealthcareApis/workspaces/dicomservices` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-872-27-postgresqlserversencryptioncmk"></a>
### SLZ-872.27-PostgreSQLServersEncryptionCMK

- **Display name:** SLZ - 872.27 - PostgreSQL servers should use customer-managed keys to encrypt data at rest (only SNC resources)
- **Source:** [`Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.27-PostgreSQLServersEncryptionCMK.jsonc`](Definitions/policyDefinitions/SLZ/Security/ID872/slz-872.27-PostgreSQLServersEncryptionCMK.jsonc)
- **Folder:** `SLZ/Security/ID872`
- **Category:** `Security`
- **Mode:** `not declared`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/keys`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of your PostgreSQL servers. By default, the data is encrypted at rest with service-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-man... It evaluates `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/keys`. Key rule fields include `Microsoft.DBforPostgreSQL/servers/keys/serverKeyType`, `Microsoft.DBforPostgreSQL/servers/keys/uri`, `[concat('tags[',parameters('tagName'), ']')]`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Configure `Microsoft.DBforPostgreSQL/servers`, `Microsoft.DBforPostgreSQL/servers/keys` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Exclusion Tag Name parameter.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-177-storageaccountssecuretransfer"></a>
### SLZ-177-StorageAccountsSecureTransfer

- **Display name:** SLZ - 177 - Secure transfer to storage accounts should be enabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID177/slz-177-secure-transfer-to-storage-accounts-should-be-enabled.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID177/slz-177-secure-transfer-to-storage-accounts-should-be-enabled.jsonc)
- **Folder:** `SLZ/Storage/ID177`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Audit requirement of Secure transfer in your storage account. Secure transfer is an option that forces your storage account to accept requests only from secure connections (HTTPS). Use of HTTPS ensures authentication between the server and the service and p... It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `Microsoft.Storage/storageAccounts/supportsHttpsTrafficOnly`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Storage/storageAccounts` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; The effect determines what happens when the policy rule is evaluated to match).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-178-storageaccountsinfrastructureencryption"></a>
### SLZ-178-StorageAccountsInfrastructureEncryption

- **Display name:** SLZ - 178 - Storage accounts should have infrastructure encryption
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID178/slz-178-storage-accounts-should-have-infrastructure-encryption.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID178/slz-178-storage-accounts-should-have-infrastructure-encryption.jsonc)
- **Folder:** `SLZ/Storage/ID178`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Enable infrastructure encryption for higher level of assurance that the data is secure. When infrastructure encryption is enabled, data in a storage account is encrypted twice. It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `Microsoft.Storage/storageAccounts/encryption.requireInfrastructureEncryption`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Storage/storageAccounts` to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the audit policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-179-storageaccountsexpirationreminder"></a>
### SLZ-179-StorageAccountsExpirationReminder

- **Display name:** SLZ - 179 - Ensure that 'Enable key rotation reminders' is enabled for each Storage Account
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID179/slz-179-storage-accounts-expiration-reminder.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID179/slz-179-storage-accounts-expiration-reminder.jsonc)
- **Folder:** `SLZ/Storage/ID179`
- **Category:** `Storage`
- **Mode:** `not declared`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensures that storage accounts have a key expiration reminder It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `Microsoft.Storage/storageAccounts/keyPolicy.keyExpirationPeriodInDays`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure Key Vaults, keys, or secrets with the required RBAC, recovery, expiry, rotation, private endpoint, or encryption settings in the Key Vault module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Audit, Deny, or Disable the policy.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires Key Vault configuration standards to be embedded in IaC and operational key or secret lifecycle processes.

**Common false positives / exceptions:** Break-glass vaults, temporary migration secrets, or service-managed key constraints can require narrowly scoped exceptions.

**Evidence / compliance signal:** Compliance evidence is a Key Vault, key, or secret missing the required RBAC, recoverability, expiry, rotation, or private access state.

**Potential issues:** Key Vault controls can conflict with break-glass or migration scenarios if exception handling is not documented.

<a id="policy-slz-183-storageaccountspublicaccess"></a>
### SLZ-183-StorageAccountsPublicAccess

- **Display name:** SLZ - 183 - Storage account public access should be disallowed
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID183/slz-183-storage-account-public-access-should-be-disallowed.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID183/slz-183-storage-account-public-access-should-be-disallowed.jsonc)
- **Folder:** `SLZ/Storage/ID183`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Anonymous public read access to containers and blobs in Azure Storage is a convenient way to share data but might present security risks. To prevent data breaches caused by undesired anonymous access, Microsoft recommends preventing public access to a stora... It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `id`, `name`, `Microsoft.Storage/storageAccounts/allowBlobPublicAccess`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Storage/storageAccounts`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; The effect determines what happens when the policy rule is evaluated to match).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-184-storageaccountsdefaultnetworkaccessrule"></a>
### SLZ-184-StorageAccountsDefaultNetworkAccessRule

- **Display name:** SLZ - 184 - Ensure Default Network Access Rule for Storage Accounts is Set to Deny
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID184/slz-184-ensure-default-network-access-rule-for-storage-accounts-is-set-to-deny.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID184/slz-184-ensure-default-network-access-rule-for-storage-accounts-is-set-to-deny.jsonc)
- **Folder:** `SLZ/Storage/ID184`
- **Category:** `Storage`
- **Mode:** `Indexed`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** High
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Restricting default network access for storage accounts enhances security by denying all traffic and selectively allowing access only from specified Azure Virtual networks or designated public internet IP address ranges. It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `Microsoft.Storage/storageAccounts/networkAcls.defaultAction`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Remove broad public access from `Microsoft.Storage/storageAccounts`; replace it with private endpoints, approved source ranges, Azure Firewall, VPN/ExpressRoute, or controlled public edge services.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the audit policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires workload teams to remove public or Internet-sourced access rules and use approved private access, bastion, VPN, or controlled ingress patterns.

**Common false positives / exceptions:** Controlled public ingress through WAF, Azure Front Door, partner ranges, or break-glass administration can be legitimate if documented.

**Evidence / compliance signal:** Compliance evidence is a public access property, firewall rule, or NSG/security rule that permits the flagged Internet exposure.

**Potential issues:** Broad audit results may include intentional edge services; exemptions should be scoped to exact resources and time-bound. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-185-storageaccountsallowazureservices"></a>
### SLZ-185-StorageAccountsAllowAzureServices

- **Display name:** SLZ - 185 - Ensure 'Allow Azure services on the trusted services list to access this storage account' is Enabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID185/slz-185-ensure-'allow-azure-services-on-the-trusted-services-list-to-access-this-storage-account'-is.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID185/slz-185-ensure-'allow-azure-services-on-the-trusted-services-list-to-access-this-storage-account'-is.jsonc)
- **Folder:** `SLZ/Storage/ID185`
- **Category:** `Storage`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Some Microsoft services that interact with storage accounts operate from networks that can't be granted access through network rules. To help this type of service work as intended, allow the set of trusted Microsoft services to bypass the network rules. The... It evaluates `Microsoft.Storage/storageAccounts`. Key rule fields include `Microsoft.Storage/storageAccounts/networkAcls.bypass`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.Storage/storageAccounts` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Audit`, `Deny`, `Disabled`; The effect determines what happens when the policy rule is evaluated to match).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-186-storageaccountsprivateendpoints"></a>
### SLZ-186-StorageAccountsPrivateEndpoints

- **Display name:** SLZ - 186 - Ensure Private Endpoints are used to access Storage Accounts
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID186/slz-186-ensure-private-endpoints-are-used-to-access-storage-accounts.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID186/slz-186-ensure-private-endpoints-are-used-to-access-storage-accounts.jsonc)
- **Folder:** `SLZ/Storage/ID186`
- **Category:** `Storage`
- **Mode:** `All`
- **Source default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts`, `Microsoft.Storage/storageAccounts/privateEndpointConnections`, `Microsoft.Resources/deployments`, `Microsoft.Network/privateEndpoints`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** High
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Use Azure Private Link which lets you connect your virtual network to Azure services without a public IP address at the source or destination. It evaluates `Microsoft.Storage/storageAccounts`, `Microsoft.Storage/storageAccounts/privateEndpointConnections`, `Microsoft.Resources/deployments`, `Microsoft.Network/privateEndpoints`. Key rule fields include `Microsoft.Storage/storageAccounts/privateEndpointConnections/privateLinkServiceConnectionState.status`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Change deployment modules for `Microsoft.Storage/storageAccounts`, `Microsoft.Storage/storageAccounts/privateEndpointConnections`, `Microsoft.Resources/deployments`, and related child resources to use private endpoints/private link and disable or avoid unsupported public access paths.

**Parameters or variables to specify or consider:** `effect` (default `DeployIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `privateEndpointSubnetId` (default no default; A subnet with private endpoint network policies disabled.).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires private endpoint, private DNS, routing, firewall, and deployment pipeline patterns to be in place for affected services.

**Common false positives / exceptions:** Temporary migration endpoints, vendor-managed services, or services without private endpoint support may need scoped exemptions.

**Evidence / compliance signal:** Compliance evidence is the affected service missing a private endpoint/private link configuration or still allowing public access.

**Potential issues:** Private endpoint compliance can fail when private DNS, hub routing, or service-specific endpoint support is incomplete. The checked-in default effect is `DeployIfNotExists`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-187-storageblobsandcontainersoftdelete"></a>
### SLZ-187-StorageBlobsAndContainerSoftDelete

- **Display name:** SLZ - 187 - Azure Storage Blobs and Containers should have Soft Delete enabled (Minimum 30 days)
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID187/slz-187-azure-storage-blobs-and-containers-should-have-soft-delete-enabled.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID187/slz-187-azure-storage-blobs-and-containers-should-have-soft-delete-enabled.jsonc)
- **Folder:** `SLZ/Storage/ID187`
- **Category:** `Storage`
- **Mode:** `All`
- **Source default effect:** `Deny`
- **Allowed effects:** `Modify`, `Deny`, `Audit`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Storage/storageAccounts/blobServices`
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Protect your Storage Blobs or Containers from accidental or malicious deletions by enabling Soft Delete (Minimum 30 days) It evaluates `Microsoft.Storage/storageAccounts/blobServices`. Key rule fields include `Microsoft.Storage/storageAccounts/blobServices/deleteRetentionPolicy.enabled`, `Microsoft.Storage/storageAccounts/blobServices/containerDeleteRetentionPolicy.enabled`, `Microsoft.Storage/storageAccounts/blobServices/deleteRetentionPolicy.days`, `Microsoft.Storage/storageAccounts/blobServices/containerDeleteRetentionPolicy.days`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Encode the checked setting for `Microsoft.Storage/storageAccounts/blobServices` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `Deny`; allowed `Modify`, `Deny`, `Audit`, `Disabled`; Modify, Deny, Audit or Disabled the execution of the Policy); `retentionInDays` (default no default; How long should deleted resources be retained for (minimum 30 days).).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior. The checked-in default effect is `Deny`, so the assignment must override it to remain reporting-only.

<a id="policy-slz-248-osanddatadiskscmkencryption"></a>
### SLZ-248-OSandDataDisksCMKEncryption

- **Display name:** SLZ - 248 - Ensure that 'OS and Data' disks are encrypted with Customer Managed Key (CMK) for SNC data
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID248/slz-248-os-disk-encrypted-with-cmk.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID248/slz-248-os-disk-encrypted-with-cmk.jsonc)
- **Folder:** `SLZ/Storage/ID248`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, `Microsoft.Compute/galleries/images/versions`, `Microsoft.Compute/images`
- **Policy risk/severity:** High
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Use customer-managed keys to manage the encryption at rest of the contents of your managed disks if the resources is marked with SNC data classification tag. By default, the data is encrypted at rest with platform-managed keys, but customer-managed keys are... It evaluates `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, `Microsoft.Compute/galleries/images/versions`, `Microsoft.Compute/images`. Key rule fields include `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.Compute/virtualMachines/storageProfile.osDisk.managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/virtualMachines/storageProfile.dataDisks[*].managedDisk.id`, `Microsoft.Compute/virtualMachines/storageProfile.dataDisks[*].managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/virtualMachineScaleSets/virtualMachineProfile.storageProfile.osDisk.managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/virtualMachineScaleSets/virtualMachineProfile.storageProfile.dataDisks[*]`, `Microsoft.Compute/virtualMachineScaleSets/virtualMachineProfile.storageProfile.dataDisks[*].managedDisk.diskEncryptionSet.id`, `Microsoft.Compute/disks/encryption.diskEncryptionSetId`, plus 4 more fields. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure `Microsoft.Compute/virtualMachines`, `Microsoft.Compute/virtualMachineScaleSets`, `Microsoft.Compute/disks`, and related child resources to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Name parameter.); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-249-unattacheddiskscmkencryption"></a>
### SLZ-249-UnattachedDisksCMKEncryption

- **Display name:** SLZ - 249 - Ensure that 'Unattached disks' are encrypted with 'Customer Managed Key' (CMK) for SNC data
- **Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID249/slz-249-unattached-disk-encrypted-with-cmk.jsonc`](Definitions/policyDefinitions/SLZ/Storage/ID249/slz-249-unattached-disk-encrypted-with-cmk.jsonc)
- **Folder:** `SLZ/Storage/ID249`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Policy risk/severity:** Medium
- **Cost impact:** Yes
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy checks each UNATTACHED disk does it is related to diskEncryptionSet, if its not, it acts that disk as Not-Compliant for resources with the SNC tag It evaluates Not detected directly in the policy rule.. Key rule fields include `Microsoft.Compute/disks/diskState`, `[concat('tags[',parameters('tagName'), ']')]`, `Microsoft.Compute/disks/encryption.diskEncryptionSetId`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Configure the affected resources to use the required encryption setting, customer-managed key, or service-managed encryption control in IaC, including Key Vault access where required.

**Parameters or variables to specify or consider:** `tagName` (default `ec.DataSensitivityLevel`; Name of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Value parameter.); `tagValue` (default `SNC`; Value of the tag to use for include resources from this policy. This should be used along with the Inclusion Tag Name parameter.); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires key management, managed identity permissions, key rotation ownership, and service-specific encryption settings in IaC.

**Common false positives / exceptions:** Service limitations, legacy SKUs, key access delays, or approved Microsoft-managed-key usage can require exceptions.

**Evidence / compliance signal:** Compliance evidence is the affected service or child encryption resource not using the required encryption or customer-managed key state.

**Potential issues:** CMK policies depend on Key Vault availability, key permissions, key rotation process, and service support by region/SKU.

<a id="policy-slz-taginheritancefromsub"></a>
### SLZ-TagInheritanceFromSub

- **Display name:** Tag Inheritance
- **Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag-inheritance.jsonc`](Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag-inheritance.jsonc)
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Affected Azure resource types:** Not detected directly in the policy rule.
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Tag inheritance from subscription for all types of resources (including Resource Groups). It evaluates Not detected directly in the policy rule.. Key rule fields include `[concat('tags[', parameters('tag-TagName1'), ']')]`, `[concat('tags[', parameters('tag-TagName2'), ']')]`, `[concat('tags[', parameters('tag-TagName3'), ']')]`, `[concat('tags[', parameters('tag-TagName4'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName1` (default `ec.EnvironmentType`; Environment tag); `tag-TagName2` (default `ec.DataSensitivityLevel`; DataSensitivity tag); `tag-TagName3` (default `ec.GovIS2SeqNum`; Project tag); `tag-TagName4` (default `ec.SystemOwner`; Organization tag); `effect` (default `Audit`; allowed `Audit`, `Modify`, `Disabled`; Effect of policy).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-604-checkdatasensitivitytagsonsubscriptions"></a>
### SLZ-604-CheckDataSensitivityTagsOnSubscriptions

- **Display name:** SLZ - 604 - Check ec.DataSensitivityLevel Tag on Subscription
- **Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_datasensitivity.jsonc`](Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_datasensitivity.jsonc)
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure the ec.DataSensitivityLevel tag exists on the subscription and is within allowed values. It evaluates `Microsoft.Resources/subscriptions`. Key rule fields include `[concat('tags[', parameters('tag-TagName2'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName2` (default `ec.DataSensitivityLevel`; ec.DataSensitivityLevel tag); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Effect of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-checkenvironmenttagonsubscription"></a>
### SLZ-CheckEnvironmentTagOnSubscription

- **Display name:** SLZ - XXX - Check Environment Tag on Subscription
- **Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_environment.jsonc`](Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_environment.jsonc)
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure the Environment tag exists on the subscription and is within allowed values. It evaluates `Microsoft.Resources/subscriptions`. Key rule fields include `[concat('tags[', parameters('tag-TagName1'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName1` (default `ec.EnvironmentType`; Environment tag); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Effect of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-checkorganizationtagonsubscription"></a>
### SLZ-CheckOrganizationTagOnSubscription

- **Display name:** SLZ - XXX - Check Organization Tag on Subscription
- **Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_organization.jsonc`](Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_organization.jsonc)
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure the Organization tag exists on the subscription. It evaluates `Microsoft.Resources/subscriptions`. Key rule fields include `[concat('tags[', parameters('tag-TagName4'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName4` (default `ec.SystemOwner`; Organization tag); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Effect of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-878-checkprojecttagonsubscription"></a>
### SLZ-878-CheckProjectTagOnSubscription

- **Display name:** SLZ - 878 - Check Project Tag on Subscription
- **Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_project.jsonc`](Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_project.jsonc)
- **Folder:** `SLZ/Tagging/ID00-NonID-Tags`
- **Category:** `not declared`
- **Mode:** `All`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Resources/subscriptions`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Ensure the Project tag exists on the subscription. It evaluates `Microsoft.Resources/subscriptions`. Key rule fields include `[concat('tags[', parameters('tag-TagName3'), ']')]`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `tag-TagName3` (default `ec.GovIS2SeqNum`; Project tag); `effect` (default `Audit`; allowed `Audit`, `Deny`, `Disabled`; Effect of the policy).

**Does subscription-level assignment make sense:** Yes. The policy is subscription-scoped by design.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-261-appserviceauthentication"></a>
### SLZ-261-AppServiceAuthentication

- **Display name:** SLZ - 261 - Ensure App Service Authentication is set up for apps in Azure App Service
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID261/slz-261-ensure-app-service-authentication-is-set-up-for-apps-in-azure-app-service.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID261/slz-261-ensure-app-service-authentication-is-set-up-for-apps-in-azure-app-service.jsonc)
- **Folder:** `SLZ/Web/ID261`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy ensures that App Service Authentication is enabled on all App Services. It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/siteAuthEnabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-262-appserviceslotshttptohttpsredirection"></a>
### SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection

- **Display name:** SLZ - 262 - Ensure Web App Redirects All HTTP traffic to HTTPS in Azure App Service Slots
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service-slots.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service-slots.jsonc)
- **Folder:** `SLZ/Web/ID262`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy will audit does HTTP is redirected for App Service, if not, it allows to redirect HTTP to HTTPS only for App Service Slots. It evaluates `Microsoft.Web/sites/slots`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/httpsOnly`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites/slots` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Modify`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-262-appservicehttptohttpsredirection"></a>
### SLZ-262-AppServiceHTTPtoHTTPSRedirection

- **Display name:** SLZ - 262 - Ensure Web App Redirects All HTTP traffic to HTTPS in Azure App Service
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service.jsonc)
- **Folder:** `SLZ/Web/ID262`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `Audit` for the requested reporting-only deployment. The policy will mark matching resources non-compliant and will not change tenant or subscription resources.

**Breakdown of what the policy does:** Policy will audit does HTTP is redirected for App Service, if not, it allows to redirect HTTP to HTTPS only for App Service. It evaluates `Microsoft.Web/sites`. Key rule fields include `kind`, `Microsoft.Web/sites/httpsOnly`. In Audit mode it reports matching resources as non-compliant; it does not create, update, or delete resources.

**How to align the environment:** Set the required TLS, SSL, HTTPS, HTTP version, FTP, or secure-transfer property for `Microsoft.Web/sites` in the resource deployment module.

**Parameters or variables to specify or consider:** `effect` (default `Audit`; allowed `Audit`, `Modify`, `Disabled`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires clients and deployment modules to support the required TLS, SSL, HTTPS, or secure-transfer setting.

**Common false positives / exceptions:** Legacy clients, unsupported runtime stacks, or managed service defaults can cause temporary exceptions during migration.

**Evidence / compliance signal:** Compliance evidence is the affected service property showing an older TLS/SSL/HTTP setting, disabled HTTPS, enabled FTP, or insecure transfer allowed.

**Potential issues:** Raising protocol versions can break older clients and runtime stacks if compatibility is not tested first.

<a id="policy-slz-265-appserviceaadregistration"></a>
### SLZ-265-AppServiceAADRegistration

- **Display name:** SLZ - 265 - Ensure that Register with Azure Active Directory is enabled on App Service
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID265/slz-265-ensure-that-register-with-azure-active-directory-is-enabled-on-app-service.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID265/slz-265-ensure-that-register-with-azure-active-directory-is-enabled-on-app-service.jsonc)
- **Folder:** `SLZ/Web/ID265`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** This policy checks does Web App have system or user assigned identitym if not, it will deploy System-Assigned identity It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/managedServiceIdentityId`, `Microsoft.Web/sites/config/xmanagedServiceIdentityId`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Ensure VM identities, Guest Configuration extensions, package reachability, and update-assessment settings are present through VM baseline modules.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes, if the subscription has a consistent landing-zone baseline and exemption process. For shared platform services, management-group assignment may be more consistent.

**Operational impact:** Requires VM identity, extension, outbound connectivity, and guest configuration package readiness, even when the policy is only reporting.

**Common false positives / exceptions:** Unsupported OS images, sealed appliances, Arc connectivity gaps, or blocked egress can appear as non-compliance.

**Evidence / compliance signal:** Compliance evidence is a VM missing the expected identity, extension, assignment, or guest setting result.

**Potential issues:** Guest Configuration can be noisy where VM images, extensions, identities, or egress are not standardized.

<a id="policy-slz-267-appserviceslotslatestpythonversion"></a>
### SLZ-267-AppServiceSlotsLatestPythonVersion

- **Display name:** SLZ - 267 - Ensure that 'Python version' is the Latest Stable Version, if Used to Run the Web App Slots
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app-slots.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app-slots.jsonc)
- **Folder:** `SLZ/Web/ID267`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that 'Python version' is in expected, if Used to Run the Web App Slots It evaluates `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/config/web.linuxFxVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `pythonVersion` (default ``; Specify a supported Python version for App Service); `pythonVersion2` (default ``; Specify a supported Python version for App Service); `pythonPrefix` (default `PYTHON|`; Specify a supported Python prefix for App Service).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-267-appservicelatestpythonversion"></a>
### SLZ-267-AppServiceLatestPythonVersion

- **Display name:** SLZ - 267 - Ensure that 'Python version' is the Latest Stable Version, if Used to Run the Web App
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app.jsonc)
- **Folder:** `SLZ/Web/ID267`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that 'Python version' is in expected, if Used to Run the Web App It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/web.linuxFxVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `pythonVersion` (default ``; Specify a supported Python version for App Service); `pythonVersion2` (default ``; Specify a supported Python version for App Service); `pythonPrefix` (default `PYTHON|`; Specify a supported Python prefix for App Service).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-268-appserviceslotslatestjavaversion"></a>
### SLZ-268-AppServiceSlotsLatestJavaVersion

- **Display name:** SLZ - 268 - Ensure that 'Java version' is the latest, if used to run the Web App for Slots
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app-for-slots.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app-for-slots.jsonc)
- **Folder:** `SLZ/Web/ID268`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that expepted 'Java version' is used by the Web App Slots based Linux deployment. It evaluates `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/config/web.linuxFxVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `javaVersion` (default ``; Specify a supported Java version for App Service).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-268-appservicelatestjavaversion"></a>
### SLZ-268-AppServiceLatestJavaVersion

- **Display name:** SLZ - 268 - Ensure that 'Java version' is the latest, if used to run the Web App
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app.jsonc)
- **Folder:** `SLZ/Web/ID268`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Ensure that expepted 'Java version' is used by the Web App Slots based Linux deployment. It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/web.linuxFxVersion`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`; Enable or disable the execution of the policy); `javaVersion` (default ``; Specify a supported Java version for App Service).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-269-appserviceslotslatesthttpversion"></a>
### SLZ-269-AppServiceSlotsLatestHTTPVersion

- **Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Web App for Slots
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-slots.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-slots.jsonc)
- **Folder:** `SLZ/Web/ID269`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for HTTP either due to security flaws or to include additional functionality. Using the latest HTTP version for web apps to take advantage of security fixes, if any, and/or new functionalities of the newer version. It evaluates `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/config/web.http20Enabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-269-appservicelatesthttpversionwebapp"></a>
### SLZ-269-AppServiceLatestHTTPVersionWebApp

- **Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Web App
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use-webapp.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use-webapp.jsonc)
- **Folder:** `SLZ/Web/ID269`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for HTTP either due to security flaws or to include additional functionality. Using the latest HTTP version for web apps to take advantage of security fixes, if any, and/or new functionalities of the newer version. It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/web.http20Enabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-269-appservicelatesthttpversion"></a>
### SLZ-269-AppServiceLatestHTTPVersion

- **Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Function App
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use.jsonc)
- **Folder:** `SLZ/Web/ID269`
- **Category:** `not declared`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Low
- **Cost impact:** No
- **Remediation effort:** Low
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Periodically, newer versions are released for HTTP either due to security flaws or to include additional functionality. Using the latest HTTP version for web apps to take advantage of security fixes, if any, and/or new functionalities of the newer version. It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/web.http20Enabled`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Set the required subscription or resource tags in the subscription vending and resource deployment workflow; define valid values centrally.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`; Enable or disable the execution of the policy).

**Does subscription-level assignment make sense:** Yes. Subscription assignment is appropriate; consider management-group assignment only when parameters and exemptions are standardized.

**Operational impact:** Requires subscription/resource creation workflows to provide required tags and keep tag values aligned with governance standards.

**Common false positives / exceptions:** System-created resources, inherited tags not visible at the checked scope, or subscriptions pending onboarding may need exceptions.

**Evidence / compliance signal:** Compliance evidence is a subscription or resource missing the required tag name/value or inheritance result.

**Potential issues:** Policy results are only useful if tag taxonomy and ownership are agreed before assignment.

<a id="policy-slz-270-appserviceftpdeploymentswebapp"></a>
### SLZ-270-AppServiceFTPDeploymentsWebApp

- **Display name:** SLZ - 270 - Ensure FTP deployments are Disabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-WebApp.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-WebApp.jsonc)
- **Folder:** `SLZ/Web/ID270`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Policy will audit does FTP is disabled, if not, it allows to deploy FTPS only for App Service and Azure Functions. It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/ftpsState`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy); `allowFTPS` (default `False`; true value will force using FTPSOnly).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-270-appserviceslotsftpdeployments"></a>
### SLZ-270-AppServiceSlotsFTPDeployments

- **Display name:** SLZ - 270 - Ensure FTP deployments are Disabled for Slots
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-for-slots.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-for-slots.jsonc)
- **Folder:** `SLZ/Web/ID270`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Policy will audit does FTP is disabled for App Service slots, if not, it allows to deploy FTPS only for App Service and Azure Functions. It evaluates `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config`. Key rule fields include `kind`, `Microsoft.Web/sites/slots/config/ftpsState`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites/slots`, `Microsoft.Web/sites/slots/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy); `allowFTPS` (default `False`; true value will force using FTPSOnly).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

<a id="policy-slz-270-appserviceftpdeployments"></a>
### SLZ-270-AppServiceFTPDeployments

- **Display name:** SLZ - 270 - Ensure FTP deployments are Disabled
- **Source:** [`Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled.jsonc`](Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled.jsonc)
- **Folder:** `SLZ/Web/ID270`
- **Category:** `App Service`
- **Mode:** `Indexed`
- **Source default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Affected Azure resource types:** `Microsoft.Web/sites`, `Microsoft.Web/sites/config`
- **Policy risk/severity:** Medium
- **Cost impact:** No
- **Remediation effort:** Medium
- **Audit-only assignment note:** Use `AuditIfNotExists` for audit-only behavior. Plain `Audit` is not an allowed effect, but `AuditIfNotExists` only reports missing related configuration and does not deploy changes.

**Breakdown of what the policy does:** Policy will audit does FTP is disabled, if not, it allows to deploy FTPS only for App Service and Azure Functions. It evaluates `Microsoft.Web/sites`, `Microsoft.Web/sites/config`. Key rule fields include `kind`, `Microsoft.Web/sites/config/ftpsState`. In audit-only mode it reports resources where the expected related configuration is missing; it does not create that configuration.

**How to align the environment:** Encode the checked setting for `Microsoft.Web/sites`, `Microsoft.Web/sites/config` in the relevant IaC module and remediate existing drift before using compliance as an operational signal.

**Parameters or variables to specify or consider:** `effect` (default `AuditIfNotExists`; allowed `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`; DeployIfNotExists, AuditIfNotExists or Disabled the execution of the Policy); `allowFTPS` (default `False`; true value will force using FTPSOnly).

**Does subscription-level assignment make sense:** Yes, provided the resource types are expected in the subscription and ownership for exceptions is clear.

**Operational impact:** Requires the owning platform or workload team to encode the checked property in IaC and monitor compliance drift.

**Common false positives / exceptions:** Platform-created resources, unsupported API versions, or documented architecture exceptions can produce expected non-compliance.

**Evidence / compliance signal:** Compliance evidence is the resource instance whose fields match the policy condition and therefore appears non-compliant in Azure Policy.

**Potential issues:** The policy should be validated in a pilot subscription to confirm the field aliases match current resource API behavior.

