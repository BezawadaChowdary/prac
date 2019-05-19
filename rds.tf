module "rds" {
  source  = "git::ssh://git@github.com/BezawadaChowdary/rds.git"
  version = "1.28.0"
  identifier = "adc-wordpress-qa-rds"

  engine               = "mysql"
  engine_version       = "5.7.19"
  instance_class       = "db.t2.large"
  allocated_storage    = 5
  name		       = "ADCWordPressQaRds"
  username  	       = "wp"
  password             = "passwordhere"
  port                 = "3306"
  backup_window        = "02:30-03:30"
  maintenance_window   = "Sun:00:00-Sun:01:00"
  family               = "mysql5.7"
  major_engine_version = "5.7"

  vpc_security_group_ids = ["${aws_security_group.adc-wordpress-rds.id}"]

  subnet_ids	       = [
			   "${element(split(",", module.vpc.private_subnets), 0)}",
			   "${element(split(",", module.vpc.private_subnets), 1)}",
			 ]
}
