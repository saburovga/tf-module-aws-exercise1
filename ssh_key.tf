resource "aws_key_pair" "this1" {
  key_name   = "test"
  public_key = var.public_key
}