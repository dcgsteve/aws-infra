variable "vpccidr" {}
variable "pubsub1cidr" {}
variable "pubsub2cidr" {}
variable "prisub1cidr" {}
variable "prisub2cidr" {}

variable "key_name" {
  default = "apsedge-dev-clients"
}

variable "ami" {
  type = string
  default = "ami-08ca3fed11864d6bb"
}  

variable "instance_type" {
  type = string
  default = "t2.micro"
}
