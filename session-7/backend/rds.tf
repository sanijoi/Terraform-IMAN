resource  "aws_db_instance" "main" {
    allocated_storage         = 10
    engine                    = "mysql"
    engine_version            = "5.7"
    instance_class             = "db.t3.micro"
    name                      = "matrix"
    username                  = "admin"
    password                  = "random_password.db_password.result"
    parameter_group_name      = "default.mysql5.7"
    skip_final_snapshot       =  var.env == "dev" ? true : false
    final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-final-snapshot"
}

# a == b =true
# a != b =false
