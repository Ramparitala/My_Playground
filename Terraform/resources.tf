resource "aws_instance" "myec2" {
    ami= "${var.ami}"
    instance_type = "${var.instancetype}"
    key_name = "${var.keyname}"
    vpc_security_group_ids = "${var.secgroupids}"
    subnet_id = "${var.subnet}"
    associate_public_ip_address = "true"
    tags = {
        Name = "Dev_tf_EC2"
    }
    connection {
        type = "ssh"
        user = "${var.username}"
        private_key = "${file(var.keypair)}"
        host = "self.public_ip"
    }

    provisioner "remote-exec" {
        inline = [
        "sudo apt-get update",
        "sudo apt-get install git tree  -y",
        ]
    }
  
}

output "publicip" {
  value = "${aws_instance.myec2.public_ip}"
}
