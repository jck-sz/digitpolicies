# Repository Overview

This repository contains Azure Policy-as-Code content for DIGIT-managed Azure landing zones. The main assets are custom Azure Policy definitions, policy set definitions, and ARM/Bicep templates that support deployment and monitoring infrastructure.

At the time of inspection, the repository contains 255 policy definition files under `Definitions/policyDefinitions` and 3 policy set definition files under `Definitions/policySetDefinitions`.

## Top-Level Structure

```text
.
├── Agents.md
├── Definitions/
│   ├── policyDefinitions/
│   │   ├── C1/
│   │   └── SLZ/
│   └── policySetDefinitions/
│       ├── C1/
│       └── SLZ/
└── templates/
```

## Folder Contents

### `Agents.md`

Project-specific working instructions for agents. It explains that the repository's main outcome is documentation and explanation for each policy.

### `Definitions/`

Container for Azure Policy-as-Code definition assets. It is split into individual policy definitions and policy set definitions.

### `Definitions/policyDefinitions/`

Custom Azure Policy definitions. Policy files are mostly JSONC, with some JSON files. Definitions are grouped first by ownership or policy family (`C1` and `SLZ`), then by policy domain, then by policy ID folders.

Each policy ID folder usually contains one or more policy definition files. The filename normally includes the policy ID and a short description of the control.

### `Definitions/policyDefinitions/C1/`

C1-specific policy definitions. These policies focus mainly on monitoring, security contacts, storage diagnostics, and selected governance controls.

| Folder | Files | Content |
| --- | ---: | --- |
| `General/` | 5 | General C1 governance policies, including custom administrator role checks, auditing retention, and activity log alert monitoring. |
| `Monitoring/` | 35 | Diagnostic settings policies for many Azure resource types, generally sending logs and metrics to a Log Analytics workspace. |
| `Security/` | 2 | Defender for Cloud security contact and alert severity policies. |
| `Storage/` | 6 | Storage logging, diagnostics, CMK, and public access related policies. |

### `Definitions/policyDefinitions/SLZ/`

SLZ policy definitions for landing-zone compliance. These are grouped by Azure service or control domain.

| Folder | Files | Content |
| --- | ---: | --- |
| `Analytics/` | 1 | Analytics governance policy, currently covering Purview account restrictions. |
| `Compute/` | 4 | Virtual machine update assessment and approved extension controls. |
| `Database/` | 21 | SQL, PostgreSQL, MySQL, and Cosmos DB controls for auditing, encryption, SSL/TLS, private access, firewall exposure, and authentication. |
| `Defender/` | 13 | Microsoft Defender for Cloud plan configuration and vulnerability assessment policies. |
| `General/` | 18 | Cross-service controls such as allowed regions, production SKU restrictions, resource locks, IAM group-based permissions, and geo-location restrictions. |
| `Guest-Configuration/` | 28 | Guest Configuration policies plus supporting audit artifacts. Several ID folders include `Audit.ps1`, `Audit.mof`, and packaged `.zip` guest configuration content. |
| `Monitoring/` | 24 | Activity log and operational monitoring policies for policy, network, security, SQL firewall, public IP, and Application Insights related events. |
| `Network/` | 36 | Network exposure controls, including public access restrictions, WAF requirements, DDoS protection, Network Watcher, and inbound protocol or service port checks. |
| `Security/` | 57 | Security baseline policies, including TLS version requirements, customer-managed key encryption, Key Vault controls, service-specific encryption, and RBAC-related requirements. |
| `Storage/` | 10 | Storage account controls for secure transfer, infrastructure encryption, public access, network default deny, private endpoints, soft delete, and disk CMK encryption. |
| `Tagging/` | 5 | Required subscription tag and tag inheritance policies. |
| `Web/` | 14 | App Service and Function App controls for HTTPS, authentication, FTP deployment, runtime versions, TLS/HTTP versions, and Azure AD registration. |

### `Definitions/policySetDefinitions/`

Azure Policy initiative definitions that group individual policies into assignable sets.

### `Definitions/policySetDefinitions/C1/`

Contains two C1 policy set definitions:

| File | Purpose |
| --- | --- |
| `c1-AzureLandingZoneCore.jsonc` | Core C1 Azure Landing Zone initiative focused on diagnostic settings and monitoring integration. |
| `c1-managed-policies.jsonc` | C1 managed policy initiative covering activity logs, general governance, security, and storage policies. |

### `Definitions/policySetDefinitions/SLZ/`

Contains the SLZ/ALZ initiative:

| File | Purpose |
| --- | --- |
| `SLZ-ALZ-PolicySet.jsonc` | Azure Landing Zone policy set for compliance checks across Analytics, Compute, Database, Defender, General, Network, Security, Storage, Tagging, Web, Monitoring, and Guest Configuration groups. |

### `templates/`

ARM and Bicep deployment templates plus parameter files for landing-zone support resources.

| File | Purpose |
| --- | --- |
| `managementGroupTemplate.json` | Assigns required roles to the landing-zone managed identity at management group scope. |
| `managementGroupTemplate.parameters.json` | Parameters for the management group deployment template. |
| `subscriptionTemplate.json` | Creates the landing-zone resource group in a subscription. |
| `subscriptionTemplate.parameters.json` | Parameters for the subscription deployment template. |
| `rgTemplate.json` | Deploys landing-zone support resources such as a user-assigned managed identity, Log Analytics workspace, optional Automation account, optional Event Hub, optional Sentinel onboarding, storage accounts, and data collection rules. |
| `rgTemplate.parameters.json` | Parameters for the resource group deployment template. |
| `rgTemplate.satellite.parameters.json` | Alternate resource group parameters named for satellite deployments. |
| `dataExportTemplate.bicep` | Creates a Log Analytics data export from an existing workspace to an existing storage account for selected tables. |
| `supportedTablesForExport.json` | List of Log Analytics tables supported or selected for export. |
| `bicepconfig.json` | Bicep configuration for template compilation and validation behavior. |

## Content Pattern

Most policy definitions follow this structure:

- A schema reference for Enterprise Azure Policy-as-Code.
- A `name` and `properties.displayName`.
- Metadata such as category and version.
- Parameters for assignment-time configuration.
- A policy rule that audits, denies, modifies, or deploys configuration.

Policy set definitions collect these policies into initiatives and expose initiative-level parameters for assignment. Guest Configuration policies are the main exception because they include supporting PowerShell, MOF, and ZIP package artifacts in addition to policy JSONC files.
