bucket_name = "dev-proj-1-jenkins-remote-state-bucket-7603"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "dev-proj-jenkins-eu-west-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
eu_availability_zone = ["eu-west-1a", "eu-west-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDMAsAQLOwWKC3TwJJgOlzmdkDtG3bgwlZRh4H3I8j98hPZR10f5WSYQOzSNsAUpqk3MBconHd4xrgWTbdwdEJy6eU/tT7VnBZbg7lcyyzlRa/M0FujfHx8roAmmcVD6aihoC42vTAKIAUs39/Rnnhw/F8eJ/jMHq5BGfQBCH0X3809Rj6vAA8vIZfkQBb+AHZOUgNtutyTZsqjbEm8J+02RL7fUFzfGKn8QErCogrkgzTAaNAMigK4QOb4/1bx5om2Q5zZq3ezYWDXIbaV/x4XpacLEEOjfphWQqPZd5AkUcnoHnhoav4svygPeZ3iIICNbHEWpObdiq+hps3BMHzBFQ1YknOmu+Od4tNaKYa1JL/WMFQYF1UqYxPimebh4s2PtH88U5jM2+ytffymQdiNLlkrg1SwdO6VgVMURsTUamiFuOceXSJ0cZXLafr54AaVfOkjlIF5HcCoNaYhz0Hu0ebbiPuJK4mkWcPvl3TZL4MpeMr9HqTT15PPzfd427k= ashis@HP"
ec2_ami_id = "ami-0d64bb532e0502c46"