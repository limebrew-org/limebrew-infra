#? Project Variables
variable "PROJECT_ID" {
  type = string
}
variable "REGION" {
  type = string
}

#? Artifact Repository Variables
variable "REPOSITORY_ID" {
  type = string
}
variable "REPOSITORY_DESCRIPTION" {
  type = string
}
variable "FORMAT" {
  type = string
}
variable MAVEN_VERSION_POLICY {
  type = string
  default = "VERSION_POLICY_UNSPECIFIED"
}