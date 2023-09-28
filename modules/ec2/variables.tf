variable "instance_type" {
  description = "The type of EC2 instance"
}

variable "ami_id" {
  description = "The ID of the AMI to use"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
}

variable "sg_id" {
  description = "ID of the sg"
}