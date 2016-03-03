#Overview
This Terraform plan creates a new VPC using the specified attributes.  Since VPCs typically aren't created and 
destroyed on a regular basis, it makes sense to "set it and forget it", which is what this plan does.

#Prerequisites

* [Terraform](https://terraform.io/) installed and working
* Development and testing was done on [Ubuntu Linux](http://www.ubuntu.com/)
* The environment variable `AWS_ACCESS_KEY_ID` set to your AWS Access Key ID 
* The environment variable `AWS_SECRET_ACCESS_KEY` set to your AWS Secret Access Key

#Building
This project is a collection of data files consumed by Terraform so there is nothing to build. 

#Installation
You need to export your AWS key information to the environment so that Terraform can pick them up and use them.  Typically, this is 
done via a simple export command.

* `export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE`
* `export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`

Finally, you'll need to edit the `variables.tf` and adjust any values of interest, such as `cidr_block`.

#Tips and Tricks

##Creating The AWS Assets
To create a new environment, run `./create.sh` and you should have a new VPC that accepts all traffic from the internet.

##Verifying The Setup
If you make changes and want to see what Terraform will do, run `./plan.sh` to see what changes will be pushed to AWS.

##Start Over
If there is an error with configuration that prevents Terraform from completing its mission, run `./destroy.sh` to remove any assets that 
have been created.

#Troubleshooting

##Terraform State
Terraform keeps the last know state in a file and you need to ensure you push to GitHub after each change in your AWS environment.  Otherwise, 
if you pull down the project on another machine, Terraform will get confused as to what assets are really in play.

##Terraform Version
Terraform is constantly being updated so ensure you have the latest version installed.

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes
