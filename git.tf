resource "azurerm_dns_a_record" "git_openinfra" {
  name                = "git"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["88.99.37.247"]
}

resource "azurerm_dns_aaaa_record" "git_openinfra" {
  name                = "git"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c17:b9f1::1"]
}
