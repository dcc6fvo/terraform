# terraform-basic-setup

In this very basic terraform/aws script we manage to work with 2 AWS regions. After running, the program will create:

  - one public instance in sa region
  - one public instance in us region
  - four private instances in sa region

Prerequisites
-----------------------
  - Terraform
  - AWS CLI
   
Installation && Running
-----------------------

Do a git clone of the project:

	git clone https://github.com/dcc6fvo/terraform-basic-setup 
	
Change key-pair field of aws-instances with your current keys:

	vim main.tf

Access the newly created folder with the git clone command and type the following command:

	terraform init

Then creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure:

  	terraform plan
  
Finally, the command that executes the actions proposed in a terraform plan (it is used to deploy your infrastructure):

  	terraform apply -auto-approve

To destroy all the configurations:

	terraform destroy
