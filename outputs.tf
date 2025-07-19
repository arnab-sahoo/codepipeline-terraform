output "pipeline_name" {
  value = module.codepipeline.pipeline_name
}

output "artifact_bucket" {
  value = module.s3.artifact_bucket
}

output "codedeploy_app_name" {
  value = aws_codedeploy_app.app.name
}