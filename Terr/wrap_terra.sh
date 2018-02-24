#!/bin/bash
ami=$(awk 'NR==1{print $1}' /Emanu-Build/AMIs/AllAMIs)
echo $AMIID
terraform init
terraform plan  -var "ami_id=$ami"
terraform apply -var "ami_id=$ami" -input=false -auto-approve
