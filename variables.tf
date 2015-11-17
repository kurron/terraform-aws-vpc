variable "aws_region" {
    description = "AWS region to launch servers."
    default = "us-west-2"
}

variable "cidr_block" {
    description = "The class B network to create, in CIDR notation."
    default = "10.0.0.0/16"
}

variable "name" {
    description = "The name of this VPC."
    default = "Ron's Experiment"
}

variable "realm" {
    description = "The logical group that all of the infrastructure belongs to. Similar idea to an AWS stack."
    default = "terraform-experimentation" 
}

variable "managed_by" {
    description = "The tool that is manages this resource."
    default = "Terraform" 
}
