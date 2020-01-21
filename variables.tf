variable "myregion" {
  description = "Enter your Region"
  type = "string"
}


variable "vpccidr" {
  description = "Enter your VPC-CIDR range"
  type = "string"
}

variable "pubsubcidr" {
  description = "Enter your Sub1-CIDR range"
  type = "string"
}

variable "pvtsubcidr" {
  description = "Enter your Sub2-CIDR range"
  type = "string"
}

variable "amiid" {
  description = "Enter your AMI-id"
  type = "string"
}

variable "myaz" {
  description = "Enter your Availability-Zone"
  type = "string"
}


variable "instancetype" {
  description = "Enter your Instance-Type"
  type = "string"
  default = "t2.micro"
}

variable "keyname" {
  description = "Enter your keypair-Name"
  type = "string"
  default = "RCS-POC"
}

variable "host" {
  description = "Enter your Host-Name"
  type = "string"
  default = "ubuntu"
}