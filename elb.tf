module "elb" {
  source             = "git::ssh://git@github.com/BezawadaChowdary/elb.git"
  name               = "adc-marketing-wp-qa-elb"
  subnet_ids         = "${element(split(",", module.vpc.private_subnets), 0)}"
  security_groups    = "${aws_security_group.adc-wordpress-qa-all.id}"
  ssl_certificate_id = ""
  s3_access_logs_bucket = "sre-terraform-state-9215"
}
