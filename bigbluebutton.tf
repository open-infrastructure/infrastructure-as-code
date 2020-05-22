resource "azurerm_dns_a_record" "bbb" {
  name                = "bbb"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["176.9.61.37"]
}

resource "azurerm_dns_aaaa_record" "bbb" {
  name                = "bbb"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:150:942d::1"]
}

