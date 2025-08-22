terraform {
  backend "s3" {
    bucket = "de-bootcamp2255"
    key    = "tfstate/dev.tfstate"
    region = "ap-southeast-2"
    # dynamodb_table = "tfstate-lock"
    encrypt = true
  }
}
