module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 1.0"

  name                   = "Wordpress"
  instance_count         = 2

  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  monitoring             = true
  vpc_security_group_ids = ["sg-d1b9e784"]
  subnet_id              = "subnet-10d8055d"

  
}