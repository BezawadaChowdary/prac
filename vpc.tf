module "vpc" {
  source              = "git::ssh://git@github.com/BezawadaChowdary/vpc.git"
  name                = "adc-wordpress-qa"
  region              = "us-west-2"
  service             = "wordpress"
  environment         = "qa"
  team                = "marketing"
  product             = "adc"
  owner               = "sre@auction.com"
  cidr                = "10.10.20.0/24"
  public_subnets      = "10.10.20.0/27"
  private_subnets     = "10.10.20.32/27,10.10.20.64/27"
  azs                 = "us-west-2a,us-west-2b"
  nat_gateways_count  = 2
  s3_endpoint_enabled = true
}
