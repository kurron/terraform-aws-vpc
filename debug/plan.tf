region = "us-west-2"

name = "Debug"

project     = "Debug"
purpose     = "Debugging Terraform modules"
creator     = "kurron@jvmguy.com"
environment = "development"
freetext    = "No notes at this time."

cidr_range         = "10.0.0.0/16"
private_subnets    = ["10.0.1.0/24"]
public_subnets     = ["10.0.2.0/24"]
populate_all_zones = "false"
