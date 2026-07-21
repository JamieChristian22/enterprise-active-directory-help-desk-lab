output "vpc_id" { value=aws_vpc.ops.id }
output "private_subnet_id" { value=aws_subnet.private_a.id }
output "alert_topic_arn" { value=aws_sns_topic.alerts.arn }
