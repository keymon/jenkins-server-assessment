resource "aws_security_group" "basic" {
  name = "${var.env}-basic"
  description = "Security group for a basic server"
  vpc_id = "${aws_vpc.default.id}"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [
      "${split(",", var.allowed_cidrs)}"
    ]
  }

  tags {
    Name = "${var.env}-basic"
  }
}

