resource "aws_instance" "custom_instance_created_by_teresashellvin" {
	ami = var.ami
	instance_type = var.instance_type 
	tags = {
		Name = "${var.env}-${var.instance_name}"
	}
}
