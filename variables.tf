variable "vpccidr" {}
variable "pubsub1cidr" {}
variable "pubsub2cidr" {}
variable "prisub1cidr" {}
variable "prisub2cidr" {}

variable "key_name" {
  default = "apsedge-dev-clients"
}

variable "bastion_ami" {
  type = string
  default = "ami-08ca3fed11864d6bb"
}  

variable "bastion_type" {
  type = string
  default = "t2.micro"
}

variable "dev_ami" {
  type = string
  default = "ami-08ca3fed11864d6bb"
}  

variable "dev_type" {
  type = string
  #default = "t3.xlarge"
  default = "t2.micro"
}
