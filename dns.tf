resource "azurerm_dns_zone" "openinfrastructure_dns" {
  name                = "open-infrastructure.de"
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
}

# Verification that my Domain really belongs to me
resource "azurerm_dns_txt_record" "spf_and_ms_verification" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record {
    value = "v=spf1 include:spf.protection.outlook.com -all"
  }
  record {
    value = "MS=ms31800594"
  }
}
