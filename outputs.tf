output "TF-VPC-id" {
  value = "${aws_vpc.TF-VPC.id}"
}

output "Suri-TF-pubsub" {
  value = "${aws_subnet.Suri-TF-pubsub.id}"
}

output "Suri-TF-pvtsub" {
  value = "${aws_subnet.Suri-TF-pvtsub.id}"
}

output "Suri-TF-pubrt" {
  value = "${aws_route_table.pubrt.id}"
}

output "Suri-TF-pvtrt" {
  value = "${aws_route_table.pvtrt.id}"
}

output "Suri-TF-igw" {
  value = "${aws_internet_gateway.tf-igw.id}"
}

output "Suri-TF-natgw" {
  value = "${aws_nat_gateway.tf-natgw.id}"
}

output "ec2id" {
  value = "${aws_instance.tf-ec2.id}"
}

output "ec2state" {
  value = "${aws_instance.tf-ec2.instance_state}"
}


output "ec2public-ip" {
  value = "${aws_instance.tf-ec2.public_ip}"
}

output "ec2pvt-ip" {
  value = "${aws_instance.tf-ec2.private_ip}"
}

output "sg-id" {
  value = "${aws_security_group.mysg.id}"
}