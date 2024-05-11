resource "azurerm_cognitive_account" "cognitive" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind

  custom_subdomain_name                = var.custom_subdomain_name
  # fqdns                                = var.fqdns
  # network_acls                         = var.network_acls
  outbound_network_access_restricted   = var.outbound_network_access_restricted
  public_network_access_enabled        = var.public_network_access_enabled

  sku_name = var.sku_name

  tags = var.tags
}