provider "aws" {
  region = "us-east-1"  
}

locals {
    aws_key = "CA_AWS_KEY"   # Change this to your desired AWS region
  }

resource "aws_instance" "my_server" {
   ami           = data.aws_ami.amazonlinux.id
   instance_type = var.instance_type
   key_name      = "${local.aws_key}"                  
   user_data = file("wp_install.sh")
   security_groups = [aws_security_group.ec2_sg]
   tags = {
     Name = "my ec2"
   }                  
 }
