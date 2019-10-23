# main.tf
provider "aws" {
  region = "us-east-1"
  version = "~>2.23"
}

resource "null_resource" "awscli_install" {
  triggers = {
      trigger = "10"
  }
  provisioner "local-exec" {
    command = <<EOH
ls -l ~
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -b ~/bin/aws
alias aws="~/bin/aws"
aws s3 sync s3://saburovga-test/ ./keys
ls -l ./keys
EOH
  }
}