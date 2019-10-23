# main.tf
provider "aws" {
  region = "us-east-1"
  version = "~>2.23"
}

# resource "null_resource" "awscli_install" {
#   triggers = {
#       trigger = "11"
#   }
#   provisioner "local-exec" {
#     command = <<EOH
# curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
# unzip awscli-bundle.zip
# ./awscli-bundle/install -b ~/bin/aws
# alias aws="~/bin/aws"
# EOH
#   }
# }