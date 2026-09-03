resource "aws_cloudwatch_metric_alarm" "cpu" {
  count = local.enable_alarms ? 1 : 0

  alarm_name          = "${local.resource_name}/cpu-utilization"
  alarm_description   = "Average CPU utilization >= ${var.alert_thresholds.cpu}% on ${local.resource_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 3
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = var.alert_thresholds.cpu
  treat_missing_data  = "notBreaching"

  dimensions = {
    InstanceId = aws_instance.this.id
  }

  alarm_actions = [local.notification_arn]
  ok_actions    = [local.notification_arn]
}
