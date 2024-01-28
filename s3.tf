resource "aws_s3_bucket" "s3_module_bucket" {
	bucket = "${var.env}-bucket-ts"
}
