variable "ami" {
    type = "string"
    default = "ami-04b9e92b5572fa0d1"
}

variable "secgroupids" {
  type = "list"
  default = ["sg-08021d2da0da9f7a1"]
}

variable "instancetype" {
    type = "string"
    default = "t2.micro"
  
}

variable "keyname" {
    type = "string"
    default = "Terraform"
  
}

variable "username" {
    type    = "string"
    default = "ubuntu"
  
}

variable "keypair" {
    type    = "string"
    default = "Terraform.pem"
  
}

variable "myaccesskey" {
  type = "string"
}

variable "mysecretkey" {
  type = "string"
}
variable "myregion" {
  type = "string"
  default = "us-east-1"
}

variable "subnet" {
  type = "string"
  default = "subnet-0d8809eab0f2c3571"
  
}
