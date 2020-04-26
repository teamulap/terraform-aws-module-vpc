# AWS VPC Terraform Module
This module creates a ready-to-use AWS VPC.

## Change Log
v0.0.1
VPC Created will have:
1 VPC
1 CIDR Block
1 Internet Gateway for all Subnets
Dynamic Subnets
Dynamic Availability Zones (Depends on subnet count)
Dynamic Route Table Count (Depends on subnet count)

## Future plans
1. Be able to create Public and Private Subnets
2. NAT Gateway Capability
3. Be able to enable Monitoring

## Usage
```json
module "vpc" {
    source = "../../../terraform/modules"
    region                       = "ap-northeast-1"
    vpc_cidr                     = "10.0.0.0/16"
    vpc_subnets                  = ["10.0.0.0/24","10.0.1.0/24"]
    vpc_subnet_availability_zone = ["ap-northeast-1a","ap-northeast-1c"]
    vpc_enable_dns_hostnames     = "true"
    vpc_tags                     = {
        Name         = "Terratest-AWS-VPC"
        Project      = "Terratest"
        Environment  = "development"
        Contact      = "jcbagtas"
        Temporary    = "true"
        CostCenter   = "JC"
        Terraform    = "true"
        ManagedBy    = "jcbagtas"
    }
}
```