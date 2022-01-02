variable "vpccidr" {}
variable "pubsub1cidr" {}
variable "pubsub2cidr" {}
variable "prisub1cidr" {}
variable "prisub2cidr" {}

variable "key_name" {
  default = "apsedge-dev-clients"
}

variable "bastion_type" {
  type = string
  default = "t2.micro"
}

variable "ami_ubuntu" {
  type = string
  default = "ami-08ca3fed11864d6bb"
}  

variable "dev_type_large" {
  type = string
  default = "t3.xlarge"
}
variable "dev_type_medium" {
  type = string
  default = "t3.medium"
}
