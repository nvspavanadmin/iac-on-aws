resource "aws_instance" "ec2-dev" {
  ami = var.ami_id
  instance_type = var.instype
  key_name = var.key_name
  tags = {
     Name = "ec2-dev"
  }
}