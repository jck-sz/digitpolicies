# Excluding Built-In Policy Definition Files

Yes. Make it a Terraform variable, then set it in `.tfvars`.

In `snippet.tf`, change the locals from this:

```hcl
policy_files_json  = fileset("${path.module}/../Definitions/policyDefinitions", "**/*.json")
policy_files_jsonc = fileset("${path.module}/../Definitions/policyDefinitions", "**/*.jsonc")
policy_files       = setunion(local.policy_files_json, local.policy_files_jsonc)
```

to this:

```hcl
policy_files_json  = fileset("${path.module}/../Definitions/policyDefinitions", "**/*.json")
policy_files_jsonc = fileset("${path.module}/../Definitions/policyDefinitions", "**/*.jsonc")

policy_files = setsubtract(
  setunion(local.policy_files_json, local.policy_files_jsonc),
  var.excluded_policy_files
)
```

Then add this variable near the other variables in `snippet.tf`:

```hcl
variable "excluded_policy_files" {
  description = "Policy definition files to skip when creating custom Azure Policy definitions. Paths are relative to Definitions/policyDefinitions."
  type        = set(string)
  default     = []
}
```

Then in your `.tfvars`, add:

```hcl
excluded_policy_files = [
  "SLZ/Guest-Configuration/ID00-Guest-Config/slz-01-guest-configuration-windows.jsonc",
  "SLZ/Guest-Configuration/ID00-Guest-Config/slz-02-guest-configuration-linux.jsonc",
  "SLZ/Guest-Configuration/ID00-Guest-Config/slz-03-guest-configuration-no-identities.jsonc",
  "SLZ/Guest-Configuration/ID00-Guest-Config/slz-04-guest-configuration-user-assigned-identities.jsonc",
]
```

Important: this only skips creating those definitions. If you still want them included in the initiative, change their SLZ initiative entries from `policyDefinitionName` to built-in `policyDefinitionId`, for example:

```json
"policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/385f5831-96d4-41db-9a3c-cd3af78aaae6"
```

Otherwise Terraform will silently omit those 4 references from the initiative.
