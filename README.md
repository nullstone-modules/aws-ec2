# EC2 Instance

This is a Nullstone application module that provides a mechanism for launching EC2 instances (Virtual Machines).

## When to use

The EC2 Instance module allows you to run custom workloads with custom configuration on an EC2 instance.
Instead of launching manually, this module provides access controls to use `nullstone ssh` and easy configuration of access to other infrastructure (e.g. databases)

## Security & Compliance

We intentionally do not run compliance scanning on this module because it is usually used for custom configuration.
We do not want to provide you with a false sense of security.
Instead, it will be up to your team to fully secure and administer compliance of this EC2 instance.

## Network Access

The EC2 instance is launched into private subnets on the connected network.
The instance is accessible to other services on the private network (with proper security groups enabled).

The instance is *not* accessible from the internet unless a custom `Ingress` capability is added to direct traffic to the instance.

## Direct Access

The created EC2 instance is accessible via `nullstone ssh` and does not require a bastion to access.

## AMI Selection

By default, this module will launch an EC2 instance using the latest `Amazon Linux 2` virtual machine image.
To use a custom image, specify `var.ami` with an authorized image that is available in the current AWS region.

In order for this app to work properly, the selected AMI must have the SSM Agent installed.
During provisioning, Nullstone configures the instance to start `amazon-ssm-agent` on the instance during bootup.

## Secrets

Environment variables and secrets are not supported yet.

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
