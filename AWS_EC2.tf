provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "sasi12" {
    ami           = "ami-04b70fa74e45c3917"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0f07a3b9620ac07cb"
    key_name = "test1"
     tags = {
    Name = "first_ec2" # specify a name for Ec2 Instance
  }
#writing script for Destorying the Ec2
  provisioner "local-exec" {
    when    = destroy
    command = "aws ec2 stop-instances --instance-ids ${self.id}"
  }
}

