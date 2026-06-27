# SLZ Database Policies

Documents 21 local policy definition file(s) in `SLZ/Database`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-193-SQLServerAuditing](#slz-193-sqlserverauditing) | `AuditIfNotExists` | Medium | SQL servers |
| [SLZ-194-AzureSQLDBIngressFrom0000](#slz-194-azuresqldbingressfrom0000) | `Deny` | Medium | SQL server firewall rules |
| [SLZ-195-SQLServerTDEEncryptionWithCMK](#slz-195-sqlservertdeencryptionwithcmk) | `Audit` | Medium | SQL servers, SQL encryption protectors |
| [SLZ-196-SQLServerAADAdminConfiguration](#slz-196-sqlserveraadadminconfiguration) | `Deny` | Medium | SQL servers |
| [SLZ-197-SQLDatabaseDataEncryption](#slz-197-sqldatabasedataencryption) | `DeployIfNotExists` | Medium | SQL databases |
| [SLZ-204-PostgresSQLFlexibleServerSSLConnection](#slz-204-postgressqlflexibleserversslconnection) | `DeployIfNotExists` | Medium | PostgreSQL flexible servers |
| [SLZ-204-PostgresSQLServerSSLConnection](#slz-204-postgressqlserversslconnection) | `Deny` | Medium | PostgreSQL servers |
| [SLZ-205-PostgresSQLFlexibleServer_log_checkpoints](#slz-205-postgressqlflexibleserver-log-checkpoints) | `DeployIfNotExists` | Medium | PostgreSQL servers |
| [SLZ-205-PostgresSQLServer_log_checkpoints](#slz-205-postgressqlserver-log-checkpoints) | `DeployIfNotExists` | Medium | PostgreSQL flexible servers |
| [SLZ-206-PostgresSQLServerLogConnections](#slz-206-postgressqlserverlogconnections) | `DeployIfNotExists` | Medium | PostgreSQL servers |
| [SLZ-207-PostgresSQLServerDisconnectionsLogging](#slz-207-postgressqlserverdisconnectionslogging) | `DeployIfNotExists` | Medium | PostgreSQL servers |
| [SLZ-208-PostgresSQLFlexibleServerConnectionThrottling](#slz-208-postgressqlflexibleserverconnectionthrottling) | `DeployIfNotExists` | Medium | PostgreSQL flexible servers |
| [SLZ-208-PostgresSQLServerConnectionThrottling](#slz-208-postgressqlserverconnectionthrottling) | `DeployIfNotExists` | Medium | PostgreSQL servers |
| [SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess](#slz-210-postgressqlflexibleserverpublicnetworkaccess) | `Deny` | High | PostgreSQL flexible servers |
| [SLZ-210-PostgresSQLServerPublicNetworkAccess](#slz-210-postgressqlserverpublicnetworkaccess) | `Deny` | High | PostgreSQL servers |
| [SLZ-212-MySQLSQLServerEnforceSSLConnection](#slz-212-mysqlsqlserverenforcesslconnection) | `Deny` | Medium | MySQL servers |
| [SLZ-214-MySQLSQLServer_audit_log_enabled](#slz-214-mysqlsqlserver-audit-log-enabled) | `DeployIfNotExists` | Medium | MySQL flexible servers |
| [SLZ-215-MySQLSQLServer_audit_log_events](#slz-215-mysqlsqlserver-audit-log-events) | `DeployIfNotExists` | Medium | MySQL flexible servers |
| [SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork](#slz-216-azurecosmosdbfwlimitsforselectednetwork) | `Deny` | Medium | Cosmos DB accounts |
| [SLZ-217-AzureCosmosDBPrivateLink](#slz-217-azurecosmosdbprivatelink) | `Deny` | Medium | Cosmos DB accounts |
| [SLZ-218-AzureCosmosDBLocalAuthenticationDisabled](#slz-218-azurecosmosdblocalauthenticationdisabled) | `Deny` | Medium | Cosmos DB accounts |

## SLZ-193-SQLServerAuditing

**Display name:** SLZ - 193 - Auditing on SQL server should be enabled

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID193/slz-193-auditing-on-sql-should-be-on.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID193/slz-193-auditing-on-sql-should-be-on.jsonc)

- **Category:** SQL
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** SQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`, `setting`

**What it does:** Auditing on your SQL Server should be enabled to track database activities across all databases on the server and save them in an audit log.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Database audit policies need storage or workspace targets and can create cost, retention, and private access dependencies.

**Recommended action:** Confirm audit destination, retention, and network reachability in every subscription before remediation.

## SLZ-194-AzureSQLDBIngressFrom0000

**Display name:** SLZ - 194 - Ensure no Azure SQL Databases allow ingress from 0.0.0.0/0 (ANY IP)

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID194/slz-194-ensure-no-azure-sql-databases-allow-ingress-from-0.0.0.00-any-ip.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID194/slz-194-ensure-no-azure-sql-databases-allow-ingress-from-0.0.0.00-any-ip.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** SQL server firewall rules
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Disabling the public network access property improves security by ensuring your Azure SQL Database can only be accessed from a private endpoint. This configuration denies all logins that match IP or virtual network based firewall rules.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (Medium):** Deny-capable policy can block platform or workload deployments when exceptions for shared services, migration phases, or approved public edge patterns are missing.

**Recommended action:** Start with audit where blast radius is unclear, define exemptions at the narrowest scope, then enable Deny for mature landing-zone scopes.

## SLZ-195-SQLServerTDEEncryptionWithCMK

**Display name:** SLZ - 195 - Ensure SQL server's Transparent Data Encryption (TDE) protector is encrypted with Customer-managed key

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID195/slz-195-sql-tde-encrypted-with-customer-managed-keys.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID195/slz-195-sql-tde-encrypted-with-customer-managed-keys.jsonc)

- **Category:** SQL
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** SQL servers, SQL encryption protectors
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `tagName`, `tagValue`, `effect`

**What it does:** This policy ensures that SQL Server's Transparent Data Encryption (TDE) protector is encrypted with a customer-managed key.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-196-SQLServerAADAdminConfiguration

**Display name:** SLZ - 196 - Ensure that Azure Active Directory Admin is Configured for SQL Servers

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID196/slz-196-ensure-that-azure-active-directory-admin-is-configured-for-sql-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID196/slz-196-ensure-that-azure-active-directory-admin-is-configured-for-sql-servers.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** SQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Deny the creation of SQL servers without an Azure AD account as an authentication method. AAD enables simplified permission management and centralized identity management of database users and other Microsoft services.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Identity controls depend on Entra ID administration models and can disrupt workloads still using local credentials or unmanaged SQL admins.

**Recommended action:** Define Entra administrator groups, migrate workload authentication, and keep emergency access documented before Deny enforcement.

## SLZ-197-SQLDatabaseDataEncryption

**Display name:** SLZ - 197 - Ensure that 'Data encryption' is set to 'On' on a SQL Database

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID197/slz-197-ensure-that-'data-encryption'-is-set-to-'on'-on-a-sql-database.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID197/slz-197-ensure-that-'data-encryption'-is-set-to-'on'-on-a-sql-database.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** SQL databases
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Transparent data encryption should be enabled to protect data-at-rest and meet compliance requirements.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-204-PostgresSQLFlexibleServerSSLConnection

**Display name:** SLZ - 204 - Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server FLEXIBLE

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_FLEXIBLE.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_FLEXIBLE.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Azure Database for PostgreSQL supports connecting your Azure Database for PostgreSQL server to client applications using Secure Sockets Layer (SSL).

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-204-PostgresSQLServerSSLConnection

**Display name:** SLZ - 204 - Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server SINGLE

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_SINGLE.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID204/slz-204-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-postgresql-database-server_SINGLE.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Azure Database for PostgreSQL supports connecting your Azure Database for PostgreSQL server to client applications using Secure Sockets Layer (SSL).

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-205-PostgresSQLFlexibleServer_log_checkpoints

**Display name:** SLZ - 205 - Ensure Server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Flexible Server

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-flexible-server.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-flexible-server.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL databases in your environment without log_checkpoints setting enabled.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## SLZ-205-PostgresSQLServer_log_checkpoints

**Display name:** SLZ - 205 - Ensure Server Parameter 'log_checkpoints' is set to 'ON' for PostgreSQL Database Server

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-server.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID205/slz-205-ensure-server-parameter-'log_checkpoints'-is-set-to-'on'-for-postgresql-database-server.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL databases in your environment without log_checkpoints setting enabled.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## SLZ-206-PostgresSQLServerLogConnections

**Display name:** SLZ - 206 - Log connections should be enabled for PostgreSQL database servers

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID206/slz-206-log-connections-should-be-enabled-for-postgresql-database-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID206/slz-206-log-connections-should-be-enabled-for-postgresql-database-servers.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL databases in your environment without log_connections setting enabled.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## SLZ-207-PostgresSQLServerDisconnectionsLogging

**Display name:** SLZ - 207 - Disconnections should be logged for PostgreSQL database servers.

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID207/slz-207-disconnections-should-be-logged-for-postgresql-database-servers..jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID207/slz-207-disconnections-should-be-logged-for-postgresql-database-servers..jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL databases in your environment without log_disconnections enabled.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Database audit policies need storage or workspace targets and can create cost, retention, and private access dependencies.

**Recommended action:** Confirm audit destination, retention, and network reachability in every subscription before remediation.

## SLZ-208-PostgresSQLFlexibleServerConnectionThrottling

**Display name:** SLZ - 208 - Connection throttling should be enabled for PostgreSQL database servers FLEXIBLE

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-flexible-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-flexible-servers.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL databases in your environment without Connection throttling enabled. This setting enables temporary connection throttling per IP for too many invalid password login failures.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## SLZ-208-PostgresSQLServerConnectionThrottling

**Display name:** SLZ - 208 - Connection throttling should be enabled for PostgreSQL database servers

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID208/slz-208-connection-throttling-should-be-enabled-for-postgresql-database-servers.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** This policy helps audit any PostgreSQL databases in your environment without Connection throttling enabled. This setting enables temporary connection throttling per IP for too many invalid password login failures.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## SLZ-210-PostgresSQLFlexibleServerPublicNetworkAccess

**Display name:** SLZ - 210 - Public network access should be disabled for PostgreSQL flexible servers

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-flexible-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-flexible-servers.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** PostgreSQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Disabling the public network access property improves security by ensuring your Azure Database for PostgreSQL flexible servers can only be accessed from a private endpoint. This configuration strictly disables access from any public address space outside of Azure IP range and denies all logins that match IP or virtual network-based firewall rules.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-210-PostgresSQLServerPublicNetworkAccess

**Display name:** SLZ - 210 - Public network access should be disabled for PostgreSQL servers

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-servers.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID210/slz-210-public-network-access-should-be-disabled-for-postgresql-servers.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** PostgreSQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Disabling the public network access property improves security by ensuring your Azure Database for PostgreSQL servers can only be accessed from a private endpoint. This configuration strictly disables access from any public address space outside of Azure IP range and denies all logins that match IP or virtual network-based firewall rules.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-212-MySQLSQLServerEnforceSSLConnection

**Display name:** SLZ - 212 - Ensure 'Enforce SSL connection' is set to 'Enabled' for Standard MySQL Database Server

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID212/slz-212-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-standard-mysql-database-server.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID212/slz-212-ensure-'enforce-ssl-connection'-is-set-to-'enabled'-for-standard-mysql-database-server.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** MySQL servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Azure Database for MySQL supports connecting your Azure Database for MySQL server to client applications using Secure Sockets Layer (SSL). Enforcing SSL connections between your database server and your client applications helps protect against 'man in the middle' attacks by encrypting the data stream between the server and your application. This configuration enforces that SSL is always enabled for accessing your database server.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Encryption and TLS requirements can break legacy clients or require Key Vault permissions across subscriptions.

**Recommended action:** Inventory client compatibility and key access, then phase enforcement with workload owners.

## SLZ-214-MySQLSQLServer_audit_log_enabled

**Display name:** SLZ - 214 - Ensure server parameter 'audit_log_enabled' is set to 'ON' for MySQL Database Server

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID214/slz-214-ensure-server-parameter-'audit_log_enabled'-is-set-to-'on'-for-mysql-database-server.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID214/slz-214-ensure-server-parameter-'audit_log_enabled'-is-set-to-'on'-for-mysql-database-server.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** MySQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Enabling audit_log_enabled helps MySQL Database to log items such as connection attempts to the server, DDL/DML access, and more. Log data can be used to identify, troubleshoot, and repair configuration errors and suboptimal performance.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Database audit policies need storage or workspace targets and can create cost, retention, and private access dependencies.

**Recommended action:** Confirm audit destination, retention, and network reachability in every subscription before remediation.

## SLZ-215-MySQLSQLServer_audit_log_events

**Display name:** SLZ - 215 - Ensure server parameter 'audit_log_events' has 'CONNECTION' set for MySQL Database Server

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID215/slz-215-ensure-server-parameter-'audit_log_events'-is-set-to-'CONNECTION'-for-mysql-database-server.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID215/slz-215-ensure-server-parameter-'audit_log_events'-is-set-to-'CONNECTION'-for-mysql-database-server.jsonc)

- **Category:** SQL
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** MySQL flexible servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Ensures that the MySQL Database Server parameter audit_log_events includes CONNECTION to log connection events for enhanced security and compliance.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Database audit policies need storage or workspace targets and can create cost, retention, and private access dependencies.

**Recommended action:** Confirm audit destination, retention, and network reachability in every subscription before remediation.

## SLZ-216-AzureCosmosDBFWLimitsForSelectedNetwork

**Display name:** SLZ - 216 - Ensure That 'Firewalls & Networks' Is Limited to use selected Networks Instead of All Networks

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID216/slz-216-ensure-that-'firewalls-&-networks'-is-limited-to-use-selected-networks-instead-of-all-networ.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID216/slz-216-ensure-that-'firewalls-&-networks'-is-limited-to-use-selected-networks-instead-of-all-networ.jsonc)

- **Category:** Storage
- **Mode:** `Indexed`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Cosmos DB accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Firewall rules should be defined on your Azure Cosmos DB accounts to prevent traffic from unauthorized sources. Accounts that have at least one IP rule defined with the virtual network filter enabled are deemed compliant. Accounts disabling public access are also deemed compliant.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Database network restrictions fit hub-spoke, but private endpoint DNS and firewall paths must be ready before public access is denied.

**Recommended action:** Use private endpoints for data-plane access, remove broad firewall rules, and test application connectivity from each spoke.

## SLZ-217-AzureCosmosDBPrivateLink

**Display name:** SLZ - 217 - CosmosDB accounts should use private link

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID217/slz-217-cosmosdb-accounts-should-use-private-link.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID217/slz-217-cosmosdb-accounts-should-use-private-link.jsonc)

- **Category:** Cosmos DB
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Disabled`, `Deny`
- **Target:** Cosmos DB accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Azure Private Link lets you connect your virtual network to Azure services without a public IP address at the source or destination. The Private Link platform handles the connectivity between the consumer and services over the Azure backbone network. By mapping private endpoints to your CosmosDB account, data leakage risks are reduced. Learn more about private links at: https://docs.microsoft.com/azure/cosmos-db/how-to-configure-private-endpoints.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Database network restrictions fit hub-spoke, but private endpoint DNS and firewall paths must be ready before public access is denied.

**Recommended action:** Use private endpoints for data-plane access, remove broad firewall rules, and test application connectivity from each spoke.

## SLZ-218-AzureCosmosDBLocalAuthenticationDisabled

**Display name:** SLZ - 218 - Cosmos DB database accounts should have local authentication methods disabled

**Source:** [`Definitions/policyDefinitions/SLZ/Database/ID218/slz-218-cosmos-db-database-accounts-should-have-local-authentication-methods-disabled.jsonc`](../../Definitions/policyDefinitions/SLZ/Database/ID218/slz-218-cosmos-db-database-accounts-should-have-local-authentication-methods-disabled.jsonc)

- **Category:** Cosmos DB
- **Mode:** `All`
- **Default effect:** `Deny`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** Cosmos DB accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Database
- **Key parameters:** `effect`

**What it does:** Disabling local authentication methods improves security by ensuring that Cosmos DB database accounts exclusively require Azure Active Directory identities for authentication. Learn more at: https://docs.microsoft.com/azure/cosmos-db/how-to-setup-rbac#disable-local-auth.

**Hub-spoke / identity fit:** Supports private data-plane access and Entra-based administration; ensure private DNS, firewall routing, auditing targets, and managed identity permissions are ready in every subscription.

**Potential issues (Medium):** Identity controls depend on Entra ID administration models and can disrupt workloads still using local credentials or unmanaged SQL admins.

**Recommended action:** Define Entra administrator groups, migrate workload authentication, and keep emergency access documented before Deny enforcement.
