resource "azurerm_dns_zone" "vpn_oi_dns" {
  name                = "vpn.open-infrastructure.de"
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
}

resource "azurerm_dns_ns_record" "vpn" {
  name                = "vpn"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records = azurerm_dns_zone.vpn_oi_dns.name_servers
}

module "de-fsn1-gw1" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "de-fsn1-gw1"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.vpn_oi_dns
	environment = var.environment
	image = "ubuntu-18.04"
}

