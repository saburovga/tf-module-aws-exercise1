resource "aws_key_pair" "this" {
  key_name   = "test"
  public_key = file("./keys/infongen-stage-ec2.pub")
}