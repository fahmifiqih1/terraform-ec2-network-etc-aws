# Comput Engine
module "elastic_compute_engine_jenkins" {
  source                 = "../../../modules/elastic_compute_service"
  aws_credentials_local  = var.aws_credentials_local
  aws_profiles_local     = var.aws_profiles_local
  aws_zone               = var.aws_zone
  compute_names          = "jenkins"
  instance_type          = "t2.micro"
  amazon_machine_image   = var.amazon_machine_image
  network_security_group = module.network_security_group.aws_security_group_jenkins
}

module "elastic_compute_engine_nexus" {
  source                 = "../../../modules/elastic_compute_service"
  aws_credentials_local  = var.aws_credentials_local
  aws_profiles_local     = var.aws_profiles_local
  aws_zone               = var.aws_zone
  compute_names          = "nexus"
  instance_type          = "t3.micro"
  amazon_machine_image   = var.amazon_machine_image
  network_security_group = module.network_security_group.aws_security_group_nexus
}

module "network_security_group" {
  source                = "../../../modules/network_security_group"
  aws_credentials_local = var.aws_credentials_local
  aws_profiles_local    = var.aws_profiles_local
  aws_zone              = var.aws_zone
  aws_vpc_id            = var.aws_vpc_id
}