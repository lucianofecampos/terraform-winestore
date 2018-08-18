#!/usr/bin/env bash

echo "Destroing infrastructure"

echo "Finding your public address"
MY_PUBLIC_IP_ADDRESS="$(curl -s ipinfo.io/ip)"
echo "Your public ip address is $MY_PUBLIC_IP_ADDRESS"

echo "Destroing Terraform"
AWS_PROFILE=terraform \
terraform destroy -var "my_public_cidr=$MY_PUBLIC_IP_ADDRESS/32"