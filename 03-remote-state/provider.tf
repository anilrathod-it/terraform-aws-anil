terraform {
  required_version = "1.3.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
  
  backend "s3" {
  bucket         = "anil-tf-remote-state"
  key            = "tf_state/terraform.tfstate"
  region         = "us-east-1"
  dynamodb_table = "anil_tf_remote_state"
}
}

provider "aws" {
  region = "us-east-1"
}
