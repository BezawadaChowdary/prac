# Security group for adc-wordpress-qa all members
resource "aws_security_group" "adc-wordpress-qa-all" {
  name        = "adc-wordpress-qa-all"
  description = "Base SG for ADC wordpress qa"
  vpc_id      = "${module.vpc.vpc_id}"

  tags {
    Name = "adc-wordpress-qa-all"
  }

  # Allow all traffic within ADC Wordpress qa VPC
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.10.20.0/24"]
  }

  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = ["sg-0ce957c19526d0e00"]
  }

  egress {
    from_port   = 3307
    to_port	= 3307
    protocol    = "tcp"
    security_groups = ["sg-0ce957c19526d0e00"]
  }
}
