terraform {
  backend "s3" {
    bucket = "demo-usecases-bucket-new"
    key    = "terraform.tftstate"
    region = "us-east-1"
  }
}
