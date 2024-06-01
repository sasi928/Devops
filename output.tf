### This scripit is regrading to find the Public_IP and Pravite_IP###
### To run below script you need to  give correct resource name ###
### please use the command located  in the second_script.tf###  


output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.sasi12.public_ip ## sasi12 is my resourse Name 
}

output "instance_private_ip" {
  description = "The pravite IP address of the EC2 instance"
  value       = aws_instance.sasi12.private_ip
}
