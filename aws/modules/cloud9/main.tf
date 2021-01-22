resource "aws_cloud9_environment_ec2" "example" {
  instance_type = var.instance_type
  name          = var.name
}

