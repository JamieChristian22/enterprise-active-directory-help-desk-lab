output "vpc_id" { value=aws_vpc.main.id }
output "operations_log_group" { value=aws_cloudwatch_log_group.ops.name }
