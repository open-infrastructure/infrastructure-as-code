module "jitsi_big" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "de-fsn-3"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.vpn_oi_dns
	environment = var.environment
  server_type = "cx51"
	image = "ubuntu-18.04"
}

