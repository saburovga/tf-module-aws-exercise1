# main.tf
provider "aws" {
  region = "us-east-1"
  version = "~>2.23"
}

resource "null_resource" "check_python" {
  provisioner "local-exec" {
    command = <<EOH
python3 --version
EOH
  }
}