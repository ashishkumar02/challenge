provider "azurerm" {
  version         = "2.69.0"
  features {}
}

module "resourcegroup" {
  source = "./modules/resourcegroup"
  name           = var.rg_name
  location   = var.location
  environment  = var.environment
  tags           = var.tags
}

module "network" {
  source         = "./modules/network"
  location       = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  vnetcidr       = var.cidr_block
  websubnetcidr  = var.websubnetcidr
  appsubnetcidr  = var.appsubnetcidr
  dbsubnetcidr   = var.dbsubnetcidr
}

module "securitygroup" {
  source         = "./modules/securitygroup"
  location       = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name 
  web_subnet_id  = module.network.websubnet_id
  app_subnet_id  = module.network.appsubnet_id
  db_subnet_id   = module.network.dbsubnet_id
}

module "compute" {
  source         = "./modules/compute"
  location = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  web_subnet_id = module.networking.websubnet_id
  app_subnet_id = module.networking.appsubnet_id
  web_host_name = var.web_host_name
  web_username = var.web_username
  web_os_password = var.web_os_password
  app_host_name = var.app_host_name
  app_username = var.app_username
  app_os_password = var.app_os_password
}

module "database" {
  source = "./modules/database"
  location = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  primary_database = var.primary_database
  primary_database_version = var.primary_database_version
  primary_database_admin = var.primary_database_admin
  primary_database_password = var.primary_database_password
}
