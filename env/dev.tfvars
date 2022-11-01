vpc_cidr_block = "172.20.0.0/16"

# Public subnets
subnet_cidrs_public = ["172.20.1.0/24", "172.20.2.0/24", "172.20.3.0/24"]

# Private subnets for app
subnet_cidrs_private1 = ["172.20.4.0/24", "172.20.5.0/24", "172.20.6.0/24"]

# Private subnets for db
subnet_cidrs_private2 = ["172.20.7.0/24", "172.20.8.0/24", "172.20.9.0/24"]

# AZs for Highly Availability
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
