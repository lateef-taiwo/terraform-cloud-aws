# This section will create the subnet group for the RDS  instance using the private subnet
resource "aws_db_subnet_group" "cloudops-rds" {
  name       = "cloudops-rds"
  subnet_ids = var.private_subnets

  tags = merge(
    var.tags,
    {
      Name = "cloudops-rds"
    },
  )
}

# create the RDS instance with the subnets group

resource "aws_db_instance" "cloudops-rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro" # Updated instance class
  db_name                = "savvydb"
  username               = var.db-username # Ensure variable names match Terraform syntax
  password               = var.db-password # Ensure variable names match Terraform syntax
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.cloudops-rds.name
  skip_final_snapshot    = true
  vpc_security_group_ids = var.db-sg # Ensure variable names match Terraform syntax
  multi_az               = "true"

}