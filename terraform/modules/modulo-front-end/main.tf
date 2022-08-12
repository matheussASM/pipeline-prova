module "front-end" {
  source = "../modulo-ec2"
  count = var.front_instances_count
  ec2_tags = {
    "Name" = "front-end-${count.index}"
  }
}