resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {
     alarm_name                = "cpu-utilization"
     comparison_operator       = "GreaterThanOrEqualToThreshold"
     evaluation_periods        = "2"
     metric_name               = "CPUUtilization"
     namespace                 = "AWS/EC2"
     period                    = "120" #seconds
     statistic                 = "Average"
     threshold                 = "5"
     alarm_description         = "This metric monitors ec2 cpu utilization"
     insufficient_data_actions = []
dimensions = {
       InstanceId = aws_instance.ec2-web.id
     }
}

resource "aws_cloudwatch_metric_alarm" "disk_use" {
  alarm_name                = "ec2-disk-usage"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "disk_used_percent"
  namespace                 = "CWAgent"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "20"
  alarm_description         = "This metric monitors ec2 disk utilization"
  actions_enabled           = "true"
  alarm_actions             = ["arn:aws:sns:us-east-1:703734704101:cloudwatch-alarm"]
  insufficient_data_actions = []
  #treat_missing_data = "notBreaching"

   dimensions = {
    path = "/"
    InstanceId = "i-00a3d44b92ed34715"
    device = "/dev/sda1"
    fstype = "ext4"
  }
}


resource "aws_cloudwatch_metric_alarm" "high_memory_usage" {
  alarm_name          = "high-memory-usage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "mem_used_percent"
  namespace           = "CWAgent"
  period              = "300"
  statistic           = "Average"
  threshold           = 20
  alarm_description   = "This alarm monitors EC2 memory usage"
  alarm_actions       = ["arn:aws:sns:us-east-1:703734704101:cloudwatch-alarm"]

  dimensions = {
    InstanceId = aws_instance.ec2-web.id
  }
}
