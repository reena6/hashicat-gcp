module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "3.2.2"

    project_id   = var.project
    network_name = "example-vpc"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         =  var.region
        }
    ]
}
