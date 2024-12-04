#------------ region vaiable -----------#

variable "region" {
  type = string
}

#------------ vpc&subnet cidr ----------#

variable "vpc_cidr" {
  type = string
}

variable "pub_subnet1_cidr" {
  type = string
}

variable "pub_subnet2_cidr" {
  type = string
}
variable "priv_subnet1_cidr" {
  type = string
}
variable "priv_subnet2_cidr" {
  type = string
}