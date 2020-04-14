resource "azurerm_dns_zone" "jitsi_rocks_dns" {
  name                = "jitsi.rocks"
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
}

resource "azurerm_dns_a_record" "custom01" {
  name                = "custom01"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["49.12.38.141"]
}

resource "azurerm_dns_a_record" "custom02" {
  name                = "custom02"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["49.12.39.221"]
}

resource "azurerm_dns_a_record" "de-bra-1" {
  name                = "de-bra-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["134.169.155.30"]
}

resource "azurerm_dns_a_record" "de-fsn-1" {
  name                = "de-fsn-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["49.12.40.92"]
}


resource "azurerm_dns_a_record" "de-wob-2" {
  name                = "de-wob-2"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["45.14.233.145"]
}

resource "azurerm_dns_a_record" "fi-hel-1" {
  name                = "fi-hel-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["95.217.13.186"]
}

resource "azurerm_dns_a_record" "fi-hel-2" {
  name                = "fi-hel-2"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["95.217.158.207"]
}

resource "azurerm_dns_a_record" "gb-lon-1" {
  name                = "gb-lon-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["134.122.109.226"]
}

resource "azurerm_dns_a_record" "nl-ams-1" {
  name                = "nl-ams-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["134.122.59.59"]
}

resource "azurerm_dns_a_record" "us-nyc-1" {
  name                = "us-nyc-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["134.122.21.142"]
}

resource "azurerm_dns_a_record" "www_jitsi_rocks" {
  name                = "www"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["95.216.192.39"]
}

resource "azurerm_dns_a_record" "jitsi_rocks" {
  name                = "@"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["95.216.192.39"]
}

resource "azurerm_dns_a_record" "random" {
  name                = "random"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["138.201.244.232"]
}

resource "azurerm_dns_a_record" "status" {
  name                = "status"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["116.203.16.90"]
}


resource "azurerm_dns_aaaa_record" "custom01" {
  name                = "custom01"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c17:4db1::1"]
}

resource "azurerm_dns_aaaa_record" "custom02" {
  name                = "custom02"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c17:8eea::1"]
}

resource "azurerm_dns_aaaa_record" "de-fsn-1" {
  name                = "de-fsn-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c17:975d::1"]
}


resource "azurerm_dns_aaaa_record" "de-wob-1" {
  name                = "de-wob-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a0e:1580:1000::2dff:fe0e:e991"]
}

resource "azurerm_dns_aaaa_record" "fi-hel-1" {
  name                = "fi-hel-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f9:c010:5e45::1"]
}

resource "azurerm_dns_aaaa_record" "fi-hel-2" {
  name                = "fi-hel-2"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f9:c010:7693::1"]
}

resource "azurerm_dns_aaaa_record" "gb-lon-1" {
  name                = "gb-lon-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a03:b0c0:1:e0::54c:7001"]
}

resource "azurerm_dns_aaaa_record" "nl-ams-1" {
  name                = "nl-ams-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a03:b0c0:2:f0::35c:9001"]
}

resource "azurerm_dns_aaaa_record" "us-nyc-1" {
  name                = "us-nyc-1"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2604:a880:400:d0::1879:2001"]
}

resource "azurerm_dns_aaaa_record" "www_jitsi_rocks" {
  name                = "www"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f9:c010:2dba::1"]
}

resource "azurerm_dns_aaaa_record" "jitsi_rocks" {
  name                = "@"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f9:c010:2dba::1"]
}

resource "azurerm_dns_aaaa_record" "status" {
  name                = "status"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  records             = ["2a01:4f8:c0c:97f9::1"]
}

resource "azurerm_dns_cname_record" "custom" {
  name                = "custom"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "custom02.jitsi.rocks"
}

resource "azurerm_dns_cname_record" "cluster_uptime" {
  name                = "cluster.uptime"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "stats.uptimerobot.com"
}

resource "azurerm_dns_cname_record" "ffbs" {
  name                = "ffbs"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "custom.jitsi.rocks"
}

resource "azurerm_dns_cname_record" "full_uptime" {
  name                = "full.uptime"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "stats.uptimerobot.com"
}

resource "azurerm_dns_cname_record" "int-25272" {
  name                = "int-25272"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "custom01.jitsi.rocks"
}

resource "azurerm_dns_cname_record" "lhbs" {
  name                = "lhbs"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "custom.jitsi.rocks"
}

resource "azurerm_dns_cname_record" "test" {
  name                = "test"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "custom02.jitsi.rocks"
}

resource "azurerm_dns_cname_record" "uptime" {
  name                = "uptime"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record              = "stats.uptimerobot.com"
}

resource "azurerm_dns_mx_record" "mx" {
  name                = "@"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record {
    preference = 1
    exchange   = "pain.td00.de"
  }
}

resource "azurerm_dns_mx_record" "maint_mx" {
  name                = "maint"
  zone_name           = azurerm_dns_zone.jitsi_rocks_dns.name
  resource_group_name = azurerm_resource_group.openinfrastructure_rg.name
  ttl                 = 3600
  record {
    preference = 1
    exchange   = "pain.td00.de"
  }
}

module "jitsi_rock_dev" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "meetdev"
  ssh_keys = ["cedi@ivy", "cedi@ivy legacy", "azure_pipelines"]
  az_dns_zone = azurerm_dns_zone.jitsi_rocks_dns
	environment = var.environment
  server_type = "cx11"
	image = "ubuntu-18.04"
}
