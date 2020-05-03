#VPC
variable "region" {
    type = string
    description = "(Required) Region of the resource."
}

variable "vpc_subnets" {    
    type = list
    description = "(Required) List of CIDR blocks for the subnets."
}
variable "vpc_subnet_availability_zone" {
    type = list
    description = "(Required) The AZ for the subnet."
}

variable "vpc_cidr" {
    type = string
    description = "(Required) The CIDR block for the VPC."
}
variable "vpc_instance_tenancy" {
    type = string
    description = "(Optional) A tenancy option for instances launched into the VPC."
    default = "default"
}
variable "vpc_enable_dns_support" {
    type = string
    description = "(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults true."
    default = "true"
}
variable "vpc_enable_dns_hostnames" {
    type = string
    description = "(Optional) A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
    default = "false"
}
variable "vpc_enable_classiclink" {
    type = string
    description = "(Optional) A boolean flag to enable/disable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic. See the ClassicLink documentation for more information. Defaults false."
    default = "false"
}
variable "vpc_enable_classiclink_dns_support" {
    type = string
    description = "(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic."
    default = "false"
}
variable "vpc_assign_generated_ipv6_cidr_block" {
    type = string
    description = "(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is false."
    default = "false"
}
variable "vpc_tags" {
    type = map
    description = "(Required) A map of tags to assign to the resource."
}