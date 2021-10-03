#Instance Launch configuration variables
ami           = "ami-0447a12f28fddb066"
instance_type = "t2.micro"

#Bucket Configurations
bucket_name = "ehwehkbucket"
bucket_region = "ap-south-1"
object_key = "sample.png"
object_source = "C:/Users/harek/Desktop/terraform/sample.png"

#SSH Connection settings
key_path = "C:/Users/harek/Downloads/keyfortest1.pem"
variable "image_id" {
  type = string
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}
