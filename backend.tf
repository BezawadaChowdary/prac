terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "sre-terraform-state-9215"
    key    = "adc-wordpress-qa"
  }
}
