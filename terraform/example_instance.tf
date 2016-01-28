resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami = "${lookup(var.amis, var.region)}"
  subnet_id = "${aws_subnet.main.0.id}"
  key_name = "${var.key_pair_name}"
  security_groups = ["${aws_security_group.basic.id}"]
  source_dest_check = false
  tags = {
    Name = "${var.env}-example"
  }
}

