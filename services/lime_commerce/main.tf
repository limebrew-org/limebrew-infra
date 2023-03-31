#? Use Cloud Run Module
module "cloud_run" {
  source = "../../modules/cloud_run"

  ARTIFACT_IMAGE_URL = var.ARTIFACT_IMAGE_URL
  APP_NAME           = var.APP_NAME
  REGION             = var.REGION
  ENV_VARS           = var.ENV_VARS
  CONTAINER_PORT     = var.CONTAINER_PORT
  MIN_SCALE          = var.MIN_SCALE
  MAX_SCALE          = var.MAX_SCALE
  MEMORY             = var.MEMORY
  CPU_COUNT          = var.CPU_COUNT
  TRAFFIC_PERCENT    = var.TRAFFIC_PERCENT
}