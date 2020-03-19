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

resource "azurerm_resource_group" "vpn_rg" {
	name     = var.environment == "Prod" ? "vpn_rg" : "${var.environment}_vpn_rg"
  location = "westeurope"

	tags = {
    Environment = var.environment
  }
}

resource "azurerm_dns_zone" "vpn_dns" {
	name     = var.environment == "Prod" ? "vpn.cedi.dev" : "vpn.${var.environment}.cedi.dev"
  resource_group_name = azurerm_resource_group.vpn_rg.name

  tags = {
    Environment = var.environment
  }
}

