terraform {
  backend "s3" {
    bucket = "terraform-d81"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "null_resource" "test" {}