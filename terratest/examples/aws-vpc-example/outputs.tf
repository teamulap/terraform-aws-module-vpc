output "t_vpc_id" {
    value = "${module.vpc.vpc_id}"
}
output "t_subnet_ids" {
    value = "${module.vpc.subnet_ids}"
}
output "t_route_table_ids" {
  value = "${module.vpc.route_table_ids}"
}
output "t_route_table_association_ids" {
  value = "${module.vpc.route_table_association_ids}"
}
output "t_internet_gateway_id" {
  value = "${module.vpc.internet_gateway_id}"
}