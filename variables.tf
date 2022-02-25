variable "ami" {
  type        = string
  default     = ""
  description = <<EOF
By default, this module will choose the latest official Amazon Linux 2 image available.
Specify `ami` to select an alternative AMI.

This module will run `systemctl` commands against `amazon-ssm-agent`.
Make sure the selected AMI has Amazon SSM Agent installed to enable `nullstone exec`.
EOF
}

variable "instance_type" {
  type        = string
  default     = "t3.nano"
  description = <<EOF
Instance Type that dictates CPU, Memory, network bandwidth, and file storage type and bandwidth.
See https://aws.amazon.com/ec2/instance-types/ for EC2 instance types.
EOF
}
