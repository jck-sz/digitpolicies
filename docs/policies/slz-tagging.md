# SLZ Tagging Policies

Documents 5 local policy definition file(s) in `SLZ/Tagging`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-TagInheritanceFromSub](#slz-taginheritancefromsub) | `Audit` | Medium | Tagging resources or subscription scope |
| [SLZ-604-CheckDataSensitivityTagsOnSubscriptions](#slz-604-checkdatasensitivitytagsonsubscriptions) | `Audit` | Low | subscriptions |
| [SLZ-CheckEnvironmentTagOnSubscription](#slz-checkenvironmenttagonsubscription) | `Audit` | Low | subscriptions |
| [SLZ-CheckOrganizationTagOnSubscription](#slz-checkorganizationtagonsubscription) | `Audit` | Low | subscriptions |
| [SLZ-878-CheckProjectTagOnSubscription](#slz-878-checkprojecttagonsubscription) | `Audit` | Low | subscriptions |

## SLZ-TagInheritanceFromSub

**Display name:** Tag Inheritance

**Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag-inheritance.jsonc`](../../Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag-inheritance.jsonc)

- **Category:** Tagging
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Target:** Tagging resources or subscription scope
- **Policy set coverage:** Not referenced by checked-in policy sets; group: not specified
- **Key parameters:** `tag-TagName1`, `tag-TagName2`, `tag-TagName3`, `tag-TagName4`, `effect`

**What it does:** Tag inheritance from subscription for all types of resources (including Resource Groups).

**Hub-spoke / identity fit:** Supports governance and policy scoping across many subscriptions; make tag ownership and inheritance behavior part of the landing-zone operating model.

**Potential issues (Medium):** This local policy is not referenced by the current initiatives, so tag inheritance may be expected by operators but never assigned.

**Recommended action:** Either add it deliberately to the relevant initiative or document why tag inheritance is handled outside this policy set.

## SLZ-604-CheckDataSensitivityTagsOnSubscriptions

**Display name:** SLZ - 604 - Check ec.DataSensitivityLevel Tag on Subscription

**Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_datasensitivity.jsonc`](../../Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_datasensitivity.jsonc)

- **Category:** Tagging
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Tagging
- **Key parameters:** `tag-TagName2`, `effect`

**What it does:** Ensure the ec.DataSensitivityLevel tag exists on the subscription and is within allowed values.

**Hub-spoke / identity fit:** Supports governance and policy scoping across many subscriptions; make tag ownership and inheritance behavior part of the landing-zone operating model.

**Potential issues (Low):** Tag policies improve governance but can cause deployment friction if required values, casing, or inheritance rules are not aligned across subscriptions.

**Recommended action:** Publish the authoritative tag dictionary and validate exemptions for platform-managed resources.

## SLZ-CheckEnvironmentTagOnSubscription

**Display name:** SLZ - XXX - Check Environment Tag on Subscription

**Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_environment.jsonc`](../../Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_environment.jsonc)

- **Category:** Tagging
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Tagging
- **Key parameters:** `tag-TagName1`, `effect`

**What it does:** Ensure the Environment tag exists on the subscription and is within allowed values.

**Hub-spoke / identity fit:** Supports governance and policy scoping across many subscriptions; make tag ownership and inheritance behavior part of the landing-zone operating model.

**Potential issues (Low):** Tag policies improve governance but can cause deployment friction if required values, casing, or inheritance rules are not aligned across subscriptions.

**Recommended action:** Publish the authoritative tag dictionary and validate exemptions for platform-managed resources.

## SLZ-CheckOrganizationTagOnSubscription

**Display name:** SLZ - XXX - Check Organization Tag on Subscription

**Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_organization.jsonc`](../../Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_organization.jsonc)

- **Category:** Tagging
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Tagging
- **Key parameters:** `tag-TagName4`, `effect`

**What it does:** Ensure the Organization tag exists on the subscription.

**Hub-spoke / identity fit:** Supports governance and policy scoping across many subscriptions; make tag ownership and inheritance behavior part of the landing-zone operating model.

**Potential issues (Low):** Tag policies improve governance but can cause deployment friction if required values, casing, or inheritance rules are not aligned across subscriptions.

**Recommended action:** Publish the authoritative tag dictionary and validate exemptions for platform-managed resources.

## SLZ-878-CheckProjectTagOnSubscription

**Display name:** SLZ - 878 - Check Project Tag on Subscription

**Source:** [`Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_project.jsonc`](../../Definitions/policyDefinitions/SLZ/Tagging/ID00-NonID-Tags/tag_sub_project.jsonc)

- **Category:** Tagging
- **Mode:** `All`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Deny`, `Disabled`
- **Target:** subscriptions
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Tagging
- **Key parameters:** `tag-TagName3`, `effect`

**What it does:** Ensure the Project tag exists on the subscription.

**Hub-spoke / identity fit:** Supports governance and policy scoping across many subscriptions; make tag ownership and inheritance behavior part of the landing-zone operating model.

**Potential issues (Low):** Tag policies improve governance but can cause deployment friction if required values, casing, or inheritance rules are not aligned across subscriptions.

**Recommended action:** Publish the authoritative tag dictionary and validate exemptions for platform-managed resources.
