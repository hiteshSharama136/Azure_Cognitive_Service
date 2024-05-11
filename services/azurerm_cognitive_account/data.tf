data "azurerm_subnet" "endpoint" {
  name                 = var.endpoint_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.vnet_resource_group
}

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_resource_group
}

data "azurerm_private_dns_zone" "dnsz" {
  name           = var.dns_zone_name
  resource_group_name = var.dns_zone_rg
}