resource "azurerm_dns_cname_record" "autodiscover" {
  name                = "autodiscover"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "autodiscover.outlook.com"
}

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

resource "azurerm_dns_mx_record" "outlook_mx" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600

  record {
    preference = 0
    exchange   = "open-infrastructure-de.mail.protection.outlook.com"
  }
}

resource "azurerm_dns_cname_record" "dkim_selector1" {
  name                = "selector1._domainkey"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "selector1-open-infrastructure-de._domainkey.openinfrastructure.onmicrosoft.com"
}

resource "azurerm_dns_cname_record" "dkim_selector2" {
  name                = "selector2._domainkey"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "selector2-open-infrastructure-de._domainkey.openinfrastructure.onmicrosoft.com"
}

resource "azurerm_dns_txt_record" "dmarc_record" {
  name                = "_dmarc.open-infrastructure.dev"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record {
    value = "v=DMARC1; p=quarantine"
  }
}

resource "azurerm_dns_cname_record" "sip" {
  name                = "sip"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "sipdir.online.lync.com"
}

resource "azurerm_dns_cname_record" "lyncdiscover" {
  name                = "lyncdiscover"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "sipdir.online.lync.com"
}

resource "azurerm_dns_srv_record" "_sip" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600

  record {
    priority = 100
    weight   = 1
    port     = 443
    target   = "sipdir.online.lync.com"
  }
}

resource "azurerm_dns_srv_record" "_sipfederationtls" {
  name                = "@"
  zone_name           = azurerm_dns_zone.openinfrastructure_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600

  record {
    priority = 100
    weight   = 1
    port     = 5061
    target   = "sipdir.online.lync.com"
  }
}
