provider "azurerm" {
  version = "=2.0.0"
  subscription_id = var.az_subscription_id
  client_id = var.az_client_id
  client_secret = var.az_client_secret
  tenant_id = var.az_tenant_id
  features {}
}

provider "hcloud" {
  token = var.hcloud_token
}

terraform {
}

resource "azurerm_resource_group" "openinfrastructure_rg" {
  name     = "openinfrastructure_rg"
  location = "westeurope"
}

resource "azurerm_dns_zone" "openinfrastructure_dns" {
  name                = "open-infrastructure.de"
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
}

# Verification that my Domain really belongs to me
resource "azurerm_dns_txt_record" "spf_and_ms_verification" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record {
    value = "MS=ms31800594"
  }
}

resource "azurerm_dns_txt_record" "github_challenge" {
  name                = "_github-challenge-open-infrastructure"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
	record {
		value = "b222d3fa0a"
	}
}

module "cedi_jumphost" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "cedi"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "cedi@iPad"]
  az_dns_zone = azurerm_dns_zone.openinfrastructure_dns
	environment = var.environment
  server_type = "cx11"
	image = "ubuntu-20.04"
}
