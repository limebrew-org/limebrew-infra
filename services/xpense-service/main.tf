#? Use Cloud Run Module
module "cloud_run" {
  source = "../../modules/cloud_run"

  image_url                = var.ARTIFACT_IMAGE_URL
  location                 = var.REGION
  service_name             = var.SERVICE_NAME
  ingress_type             = var.INGRESS_TYPE
  request_timeout          = var.SERVICE_TIMEOUT
  invoker_service_account  = var.INVOKER_SERVICE_ACCOUNT
  container_port           = var.CONTAINER_PORT
  min_instance_count       = var.MIN_INSTANCE_COUNT
  max_instance_count       = var.MAX_INSTANCE_COUNT
  max_instance_concurrency = var.MAX_INSTANCE_REQUEST_CONCURRENCY
  egress_type              = var.SERVICE_EGRESS_TYPE
  vmemory_limit            = var.MEMORY
  vcpu_count               = var.CPU_COUNT
  traffic_percent          = var.TRAFFIC_PERCENT
  traffic_type             = var.TRAFFIC_TYPE
  is_latest_revision       = var.IS_LATEST_REVISION
  env_variables            = var.ENV_VARS
}