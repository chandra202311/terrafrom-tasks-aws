resource "aws_db_instance" "my_rds_instance" {
  identifier             = "my-rds-instance"  # Replace with your desired instance identifier
  engine                 = "mysql"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  username               = "admin"            # Replace with your desired username
  password               = "password123"      # Replace with your desired password
  publicly_accessible    = false
  multi_az               = false
  skip_final_snapshot    = true
}
