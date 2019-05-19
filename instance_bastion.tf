
resource "aws_instance" "server" {
  ami                         = "${var.bastion_ami_id}"
  availability_zone	      = "us-west-2a"
  instance_type               = "${var.bastion_instance_type}"
  key_name                    = "${var.keypair}"
  subnet_id                   = "${module.vpc.public_subnets}"
  vpc_security_group_ids      = ["${module.adc_ext_security_group.adc_ext_security_group_id_tcp}"]
  associate_public_ip_address = true

  root_block_device {
    volume_size           = "${var.bastion_disk_size}"
    delete_on_termination = true
  }

  tags {
    Name = "adc-wordpress-qa-bastion"
    Managed_by = "Terraform"
    Owner = "sre@auction.com"
  }
}
