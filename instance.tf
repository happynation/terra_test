resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  subnet_id     = "${aws_subnet.public.id}"
  user_data     = "${file("userdata.sh")}"
  count         = "${var.count}"
  vpc_security_group_ids = ["${aws_security_group.public.id}"]
  associate_public_ip_address = "true"
  

  tags = {
    Name = "${var.Name} ${count.index +1}"
    Env  = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept = "${var.Dept}"
  }
}