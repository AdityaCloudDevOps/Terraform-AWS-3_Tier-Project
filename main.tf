module "networking" {
  source = "./modules/networking"
}

module "security" {
  source = "./modules/security"

  vpc_id = module.networking.vpc_id
}

module "compute" {
  source = "./modules/compute"

  subnet_id         = module.networking.public_subnet_1_id
  security_group_id = module.security.sg_id
}

module "storage" {
  source = "./modules/storage"
}