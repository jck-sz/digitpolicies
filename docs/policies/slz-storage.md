# SLZ Storage Policies

Documents 10 local policy definition file(s) in `SLZ/Storage`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-177-StorageAccountsSecureTransfer](#slz-177-storageaccountssecuretransfer) | `Deny` | Medium | storage accounts |
| [SLZ-178-StorageAccountsInfrastructureEncryption](#slz-178-storageaccountsinfrastructureencryption) | `Deny` | Medium | storage accounts |
| [SLZ-179-StorageAccountsExpirationReminder](#slz-179-storageaccountsexpirationreminder) | `Audit` | Medium | storage accounts |
| [SLZ-183-StorageAccountsPublicAccess](#slz-183-storageaccountspublicaccess) | `Deny` | Medium | storage accounts |
| [SLZ-184-StorageAccountsDefaultNetworkAccessRule](#slz-184-storageaccountsdefaultnetworkaccessrule) | `Deny` | Medium | storage accounts |
| [SLZ-185-StorageAccountsAllowAzureServices](#slz-185-storageaccountsallowazureservices) | `Deny` | Medium | storage accounts |
| [SLZ-186-StorageAccountsPrivateEndpoints](#slz-186-storageaccountsprivateendpoints) | `DeployIfNotExists` | Medium | storage accounts |
| [SLZ-187-StorageBlobsAndContainerSoftDelete](#slz-187-storageblobsandcontainersoftdelete) | `Deny` | Medium | storage blob services |
| [SLZ-248-OSandDataDisksCMKEncryption](#slz-248-osanddatadiskscmkencryption) | `Audit` | Medium | virtual machines, virtual machine scale sets, managed disks, Microsoft.Compute/galleries/images/versions, and 1 more resource types |
| [SLZ-249-UnattachedDisksCMKEncryption](#slz-249-unattacheddiskscmkencryption) | `Audit` | Medium | Storage resources or subscription scope |

## SLZ-177-StorageAccountsSecureTransfer

**Display name:** SLZ - 177 - Secure transfer to storage accounts should be enabled

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID177/slz-177-secure-transfer-to-storage-accounts-should-be-enabled.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID177/slz-177-secure-transfer-to-storage-accounts-should-be-enabled.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`

**What it does:** Audit requirement of Secure transfer in your storage account. Secure transfer is an option that forces your storage account to accept requests only from secure connections (HTTPS). Use of HTTPS ensures authentication between the server and the service and protects data in transit from network layer attacks such as man-in-the-middle, eavesdropping, and session-hijacking.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-178-StorageAccountsInfrastructureEncryption

**Display name:** SLZ - 178 - Storage accounts should have infrastructure encryption

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID178/slz-178-storage-accounts-should-have-infrastructure-encryption.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID178/slz-178-storage-accounts-should-have-infrastructure-encryption.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`

**What it does:** Enable infrastructure encryption for higher level of assurance that the data is secure. When infrastructure encryption is enabled, data in a storage account is encrypted twice.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** CMK enforcement depends on Key Vault availability, managed identity permissions, purge protection, and key rotation processes.

**Recommended action:** Standardize key hierarchy and recovery procedures before requiring CMK for disks or storage encryption scopes.

## SLZ-179-StorageAccountsExpirationReminder

**Display name:** SLZ - 179 - Ensure that 'Enable key rotation reminders' is enabled for each Storage Account

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID179/slz-179-storage-accounts-expiration-reminder.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID179/slz-179-storage-accounts-expiration-reminder.jsonc)

- **Category:** Storage
- **Mode:** `not specified`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`

**What it does:** Ensures that storage accounts have a key expiration reminder.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-183-StorageAccountsPublicAccess

**Display name:** SLZ - 183 - Storage account public access should be disallowed

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID183/slz-183-storage-account-public-access-should-be-disallowed.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID183/slz-183-storage-account-public-access-should-be-disallowed.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`

**What it does:** Anonymous public read access to containers and blobs in Azure Storage is a convenient way to share data but might present security risks. To prevent data breaches caused by undesired anonymous access, Microsoft recommends preventing public access to a storage account unless your scenario requires it.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Private storage access requires private DNS, endpoint subnet planning, and firewall exceptions for platform services such as backup or monitoring.

**Recommended action:** Deploy private endpoints and DNS zones before Deny enforcement, and validate access from hub, spokes, and automation identities.

## SLZ-184-StorageAccountsDefaultNetworkAccessRule

**Display name:** SLZ - 184 - Ensure Default Network Access Rule for Storage Accounts is Set to Deny

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID184/slz-184-ensure-default-network-access-rule-for-storage-accounts-is-set-to-deny.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID184/slz-184-ensure-default-network-access-rule-for-storage-accounts-is-set-to-deny.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`

**What it does:** Restricting default network access for storage accounts enhances security by denying all traffic and selectively allowing access only from specified Azure Virtual networks or designated public internet IP address ranges.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Private storage access requires private DNS, endpoint subnet planning, and firewall exceptions for platform services such as backup or monitoring.

**Recommended action:** Deploy private endpoints and DNS zones before Deny enforcement, and validate access from hub, spokes, and automation identities.

## SLZ-185-StorageAccountsAllowAzureServices

**Display name:** SLZ - 185 - Ensure 'Allow Azure services on the trusted services list to access this storage account' is Enabled

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID185/slz-185-ensure-'allow-azure-services-on-the-trusted-services-list-to-access-this-storage-account'-is.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID185/slz-185-ensure-'allow-azure-services-on-the-trusted-services-list-to-access-this-storage-account'-is.jsonc)

- **Category:** Storage
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`

**What it does:** Some Microsoft services that interact with storage accounts operate from networks that can't be granted access through network rules. To help this type of service work as intended, allow the set of trusted Microsoft services to bypass the network rules. These services will then use strong authentication to access the storage account.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Allowing trusted Microsoft services can be operationally useful but broadens bypass paths around storage firewall rules.

**Recommended action:** Permit trusted services only where required, pair it with private endpoints and diagnostic logging, and document the accepted bypass risk.

## SLZ-186-StorageAccountsPrivateEndpoints

**Display name:** SLZ - 186 - Ensure Private Endpoints are used to access Storage Accounts

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID186/slz-186-ensure-private-endpoints-are-used-to-access-storage-accounts.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID186/slz-186-ensure-private-endpoints-are-used-to-access-storage-accounts.jsonc)

- **Category:** Storage
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** storage accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`, `privateEndpointSubnetId`

**What it does:** Use Azure Private Link which lets you connect your virtual network to Azure services without a public IP address at the source or destination.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Private storage access requires private DNS, endpoint subnet planning, and firewall exceptions for platform services such as backup or monitoring.

**Recommended action:** Deploy private endpoints and DNS zones before Deny enforcement, and validate access from hub, spokes, and automation identities.

## SLZ-187-StorageBlobsAndContainerSoftDelete

**Display name:** SLZ - 187 - Azure Storage Blobs and Containers should have Soft Delete enabled (Minimum 30 days)

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID187/slz-187-azure-storage-blobs-and-containers-should-have-soft-delete-enabled.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID187/slz-187-azure-storage-blobs-and-containers-should-have-soft-delete-enabled.jsonc)

- **Category:** Storage
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Modify`, `Deny`, `Audit`, `Disabled`
- **Target:** storage blob services
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `effect`, `retentionInDays`

**What it does:** Protect your Storage Blobs or Containers from accidental or malicious deletions by enabling Soft Delete (Minimum 30 days).

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** Modify changes resource configuration during create or update operations and may conflict with IaC drift detection or service-specific deployment workflows.

**Recommended action:** Pilot on non-production subscriptions, document expected modified properties, and ensure IaC templates converge to the same compliant values.

## SLZ-248-OSandDataDisksCMKEncryption

**Display name:** SLZ - 248 - Ensure that 'OS and Data' disks are encrypted with Customer Managed Key (CMK) for SNC data

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID248/slz-248-os-disk-encrypted-with-cmk.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID248/slz-248-os-disk-encrypted-with-cmk.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** virtual machines, virtual machine scale sets, managed disks, Microsoft.Compute/galleries/images/versions, and 1 more resource types
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `tagName`, `tagValue`, `effect`

**What it does:** Use customer-managed keys to manage the encryption at rest of the contents of your managed disks if the resources is marked with SNC data classification tag. By default, the data is encrypted at rest with platform-managed keys, but customer-managed keys are commonly required to meet regulatory compliance standards. Customer-managed keys enable the data to be encrypted with an Azure Key Vault key created and owned by you.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** CMK enforcement depends on Key Vault availability, managed identity permissions, purge protection, and key rotation processes.

**Recommended action:** Standardize key hierarchy and recovery procedures before requiring CMK for disks or storage encryption scopes.

## SLZ-249-UnattachedDisksCMKEncryption

**Display name:** SLZ - 249 - Ensure that 'Unattached disks' are encrypted with 'Customer Managed Key' (CMK) for SNC data

**Source:** [`Definitions/policyDefinitions/SLZ/Storage/ID249/slz-249-unattached-disk-encrypted-with-cmk.jsonc`](../../Definitions/policyDefinitions/SLZ/Storage/ID249/slz-249-unattached-disk-encrypted-with-cmk.jsonc)

- **Category:** Storage
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Storage resources or subscription scope
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Storage
- **Key parameters:** `tagName`, `tagValue`, `effect`

**What it does:** Policy checks each UNATTACHED disk does it is related to diskEncryptionSet, if its not, it acts that disk as Not-Compliant for resources with the SNC tag.

**Hub-spoke / identity fit:** Supports private-by-default landing zones; confirm private endpoint DNS, firewall exceptions, replication, backup, and trusted service access before enforcing deny effects.

**Potential issues (Medium):** CMK enforcement depends on Key Vault availability, managed identity permissions, purge protection, and key rotation processes.

**Recommended action:** Standardize key hierarchy and recovery procedures before requiring CMK for disks or storage encryption scopes.
