#? Locals
locals {
  allow_snapshot_overwrites = null
  maven_version_policy = "RELEASE"
  repo_formats = [ "DOCKER", "MAVEN"]
}

#? Use artifact registry module
module "artifact_registry" {
  source = "../../modules/artifact_registry"

  PROJECT_ID = var.PROJECT_ID
  REGION = var.REGION
  FORMAT = var.REPOSITORY_FORMAT
  REPOSITORY_ID = var.REPOSITORY_ID
  REPOSITORY_DESCRIPTION = var.REPOSITORY_DESCRIPTION
  MAVEN_VERSION_POLICY = var.MAVEN_VERSION_POLICY
}