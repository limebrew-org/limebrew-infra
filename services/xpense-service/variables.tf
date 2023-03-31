#? Project Variables
variable "PROJECT_ID" {
  type = string
}
variable "SERVICE_ACCOUNT_JSON" {
  type = string
}
variable "SERVICE_ACCOUNT_ID" {
  type = string
}
variable "REGION" {
  type = string
}
variable "ZONE" {
  type = string
}


#? Artifact Repository Variables
variable "ARTIFACT_IMAGE_URL" {
  type = string
}

#? Cloud Run Variables
variable "SERVICE_NAME" {
  type = string
}
variable "INGRESS_TYPE" {
  type = string
}
variable "SERVICE_TIMEOUT" {
  type = number
}
variable "INVOKER_SERVICE_ACCOUNT" {
  type = string
}
variable "CONTAINER_PORT" {
  type = string
}
variable "MIN_INSTANCE_COUNT" {
  type = string
}
variable "MAX_INSTANCE_COUNT" {
  type = string
}
variable "MEMORY" {
  type = string
}
variable "CPU_COUNT" {
  type = string
}
variable "MAX_INSTANCE_REQUEST_CONCURRENCY" {
  type = string
}
variable "TRAFFIC_PERCENT" {
  type = string
}
variable "TRAFFIC_TYPE" {
  type = string
}
variable "SERVICE_EGRESS_TYPE" {
  type = string
}
variable "IS_LATEST_REVISION" {
  type = bool
}
variable "ENV_VARS" {
  type    = map(string)
  default = {}
}