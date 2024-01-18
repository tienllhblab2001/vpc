terraform {
  source = "github.com/terraform-aws-modules/terraform-aws-vpc"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
    azs             = ["ap-southeast-1a", "ap-southeast-1b"]
    private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
    public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]
    enable_nat_gateway = false
    single_nat_gateway = false
    tags = {
        Name = "tienll-test-vpc"
        Terraform = "true"
  }
}