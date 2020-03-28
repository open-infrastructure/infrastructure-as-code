resource "azurerm_dns_mx_record" "td00_mx" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600

  record {
    preference = 0
    exchange   = "pain.td00.de"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_dns_cname_record" "paintd00_autodiscover" {
	name                = "autodiscover"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "pain.td00.de"
}

resource "azurerm_dns_cname_record" "pain_td00_cname2" {
	name                = "autoconfig"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "pain.td00.de"
}

resource "azurerm_dns_srv_record" "pain_td00_srv" {
	name                = "_autoconfig"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record {
    priority = 1
    weight   = 5
		port     = 443
    target   = "autoconfig.open-infrastructure.de"
  }
}



#resource "azurerm_dns_cname_record" "autodiscover" {
#  name                = "autodiscover"
#  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
#  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
#  ttl                 = 3600
#  record              = "autodiscover.outlook.com"
#}

resource "azurerm_dns_cname_record" "enterpriseenrollment" {
  name                = "enterpriseenrollment"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "enterpriseenrollment.manage.microsoft.com"
}

resource "azurerm_dns_cname_record" "enterpriseregistration" {
  name                = "enterpriseregistration"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "enterpriseregistration.windows.net"
}


