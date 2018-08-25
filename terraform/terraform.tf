terraform {
  backend "s3" {
    bucket = "htecweb-beestore"
    key    = "beerstore-infra"
    region = "us-east-1"
  }
}
