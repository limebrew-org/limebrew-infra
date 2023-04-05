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

#? Repository Variables
variable "REPOSITORY_ID" {
  type = string
}
variable "REPOSITORY_DESCRIPTION" {
  type = string
}
variable "REPOSITORY_FORMAT" {
  type = string
}
variable "MAVEN_VERSION_POLICY" {
  type    = string
  default = "VERSION_POLICY_UNSPECIFIED"
}