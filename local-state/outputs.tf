output "bucket_id" {
  description = "The ID of bucket created by aws"
  value       = aws_s3_bucket.local-state-bucket.id
}

output "bucket_arn" {
  description = "ARN of bucket created by aws"
  value       = aws_s3_bucket.local-state-bucket.arn
}