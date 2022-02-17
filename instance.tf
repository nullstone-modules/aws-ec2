resource "aws_iam_instance_profile" "this" {
  name = local.resource_name
  role = aws_iam_role.this.name
}

resource "aws_instance" "this" {
  ami                         = local.ami
  instance_type               = var.instance_type
  subnet_id                   = local.private_subnet_ids[0]
  vpc_security_group_ids      = [aws_security_group.this.id]
  tags                        = local.tags
  associate_public_ip_address = false
  iam_instance_profile        = aws_iam_instance_profile.this.name
  disable_api_termination     = false
  monitoring                  = false
  user_data                   = local.user-data

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
}