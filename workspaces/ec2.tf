resource "aws_instance" "creating_instances" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0f098b1703c4e99d9"]
    instance_type = lookup(var.instance_type, terraform.workspace)
}