variable "app_name" {
}

variable "region" {
    default = "us-east-1"
}


provider "aws" {
    region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "dip-infrastructure"
    key = "terraform-states/coffee-service.tfstate"
    encrypt = false
    region = "eu-central-1"
  }
}
