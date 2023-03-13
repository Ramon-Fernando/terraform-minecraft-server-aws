module "network" {
  source      = "./modules/network"
  server       = local.server
  environment = local.environment
  region      = local.region
  network_prefix = local.network_prefix
}

module "backend" {
  source      = "./modules/backend"
  vpc_output_id  = module.network.vpc_output_id
  subnet_id  = module.network.subnet_public_id
  server      = local.server
  environment = local.environment
  region      = local.region
  ami = local.ami
  instance_type = local.instance_type
  s3Name = var.s3Name
 
}


