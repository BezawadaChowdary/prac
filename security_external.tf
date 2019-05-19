module "adc_ext_security_group" {
  source                = "git::ssh://git@github.com:BezawadaChowdary/ext.git"  
  team                  = "adc-sre"
  environment           = "qa"
  service               = "adc-wordpress"
  vpc_id                = "${module.vpc.vpc_id}"
  from_port             = "22"
  to_port               = "22"
}
