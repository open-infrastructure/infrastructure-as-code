module "auth" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "auth"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
	image = "ubuntu-18.04"
  server_type = "cx21"
}

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

resource "azurerm_dns_a_record" "prometheus_a_entry" {
  name                = "prometheus"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 300
  records             = ["78.46.64.157"]
}

resource "azurerm_dns_aaaa_record" "prometheus_aaaa_entry" {
  name                = "prometheus"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 300
  records             = ["2a01:4f8:120:23b3::2"]
}

resource "azurerm_dns_a_record" "monitor_a_entry" {
  name                = "monitor"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 300
  records             = ["78.46.64.157"]
}

resource "azurerm_dns_aaaa_record" "monitor_aaaa_entry" {
  name                = "monitor"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 300
  records             = ["2a01:4f8:120:23b3::2"]
}

module "zammad" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "tickets"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
  server_type = "cx21"
	image = "ubuntu-18.04"
}

module "kibana" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "kibana"
  ssh_keys = ["cedi@ivy", "tmueller@macmuell", "td00@runyoucleverboy", "cedi@iPad"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
  server_type = "cx11"
	image = "ubuntu-18.04"
}

