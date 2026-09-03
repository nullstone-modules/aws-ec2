# 0.4.0 (Aug 31, 2026)
* Switched to OpenTofu.
* Added optional `notification` connection to enable critical monitoring.
* Added CPU utilization alarm configured via `var.alert_thresholds`.

# 0.3.0 (Jun 19, 2026)
* Upgraded `nullstone-io/ns` provider to `~> 0.11.0`.
* Used `aws_tags` from `data.ns_workspace` to tag all resources via provider `default_tags`.

# 0.2.1 (Mar 05, 2026)
* Upgrade to latest ns terraform provider to improve env var interpolation

# 0.2.0 (Sep 22, 2025)
* Upgraded terraform providers.

# 0.1.0 (Aug 08, 2023)
* Initial release.
