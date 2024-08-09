#cmd line  -var="inst_type=t3.small"
#var-file  -var-file=roboshop.tfvars-->inst_type=t3.large"
#terraform var file-->inst_type=t3.medium
#variable file
#terraform Environment variable--> set or export TF_VAR_inst_type=t2.large


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
