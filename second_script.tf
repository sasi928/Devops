#### I am spining up a Ec2 Instance using the below the terraform script ###
#### Now I am spinning up a Instance Dynamically###
#### To run the below script###
### first you need to follow some command###
### 1 - terraform init ###
### 2 - terraform validate (It show any errors in your scripts)###
### 3 - teerraform plan (For Dry run)###
### 4 - teeraform apply (It will lauch the Instance)###
### 5 - teeraform  destroy(It will terminated the existing Instance)###
##### For Output please vist my output.tf file##

provider "aws" {
    region = var.region  # Set your desired AWS region
}

resource "aws_instance" "sasi12" {
    ami           = var.AMI  # Specify an appropriate AMI ID
    instance_type = var.instancetype
    subnet_id = var.subnet
    key_name = var.key-name
     tags = {
    Name = var.Name # specify a name for Ec2 Instance
  }

}
