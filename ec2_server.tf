
resource "aws_instance" "ec2-instance" {
  availability_zone		= "us-west-2a"
  count				= "${var.ec2_instance_count}"
  ami 				= "${var.ec2_ami_id}"
  instance_type 		= "${var.ec2_instance_type}"
  key_name 			= "${var.keypair}"
  vpc_security_group_ids 		= ["${aws_security_group.adc-wordpress-qa-all.id}"]
  subnet_id 			= "${element(split(",", module.vpc.private_subnets), 0)}"
  
tags {
  Name = "${var.ec2_ami_tag_name}-${count.index + 1}"
  Managed_by = "Terraform"
  Owner = "sre@auction.com"
 }
}
