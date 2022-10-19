variable "region" {
  description = "AWS region for hosting our your network"
  default = "us-east-1"
}
variable "key_name" {
  description = "Key name for SSHing into EC2"
  default = "SMART_KPASS"
}
variable "amis" {
  description = "Base AMI to launch the instances"
  default = {
  us-east-1 = "ami-026b57f3c383c2eec"
  }
}
variable "ports" {
  type    = map(number)
  default = {
    tcp  = 22
  }
}
variable "vpc_id" {
  description = "AWS VPC for hosting our your network"
  default = "vpc-032ac441930c0317e"
}