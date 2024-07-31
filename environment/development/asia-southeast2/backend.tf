terraform {
  backend "gcs" {
    bucket   = "terraform-s3-fahmi"
    prefix   = "terraform/state"
    filename = "terraform"
  }
}
