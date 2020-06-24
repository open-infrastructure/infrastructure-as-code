module "k8" {
  source = "./modules/hetzner-k8"
  cluster_name="oi-k8"
  image="ubuntu-20.04"
  control_plane_type="cx11"
  lb_type="cx11"
  worker_type="cx11"
}

