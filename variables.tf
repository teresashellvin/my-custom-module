variable "ami" {
	type = string
	description = "this is the ami id for instance"
}

variable "instance_type" {
        type = string
        description = "this is the instance type for ec2"
}


variable "instance_name" {
        type = string
        description = "this is the name for instance"
}

variable "env" {
        type = string
        description = "env for the infrastructure"
}
