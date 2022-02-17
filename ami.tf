locals {
  ami_owners = ["amazon"] // Amazon
  ami_filter = {
    name                = ["amazon/amzn2-*"]
    architecture        = ["x86_64"]
    virtualization-type = ["hvm"]
    platform            = ["Amazon Linux"]
    root-device-type    = ["ebs"]
  }
}

data "aws_ami" "this" {
  most_recent = true
  owners      = local.ami_owners

  dynamic "filter" {
    for_each = local.ami_filter
    content {
      name   = filter.key
      values = filter.value
    }
  }
}

locals {
  ami = data.aws_ami.this.id
}
