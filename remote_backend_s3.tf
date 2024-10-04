terraform {
  backend "s3" {
    bucket = ""                                             # S3 bucket name for remote state
    key    = "devops-project-1/jenkins/terraform.tfstate"   # Path to store the state file in S3 bucket
    region = "eu-west-1"
  }
}