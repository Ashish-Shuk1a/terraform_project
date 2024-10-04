bucket_name = ""    # S3 bucket name for remote state

vpc_cidr             = "11.0.0.0/16"
vpc_name             = ""                               # VPC name
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
eu_availability_zone = ["eu-west-1a", "eu-west-1b"]

public_key = ""
ec2_ami_id = "ami-0d64bb532e0502c46"     # Ubuntu 20.04 LTS