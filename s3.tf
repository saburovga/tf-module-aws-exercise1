data "aws_s3_bucket_object" "private_ssh_key" {
  bucket = "saburovga-test"
  key = "infongen-stage-ec2.pem"
}

data "aws_s3_bucket_object" "public_ssh_key" {
  bucket = "saburovga-test"
  key = "infongen-stage-ec2.pub"
}