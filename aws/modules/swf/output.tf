output "id" {
  description = "The name of the domain"
  value       = aws_swf_domain.foo.id
}

output "arn" {
  description = "Amazon Resource Name"
  value       = aws_swf_domain.foo.arn
}
