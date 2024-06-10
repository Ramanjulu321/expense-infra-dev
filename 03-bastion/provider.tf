terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.49.0"
        }
    }
    backend "s3" {
        bucket = "ramu-remote-state"
        key = "expense-dev-bastion"
        region = "us-east-1"
        dynamodb_table = "daws-78s-locking"
    }
}

#provide authentication here
provider "aws" {
    region = "us-east-1"
}