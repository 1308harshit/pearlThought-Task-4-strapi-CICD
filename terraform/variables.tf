variable "image_tag" {
  type = string
}

variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI ID in us-east-1"
  default     = "ami-07d02ee1eeb0c996c" # Ubuntu 22.04 LTS in us-east-1
}

variable "instance_type" {
  default = "t2.medium"
}