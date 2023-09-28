resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami           = var.ami_id
  subnet_id     = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]

  user_data = <<EOF
  #!/bin/bash
  echo "Hello, World!" > index.html
  nohup busybox httpd -f -p 8080 &
  EOF

  tags = {
    Name = "ExampleEC2Instance"
  }
}