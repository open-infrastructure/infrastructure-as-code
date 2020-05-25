resource "azurerm_dns_a_record" "byro_openinfra" {
  name                = "byro"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["116.203.235.177"]
}

resource "azurerm_dns_aaaa_record" "byro_openinfra" {
  name                = "byro"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c0c:e907::1"]
}
