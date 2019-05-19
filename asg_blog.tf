
module "asg_blog" {
  source             = "git::ssh://git@github.com/BezawadaChowdary/asg.git"
  name               = "adc-marketing-wp-blog-qa"
  environment        = "qa"
  service            = "Marketing Wordpress"
  product            = "ADC"
  team               = "adc-marketing"
  owner              = "marketing@auction.com"
  ami                = "${var.ec2_blog_ami_id}"
  #instance_profile   = "adc-marketing-ec2-role"
  instance_type      = "${var.ec2_instance_type}"
  ebs_optimized      = true 
  key_name           = "${var.keypair}"
  security_group     = ["${aws_security_group.adc-wordpress-qa-all.id}"]
  user_data          = "${path.root}/blank_user_data.sh"
  load_balancer_names = "${module.elb.elb_name}"
  associate_public_ip = false
  asg_instances      = 2 
  asg_min_instances  = 2
  asg_max_instances  = 4 
  root_volume_size   = 250 
  asg_wait_for_capacity_timeout = "5m"
  vpc_zone_subnets   = "${module.vpc.private_subnets}"
}

