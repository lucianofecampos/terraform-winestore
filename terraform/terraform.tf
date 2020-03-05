terraform {
  backend "s3" {
    bucket = "htecweb-beestore"
    key    = "winestore-infra"
    region = "us-east-1"
  }
}
