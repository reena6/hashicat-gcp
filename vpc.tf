module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.2.2"
  # insert required variables here
  network_name = "reena-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "reena-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}