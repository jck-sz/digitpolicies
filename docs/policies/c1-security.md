# C1 Security Policies

Documents 2 local policy definition file(s) in `C1/Security`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [C1-SLZ-171-SecurityContactEmailAdditionalAddress](#c1-slz-171-securitycontactemailadditionaladdress) | `DeployIfNotExists` | Medium | subscriptions |
| [C1-SLZ-172-AlertsNotifySetToHigh](#c1-slz-172-alertsnotifysettohigh) | `AuditIfNotExists` | Low | subscriptions |

## C1-SLZ-171-SecurityContactEmailAdditionalAddress

**Display name:** C1 - SLZ - 171 - Ensure 'Additional email addresses' is Configured with a Security Contact Email

**Source:** [`Definitions/policyDefinitions/C1/Security/ID171/C1-slz-171-ensure-'additional-email-addresses'-is-configured-with-a-security-contact-email.jsonc`](../../Definitions/policyDefinitions/C1/Security/ID171/C1-slz-171-ensure-'additional-email-addresses'-is-configured-with-a-security-contact-email.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `DeployIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `Disabled`, `AuditIfNotExists`
- **Target:** subscriptions
- **Policy set coverage:** C1-ManagedPolicies; group: Security
- **Key parameters:** `emailSecurityContact`, `effect`, `minimalSeverity`

**What it does:** This policy ensures that defined email address is added to security contacts.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Medium):** DeployIfNotExists needs a managed identity with the correct roles at each assignment scope; remediation can fail silently across subscriptions if workspace, policy assignment identity, or target resource permissions are inconsistent.

**Recommended action:** Pre-stage assignment identities and role assignments, test remediation in one spoke subscription, and monitor remediation task failures before broad management-group rollout.

## C1-SLZ-172-AlertsNotifySetToHigh

**Display name:** C1 - SLZ - 172 - Ensure That 'Notify about alerts with the following severity' is Set to 'High'

**Source:** [`Definitions/policyDefinitions/C1/Security/ID172/C1-slz-172-alert-severity-set-high.jsonc`](../../Definitions/policyDefinitions/C1/Security/ID172/C1-slz-172-alert-severity-set-high.jsonc)

- **Category:** Security Center
- **Mode:** `All`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** C1-ManagedPolicies; group: Security
- **Key parameters:** `effect`

**What it does:** Notify about alerts with the severity Set to 'High' in Cloud Security Contacts.

**Hub-spoke / identity fit:** Generally suitable for management-group assignment after parameters, exclusions, and remediation identity permissions are validated per landing-zone scope.

**Potential issues (Low):** Audit-only enforcement identifies drift but does not prevent insecure deployment patterns in new spokes.

**Recommended action:** Use audit results to validate false positives, then promote mature controls to Deny, DeployIfNotExists, or Modify where the policy supports it.
