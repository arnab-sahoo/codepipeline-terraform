output "pipeline_name" {
  value = aws_codepipeline.pipeline.name
}

output "artifact_bucket" {
  value = aws_s3_bucket.artifact_bucket.bucket
}

output "codedeploy_app_name" {
  value = aws_codedeploy_app.app.name
}