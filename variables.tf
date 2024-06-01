### Main scope  of the varible file is to securely declaring the input to our main.tf files ##################       
### The main adavantage of this variables.tf file is if you spin multipule instances you can edit this file ##
### with differnt parameter then you can use it for example you wanna increase the Instance size you 
#######  "instancetype" = "t2.micro" ->  "instancetype" = "t3.micro" ############################################################
############################################################################################################
variable "region" {
    description = "Here we using the region called us - east-1"
    default = "us-east-1"
}
variable "AMI" {
    description = "In this line we are define the Ami-id"
    default = "ami-04b70fa74e45c3917"
}
variable "instancetype" {
    description = "Define what type your instance"
    default = "t2.micro"
}
variable "subnet" {
    description = "Define your subnet-id here"
    default = "subnet-0f07a3b9620ac07cb"
}
variable "key-name" {
    description = "Define your keyname here"
    default = "test1"
}
variable "Name" {
    description = "Define the name of ec2 instance name"
    default = "first_ec2"
}
