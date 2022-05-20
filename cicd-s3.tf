resource "aws_s3_bucket" "codepipeline_artifacts1" {
  bucket = "tfm-cicd-utpalendu"
  acl    = "private"
} 
