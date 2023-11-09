output "RDS" {
  value = aws_db_instance.rds-oracle-database.identifier
}

output "RDSVersion" {
  value = aws_db_instance.rds-oracle-database.engine_version
}

output "Endpoint" {
  value = aws_db_instance.rds-oracle-database.endpoint
}

output "DBName" {
  value = aws_db_instance.rds-oracle-database.db_name
}

output "VPC" {
  value = var.vpc_id
}

output "RDSSubnets" {
  value = aws_db_subnet_group.default.subnet_ids
}

output "RDSSubnetGroup" {
  value = aws_db_subnet_group.default.name
}

#output "RDSOptionGroup" {
 # value = aws_db_option_group.rds_option_group_name.name
#}

output "RDSParameterGroup" {
  value = aws_db_parameter_group.rds_pg.name
}
output "snapshot" {
  value = aws_db_instance.rds-oracle-database.snapshot_identifier
}

#Replica west

output "RDSWest" {
  value = aws_db_instance.rds-replica-cross-region.identifier
}

output "CrossregionRDSVersion" {
  value = aws_db_instance.rds-replica-cross-region.engine_version
}

output "CrossregionEndpoint" {
  value = aws_db_instance.rds-replica-cross-region.endpoint
}

output "CrossregionDBName" {
  value = aws_db_instance.rds-replica-cross-region.db_name
}

output "CrossregionVPC" {
  value = var.vpc_west_id
}

output "CrossregionRDSSubnets" {
  value = aws_db_subnet_group.default.subnet_ids
}

output "CrossregionRDSSubnetGroup" {
  value = aws_db_subnet_group.subnet_west.name
}

#output "CrossregionRDSOptionGroup" {
 # value = aws_db_option_group.rds_option_group_name.name
#}

output "CrossregionRDSParameterGroup" {
  value = aws_db_parameter_group.rds_west_pg.name
}

