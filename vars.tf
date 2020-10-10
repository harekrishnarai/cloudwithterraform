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

#Bucket Configurations
variable "bucket_name" {
    description = "Unique bucket name across all regions"
    type = string
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