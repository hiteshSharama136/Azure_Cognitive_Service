module "AI_Translator" {
  source                             = "../../modules/azurerm_cognitive_account" 

  name                               = var.service_name
  resource_group_name                = var.resource_group_name
  location = var.location
  kind    = var.kind
  sku_name    = var.sku_name
  custom_subdomain_name  =  var.service_name
  public_network_access_enabled  = var.public_network_access_enabled
  outbound_network_access_restricted   = var.outbound_network_access_restricted
  tags                               = var.tags
}


resource "azurerm_private_endpoint" "endpoint" {
  name                = "${var.service_name}-pe-cognitive"
  location            = var.location
  resource_group_name = var.vnet_resource_group
  subnet_id           = data.azurerm_subnet.endpoint.id

  private_service_connection {
    name                           = "${var.service_name}-psc"
    is_manual_connection           = false
    private_connection_resource_id = module.AI_Translator.id
    subresource_names              = ["account"]
  }

  private_dns_zone_group {
    name                 = var.dns_zone_rg
    private_dns_zone_ids = [data.azurerm_private_dns_zone.dnsz.id]
  }
}