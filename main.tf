provider "aws" {
  version            = "~> 1.14"
  shared_credentials = "˜/.aws/credentials"
  profile            = "terraform"
}
