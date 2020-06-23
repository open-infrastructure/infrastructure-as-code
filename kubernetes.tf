resource "hcloud_network" "privNet" {
  name = "my-net"
  ip_range = "10.240.0.0/24"
}

