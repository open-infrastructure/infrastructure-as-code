module "grafana" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "monitor"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
	image = "ubuntu-18.04"
  server_type="cx11"
}

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


