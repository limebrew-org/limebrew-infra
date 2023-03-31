output "service_account_info" {
  value = data.google_client_openid_userinfo.user
}

output "artifact_registry_repo" {
  value = google_artifact_registry_repository.repo
}