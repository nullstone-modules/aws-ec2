variable "instance_type" {
  type        = string
  default     = "t3.nano"
  description = <<EOF
Instance Type that dictates CPU, Memory, network bandwidth, and file storage type and bandwidth.
See https://aws.amazon.com/ec2/instance-types/ for EC2 instance types.
EOF
}
