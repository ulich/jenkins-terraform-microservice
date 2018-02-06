variable "app_name" {
}

variable "region" {
    default = "eu-east-1"
}


provider "aws" {
    region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "dip-infrastructure"
    key = "terraform-states/${var.app_name}.tfstate"
    encrypt = false
    region = "${var.region}"
  }
}
