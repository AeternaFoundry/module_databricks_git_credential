output "git_credentials_id" {
  description = "Map of id values across all git_credentials, keyed the same as var.git_credentials except keys with no id are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_credentials_force" {
  description = "Map of force values across all git_credentials, keyed the same as var.git_credentials except keys with no force are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.force if v.force != null }
}
output "git_credentials_git_email" {
  description = "Map of git_email values across all git_credentials, keyed the same as var.git_credentials except keys with no git_email are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.git_email if v.git_email != null && length(v.git_email) > 0 }
}
output "git_credentials_git_provider" {
  description = "Map of git_provider values across all git_credentials, keyed the same as var.git_credentials except keys with no git_provider are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.git_provider if v.git_provider != null && length(v.git_provider) > 0 }
}
output "git_credentials_git_username" {
  description = "Map of git_username values across all git_credentials, keyed the same as var.git_credentials except keys with no git_username are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.git_username if v.git_username != null && length(v.git_username) > 0 }
}
output "git_credentials_is_default_for_provider" {
  description = "Map of is_default_for_provider values across all git_credentials, keyed the same as var.git_credentials except keys with no is_default_for_provider are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.is_default_for_provider if v.is_default_for_provider != null }
}
output "git_credentials_name" {
  description = "Map of name values across all git_credentials, keyed the same as var.git_credentials except keys with no name are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.name if v.name != null && length(v.name) > 0 }
}
output "git_credentials_personal_access_token" {
  description = "Map of personal_access_token values across all git_credentials, keyed the same as var.git_credentials except keys with no personal_access_token are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.personal_access_token if v.personal_access_token != null && length(v.personal_access_token) > 0 }
  sensitive   = true
}
output "git_credentials_principal_id" {
  description = "Map of principal_id values across all git_credentials, keyed the same as var.git_credentials except keys with no principal_id are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => v.principal_id if v.principal_id != null }
}
output "git_credentials_provider_config" {
  description = "Map of provider_config values across all git_credentials, keyed the same as var.git_credentials except keys with no provider_config are omitted"
  value       = { for k, v in databricks_git_credential.git_credentials : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

