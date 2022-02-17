# aws-ec2-ssm-example

Example repo that serves as an example of an app/server Nullstone module that allows SSM access to an EC2 instance.

This creates the following:
- EC2 Instance
  - inbound public access disabled
  - outbound access disabled
- IAM Instance Profile attached to EC2 Instance with SSM support allowed
- `adminer` IAM User that allows SSM session privilege on the EC2 instance
