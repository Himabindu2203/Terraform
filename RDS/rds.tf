 resource "aws_db_instance" "myrds" {
   allocated_storage   = "${var.database-allocated-storage}"
   storage_type        = "${var.database-storage-type}"
   identifier          = "${var.database-instance-identifier}"
   engine              = "${var.database-engine}"
   engine_version      = "${var.database-engine-version}"
   instance_class      = "${var.database-instance-class}"
   username            = "${var.database-username}"
   password            = "${var.database-password}"
   publicly_accessible = "${var.database-publicly-accessble}"
   skip_final_snapshot = "${var.database-snapshot-identifier}"

   tags = {
     Name = "${var.database-Name-tag}"
   }
 }
