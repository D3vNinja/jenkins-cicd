#Provider Block
resource "aws_instance" "demo_ec2" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  key_name = var.instance_key
  # count = 1

  user_data = <<-EOF
  #!/bin/bash
  echo "This script was executed from user_data"
  EOF

  tags = {
    Name = "Demo-Ec2-Instance"
    Session = "Demo-EC2"
  }
}
