#? Artifact Repository Variables
variable "image_url" {
  type = string
}
variable "location" {
  type = string
}

#? Cloud Run Variables
variable "service_name" {
  type = string
}
variable "ingress_type" {
  type = string
}
variable "request_timeout" {
  type = number
}
variable "invoker_service_account" {
  type = string
}
variable "container_port" {
  type = string
}
variable "min_instance_count" {
  type = string
}
variable "max_instance_count" {
  type = string
}
variable "vmemory_limit" {
  type = string
}
variable "vcpu_count" {
  type = string
}
variable "vcpu_always_allocated" {
  type = bool
}
variable "max_instance_concurrency" {
  type = string
}
variable "traffic_percent" {
  type = string
}
variable "traffic_type" {
  type = string
}
variable "egress_type" {
  type = string
}
variable "is_latest_revision" {
  type = bool
}
variable "env_variables" {
  type    = map(string)
  default = {}
}