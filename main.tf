# main.tf
provider "aws" {
  region = "us-east-1"
  version = "~>2.23"
}

resource "null_resource" "awscli_install" {
  provisioner "local-exec" {
    command = <<EOH
pip3 install awscli --upgrade --user
export PATH=~/.local/bin:$PATH
aws --version
EOH
  }
}