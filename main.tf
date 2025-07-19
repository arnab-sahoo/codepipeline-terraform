provider "aws" {
  region = var.region
}

# Include IAM Roles
module "iam" {
  source = "./iam"
}

# S3 Bucket for Artifacts
module "s3" {
  source = "./s3"
}

# CodeBuild Project
module "codebuild" {
  source = "./codebuild"
}

# CodeDeploy Setup
module "codedeploy" {
  source = "./codedeploy"
}

# EC2 Instance for Deployment (Optional)
module "ec2" {
  source = "./ec2"
}

# CodePipeline Definition
module "codepipeline" {
  source = "./codepipeline"
}