terraform {
  backend "s3" {
    bucket = "terra-kulyk"
    key    = "infra.state"
    region = "us-east-1"
  }
}