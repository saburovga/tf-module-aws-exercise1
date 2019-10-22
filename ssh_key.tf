resource "aws_key_pair" "this" {
  key_name   = "test"
  public_key = data.aws_s3_bucket_object.public_ssh_key.body
}