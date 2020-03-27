module "zammad" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "tickets"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.jitsi_rocks_dns
	environment = var.environment
  server_type = "cx11"
	image = "ubuntu-18.04"
}
