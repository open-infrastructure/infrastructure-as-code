resource "hcloud_network" "k8_network" {
  name = "k8-net"
  ip_range = "10.240.0.0/16"
}

resource "hcloud_network_subnet" "k8_subnet" {
  network_id = hcloud_network.k8_network.id
  type = "cloud"
  network_zone = "eu-central"
  ip_range   = "10.240.0.0/24"
}
