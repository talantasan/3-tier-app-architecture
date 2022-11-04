resource "aws_route_table_association" "public" {
  count = length(var.availability_zones)

  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_app" {
  count = "${length(var.availability_zones)}"

  subnet_id      = element(aws_subnet.private1.*.id, count.index)
  route_table_id = element(aws_route_table.private_rt_app.*.id, count.index)
}

resource "aws_route_table_association" "private_db" {
  count = "${length(var.availability_zones)}"

  subnet_id      = element(aws_subnet.private2.*.id, count.index)
  route_table_id = element(aws_route_table.private_rt_db.*.id, count.index)
}
