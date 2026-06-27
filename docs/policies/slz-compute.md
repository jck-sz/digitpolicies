# SLZ Compute Policies

Documents 4 local policy definition file(s) in `SLZ/Compute`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-165-MachinesAuditPeriodSystemUpdatesCheck](#slz-165-machinesauditperiodsystemupdatescheck) | `Audit` | Medium | virtual machines, Azure Arc-enabled servers |
| [SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck](#slz-165-2-1-machinesconfigureperiodsystemupdatescheck) | `Audit` | Medium | virtual machines |
| [SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck](#slz-165-2-machinesconfigureperiodsystemupdatescheck) | `Audit` | Medium | virtual machines |
| [SLZ-250-OnlyApprovedExtensions](#slz-250-onlyapprovedextensions) | `Audit` | Medium | VM extensions |

## SLZ-165-MachinesAuditPeriodSystemUpdatesCheck

**Display name:** SLZ - 165 - Machines should be configured to periodically check for missing system updates

**Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165-machines-should-be-configured-to-periodically-check-for-missing-system-updates.jsonc`](../../Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165-machines-should-be-configured-to-periodically-check-for-missing-system-updates.jsonc)

- **Category:** Azure Update Manager
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Disabled`
- **Target:** virtual machines, Azure Arc-enabled servers
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Compute
- **Key parameters:** `effect`

**What it does:** Machines should be configured to periodically check for missing system updates.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Update assessment controls depend on VM agent health and supported operating systems across Azure VMs and Arc machines.

**Recommended action:** Confirm agent health, maintenance ownership, and remediation reporting before using compliance as an operational KPI.

## SLZ-165.2.1-MachinesConfigurePeriodSystemUpdatesCheck

**Display name:** SLZ - 165.2.1 - Configure periodic checking for missing system updates on azure LINUX virtual machines

**Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.1-configure-to-periodically-check-for-missing-system-updates.jsonc`](../../Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.1-configure-to-periodically-check-for-missing-system-updates.jsonc)

- **Category:** Azure Update Manager
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Target:** virtual machines
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Compute
- **Key parameters:** `effect`, `assessmentMode`, `osType`, `locations`, `tagValues`, `tagOperator`

**What it does:** Configure auto-assessment (every 24 hours) for OS updates on native Azure virtual machines. You can control the scope of assignment according to machine subscription, resource group, location or tag. Learn more about this for Windows: https://aka.ms/computevm-windowspatchassessmentmode, for Linux: https://aka.ms/computevm-linuxpatchassessmentmode.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Update assessment controls depend on VM agent health and supported operating systems across Azure VMs and Arc machines.

**Recommended action:** Confirm agent health, maintenance ownership, and remediation reporting before using compliance as an operational KPI.

## SLZ-165.2-MachinesConfigurePeriodSystemUpdatesCheck

**Display name:** SLZ - 165.2.2 - Configure periodic checking for missing system updates on azure WINDOWS virtual machines

**Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.2-configure-to-periodically-check-for-missing-system-updates.jsonc`](../../Definitions/policyDefinitions/SLZ/Compute/ID165/slz-165.2.2-configure-to-periodically-check-for-missing-system-updates.jsonc)

- **Category:** Azure Update Manager
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Target:** virtual machines
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Compute
- **Key parameters:** `effect`, `assessmentMode`, `osType`, `locations`, `tagValues`, `tagOperator`

**What it does:** Configure auto-assessment (every 24 hours) for OS updates on native Azure virtual machines. You can control the scope of assignment according to machine subscription, resource group, location or tag. Learn more about this for Windows: https://aka.ms/computevm-windowspatchassessmentmode, for Linux: https://aka.ms/computevm-linuxpatchassessmentmode.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** Update assessment controls depend on VM agent health and supported operating systems across Azure VMs and Arc machines.

**Recommended action:** Confirm agent health, maintenance ownership, and remediation reporting before using compliance as an operational KPI.

## SLZ-250-OnlyApprovedExtensions

**Display name:** SLZ - 250 - Ensure that Only Approved Extensions Are Installed

**Source:** [`Definitions/policyDefinitions/SLZ/Compute/ID250/slz-250-ensure-that-only-approved-extensions-are-installed.jsonc`](../../Definitions/policyDefinitions/SLZ/Compute/ID250/slz-250-ensure-that-only-approved-extensions-are-installed.jsonc)

- **Category:** Guest Configuration
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** VM extensions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Compute
- **Key parameters:** `effect`, `approvedExtensions`

**What it does:** This policy governs the virtual machine extensions that are not approved.

**Hub-spoke / identity fit:** Supports VM governance in spokes and Arc-connected estates; align remediation permissions, maintenance windows, and extension allow lists with platform operations.

**Potential issues (Medium):** An extension allow list can block monitoring, security, backup, or custom script extensions required by platform operations.

**Recommended action:** Baseline required extensions for Azure Monitor, Defender, Backup, Guest Configuration, and Arc before enabling Deny.
