variable "aws_credentials_local" {
  type        = list(string)
  description = "The AWS Credentials Secret key & Access key"
}

variable "aws_profiles_local" {
  type        = string
  description = "The AWS Credential Profile used"
}

variable "aws_zone" {
  type        = string
  description = "The AWS Zone Regional"
}

variable "compute_names" {
  type        = string
  description = "Names Elastic Compute Serivices"
}

variable "amazon_machine_image" {
  type        = string
  description = "Amazon machine image"
}

variable "instance_type" {
  type        = string
  description = "Amazon machine image"
}

variable "network_security_group" {
  type        = list(string)
  description = "Network Security Group"
}