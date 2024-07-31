terraform {
  backend "s3" {
    bucket   = "terraform-s3-fahmi"
    prefix   = "terraform/state"
    filename = "terraform"
  }
}
