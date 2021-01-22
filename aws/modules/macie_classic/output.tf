output "s3_association_id" {
  description = "The ID of the s3 association"
  value       = aws_macie_s3_bucket_association.example.id
}

output "id" {
  description = "The ID of the association"
  value       = aws_macie_member_account_association.example.id
}

