resource "aws_macie_member_account_association" "example" {
  member_account_id = var.member_account_id
}

resource "aws_macie_s3_bucket_association" "example" {
  bucket_name = var.bucket_name
}


