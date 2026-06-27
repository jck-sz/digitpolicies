# SLZ Guest-Configuration Policies

Documents 4 local policy definition file(s) in `SLZ/Guest-Configuration`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [385f5831-96d4-41db-9a3c-cd3af78aaae6](#385f5831-96d4-41db-9a3c-cd3af78aaae6) | `deployIfNotExists` | Medium | virtual machines |
| [331e8ea8-378a-410f-a2e5-ae22f38bb0da](#331e8ea8-378a-410f-a2e5-ae22f38bb0da) | `deployIfNotExists` | Medium | virtual machines |
| [3cf2ab00-13f1-4d0c-8971-2ac904541a7e](#3cf2ab00-13f1-4d0c-8971-2ac904541a7e) | `modify` | Medium | virtual machines |
| [497dff13-db2a-4c0f-8603-28fa3b331ab6](#497dff13-db2a-4c0f-8603-28fa3b331ab6) | `modify` | Medium | virtual machines |

## 385f5831-96d4-41db-9a3c-cd3af78aaae6

**Display name:** SLZ - 01 Guest Configuration - Guest Configuration assignments on Windows

**Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-01-guest-configuration-windows.jsonc`](../../Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-01-guest-configuration-windows.jsonc)

- **Category:** Guest Configuration
- **Mode:** `Indexed`
- **Default effect:** `deployIfNotExists`
- **Allowed effects:** `not declared`
- **Target:** virtual machines
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: GuestConfiguration
- **Key parameters:** `none declared`

**What it does:** This policy deploys the Windows Guest Configuration extension to Windows virtual machines hosted in Azure that are supported by Guest Configuration. The Windows Guest Configuration extension is a prerequisite for all Windows Guest Configuration assignments and must be deployed to machines before using any Windows Guest Configuration policy definition. For more information on Guest Configuration, visit https://aka.ms/gcpol.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Guest Configuration policies depend on VM identities, extensions, package availability, and outbound connectivity that may be constrained by central firewall egress rules.

**Recommended action:** Allow required guest configuration endpoints through the firewall, verify identity assignment, and monitor extension compliance by OS type.

## 331e8ea8-378a-410f-a2e5-ae22f38bb0da

**Display name:** SLZ - 02 Guest Configuration - Guest Configuration assignments on Linux

**Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-02-guest-configuration-linux.jsonc`](../../Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-02-guest-configuration-linux.jsonc)

- **Category:** Guest Configuration
- **Mode:** `Indexed`
- **Default effect:** `deployIfNotExists`
- **Allowed effects:** `not declared`
- **Target:** virtual machines
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: GuestConfiguration
- **Key parameters:** `none declared`

**What it does:** This policy deploys the Linux Guest Configuration extension to Linux virtual machines hosted in Azure that are supported by Guest Configuration. The Linux Guest Configuration extension is a prerequisite for all Linux Guest Configuration assignments and must be deployed to machines before using any Linux Guest Configuration policy definition. For more information on Guest Configuration, visit https://aka.ms/gcpol.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Guest Configuration policies depend on VM identities, extensions, package availability, and outbound connectivity that may be constrained by central firewall egress rules.

**Recommended action:** Allow required guest configuration endpoints through the firewall, verify identity assignment, and monitor extension compliance by OS type.

## 3cf2ab00-13f1-4d0c-8971-2ac904541a7e

**Display name:** SLZ - 03 Guest Configuration - Add system-assigned on VMs with no identities

**Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-03-guest-configuration-no-identities.jsonc`](../../Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-03-guest-configuration-no-identities.jsonc)

- **Category:** Guest Configuration
- **Mode:** `Indexed`
- **Default effect:** `modify`
- **Allowed effects:** `not declared`
- **Target:** virtual machines
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: GuestConfiguration
- **Key parameters:** `none declared`

**What it does:** This policy adds a system-assigned managed identity to virtual machines hosted in Azure that are supported by Guest Configuration but do not have any managed identities. A system-assigned managed identity is a prerequisite for all Guest Configuration assignments and must be added to machines before using any Guest Configuration policy definitions. For more information on Guest Configuration, visit https://aka.ms/gcpol.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Guest Configuration policies depend on VM identities, extensions, package availability, and outbound connectivity that may be constrained by central firewall egress rules.

**Recommended action:** Allow required guest configuration endpoints through the firewall, verify identity assignment, and monitor extension compliance by OS type.

## 497dff13-db2a-4c0f-8603-28fa3b331ab6

**Display name:** SLZ - 04 Guest Configuration - Add system-assigned on VMs with User-Assigned identities

**Source:** [`Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-04-guest-configuration-user-assigned-identities.jsonc`](../../Definitions/policyDefinitions/SLZ/Guest-Configuration/ID00-Guest-Config/slz-04-guest-configuration-user-assigned-identities.jsonc)

- **Category:** Guest Configuration
- **Mode:** `Indexed`
- **Default effect:** `modify`
- **Allowed effects:** `not declared`
- **Target:** virtual machines
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: GuestConfiguration
- **Key parameters:** `none declared`

**What it does:** This policy adds a system-assigned managed identity to virtual machines hosted in Azure that are supported by Guest Configuration and have at least one user-assigned identity but do not have a system-assigned managed identity. A system-assigned managed identity is a prerequisite for all Guest Configuration assignments and must be added to machines before using any Guest Configuration policy definitions. For more information on Guest Configuration, visit https://aka.ms/gcpol.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Guest Configuration policies depend on VM identities, extensions, package availability, and outbound connectivity that may be constrained by central firewall egress rules.

**Recommended action:** Allow required guest configuration endpoints through the firewall, verify identity assignment, and monitor extension compliance by OS type.
