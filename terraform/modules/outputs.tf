output "vpc_id" {
    value = aws_vpc.vpc.id
}
output "subnet_ids" {
    value = aws_subnet.subnet.*.id
}
output "route_table_ids" {
  value = aws_route_table.rt.*.id
}
output "route_table_association_ids" {
  value = aws_route_table_association.rta.*.id
}
output "internet_gateway_id" {
  value = aws_internet_gateway.gw.id
}
