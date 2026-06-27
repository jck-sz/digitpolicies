# Azure Policy Documentation Catalog

This catalog documents every local Azure Policy definition file in `Definitions/policyDefinitions`. It is written for a hub-and-spoke Azure landing zone with centralized Azure Firewall, multiple subscriptions, multiple management groups, Entra ID, and Entra Domain Services.

## Coverage

- Local policy definition files documented: **255**
- Policy set files inspected: **3**
- Local policies referenced by checked-in policy sets: **253**
- Local policies not referenced by checked-in policy sets: **2**
- Initiative references without local policy files: **8**

## Catalog Files

| Family | Domain | Policies | File |
| --- | --- | ---: | --- |
| `C1` | General | 5 | [c1-general.md](c1-general.md) |
| `C1` | Monitoring | 35 | [c1-monitoring.md](c1-monitoring.md) |
| `C1` | Security | 2 | [c1-security.md](c1-security.md) |
| `C1` | Storage | 6 | [c1-storage.md](c1-storage.md) |
| `SLZ` | Analytics | 1 | [slz-analytics.md](slz-analytics.md) |
| `SLZ` | Compute | 4 | [slz-compute.md](slz-compute.md) |
| `SLZ` | Database | 21 | [slz-database.md](slz-database.md) |
| `SLZ` | Defender | 13 | [slz-defender.md](slz-defender.md) |
| `SLZ` | General | 18 | [slz-general.md](slz-general.md) |
| `SLZ` | Guest-Configuration | 4 | [slz-guest-configuration.md](slz-guest-configuration.md) |
| `SLZ` | Monitoring | 24 | [slz-monitoring.md](slz-monitoring.md) |
| `SLZ` | Network | 36 | [slz-network.md](slz-network.md) |
| `SLZ` | Security | 57 | [slz-security.md](slz-security.md) |
| `SLZ` | Storage | 10 | [slz-storage.md](slz-storage.md) |
| `SLZ` | Tagging | 5 | [slz-tagging.md](slz-tagging.md) |
| `SLZ` | Web | 14 | [slz-web.md](slz-web.md) |

## Review Model

Each policy entry includes its source path, default and allowed effects, detected target scope, policy-set coverage, a short purpose statement, hub-spoke fit, and a severity-labelled issue review. Severity reflects rollout risk and architectural impact, not whether the policy is bad.

## Local Policies Not Referenced By Checked-In Policy Sets

- `DEPRECATED`: [`Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc`](../../Definitions/policyDefinitions/C1/Storage/ID027/Deprecated-C1-slz-27-configure-diagnostic-settings-for-storage-accounts-to-log-analytics-workspace.jsonc)
- `SLZ-TagInheritanceFromSub`: [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag-inheritance.jsonc`](../../Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag-inheritance.jsonc)

## Initiative References Without Local Policy Files

- `ID727-AuditWMFVersion2` referenced by SLZ-ALZ-PolicySet
- `ID728-AuditPSv2_Disabled` referenced by SLZ-ALZ-PolicySet
- `ID731-Audit_ExecutionPolicy_RemoteSigned` referenced by SLZ-ALZ-PolicySet
- `ID732-Audit_ExecutionPolicy_AllSigned` referenced by SLZ-ALZ-PolicySet
- `ID734-Audit_FullLanguage` referenced by SLZ-ALZ-PolicySet
- `ID739-Audit_PSDirect_Disabled` referenced by SLZ-ALZ-PolicySet
- `ID741-Audit_ScriptBlockLogging_Enabled` referenced by SLZ-ALZ-PolicySet
- `ID744-Audit_PSTranscription_Enabled` referenced by SLZ-ALZ-PolicySet

## Counts By Family

- `C1`: 48
- `SLZ`: 207

