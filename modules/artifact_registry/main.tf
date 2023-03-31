#TODO: google client application credentials
data "google_client_openid_userinfo" "user" {}

#TODO: Create the artifact repository
resource "google_artifact_registry_repository" "repo" {
  location      = var.REGION
  repository_id = var.REPOSITORY_ID
  description   = var.REPOSITORY_DESCRIPTION
  project       = var.PROJECT_ID
  format        = var.FORMAT
  labels        = { "managedby" : "terraform" }
  maven_config {
    version_policy = var.FORMAT == "MAVEN" ? var.MAVEN_VERSION_POLICY : "VERSION_POLICY_UNSPECIFIED"
  }
}