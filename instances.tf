resource "aws_instance" "instances" {
  count = 3

  ami = "${var.aws_linux_ami}"
  instance_type = "${var.instance_type}"

  subnet_id = "${element(aws_subnet.public_subnet.*.id, count.index)}"

  tags = {
    Name = "hibicode_instances"
  }

  depends_on = ["aws_internet_gateway.igw"]
}