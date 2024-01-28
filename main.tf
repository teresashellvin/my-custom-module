resource "aws_instance" "production_level_terraform_project" { 
	ami = " "
	instance_type = "t3.micro"
	tags = {
	Name = "production-level-terraform-project"
}
}

module "dev_app" {
	source = "./my-custom-module"
	env = "dev"
	instance_type = "t3.micro"
	ami = " "
	instance_name = "dev-custom-module"
}

module "production_app" {
        source = "./my-custom-module"
        env = "production"
        instance_type = "t3.medium"
        ami = " "
        instance_name = "prd-custom-module"
}
