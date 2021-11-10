resource "azurerm_virtual_network" "vnet001" {
  name                = format("vnet-%s-%03d",var.environment,001) 
  resource_group_name = var.resource_group
  location            = var.location
  address_space       = [var.cidr_block]
  tags = var.tags
}

resource "azurerm_subnet" "web-subnet" {
  name                 = "web-subnet"
  virtual_network_name = azurerm_virtual_network.vnet001.name
  resource_group_name  = var.resource_group
  address_prefixes     = [var.websubnetcidr]
}

resource "azurerm_subnet" "app-subnet" {
  name                 = "app-subnet"
  virtual_network_name = azurerm_virtual_network.vnet001.name
  resource_group_name  = var.resource_group
  address_prefixes     = [var.appsubnetcidr]
}

resource "azurerm_subnet" "db-subnet" {
  name                 = "db-subnet"
  virtual_network_name = azurerm_virtual_network.vnet001.name
  resource_group_name  = var.resource_group
  address_prefixes     = [var.dbsubnetcidr]
}
