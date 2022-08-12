module "backend" {
  source = "../ec2-module"
  count = var.app_instances_count
  ec2_tags = {
    "Name" = "Back-end-${count.index}"
  }
}

module "database" {
  source = "../rds-module" 
  count = var.app_instances_count
  db_tags = {
    "Name" = "${var.db_name}-${count.index}"
  }
  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}