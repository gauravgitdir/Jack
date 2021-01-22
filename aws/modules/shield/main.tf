data "aws_availability_zones" "available" {}
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

resource "aws_eip" "foo" {
  vpc = true
}

resource "aws_shield_protection" "shield_protection" {
  name         = var.name
  resource_arn = var.resource_arn
}

