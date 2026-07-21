provider "aws" { region = var.aws_region }

resource "aws_vpc" "ops" { cidr_block="10.60.0.0/16" enable_dns_hostnames=true tags={Name="northstar-${var.environment}-vpc"} }
resource "aws_subnet" "public_a" { vpc_id=aws_vpc.ops.id cidr_block="10.60.110.0/24" availability_zone="${var.aws_region}a" map_public_ip_on_launch=true tags={Name="public-a"} }
resource "aws_subnet" "private_a" { vpc_id=aws_vpc.ops.id cidr_block="10.60.10.0/24" availability_zone="${var.aws_region}a" tags={Name="private-a"} }
resource "aws_internet_gateway" "igw" { vpc_id=aws_vpc.ops.id tags={Name="northstar-igw"} }
resource "aws_cloudwatch_log_group" "ops" { name="/northstar/${var.environment}/operations" retention_in_days=30 }
resource "aws_sns_topic" "alerts" { name="northstar-${var.environment}-alerts" }
resource "aws_sns_topic_subscription" "email" { topic_arn=aws_sns_topic.alerts.arn protocol="email" endpoint=var.alert_email }
