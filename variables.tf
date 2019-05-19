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
  default = "ami-079596bf7a949ddf8"
}

variable "bastion_disk_size" {
  default = "10"
}

variable "ec2_instance_count" {
  default = "2"
}

variable "ec2_lp_ami_id" {
  default = "ami-079596bf7a949ddf8"
}

variable "ec2_blog_ami_id" {
  default = "ami-079596bf7a949ddf8"
}

variable "ec2_ami_tag_name" {
 default = "adc-wordpress-qa-ec2"
}

variable "ec2_instance_type" {
  default = "t2.medium"
}

variable "wp_rds_sg" {
  default = "sg-0ce957c19526d0e00"
}
