module "auth" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "auth"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
	image = "ubuntu-18.04"
  server_type = "cx21"
}

