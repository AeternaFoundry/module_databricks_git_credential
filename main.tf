resource "databricks_git_credential" "git_credentials" {
  for_each = var.git_credentials

  git_provider            = each.value.git_provider
  force                   = each.value.force
  git_email               = each.value.git_email
  git_username            = each.value.git_username
  is_default_for_provider = each.value.is_default_for_provider
  name                    = each.value.name
  personal_access_token   = each.value.personal_access_token
  principal_id            = each.value.principal_id

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

