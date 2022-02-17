resource "aws_iam_user" "adminer" {
  name = "adminer-${local.resource_name}"
  tags = local.tags
}

resource "aws_iam_access_key" "adminer" {
  user = aws_iam_user.adminer.name
}

resource "aws_iam_user_policy" "adminer" {
  user   = aws_iam_user.adminer.name
  policy = data.aws_iam_policy_document.adminer.json
}

data "aws_ssm_document" "ssh" {
  name = "AWS-StartSSHSession"
}

data "aws_iam_policy_document" "adminer" {
  statement {
    sid       = "AllowSSMSession"
    effect    = "Allow"
    actions   = ["ssm:StartSession"]

    resources = [
      aws_instance.this.arn,
      data.aws_ssm_document.ssh.arn,
    ]
  }
}
