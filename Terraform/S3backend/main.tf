provider "aws" {
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"
  region     = "${var.region}"
}

resource "aws_vpc" "mainnet" {
    cidr_block = "10.10.0.0/16"

    tags ={
        Name = "mainnet"
    }  
  
}

resource "aws_subnet" "websubnet" {
    vpc_id = "${aws_vpc.mainnet.id}"
    cidr_block = "10.10.0.0/24"

    tags= {
        Name = "websubnet"
    }
  
}

resource "aws_subnet" "businesssubnet" {
    vpc_id = "${aws_vpc.mainnet.id}"
    cidr_block = "10.10.1.0/24"

    tags= {
        Name = "businesssubnet"
    }
  
}

resource "aws_subnet" "dbsubnet" {
    vpc_id = "${aws_vpc.mainnet.id}"
    cidr_block = "10.10.2.0/24"

    tags= {
        Name = "dbsubnet"
    }
  
}
