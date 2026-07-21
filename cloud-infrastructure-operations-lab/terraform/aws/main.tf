provider "aws" { region=var.region }
data "aws_availability_zones" "available" { state="available" }
resource "aws_vpc" "main" { cidr_block="10.20.0.0/16" enable_dns_hostnames=true tags={Name="${var.project}-vpc"} }
resource "aws_subnet" "public_a" { vpc_id=aws_vpc.main.id cidr_block="10.20.1.0/24" availability_zone=data.aws_availability_zones.available.names[0] map_public_ip_on_launch=true tags={Name="public-a"} }
resource "aws_subnet" "private_a" { vpc_id=aws_vpc.main.id cidr_block="10.20.11.0/24" availability_zone=data.aws_availability_zones.available.names[0] tags={Name="private-a"} }
resource "aws_cloudwatch_log_group" "ops" { name="/${var.project}/operations" retention_in_days=30 }
