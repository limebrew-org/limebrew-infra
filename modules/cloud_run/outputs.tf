#? Service account info
output "service_account_info" {
  value = data.google_client_openid_userinfo.user
}

#? Print Deployment Service URL
output "service_url" {
  value = google_cloud_run_v2_service.service.uri
}