provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "apsedge-dc-state"
    key    = "infra"
    region = "eu-west-1"
  }
}
