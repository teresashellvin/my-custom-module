terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
	region = "eu-north-1"
}

resource "aws_s3_bucket" "remote_bucket" {
	bucket = "ts-backend-infrastructure-bucket"
}

resource "aws_dynamodb_table" "remote_dynamo" {
	name = "ts-backend-infrastructure-dynamodb"
	billing_mode = "PAY_PER_REQUEST"
 	hash_key = "LockID"
	attribute {
    		name = "LockID"
   		 type = "S"
 	}
	tags = {
		Name = "ts-backend-infrastructure-dynamodb"
	
	}
}
