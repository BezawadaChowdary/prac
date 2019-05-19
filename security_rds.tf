# Security group for adc-wordpress-qa rds
resource "aws_security_group" "adc-wordpress-rds" {
  name        = "adc-wordpress-rds"
  description = "RDS SG for ADC wordpress qa"
  vpc_id      = "${module.vpc.vpc_id}"

  tags {
    Name = "adc-wordpress-rds"
  }

  # Traffic for ADC Wordpress qa rds
ingress {
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    self       = true
  }

  ingress {
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_blocks = ["10.10.20.0/24"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = ["${aws_security_group.adc-wordpress-qa-all.id}"]
  }

  ingress {
    from_port  = 3307
    to_port    = 3307
    protocol   = "tcp"
    security_groups = ["${aws_security_group.adc-wordpress-qa-all.id}"]
    }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["10.10.20.0/24"]

}

}
