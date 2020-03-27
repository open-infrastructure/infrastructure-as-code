module "zammad" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "tickets"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
  server_type = "cx21"
	image = "ubuntu-18.04"
}
