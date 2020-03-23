resource "azurerm_dns_a_record" "hcloud_host_dns_entry" {
  name                = "prometheus"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 300
  records             = ["78.46.64.157"]
}

resource "azurerm_dns_aaaa_record" "hcloud_host_dns_entry" {
  name                = "prometheus"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 300
  records             = ["2a01:4f8:120:23b3::2"]
}


