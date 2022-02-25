# aws-ec2

This repo is a Nullstone module to launch an EC2 Instance.

The created EC2 instance is accessible via `nullstone exec`.
The EC2 instance is created in a private subnet and is not available publicly.

## AMI Selection

This module selects the latest official Amazon Linux 2 Image.
If you wish to use a different AMI, make sure to have the SSM Agent installed.
Nullstone will run `systemctl` commands against `amazon-ssm-agent` on boot to configure `nullstone exec`.

## Capabilities support

This module offers the following capability support at this time.

#### Supported
- `app_metadata.role_name` - Role Name attached to the EC2 instance. Accessible via EC2 Instance Metadata endpoint.
- `app_metadata.security_group_name` - Security Group attached to the EC2 instance.
- `outputs.public_urls`
- `outputs.private_urls`
 
#### Development In Progress
- `outputs.env`
- `outputs.secrets`
- `outputs.load_balancers`
- `outputs.mount_points`
