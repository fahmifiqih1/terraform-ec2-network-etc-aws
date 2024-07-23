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

variable "availability_zone_a" {
  type        = string
  description = "The AWS Availability Zone"
}

variable "availability_zone_b" {
  type        = string
  description = "The AWS Availability Zone"
}

