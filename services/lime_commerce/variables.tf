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
variable "APP_NAME" {
  type = string
}
variable "ENV_VARS" {
  type    = map(string)
  default = {}
}
variable "CONTAINER_PORT" {
  type = number
}
variable "MIN_SCALE" {
  type = string
}
variable "MAX_SCALE" {
  type = string
}
variable "MEMORY" {
  type = string
}
variable "CPU_COUNT" {
  type = string
}
variable "TRAFFIC_PERCENT" {
  type = number
}