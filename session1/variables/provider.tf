#cmd line --var="inst_type=t3.small"
#


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
