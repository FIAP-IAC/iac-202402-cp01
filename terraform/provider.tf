terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.64"
    }
  }
  backend "s3" {
    bucket         = "qualquerumnaoimporta"
    key            = "terraform.tfstate"
    dynamodb_table = "qualquerumnaoimportapodesaoservicosdiferentes"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}