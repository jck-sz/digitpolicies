# Required Terraform variables for running the initiative assignment pipeline.
#
# This file assumes deploy_assignments = true.
# Replace every value wrapped in <angle-brackets> before running the pipeline.
#
# Syntax reminder:
# - Strings must be wrapped in double quotes.
# - Booleans are true or false without quotes.
# - Lists use square brackets: ["westeurope", "northeurope"].
# - Assignment parameters must use: "parameter-name" = { value = ... }.

# REQUIRED.
# Azure Management Group ID, not the full Azure resource ID.
# Example: "mg-platform-prod"
management_group_id = "<management-group-id>"

# REQUIRED.
# true creates management group assignments for every initiative in
# Definitions/policySetDefinitions.
deploy_assignments = true

# REQUIRED when deploy_assignments = true.
# Full Azure resource ID of the user-assigned managed identity used by policy
# assignments that deploy or modify resources.
# Example:
# "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-policy-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai-policy-prod"
user_assigned_identity_id = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<identity-name>"

# REQUIRED when deploy_assignments = true.
# These are the initiative-level assignment parameters that do not define a
# defaultValue in the policy set definition files.
initiative_parameters = {
  # Initiative: C1- Azure Landing Zone Core Policy Set
  # Source: Definitions/policySetDefinitions/C1/c1-AzureLandingZoneCore.jsonc
  "C1-AzureLandingZoneCore" = {
    # Required String. Use the full Log Analytics workspace resource ID.
    # Syntax:
    # "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
    "logAnalytics-C1-SLZ-27-StorageAccountDiagnosticSettingsToWS" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
    }

    # Required string. No default is defined at the initiative level.
    # Common values used by the referenced policies are:
    # "DeployIfNotExists", "AuditIfNotExists", or "Disabled".
    "effect-C1-SLZ-51" = {
      value = "DeployIfNotExists"
    }

    # Required string. Use the full Log Analytics workspace resource ID for
    # C1-SLZ-51 diagnostic settings policies.
    "workspaceId-C1-SLZ-51" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
    }

    # Required String. Storage account name, not the resource ID.
    # Example: "stpolicylogsprod001"
    "storageAccount-SLZ-222-StorageAccountLogsCMK" = {
      value = "<storage-account-name>"
    }

    # Required String. Full Azure Monitor Data Collection Rule resource IDs.
    # Syntax:
    # "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Insights/dataCollectionRules/<dcr-name>"
    "dcrResourceIdWindows-AMA" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Insights/dataCollectionRules/<windows-dcr-name>"
    }

    "dcrResourceIdLinux-AMA" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Insights/dataCollectionRules/<linux-dcr-name>"
    }

    # Required String. Use the full Log Analytics workspace resource ID.
    "logAnalytics-C1-SLZ-189-BlobServiceStorageLogging" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
    }

    # Required String. Use the full Log Analytics workspace resource ID.
    "logAnalytics-C1-SLZ-190-TableServiceStorageLogging" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
    }
  }

  # Initiative: C1 Managed Policies
  # Source: Definitions/policySetDefinitions/C1/c1-managed-policies.jsonc
  "C1-ManagedPolicies" = {
    # Required String. Must be one allowed administrative operation name.
    # Examples:
    # "Microsoft.Network/networkSecurityGroups/write"
    # "Microsoft.Network/networkSecurityGroups/delete"
    # "Microsoft.Network/networkSecurityGroups/securityRules/write"
    "operationNameAdministrative-C1-SLZ-220" = {
      value = "Microsoft.Network/networkSecurityGroups/write"
    }

    # Required String. Must be one allowed policy operation name.
    # Examples:
    # "Microsoft.Authorization/policyAssignments/write"
    # "Microsoft.Authorization/policyAssignments/delete"
    "operationNamePolicy-C1-SLZ-220" = {
      value = "Microsoft.Authorization/policyAssignments/write"
    }

    # Required String. Must be one allowed security operation name.
    # Examples:
    # "Microsoft.Security/policies/write"
    # "Microsoft.Security/securitySolutions/write"
    # "Microsoft.Security/securitySolutions/delete"
    "operationNameSecurity-C1-SLZ-220" = {
      value = "Microsoft.Security/securitySolutions/write"
    }

    # Required string. Resource group name used by SQL auditing storage accounts.
    # Example: "rg-sql-audit-prod"
    "storageAccountsResourceGroup-C1-SLZ-198-AuditingRetentionGreater90days" = {
      value = "<storage-accounts-resource-group-name>"
    }

    # Required String. Storage account name, not the resource ID.
    # Example: "stactivitylogsprod001"
    "targetStorageAccountName-C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible" = {
      value = "<target-storage-account-name>"
    }

    # Required String. The policy metadata says this is the workspace name.
    # The existing generated template used a full resource ID, but the policy
    # parameter is named targetLogAnalyticsWorkspaceName; confirm the expected
    # value in your environment before running the assignment.
    # Name syntax example: "law-platform-prod"
    # Resource ID syntax example:
    # "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
    "targetLogAnalyticsWorkspaceName-C1-SLZ-221-ActivityLogResourcesNotPubliclyAccessible" = {
      value = "<log-analytics-workspace-name-or-resource-id>"
    }
  }

  # Initiative: SLZ - ALZ - Policy Set
  # Source: Definitions/policySetDefinitions/SLZ/SLZ-ALZ-PolicySet.jsonc
  "SLZ-ALZ-PolicySet" = {
    # Required Array. Azure region names where resources may be deployed.
    # Example: ["westeurope", "northeurope"]
    "listOfAllowedLocations-SLZ-78-AllowedDeploymentRegions" = {
      value = [
        "<azure-region-name>"
      ]
    }

    # Required string. Tag name used to identify mission-critical resources
    # that should have locks.
    # Example: "ec.EnvironmentType"
    "tagName-SLZ-272-ResourceLockForMissionCriticalResources" = {
      value = "<tag-name>"
    }

    # Required string. Tag value used with the tag name above.
    # Example: "PROD"
    "tagValue-SLZ-272-ResourceLockForMissionCriticalResources" = {
      value = "<tag-value>"
    }

    # Required String. Full DDoS protection plan resource ID.
    # Syntax:
    # "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/ddosProtectionPlans/<ddos-plan-name>"
    "planId-SLZ-629-VirtualNetworksDDOSProtection" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/ddosProtectionPlans/<ddos-plan-name>"
    }

    # Required String. Full subnet resource ID for a subnet with private
    # endpoint network policies disabled.
    # Syntax:
    # "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>/subnets/<subnet-name>"
    "privateEndpointSubnetId-SLZ-186-StorageAccountsPrivateEndpoints" = {
      value = "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>/subnets/<subnet-name>"
    }

    # Required Integer. Minimum is 30 days according to the policy metadata.
    "retentionInDays-SLZ-187-StorageBlobsAndContainerSoftDelete" = {
      value = 30
    }
  }
}
