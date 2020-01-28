output "EBSVolumeid" {
  value = "${aws_ebs_volume.Test_1GB.id}"
}

output "Elasticipaddress" {
  value = "${aws_eip.EIP.public_ip}"
}

output "Securitygroup" {
  value = "${aws_security_group.SG.id}"
}
