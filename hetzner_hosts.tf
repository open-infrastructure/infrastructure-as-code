resource "hcloud_ssh_key" "cedi_private_ed25519" {
  name = "cedi@ivy"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHQFxhGJxCQ/roFjRxAsYNvV+VenYvWg2WeEt3HWnuuG cedi@ivy"
}

resource "hcloud_ssh_key" "cedi_private_rsa_legacy" {
  name = "cedi@ivy legacy"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDKxysngCHl2nP0263IgXf2XzxD6ASfYRj2q8/1Ue7TzxLCwQ9fOUVJWBmgq/PSZb4YMJvpXnZ9/yA5VGgK0M6HgGvyVHq4KxzTqD9vWCWvu5ON6jF08gua85TadvOk7l1maDO+OcvVunahKCsMktILlzywBQmPP4FcAvOlFAXyPmfyPTg7XxAAmmLzhq8rAKQMrv+yZtd0ekWLruhJa6++f06QShO8rnQ6E2Nusz7VupXpSb3Hv8ZdPfQr+ZcWVXdeutXugrL3RbWc0WBUdyEZq9/j801MxYZ+Px4yRMPfDPs0CXXgAq46q2Z4037L2NR0Q3WeedJaURvZlTDi655eCVKNxG0Dr2qQnPBSpUwnU2rmi2k9oQ3uDmeT5+RO2O1sOrVzHwQLewLgzd5NMGLfOFP0krlBlk/MViSbOmxOLvMBafGE3bVSevE3KwGUR95bAVyL7R2Xa9kTeA5bJC78KL97ymaXeIWi1Js10cuBKopchNS65Mq7PwG1ovGYA1U= cedi@ivy"
}


resource "hcloud_ssh_key" "azure_pipelines" {
  name = "azure_pipelines"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBxF5k/UVVepyGI1gY8G3AAtUEv6bWgTjkjr3Z6H7lAsWzp4gvASBNrEThapu+mNs8c2ac72e8jaFdN29qc8jmCg0ggJy9ROqc8ZVeVxz7MpkV/9Em7bqW+PIUuijaI9MIDpkSqIjs85T1TXFFsF2GIezXaxynRWYt/WID4Dk7t4jS48/9pUtTD2D+ksp1na8E3f09hXWuqqdxeA/Sevd+D5ecQasia2QSCyWUi5M4+XKLQs7FlOWNzRPp6Gx3FSjZgN4fgVcSKO5PGrFRl+90Lnlrmjk4Imw3w+NBUDcbZTk3ZHDv/HdPolEqWICBH4ijqsSYm98CoZKYu0lxYTlJ cedi@MININT-PIOELF4"
}

module "dev_www" {
  source = "./modules/terraform-hcloud_azuredns"
  server_name = "dev-gw"
  ssh_keys = [
        "${hcloud_ssh_key.cedi_private_ed25519.id}",
        "${hcloud_ssh_key.cedi_private_rsa_legacy.id}",
        "${hcloud_ssh_key.azure_pipelines.id}"
        ]
  az_dns_zone = azurerm_dns_zone.vpn_dns
	environment = var.environment
}


