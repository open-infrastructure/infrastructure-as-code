module "auth" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "auth"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
	image = "centos-8"
  server_type = "cx11"
}

