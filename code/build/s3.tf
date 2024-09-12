provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "41cfe722-5c19-46f2-822f-1af7d4eb8d05"
    git_commit           = "7e3712d3520f59ffdf276d2ad3d80e340906e7c2"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-12 03:52:37"
    git_last_modified_by = "17153802+ifaridi79@users.noreply.github.com"
    git_modifiers        = "17153802+ifaridi79"
    git_org              = "ifaridi79"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
