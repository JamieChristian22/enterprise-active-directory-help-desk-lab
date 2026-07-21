variable "aws_region" { type=string default="us-east-1" }
variable "environment" { type=string default="lab" }
variable "alert_email" { type=string description="Email endpoint for SNS subscription" }
