resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami           = var.ami_id
  subnet_id     = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = "ExampleEC2Instance"
  }
}