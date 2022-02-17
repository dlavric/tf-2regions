terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "region1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "region2"
}

resource "null_resource" "null" {
  count = 3

  provisioner "local-exec" {
    command = "echo The number is ${count.index}"
  }

}
