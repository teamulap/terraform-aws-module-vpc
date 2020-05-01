variable "prefix" {
  type        = string
  description = "Prefix for the security group"
}

variable "description" {
  type        = string
  description = "Description for the security group"
}

variable "vpc-id" {
  type        = string
  description = "VPC where the security group is located"
}

variable "ingress-ports" {
  type        = list(any)
  description = "List of ingress ports of the security group"
  default     = [{port = "80", protocol = "tcp"}]
}

variable "allowed-cidr-block" {
  type        = list
  description = "List of allowed CIDR block on the security group"
  default     = []
}

variable "security-group-ids" {
  type        = list
  description = "List of allowed security group on the security group"
  default     = []

}

variable "self" {
  type        = bool
  description = "If true, the security group itself will be added as a source to this ingress rule."
  default     = true
}
