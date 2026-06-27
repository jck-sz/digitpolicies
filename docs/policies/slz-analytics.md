# SLZ Analytics Policies

Documents 1 local policy definition file(s) in `SLZ/Analytics`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-DenyPurviewAccounts](#slz-denypurviewaccounts) | `Audit` | Low | Microsoft Purview accounts |

## SLZ-DenyPurviewAccounts

**Display name:** SLZ - Deny purview accounts

**Source:** [`Definitions/policyDefinitions/SLZ/Analytics/ID00-NonID-Purview/slz-purview-account-not-allowed.jsonc`](../../Definitions/policyDefinitions/SLZ/Analytics/ID00-NonID-Purview/slz-purview-account-not-allowed.jsonc)

- **Category:** Analytics
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disable`
- **Target:** Microsoft Purview accounts
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Analytics
- **Key parameters:** `effect`

**What it does:** Deny the creation of purview accounts.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Analytics service restrictions can block legitimate data governance deployments if central Purview ownership is not documented.

**Recommended action:** Document the approved Purview deployment model and exempt only the owning subscription or management group.
