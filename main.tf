provider "aws" {
    # we'll source it from AWS_ACCESS_KEY_ID in the environment
    # we'll source it from AWS_SECRET_ACCESS_KEY in the environment
    region = "${var.aws_region}"
    max_retries = 10
}

resource "aws_vpc" "main" {
    cidr_block = "${var.cidr_block}"
    enable_dns_hostnames = true
    instance_tenancy = "default"

    tags {
        Name = "${var.name}"
        Realm = "${var.realm}"
        Managed-By = "${var.managed_by}"    
    }
}

resource "aws_internet_gateway" "main" {
    vpc_id = "${aws_vpc.main.id}"

    tags {
        Name = "${var.name}"
        Realm = "${var.realm}"
        Managed-By = "${var.managed_by}"    
    }
}

resource "aws_route_table" "main" {
    vpc_id = "${aws_vpc.main.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.main.id}"
    }

    tags {
        Name = "${var.name}"
        Realm = "${var.realm}"
        Managed-By = "${var.managed_by}"    
    }
}

resource "aws_main_route_table_association" "main" {
    vpc_id = "${aws_vpc.main.id}"
    route_table_id = "${aws_route_table.main.id}"
}

