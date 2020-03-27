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
