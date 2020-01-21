resource "aws_vpc" "TF-VPC" {

  cidr_block       = "${var.vpccidr}"
  enable_dns_hostnames = true
  

  tags = {
    Name = "TF-VPC"
  }
}

resource "aws_route_table" "pubrt" {
  vpc_id = "${aws_vpc.TF-VPC.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.tf-igw.id}"
  }

tags = {
    Name = "TF-Pub-RT"
  }
}

resource "aws_route_table" "pvtrt" {
  vpc_id = "${aws_vpc.TF-VPC.id}"

tags = {
    Name = "TF-Pvt-RT"
  }
}

resource "aws_internet_gateway" "tf-igw" {
  vpc_id = "${aws_vpc.TF-VPC.id}"

  tags = {
    Name = "TF-IGW"
  }
}


resource "aws_subnet" "Suri-TF-pubsub" {
  vpc_id     = "${aws_vpc.TF-VPC.id}"
  cidr_block = "${var.pubsubcidr}"

  tags = {
    Name = "Suri-TF-PubSub1"
  }
}

resource "aws_subnet" "Suri-TF-pvtsub" {
  vpc_id     = "${aws_vpc.TF-VPC.id}"
  cidr_block = "${var.pvtsubcidr}"

  tags = {
    Name = "Suri-TF-PvtSub2"
  }
}

resource "aws_route_table_association" "pubsunetass" {
  subnet_id      = "${aws_subnet.Suri-TF-pubsub.id}"
  route_table_id = "${aws_route_table.pubrt.id}"
}

resource "aws_route_table_association" "pvtsunetass" {
  subnet_id      = "${aws_subnet.Suri-TF-pvtsub.id}"
  route_table_id = "${aws_route_table.pvtrt.id}"
}

resource "aws_nat_gateway" "tf-natgw" {
 allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.Suri-TF-pubsub.id}"

  tags = {
    Name = "TF-NATGW"
  }
}
resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_security_group" "mysg" {
  name        = "mysg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.TF-VPC.id}"

  ingress {
   
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
   
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
 }
}

resource "aws_instance" "tf-ec2" {
    ami = "${var.amiid}"
    instance_type = "${var.instancetype}"
    key_name = "${var.keyname}"
    availability_zone = "${var.myaz}"
    subnet_id = "${aws_subnet.Suri-TF-pubsub.id}"
    associate_public_ip_address = "true"
    vpc_security_group_ids = ["${aws_security_group.mysg.id}"]
    tags = {
    Name = "TF-EC2"
  }


}