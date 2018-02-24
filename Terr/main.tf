provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "PackerAndTerraform" {
#ami = "ami-454eac38"
ami = "${var.ami_id}"
instance_type = "t2.micro"
subnet_id = "subnet-8967fed3"
key_name = "Emanue-GoldKey"
private_ip="192.168.4.4"
#public_ip = "35.153.235.125"
#aws_eip_association = "true"
#iam_instance_profile = "Emanue-SSM-Role"
associate_public_ip_address = "true"
security_groups = ["sg-1edaee6b"]
tags {    
Name = "PackerAndTerraform"
}       
}

