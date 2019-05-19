# Get build AMI from CI
#variable "build_ami" {}

variable "service_name" {
  default = "wordpress"
}

variable "environment" {
  default = "qa"
}

variable "keypair" {
  default = "adc-sre-keypair-usw2"
}

variable "bastion_instance_type" {
  default = "t2.micro"
}

variable "bastion_ami_id" {
  default = "ami-0fa4c32dd17635751"
}

variable "bastion_disk_size" {
  default = "10"
}

variable "ec2_instance_count" {
  default = "2"
}

variable "ec2_ami_id" {
  default = "ami-0fa4c32dd17635751"
}

variable "ec2_ami_tag_name" {
 default = "adc-wordpress-qa-ec2"
}

variable "ec2_instance_type" {
  default = "t2.medium"
}


