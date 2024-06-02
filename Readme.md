# Scope Of the project 
-I am spining up a EC2 Instance using the below the terraform script.\
-Now I am spinning up a EC2 Instance Dynamically.\
-For the terraform installation Please the follow the link .

# Installation of Terraform Links
Secondly you new need to install the teeraform in local system.\
[Link to install the Terrafom for different "OS"]\
(https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)\
If wanna check the Terraform is working or not just run the command

```Shell
terraform --version
```

# Insatall AWS CLI 
Fristly you need to install the **AWS CLI** in your local system\
For the AWS CLI install perpouse you need to follow the below link\
(https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
If wanna check the AWS CLI is working or not just run the command
```shell
aws
aws configure

```

# To run the Terraform  script

first you need to follow some command\
1 - terraform init\
2 - terraform validate (It show any errors in your scripts)\
3 - teerraform plan (For Dry run)\
4 - teeraform apply (It will lauch the Instance)\
5 - teeraform  destroy(It will terminated the existing Instance)

# Variable.tf file
This Variable.tf usally used for keeping the sensitive information securely.When you wanna Spun of multiple instances then you just edit the Variable.tf file then you don't need to edit main.tf file
```terraform
variable "instancetype" {
    description = "Define what type your instance"
    default = "t2.micro"
}
```
