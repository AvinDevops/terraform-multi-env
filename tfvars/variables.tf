variable "instance_names" {
    type = map
    # default = {
    #     db-dev = "t2.micro"
    #     backend-dev = "t2.micro"
    #     frontend-dev = "t2.micro"
    # }
}

variable "environment" {
    # default = "dev"
}

variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "avinexpense.online"
}

variable "zone_id" {
    default = "give your zone id"
}