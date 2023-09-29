resource "aws_route_table_association" "publicRTAssociation" {
  subnet_id = var.subnet_id_rt
  route_table_id = var.route_table_id
  
}