resource "azurerm_dns_a_record" "default_www_openinfra" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["95.216.192.39"]
}

resource "azurerm_dns_aaaa_record" "default_www_openinfra" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f9:c010:2dba::1"]
}

resource "azurerm_dns_a_record" "www_openinfra" {
  name                = "www"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["95.216.192.39"]
}

resource "azurerm_dns_aaaa_record" "www_openinfra" {
  name                = "www"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f9:c010:2dba::1"]
}
