region = "us-west-2"

name = "Debug"

project     = "Debug"
purpose     = "Debugging Terraform modules"
creator     = "kurron@jvmguy.com"
environment = "development"
freetext    = "No notes at this time."

cidr_range         = "10.0.0.0/16"
public_subnets     = ["10.0.2.0/24","10.0.4.0/24","10.0.6.0/24","10.0.8.0/24","10.0.10.0/24","10.0.12.0/24","10.0.14.0/24"]
private_subnets    = []
populate_all_zones = "true"
