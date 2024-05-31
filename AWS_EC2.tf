### Terraform Script####
###In this below script I  am creating the EC2 Instance using terraform and also##Destroying the Created Instance##
#### Mandatory thing to check before running the file check the "region name"
### and "AMI id".
#For run this paticular script you a save the file with '.tf' extention to
## and go to command line first use the terraform init cmd
## next terraform plan this paticular cmd give the how many Instances are 
#creating and in which region it will using it will display
## next step use terraform apply then give 'yes' it will run the script
##lastly terraform Destory then it will destory the created Instance 


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

