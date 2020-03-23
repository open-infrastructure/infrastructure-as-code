module "dev_www" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "fsn1-gw1"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.vpn_dns
	environment = var.environment
}

resource "azurerm_dns_a_record" "hcloud_host_dns_entry" {
  name                = "prometheus"
  zone_name           = azurerm_dns_zone.vpn_dns.name
  resource_group_name = azurerm_dns_zone.vpn_dns.resource_group_name
  ttl                 = 300
  records             = ["78.46.64.157"]

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_dns_aaaa_record" "hcloud_host_dns_entry" {
  name                = "prometheus"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_dns_zone.openinfrastructure_rg.resource_group_name
  ttl                 = 300
  records             = ["2a01:4f8:120:23b3::2"]

  tags = {
    Environment = var.environment
  }
}


