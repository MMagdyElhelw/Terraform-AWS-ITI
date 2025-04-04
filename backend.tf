terraform {
  backend "s3" {
    bucket         = "project-magdy-aswan"
    key            = "Project/tfstate.tf"
    region         = "us-east-1"
    dynamodb_table = "projectDB"
  }
}
