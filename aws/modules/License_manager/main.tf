resource "aws_licensemanager_license_configuration" "tfsquad" {
  name                     = var.name
  license_counting_type    = var.license_counting_type
  tags                     = var.tags
  license_count_hard_limit = var.license_count_hard_limit
  license_count            = var.license_count
  description              = var.description


}