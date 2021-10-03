#Instance Launch configuration variables
variable "ami" {
    description = "EC2 instance AMI"
    type = string
    default = "ami-0447a12f28fddb066"
}

variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t2.micro"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

variable "bucket_region" {
    description = "Bucket Region"
    type = string
    default = "us-east-1"
}

variable "object_key" {
    description = "Object Key name"
    type = string
}

variable "object_source" {
    description = "Local object source to push"
    type = string
}

#SSH connection Settings
variable "key_path" {
    description = "EC2 instance private key file path"
    type = string
}
