resource "azurerm_dns_a_record" "bbb" {
  name                = "bbb"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["176.9.61.37"]
}

resource "azurerm_dns_aaaa_record" "bbb" {
  name                = "bbb"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:150:942d::1"]
}

resource "azurerm_dns_a_record" "bbb1" {
  name                = "bbb1"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["49.12.34.163"]
}

resource "azurerm_dns_aaaa_record" "bbb1" {
  name                = "bbb1"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c17:1ec7::1"]
}
