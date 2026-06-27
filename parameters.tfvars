# Generated override template for snippet.tf.
# Edit values below to override initiative assignment parameters.
# Terraform passes these objects to azurerm_management_group_policy_assignment.parameters after jsonencode().
# Keep each parameter in this shape: "parameter-name" = { value = ... }.
# Allowed/default comments come from the initiative first, then from referenced local custom policy definitions when the initiative omits them.
# Defaults are inferred only when every referenced local policy parameter declares the same default.
# Leave deploy_assignments false until placeholder values are replaced.

management_group_id       = "<management-group-id>"
deploy_assignments        = false
user_assigned_identity_id = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<identity-name>"

initiative_parameters = {
  # Initiative: C1- Azure Landing Zone Core Policy Set
  # Source: Definitions/policySetDefinitions/C1/c1-AzureLandingZoneCore.jsonc
  "C1-AzureLandingZoneCore" = {
    # Type: Boolean
    # Display name: Bring Your Own User-Assigned Identity
    # Default: false
    # Allowed values: [true, false]
    "bringYourOwnUserAssignedManagedIdentity-SLZ-MDC_DfSQL_DeployMicrosoftDefenderForSQLWindowsAgent_VM" = { value = false }

    # Type: Boolean
    # Display name: Bring Your Own User-Assigned Identity
    # Default: false
    # Allowed values: [true, false]
    "bringYourOwnUserAssignedManagedIdentity-SLZ-MDC_DfSQL_DeployWindowsAMA_VM" = { value = false }

    # Type: String
    # Display name: VMI Data Collection Rule Resource Id
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    "dcrResourceIdLinux-AMA" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/<provider>/<resource-type>/<resource-name>" }

    # Type: String
    # Display name: VMI Data Collection Rule Resource Id
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    "dcrResourceIdWindows-AMA" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/<provider>/<resource-type>/<resource-name>" }

    # Type: String
    # Display name: Effect for all constituent policies
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-AMA" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-189-BlobServiceStorageLogging" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-190-TableServiceStorageLogging" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-27-StorageAccountDiagnosticSettingsToWS" = { value = "DeployIfNotExists" }

    # Type: string
    # Default: "DeployIfNotExists" (inferred from referenced policy definitions)
    # Allowed values: ["AuditIfNotExists", "DeployIfNotExists", "Disabled"] (inferred common values from referenced policy definitions)
    "effect-C1-SLZ-51" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-222-StorageAccountLogsCMK" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_AMA_DefaultPipeline_Arc" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_AMA_DefaultPipeline_DCRA_Arc" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_AMA_DefaultPipeline_VM" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployDefaultWorkspace" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployMicrosoftDefenderForSQLWindowsAgent_Arc" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployMicrosoftDefenderForSQLWindowsAgent_VM" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployWindowsAMA_Arc" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-MDC_DfSQL_DeployWindowsAMA_VM" = { value = "DeployIfNotExists" }

    # Type: String
    # Display name: Policy Effect
    # Default: "Modify"
    # Allowed values: ["Modify", "Disabled"]
    "effect-SLZ-MIToEnableGCforVMs" = { value = "Modify" }

    # Type: Boolean
    # Display name: Enable collection of SQL queries for security research
    # Default: false
    # Allowed values: [true, false]
    "enableCollectionOfSqlQueriesForSecurityResearch-SLZ-MDC_DfSQL_AMA_DefaultPipeline_Arc" = { value = false }

    # Type: Boolean
    # Display name: Enable collection of SQL queries for security research
    # Default: false
    # Allowed values: [true, false]
    "enableCollectionOfSqlQueriesForSecurityResearch-SLZ-MDC_DfSQL_AMA_DefaultPipeline_VM" = { value = false }

    # Type: Boolean
    # Display name: Enable Processes and Dependencies
    # Default: false
    # Allowed values: [true, false]
    "enableProcessesAndDependencies-AMA" = { value = false }

    # Type: Array
    # Display name: List of virtual machine scale set images that have supported OS to add to scope. Example values: '/subscriptions/<subscriptionId>/resourceGroups/YourResourceGroup/providers/Microsoft.Compute/images/ContosoStdImage'
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "listOfImageIdToInclude-AMA" = { value = [] }

    # Type: Array
    # Display name: Optional: List of VM images that have supported Linux OS to add to scope
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "listOfImageIdToInclude_linux-AMA" = { value = [] }

    # Type: Array
    # Display name: Optional: List of VM images that have supported Windows OS to add to scope
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "listOfImageIdToInclude_windows-AMA" = { value = [] }

    # Type: String
    # Display name: Log Analytics workspace
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    # Use the full Log Analytics workspace resource ID, not the workspace GUID/customer ID.
    "logAnalytics-C1-SLZ-189-BlobServiceStorageLogging" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>" }

    # Type: String
    # Display name: Log Analytics workspace
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    # Use the full Log Analytics workspace resource ID, not the workspace GUID/customer ID.
    "logAnalytics-C1-SLZ-190-TableServiceStorageLogging" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>" }

    # Type: String
    # Display name: Log Analytics workspace
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    # Use the full Log Analytics workspace resource ID, not the workspace GUID/customer ID.
    "logAnalytics-C1-SLZ-27-StorageAccountDiagnosticSettingsToWS" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>" }

    # Type: Boolean
    # Display name: Enable logs
    # Default: true
    # Allowed values: [true, false]
    "logsEnabled-C1-SLZ-189-BlobServiceStorageLogging" = { value = true }

    # Type: Boolean
    # Display name: Enable logs
    # Default: true
    # Allowed values: [true, false]
    "logsEnabled-C1-SLZ-190-TableServiceStorageLogging" = { value = true }

    # Type: Boolean
    # Display name: Enable metrics
    # Default: false
    # Allowed values: [true, false]
    "metricsEnabled-C1-SLZ-189-BlobServiceStorageLogging" = { value = false }

    # Type: Boolean
    # Display name: Enable metrics
    # Default: false
    # Allowed values: [true, false]
    "metricsEnabled-C1-SLZ-190-TableServiceStorageLogging" = { value = false }

    # Type: Boolean
    # Display name: Enable metrics
    # Default: true
    # Allowed values: [true, false]
    "metricsEnabled-C1-SLZ-27-StorageAccountDiagnosticSettingsToWS" = { value = true }

    # Type: String
    # Display name: Profile name
    # Default: "tableServicesDiagnosticsLogsToWorkspace"
    # Accepts any value valid for Azure Policy parameter type String
    "profileName-C1-SLZ-189-BlobServiceStorageLogging" = { value = "tableServicesDiagnosticsLogsToWorkspace" }

    # Type: String
    # Display name: Profile name
    # Default: "tableServicesDiagnosticsLogsToWorkspace"
    # Accepts any value valid for Azure Policy parameter type String
    "profileName-C1-SLZ-190-TableServiceStorageLogging" = { value = "tableServicesDiagnosticsLogsToWorkspace" }

    # Type: String
    # Display name: Profile name
    # Default: "setbypolicy_logAnalytics"
    # Accepts any value valid for Azure Policy parameter type String
    "profileName-C1-SLZ-27-StorageAccountDiagnosticSettingsToWS" = { value = "setbypolicy_logAnalytics" }

    # Type: Boolean
    # Display name: Scope Policy to Dependency Agent-Supported Operating Systems
    # Default: false
    # Allowed values: [true, false]
    "scopeToSupportedImages-AMA" = { value = false }

    # Type: String
    # Display name: Name of Storage Account
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    "storageAccount-SLZ-222-StorageAccountLogsCMK" = { value = "<set-value>" }

    # Type: String
    # Display name: User-Assigned Managed Identity Resource ID
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type String
    "userAssignedIdentityResourceId-SLZ-MDC_DfSQL_DeployMicrosoftDefenderForSQLWindowsAgent_VM" = { value = "" }

    # Type: String
    # Display name: User-Assigned Managed Identity Resource ID
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type String
    "userAssignedIdentityResourceId-SLZ-MDC_DfSQL_DeployWindowsAMA_VM" = { value = "" }

    # Type: string
    # Default: none at initiative level; partial referenced defaults seen: ["setByPolicy"]
    # Replace the placeholder before enabling assignments.
    # Accepts any value valid for Azure Policy parameter type string
    # Use the full Log Analytics workspace resource ID, not the workspace GUID/customer ID.
    "workspaceId-C1-SLZ-51" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>" }

  }

  # Initiative: C1 Managed Policies
  # Source: Definitions/policySetDefinitions/C1/c1-managed-policies.jsonc
  "C1-ManagedPolicies" = {
    # Type: Array
    # Display name: allowedCustomRolesNames
    # Default: ["STEE-exempt-action", "DIGIT_S2_copy_snapshot_to_CISRC_evidance_storage", "DIGIT_S2_XSOAR_INTEGRATION", "DIGIT.C1-STEE exempt/action", "DIGIT.S2", "Security Admin - DIGIT.S2", "Security Assessment Contributor - DIGIT.S2", "Security Reader - DIGIT.S2", "DIGIT.S2.CSIRC", "DIGIT.S2.SOC"]
    # Accepts any value valid for Azure Policy parameter type Array
    "allowedCustomRolesNames-C1-SLZ-149-NoCustomAdministratorRoles" = { value = ["STEE-exempt-action", "DIGIT_S2_copy_snapshot_to_CISRC_evidance_storage", "DIGIT_S2_XSOAR_INTEGRATION", "DIGIT.C1-STEE exempt/action", "DIGIT.S2", "Security Admin - DIGIT.S2", "Security Assessment Contributor - DIGIT.S2", "Security Reader - DIGIT.S2", "DIGIT.S2.CSIRC", "DIGIT.S2.SOC"] }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-C1-SLZ-149-NoCustomAdministratorRoles" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-C1-SLZ-171-SecurityContactEmailAdditionalAddress" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-172-AlertsNotifySetToHigh" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["AuditIfNotExists", "DeployIfNotExists", "Disabled"]
    "effect-C1-SLZ-198-AuditingRetentionGreater90days" = { value = "DeployIfNotExists" }

    # Type: string
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-C1-SLZ-220" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible" = { value = "Deny" }

    # Type: String
    # Display name: Security contacts email address
    # Default: "ec-digit-csirc@ec.europa.eu"
    # Accepts any value valid for Azure Policy parameter type String
    "emailSecurityContact-C1-SLZ-171-SecurityContactEmailAdditionalAddress" = { value = "ec-digit-csirc@ec.europa.eu" }

    # Type: String
    # Display name: Minimal severity
    # Default: "High"
    # Allowed values: ["High", "Medium", "Low"]
    "minimalSeverity-C1-SLZ-171-SecurityContactEmailAdditionalAddress" = { value = "High" }

    # Type: String
    # Display name: Operation Name
    # Default: none; replace the placeholder before enabling assignments
    # Allowed values: ["Microsoft.Sql/servers/firewallRules/write", "Microsoft.Sql/servers/firewallRules/delete", "Microsoft.Network/networkSecurityGroups/write", "Microsoft.Network/networkSecurityGroups/delete", "Microsoft.ClassicNetwork/networkSecurityGroups/write", "Microsoft.ClassicNetwork/networkSecurityGroups/delete", "Microsoft.Network/networkSecurityGroups/securityRules/write", "Microsoft.Network/networkSecurityGroups/securityRules/delete", "Microsoft.ClassicNetwork/networkSecurityGroups/securityRules/write", "Microsoft.ClassicNetwork/networkSecurityGroups/securityRules/delete"]
    "operationNameAdministrative-C1-SLZ-220" = { value = "<set-value>" }

    # Type: String
    # Display name: Operation Name
    # Default: none; replace the placeholder before enabling assignments
    # Allowed values: ["Microsoft.Authorization/policyAssignments/write", "Microsoft.Authorization/policyAssignments/delete"]
    "operationNamePolicy-C1-SLZ-220" = { value = "<set-value>" }

    # Type: String
    # Display name: Operation Name
    # Default: none; replace the placeholder before enabling assignments
    # Allowed values: ["Microsoft.Security/policies/write", "Microsoft.Security/securitySolutions/write", "Microsoft.Security/securitySolutions/delete"]
    "operationNameSecurity-C1-SLZ-220" = { value = "<set-value>" }

    # Type: string
    # Display name: Retention days (optional, 90 days if unspecified)
    # Default: "90"
    # Accepts any value valid for Azure Policy parameter type string
    "retentionDays-C1-SLZ-198-AuditingRetentionGreater90days" = { value = "90" }

    # Type: string
    # Display name: Resource group name for storage accounts
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type string
    "storageAccountsResourceGroup-C1-SLZ-198-AuditingRetentionGreater90days" = { value = "<set-value>" }

    # Type: String
    # Display name: Target Log Analytics Workspace Name
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    # Use the full Log Analytics workspace resource ID, not the workspace GUID/customer ID.
    "targetLogAnalyticsWorkspaceName-C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible" = { value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>" }

    # Type: String
    # Display name: Target Storage Account Name
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    "targetStorageAccountName-C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible" = { value = "<set-value>" }

  }

  # Initiative: SLZ - ALZ - Policy Set
  # Source: Definitions/policySetDefinitions/SLZ/SLZ-ALZ-PolicySet.jsonc
  "SLZ-ALZ-PolicySet" = {
    # Type: Array
    # Display name: Optional: List of virtual machine images to exclude
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "ImageIdsToExclude-SLZ-DefenderForDefenderForLinuxAgentDeploy" = { value = [] }

    # Type: Array
    # Display name: Optional: List of virtual machine images to exclude
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "ImageIdsToExclude-SLZ-DefenderForDefenderForWindowsAgentDeploy" = { value = [] }

    # Type: Array
    # Display name: Optional: List Of Image Publishers to exclude
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "PublishersToExclude-SLZ-DefenderForDefenderForLinuxAgentDeploy" = { value = [] }

    # Type: Array
    # Display name: Optional: List Of Image Publishers to exclude
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "PublishersToExclude-SLZ-DefenderForDefenderForWindowsAgentDeploy" = { value = [] }

    # Type: boolean
    # Display name: Enforce FTPS
    # Default: false
    # Accepts any value valid for Azure Policy parameter type boolean
    "allowFTPS-SLZ-270-AppServiceFTPDeployments" = { value = false }

    # Type: boolean
    # Display name: Enforce FTPS
    # Default: false
    # Accepts any value valid for Azure Policy parameter type boolean
    "allowFTPS-SLZ-270-AppServiceFTPDeploymentsWebApp" = { value = false }

    # Type: boolean
    # Display name: Enforce FTPS
    # Default: false
    # Accepts any value valid for Azure Policy parameter type boolean
    "allowFTPS-SLZ-270-AppServiceSlotsFTPDeployments" = { value = false }

    # Type: Array
    # Display name: Approved extensions
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "approvedExtensions-SLZ-250-OnlyApprovedExtensions" = { value = [] }

    # Type: String
    # Display name: Assessment mode
    # Default: "AutomaticByPlatform"
    # Allowed values: ["ImageDefault", "AutomaticByPlatform"]
    "assessmentMode-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "AutomaticByPlatform" }

    # Type: String
    # Display name: Assessment mode
    # Default: "AutomaticByPlatform"
    # Allowed values: ["ImageDefault", "AutomaticByPlatform"]
    "assessmentMode-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "AutomaticByPlatform" }

    # Type: Boolean
    # Display name: Check if Infrastructure Encryption is enabled on Backup vaults.
    # Default: false
    # Allowed values: [true, false]
    "checkInfrastructureEncryption-SLZ-1360-BackupVaultSNCEncryptionCMK" = { value = false }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-00-MicrosoftDefenderForContainer" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-10.6-DisablePublicNetworkWebApps" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1325-WAFonAPGT" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1326-WAFSkuV2" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-1327-WAFonFrontDoor" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1328-WAFonFrontDoor-Detection" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1329-DisablePublicNetworkFunctionApps" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-1330-PrivateEndpointAPI" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disable"]
    "effect-SLZ-1331-DisablePublicAccessAPI" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1331.2-DisablePublicAccessAPIPE" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1332-APIAllowedSku" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1333-NoPublicIpOnNics" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1334-KubernetesInternalLB" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1335-NoPublicIpOnAKSNodePools" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1336-ContainerAppsNoPublicNA" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1337-ContainerAppDisableExternalNetworkAccess" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-1338-WAFonAPGT-Detection" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1340-AppServiceLatestTLS" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1341-AppServiceSlotsLatestTLS" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1342-FunctionAppsLatestTLS" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-1343-FunctionAppSlotsLatestTLS" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "DeployIfNotExists", "Disabled"]
    "effect-SLZ-1344-LogicAppsLatestTLS" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1345-RedisSecureConnections" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1346-FrontDoorTLS" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Deny", "Audit", "Disabled"]
    "effect-SLZ-1347-EventHubTLS" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-1348-StorageTLS" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1349-ADDomainServicesTLS" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1350-AzureCosmosTLS12" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1351-SQLManagedInstanceTLS12" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1352-ArcSQLManagedInstanceTLS12" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1353-SQLDatabaseTLS12" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-1354-PostgreSQLFLEXSSLVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1355-MariaDBTLSVersion" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1356-SynapseSQLTLSVersion" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-1357-AzureKubernetesClustersKMS" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1358-AISNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1359-AutomationSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1360-BackupVaultSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1361-BatchSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1362-LoadTestingSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1363-RedisEnterpriseSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1364-CognitiveSearchSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-1365-ContainerInstanceSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1366-ContainerRegistrySNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1367-CosmosDBSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1368-AzureDataExplorerSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1369-AzureDataFactoriesSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-1371-EventHubNamespaceSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-1372-FluidRelaySNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1373-HDInsightSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-1374-HealthBotsSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-1375-HPCCacheSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1376-IoTHubSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1378-LogicAppsSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1379-AzureMLSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1380-AzureSynapseWorkspaceCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1381-OSAndDataDisksSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-1384-ServiceBusPremiumEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-1385-StorageAccountEncryptionScopesCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-153-DefenderCloudPricingForServer" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-153-DefenderForEndpoint" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-154-DefenderCloudPricingForApplicationServices" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-156-DefenderCloudPricingForAzureSQLDB" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-157-DefenderCloudPricingForDBOnServers" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-158-DefenderCloudPricingForOpenDB" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-159-DefenderCloudPricingForStorage" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-161-DefenderCloudPricingForAzureCosmosDB" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-162-DefenderCloudPricingForKeyVault" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-164-DefenderCloudPricingForResourceManager" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-165-MachinesAuditPeriodSystemUpdatesCheck" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled", "AuditIfNotExists"]
    "effect-SLZ-168-MicrosoftDefenderConfigureVMForVulnerability" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-177-StorageAccountsSecureTransfer" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-178-StorageAccountsInfrastructureEncryption" = { value = "Deny" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-179-StorageAccountsExpirationReminder" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-183-StorageAccountsPublicAccess" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-184-StorageAccountsDefaultNetworkAccessRule" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-185-StorageAccountsAllowAzureServices" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-186-StorageAccountsPrivateEndpoints" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Modify", "Deny", "Audit", "Disabled"]
    "effect-SLZ-187-StorageBlobsAndContainerSoftDelete" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-193-SQLServerAuditing" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-194-AzureSQLDBIngressFrom0000" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-195-SQLServerTDEEncryptionWithCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-196-SQLServerAADAdminConfiguration" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-197-SQLDatabaseDataEncryption" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-204-PostgresSQLFlexibleServerSSLConnection" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-204-PostgresSQLServerSSLConnection" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-205-PostgresSQLFlexibleServer_log_checkpoints" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-205-PostgresSQLServer_log_checkpoints" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-206-PostgresSQLServerLogConnections" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-207-PostgresSQLServerDisconnectionsLogging" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-208-PostgresSQLFlexibleServerConnectionThrottling" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-208-PostgresSQLServerConnectionThrottling" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-210-PostgresSQLServerPublicNetworkAccess" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-212-MySQLSQLServerEnforceSSLConnection" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "DeployIfNotExists", "Deny"]
    "effect-SLZ-213-MySQLLatestTLS" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-214-MySQLSQLServer_audit_log_enabled" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-215-MySQLSQLServer_audit_log_events" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Disabled", "Deny"]
    "effect-SLZ-217-AzureCosmosDBPrivateLink" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-218-AzureCosmosDBLocalAuthenticationDisabled" = { value = "Deny" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-223-logsKeyVault" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-226-logsCreatePolicy" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-227-logsDeletePolicy" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-228-logsCreateUpdateNsg" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-229-logsDeleteNsg" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-230-logsCreateUpdateSecuritySolutions" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-231-logsDeleteSecuritySolutions" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-232-logsCreateUpdateSqlServerFirewallRule" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-233-logsDeleteSqlServerFirewallRule" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-234-logsCreateOrUpdatePublicIpRule" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-235-logsDeletePublicIpRule" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-236.1-webAppsNoInsights" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-236.2-functionAppsNoInsights" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-236.3-logicAppsNoInsights" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.1-ApimProdNoBasicSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.10-AKSProdNoFreeTier" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.11-LBProdNoBasicSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.12-VpnGwProdNoBasicTier" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.13-AzureSearchProdNoFreeOrBasicSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.14-SignalRProdNoFreeTier" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.2-AppConfigProdNoFreeSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.3-AppServiceProdNoLowTierSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.4-ADXProdNoDeveloperTier" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.5-DatabricksProdNoStandardOrTrialSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.6-DisksProdNoStandardHDD" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.7-ACRProdNoBasicSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.8-EventHubProdNoBasicSku" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-238.9-KeyVaultProdNoStandardSku" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-239-RPDAccessDisabledForInternet" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-240-SSHAccessDisabledForInternet" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-241-UDPAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-242-HTTPsAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-244-NetworkWatcherEnabled" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-248-OSandDataDisksCMKEncryption" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-249-UnattachedDisksCMKEncryption" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-250-OnlyApprovedExtensions" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-254-KeyVaultKeysExpirationDateSet" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-256-KeyVaultSecretsExpirationDateSet" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-257-KeyVaultRecoverable" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-258-KeyVaultRBAC" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-259-KeyVaultPrivateEndpoint" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-260-KeyRotationEnabled" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-261-AppServiceAuthentication" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-262-AppServiceHTTPtoHTTPSRedirection" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Modify", "Disabled"]
    "effect-SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-265-AppServiceAADRegistration" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-267-AppServiceLatestPythonVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-267-AppServiceSlotsLatestPythonVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-268-AppServiceLatestJavaVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-268-AppServiceSlotsLatestJavaVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-269-AppServiceLatestHTTPVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-269-AppServiceLatestHTTPVersionWebApp" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled", "DeployIfNotExists"]
    "effect-SLZ-269-AppServiceSlotsLatestHTTPVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-270-AppServiceFTPDeployments" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-270-AppServiceFTPDeploymentsWebApp" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-270-AppServiceSlotsFTPDeployments" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-272-ResourceLockForMissionCriticalResources" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-287-IAMPermissionsThroughGroups" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-31.15-PostgreSQLSSLVersion" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-31.9-AppGatewayTLS" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-324-logsCreateSecurityGroups" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-324-logsDeleteSecurityGroup" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-326-logsCreateNetworkGateway" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-326-logsDeleteNetworkGateway" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsCreateRouteTables" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsCreateRouteTablesRoute" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsDeleteSecurityGroup" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-327-logsDeleteSecurityGroupRoute" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-328-logsCreateVirtualNetwork" = { value = "AuditIfNotExists" }

    # Type: String
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-328-logsDeleteVirtualNetworks" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-332-NSGNoIngressFrom0000For22or3389" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-333-NSGNoIngressFrom0For22or3389" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-35.1-ArcSQLTDE" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-35.2-AzureSynapseTDE" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-604-CheckDataSensitivityTagsOnSubscriptions" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-617-OnlyAllowedGeoLocations" = { value = "Audit" }

    # Type: String
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["auditIfNotExists", "DeployIfNotExists", "Disabled"]
    "effect-SLZ-629-VirtualNetworksDDOSProtection" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Deny"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-78-AllowedDeploymentRegions" = { value = "Deny" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Disabled"]
    "effect-SLZ-872.13-DICOMServiceSNCEncryptionCMK" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "AuditIfNotExists"
    # Allowed values: ["AuditIfNotExists", "Disabled"]
    "effect-SLZ-872.27-PostgreSQLServersEncryptionCMK" = { value = "AuditIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-878-CheckProjectTagOnSubscription" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-987-KafkaAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-988-MemcachedAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-989-MySQLAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-991-PostgresAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-992-RedisAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny"]
    "effect-SLZ-994-TelnetAccessFromInternetEvalutatedAndRestricted" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-CheckEnvironmentTagOnSubscription" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disabled"]
    "effect-SLZ-CheckOrganizationTagOnSubscription" = { value = "Audit" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForAzureKubernetesServiceClusters" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForLinuxAgentDeploy" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForLinuxHybridAgentDeploy" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForWindowsAgentDeploy" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "DeployIfNotExists"
    # Allowed values: ["DeployIfNotExists", "AuditIfNotExists", "Disabled"]
    "effect-SLZ-DefenderForDefenderForWindowsArcAgentDeploy" = { value = "DeployIfNotExists" }

    # Type: string
    # Display name: Effect
    # Default: "Audit"
    # Allowed values: ["Audit", "Deny", "Disable"]
    "effect-SLZ-DenyPurviewAccounts" = { value = "Audit" }

    # Type: Array
    # Display name: Excluded Kinds
    # Default: ["CognitiveServices", "ContentSafety", "ImmersiveReader", "HealthInsights", "LUIS.Authoring", "LUIS", "QnAMaker", "QnAMaker.V2", "AIServices", "MetricsAdvisor", "SpeechTranslation", "Internal.AllInOne", "ConversationalLanguageUnderstanding", "knowledge", "TranscriptionIntelligence", "HealthDecisionSupport"]
    # Accepts any value valid for Azure Policy parameter type Array
    "excludedKinds-SLZ-1358-AISNCEncryptionCMK" = { value = ["CognitiveServices", "ContentSafety", "ImmersiveReader", "HealthInsights", "LUIS.Authoring", "LUIS", "QnAMaker", "QnAMaker.V2", "AIServices", "MetricsAdvisor", "SpeechTranslation", "Internal.AllInOne", "ConversationalLanguageUnderstanding", "knowledge", "TranscriptionIntelligence", "HealthDecisionSupport"] }

    # Type: Array
    # Display name: Namespace Exclusions
    # Default: ["kube-system", "gatekeeper-system", "azure-arc", "azure-extensions-usage-system"]
    # Accepts any value valid for Azure Policy parameter type Array
    "excludedNamespaces-SLZ-1334-KubernetesInternalLB" = { value = ["kube-system", "gatekeeper-system", "azure-arc", "azure-extensions-usage-system"] }

    # Type: String
    # Display name: Agentless Discovery for Kubernetes Enabled
    # Default: "true"
    # Allowed values: ["true", "false"]
    "isAgentlessDiscoveryForKubernetesEnabled-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "true" }

    # Type: String
    # Display name: Agentless VM Scanning Enabled
    # Default: "false"
    # Allowed values: ["true", "false"]
    "isAgentlessVmScanningEnabled-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "false" }

    # Type: String
    # Display name: Agentless VM Scanning Enabled
    # Default: "false"
    # Allowed values: ["true", "false"]
    "isAgentlessVmScanningEnabled-SLZ-153-DefenderCloudPricingForServer" = { value = "false" }

    # Type: String
    # Display name: Container Registries Vulnerability Assessments Enabled
    # Default: "true"
    # Allowed values: ["true", "false"]
    "isContainerRegistriesVulnerabilityAssessmentsEnabled-SLZ-00-MicrosoftDefenderForContainer" = { value = "true" }

    # Type: String
    # Display name: Container Registries Vulnerability Assessments Enabled
    # Default: "true"
    # Allowed values: ["true", "false"]
    "isContainerRegistriesVulnerabilityAssessmentsEnabled-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "true" }

    # Type: String
    # Display name: Permissions Management Enabled
    # Default: "true"
    # Allowed values: ["true", "false"]
    "isEntraPermissionsManagementEnabled-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "true" }

    # Type: String
    # Display name: MDE Designated Subscription Enabled
    # Default: "false"
    # Allowed values: ["true", "false"]
    "isMdeDesignatedSubscriptionEnabled-SLZ-153-DefenderCloudPricingForServer" = { value = "false" }

    # Type: String
    # Display name: Sensitive Data Discovery Enabled
    # Default: "true"
    # Allowed values: ["true", "false"]
    "isSensitiveDataDiscoveryEnabled-SLZ-1397-MicrosoftDefenderForCSPM" = { value = "true" }

    # Type: string
    # Display name: Java version
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type string
    "javaVersion-SLZ-268-AppServiceLatestJavaVersion" = { value = "" }

    # Type: string
    # Display name: Java version
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type string
    "javaVersion-SLZ-268-AppServiceSlotsLatestJavaVersion" = { value = "" }

    # Type: Object
    # Display name: Label Selector
    # Default: {}
    # Accepts any value valid for Azure Policy parameter type Object
    "labelSelector-SLZ-1334-KubernetesInternalLB" = { value = {} }

    # Type: Array
    # Display name: Allowed locations
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "listOfAllowedLocations-SLZ-617-OnlyAllowedGeoLocations" = { value = [] }

    # Type: Array
    # Display name: Allowed locations
    # Default: none; replace the placeholder before enabling assignments
    # Allowed values: []
    "listOfAllowedLocations-SLZ-78-AllowedDeploymentRegions" = { value = [] }

    # Type: Array
    # Display name: Effect
    # Default: ["Developer", "Premium", "Isolated", "Standard", "Basic"]
    # Allowed values: ["Developer", "Basic", "BasicV2", "Standard", "StandardV2", "Premium", "Isolated", "Consumption"]
    "listOfAllowedSKUs-SLZ-1332-APIAllowedSku" = { value = ["Developer", "Premium", "Isolated", "Standard", "Basic"] }

    # Type: Array
    # Display name: Machines locations
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "locations-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = [] }

    # Type: Array
    # Display name: Machines locations
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "locations-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = [] }

    # Type: String
    # Display name: LogAnalyticsWorkspaceResourceId
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type String
    # Use the full Log Analytics workspace resource ID, not the workspace GUID/customer ID.
    "logAnalyticsWorkspaceResourceId-SLZ-DefenderForAzureKubernetesServiceClusters" = { value = "" }

    # Type: string
    # Display name: Select version minimum tls for MySQL server
    # Default: "tls1_3"
    # Allowed values: ["tls1_3", "tls1_2"]
    "minimaltlsVersion-SLZ-213-MySQLLatestTLS" = { value = "tls1_3" }

    # Type: string
    # Display name: Minimum TLS version for Azure Cache for Redis
    # Default: "1.2"
    # Allowed values: ["1.2"]
    "minimumtlsVersion-SLZ-1345-RedisSecureConnections" = { value = "1.2" }

    # Type: string
    # Display name: Minimum TLS Version
    # Default: "1.2"
    # Allowed values: ["1.0", "1.1", "1.2"]
    "minimumtlsVersion-SLZ-1347-EventHubTLS" = { value = "1.2" }

    # Type: string
    # Display name: Mode Requirement
    # Default: "Detection"
    # Allowed values: ["Prevention", "Detection"]
    "modeRequirement-SLZ-1328-WAFonFrontDoor-Detection" = { value = "Detection" }

    # Type: string
    # Display name: Mode Requirement
    # Default: "Detection"
    # Allowed values: ["Prevention", "Detection"]
    "modeRequirement-SLZ-1338-WAFonAPGT-Detection" = { value = "Detection" }

    # Type: Array
    # Display name: Namespace Inclusions
    # Default: []
    # Accepts any value valid for Azure Policy parameter type Array
    "namespaces-SLZ-1334-KubernetesInternalLB" = { value = [] }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Authorization/policyAssignments/write"
    # Allowed values: ["Microsoft.Authorization/policyAssignments/write"]
    "operationName-SLZ-226-logsCreatePolicy" = { value = "Microsoft.Authorization/policyAssignments/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Authorization/policyAssignments/delete"
    # Allowed values: ["Microsoft.Authorization/policyAssignments/delete"]
    "operationName-SLZ-227-logsDeletePolicy" = { value = "Microsoft.Authorization/policyAssignments/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/networkSecurityGroups/write"
    # Allowed values: ["Microsoft.Network/networkSecurityGroups/write"]
    "operationName-SLZ-228-logsCreateUpdateNsg" = { value = "Microsoft.Network/networkSecurityGroups/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/networkSecurityGroups/delete"
    # Allowed values: ["Microsoft.Network/networkSecurityGroups/delete"]
    "operationName-SLZ-229-logsDeleteNsg" = { value = "Microsoft.Network/networkSecurityGroups/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Security/securitySolutions/write"
    # Allowed values: ["Microsoft.Security/securitySolutions/write"]
    "operationName-SLZ-230-logsCreateUpdateSecuritySolutions" = { value = "Microsoft.Security/securitySolutions/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Security/securitySolutions/delete"
    # Allowed values: ["Microsoft.Security/securitySolutions/delete"]
    "operationName-SLZ-231-logsDeleteSecuritySolutions" = { value = "Microsoft.Security/securitySolutions/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Sql/servers/firewallRules/write"
    # Allowed values: ["Microsoft.Sql/servers/firewallRules/write"]
    "operationName-SLZ-232-logsCreateUpdateSqlServerFirewallRule" = { value = "Microsoft.Sql/servers/firewallRules/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Sql/servers/firewallRules/delete"
    # Allowed values: ["Microsoft.Sql/servers/firewallRules/delete"]
    "operationName-SLZ-233-logsDeleteSqlServerFirewallRule" = { value = "Microsoft.Sql/servers/firewallRules/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/publicIPAddresses/write"
    # Allowed values: ["Microsoft.Network/publicIPAddresses/write"]
    "operationName-SLZ-234-logsCreateOrUpdatePublicIpRule" = { value = "Microsoft.Network/publicIPAddresses/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/publicIPAddresses/delete"
    # Allowed values: ["Microsoft.Network/publicIPAddresses/delete"]
    "operationName-SLZ-235-logsDeletePublicIpRule" = { value = "Microsoft.Network/publicIPAddresses/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/networkSecurityGroups/securityRules/write"
    # Allowed values: ["Microsoft.Network/networkSecurityGroups/securityRules/write"]
    "operationName-SLZ-324-logsCreateSecurityGroups" = { value = "Microsoft.Network/networkSecurityGroups/securityRules/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/networkSecurityGroups/securityRules/delete"
    # Allowed values: ["Microsoft.Network/networkSecurityGroups/securityRules/delete"]
    "operationName-SLZ-324-logsDeleteSecurityGroup" = { value = "Microsoft.Network/networkSecurityGroups/securityRules/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/virtualNetworkGateways/write"
    # Allowed values: ["Microsoft.Network/virtualNetworkGateways/write"]
    "operationName-SLZ-326-logsCreateNetworkGateway" = { value = "Microsoft.Network/virtualNetworkGateways/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/virtualNetworkGateways/delete"
    # Allowed values: ["Microsoft.Network/virtualNetworkGateways/delete"]
    "operationName-SLZ-326-logsDeleteNetworkGateway" = { value = "Microsoft.Network/virtualNetworkGateways/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/routeTables/write"
    # Allowed values: ["Microsoft.Network/routeTables/write"]
    "operationName-SLZ-327-logsCreateRouteTables" = { value = "Microsoft.Network/routeTables/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/routeTables/routes/write"
    # Allowed values: ["Microsoft.Network/routeTables/routes/write"]
    "operationName-SLZ-327-logsCreateRouteTablesRoute" = { value = "Microsoft.Network/routeTables/routes/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/routeTables/delete"
    # Allowed values: ["Microsoft.Network/routeTables/delete"]
    "operationName-SLZ-327-logsDeleteSecurityGroup" = { value = "Microsoft.Network/routeTables/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/routeTables/routes/delete"
    # Allowed values: ["Microsoft.Network/routeTables/routes/delete"]
    "operationName-SLZ-327-logsDeleteSecurityGroupRoute" = { value = "Microsoft.Network/routeTables/routes/delete" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/virtualNetworks/write"
    # Allowed values: ["Microsoft.Network/virtualNetworks/write"]
    "operationName-SLZ-328-logsCreateVirtualNetwork" = { value = "Microsoft.Network/virtualNetworks/write" }

    # Type: String
    # Display name: Operation Name
    # Default: "Microsoft.Network/virtualNetworks/delete"
    # Allowed values: ["Microsoft.Network/virtualNetworks/delete"]
    "operationName-SLZ-328-logsDeleteVirtualNetworks" = { value = "Microsoft.Network/virtualNetworks/delete" }

    # Type: String
    # Display name: OS type
    # Default: "Windows"
    # Allowed values: ["Windows", "Linux"]
    "osType-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Windows" }

    # Type: String
    # Display name: OS type
    # Default: "Windows"
    # Allowed values: ["Windows", "Linux"]
    "osType-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Windows" }

    # Type: String
    # Display name: DDoS Protection Plan
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    "planId-SLZ-629-VirtualNetworksDDOSProtection" = { value = "<set-value>" }

    # Type: Array
    # Display name: FTP Ports
    # Default: ["20", "21"]
    # Accepts any value valid for Azure Policy parameter type Array
    "ports-SLZ-983-FTPAccessFromInternetEvaluatedAndRestricted" = { value = ["20", "21"] }

    # Type: Array
    # Display name: MongoDB Ports
    # Default: ["27017", "27018"]
    # Accepts any value valid for Azure Policy parameter type Array
    "ports-SLZ-984-MongoDBAccessFromInternetEvalutatedAndRestricted" = { value = ["27017", "27018"] }

    # Type: Array
    # Display name: Cassandra Ports
    # Default: ["7199", "9160", "8888"]
    # Accepts any value valid for Azure Policy parameter type Array
    "ports-SLZ-985-CassandraAccessFromInternetEvalutatedAndRestricted" = { value = ["7199", "9160", "8888"] }

    # Type: Array
    # Display name: Elasticsearch/Kibana Ports
    # Default: ["9200", "9300", "5601"]
    # Accepts any value valid for Azure Policy parameter type Array
    "ports-SLZ-986-ElasticsearchAccessFromInternetEvalutatedAndRestricted" = { value = ["9200", "9300", "5601"] }

    # Type: Array
    # Display name: Oracle Ports
    # Default: ["1521", "2483"]
    # Accepts any value valid for Azure Policy parameter type Array
    "ports-SLZ-990-OracleAccessFromInternetEvalutatedAndRestricted" = { value = ["1521", "2483"] }

    # Type: Array
    # Display name: Windows SQL Server Ports
    # Default: ["1433", "1434"]
    # Accepts any value valid for Azure Policy parameter type Array
    "ports-SLZ-993-WinSQLServerAccessFromInternetEvalutatedAndRestricted" = { value = ["1433", "1434"] }

    # Type: String
    # Display name: privateEndpointSubnetId
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type String
    "privateEndpointSubnetId-SLZ-186-StorageAccountsPrivateEndpoints" = { value = "<set-value>" }

    # Type: string
    # Display name: Python prefix
    # Default: "PYTHON|"
    # Accepts any value valid for Azure Policy parameter type string
    "pythonPrefix-SLZ-267-AppServiceLatestPythonVersion" = { value = "PYTHON|" }

    # Type: string
    # Display name: Python prefix
    # Default: "PYTHON|"
    # Accepts any value valid for Azure Policy parameter type string
    "pythonPrefix-SLZ-267-AppServiceSlotsLatestPythonVersion" = { value = "PYTHON|" }

    # Type: string
    # Display name: Python version
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type string
    "pythonVersion-SLZ-267-AppServiceLatestPythonVersion" = { value = "" }

    # Type: string
    # Display name: Python version
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type string
    "pythonVersion-SLZ-267-AppServiceSlotsLatestPythonVersion" = { value = "" }

    # Type: string
    # Display name: Python version
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type string
    "pythonVersion2-SLZ-267-AppServiceLatestPythonVersion" = { value = "" }

    # Type: string
    # Display name: Python version
    # Default: ""
    # Accepts any value valid for Azure Policy parameter type string
    "pythonVersion2-SLZ-267-AppServiceSlotsLatestPythonVersion" = { value = "" }

    # Type: String
    # Display name: Required retention (days)
    # Default: "365"
    # Accepts any value valid for Azure Policy parameter type String
    "requiredRetentionDays-SLZ-223-logsKeyVault" = { value = "365" }

    # Type: Integer
    # Display name: Retention in Days
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type Integer
    "retentionInDays-SLZ-187-StorageBlobsAndContainerSoftDelete" = { value = 0 }

    # Type: String
    # Display name: Desired Auditing setting
    # Default: "enabled"
    # Allowed values: ["enabled", "disabled"]
    "setting-SLZ-193-SQLServerAuditing" = { value = "enabled" }

    # Type: string
    # Display name: Source
    # Default: "Original"
    # Allowed values: ["All", "Generated", "Original"]
    "source-SLZ-1334-KubernetesInternalLB" = { value = "Original" }

    # Type: String
    # Display name: Defender for Servers plans
    # Default: "P2"
    # Allowed values: ["P1", "P2"]
    "subPlan-SLZ-153-DefenderCloudPricingForServer" = { value = "P2" }

    # Type: String
    # Display name: Tag Name 1
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tag-TagName1-SLZ-CheckEnvironmentTagOnSubscription" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Tag Name 2
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type String
    "tag-TagName2-SLZ-604-CheckDataSensitivityTagsOnSubscriptions" = { value = "ec.DataSensitivityLevel" }

    # Type: String
    # Display name: Tag Name 3
    # Default: "ec.GovIS2SeqNum"
    # Accepts any value valid for Azure Policy parameter type String
    "tag-TagName3-SLZ-878-CheckProjectTagOnSubscription" = { value = "ec.GovIS2SeqNum" }

    # Type: String
    # Display name: Tag Name 4
    # Default: "ec.SystemOwner"
    # Accepts any value valid for Azure Policy parameter type String
    "tag-TagName4-SLZ-CheckOrganizationTagOnSubscription" = { value = "ec.SystemOwner" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1358-AISNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1359-AutomationSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1360-BackupVaultSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1361-BatchSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1362-LoadTestingSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1363-RedisEnterpriseSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1364-CognitiveSearchSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1365-ContainerInstanceSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1366-ContainerRegistrySNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1367-CosmosDBSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1368-AzureDataExplorerSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1369-AzureDataFactoriesSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1371-EventHubNamespaceSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1372-FluidRelaySNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1373-HDInsightSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1374-HealthBotsSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1375-HPCCacheSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1376-IoTHubSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1378-LogicAppsSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1379-AzureMLSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1380-AzureSynapseWorkspaceCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1381-OSAndDataDisksSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1384-ServiceBusPremiumEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-1385-StorageAccountEncryptionScopesCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-195-SQLServerTDEEncryptionWithCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.1-ApimProdNoBasicSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.10-AKSProdNoFreeTier" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.11-LBProdNoBasicSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.12-VpnGwProdNoBasicTier" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.13-AzureSearchProdNoFreeOrBasicSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.14-SignalRProdNoFreeTier" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.2-AppConfigProdNoFreeSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.3-AppServiceProdNoLowTierSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.4-ADXProdNoDeveloperTier" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.5-DatabricksProdNoStandardOrTrialSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.6-DisksProdNoStandardHDD" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.7-ACRProdNoBasicSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.8-EventHubProdNoBasicSku" = { value = "ec.EnvironmentType" }

    # Type: String
    # Display name: Environment Tag Name
    # Default: "ec.EnvironmentType"
    # Accepts any value valid for Azure Policy parameter type String
    "tagName-SLZ-238.9-KeyVaultProdNoStandardSku" = { value = "ec.EnvironmentType" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-248-OSandDataDisksCMKEncryption" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-249-UnattachedDisksCMKEncryption" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Tag Name
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-272-ResourceLockForMissionCriticalResources" = { value = "<set-value>" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-872.13-DICOMServiceSNCEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: string
    # Display name: Inclusion Name Tag
    # Default: "ec.DataSensitivityLevel"
    # Accepts any value valid for Azure Policy parameter type string
    "tagName-SLZ-872.27-PostgreSQLServersEncryptionCMK" = { value = "ec.DataSensitivityLevel" }

    # Type: String
    # Display name: Tag operator
    # Default: "Any"
    # Allowed values: ["All", "Any"]
    "tagOperator-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Any" }

    # Type: String
    # Display name: Tag operator
    # Default: "Any"
    # Allowed values: ["All", "Any"]
    "tagOperator-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = "Any" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1358-AISNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1359-AutomationSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1360-BackupVaultSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1361-BatchSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1362-LoadTestingSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1363-RedisEnterpriseSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1364-CognitiveSearchSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1365-ContainerInstanceSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1366-ContainerRegistrySNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1367-CosmosDBSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1368-AzureDataExplorerSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1369-AzureDataFactoriesSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1370-ElasticSanVolumeGroupSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1371-EventHubNamespaceSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1372-FluidRelaySNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1373-HDInsightSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1374-HealthBotsSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1375-HPCCacheSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1376-IoTHubSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1378-LogicAppsSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1379-AzureMLSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1380-AzureSynapseWorkspaceCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1381-OSAndDataDisksSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1382-PostgreSQLFlexibleServersEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1384-ServiceBusPremiumEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-1385-StorageAccountEncryptionScopesCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inlcusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-195-SQLServerTDEEncryptionWithCMK" = { value = "SNC" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.1-ApimProdNoBasicSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.10-AKSProdNoFreeTier" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.11-LBProdNoBasicSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.12-VpnGwProdNoBasicTier" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.13-AzureSearchProdNoFreeOrBasicSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.14-SignalRProdNoFreeTier" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.2-AppConfigProdNoFreeSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.3-AppServiceProdNoLowTierSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.4-ADXProdNoDeveloperTier" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.5-DatabricksProdNoStandardOrTrialSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.6-DisksProdNoStandardHDD" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.7-ACRProdNoBasicSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.8-EventHubProdNoBasicSku" = { value = "PROD" }

    # Type: String
    # Display name: Environment Tag Value
    # Default: "PROD"
    # Accepts any value valid for Azure Policy parameter type String
    "tagValue-SLZ-238.9-KeyVaultProdNoStandardSku" = { value = "PROD" }

    # Type: string
    # Display name: Inlcusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-248-OSandDataDisksCMKEncryption" = { value = "SNC" }

    # Type: string
    # Display name: Inlcusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-249-UnattachedDisksCMKEncryption" = { value = "SNC" }

    # Type: string
    # Display name: Tag Value
    # Default: none; replace the placeholder before enabling assignments
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-272-ResourceLockForMissionCriticalResources" = { value = "<set-value>" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-872.13-DICOMServiceSNCEncryptionCMK" = { value = "SNC" }

    # Type: string
    # Display name: Inclusion Tag Value
    # Default: "SNC"
    # Accepts any value valid for Azure Policy parameter type string
    "tagValue-SLZ-872.27-PostgreSQLServersEncryptionCMK" = { value = "SNC" }

    # Type: Object
    # Display name: Tags on machines
    # Default: {}
    # Accepts any value valid for Azure Policy parameter type Object
    "tagValues-SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck" = { value = {} }

    # Type: Object
    # Display name: Tags on machines
    # Default: {}
    # Accepts any value valid for Azure Policy parameter type Object
    "tagValues-SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck" = { value = {} }

    # Type: string
    # Display name: Required TLS Version
    # Default: "tls1_2"
    # Accepts any value valid for Azure Policy parameter type string
    "tlsVersionRequired-SLZ-1348-StorageTLS" = { value = "tls1_2" }

    # Type: String
    # Display name: Vulnerability assessment provider type
    # Default: "mdeTvm"
    # Allowed values: ["default", "mdeTvm"]
    "vaType-SLZ-168-MicrosoftDefenderConfigureVMForVulnerability" = { value = "mdeTvm" }

    # Type: Boolean
    # Display name: Warn
    # Default: false
    # Accepts any value valid for Azure Policy parameter type Boolean
    "warn-SLZ-1334-KubernetesInternalLB" = { value = false }

  }

}
