variable "git_credentials" {
  description = <<EOT
Map of git_credentials, attributes below
Required:
    - git_provider
Optional:
    - force
    - git_email
    - git_username
    - is_default_for_provider
    - name
    - personal_access_token
    - principal_id
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    git_provider            = string
    force                   = optional(bool)
    git_email               = optional(string)
    git_username            = optional(string)
    is_default_for_provider = optional(bool)
    name                    = optional(string)
    personal_access_token   = optional(string)
    principal_id            = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

