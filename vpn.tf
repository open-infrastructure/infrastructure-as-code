module "dev_www" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "fsn1-gw1"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
}

