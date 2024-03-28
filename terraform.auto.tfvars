region = "us-east-1"

vpc_cidr = "172.20.0.0/24"

enable_dns_support = "true"

enable_dns_hostnames = "true"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "Production"


ami-web = "ami-065074df686093d7b"

ami-bastion = "ami-066416c0b10900f9f"

ami-nginx = "ami-0a0fe76cff01cd8cc"

ami-sonar = "ami-0710888ae88ea85e8"

keypair = "servers"

# Ensure to change this to your acccount number
account_no = "005654795190"

master-username = "savvytek"

master-password = "devops123"


tags = {
  Owner-Email     = "taiwolateef55@gmail.com"
  Managed-By      = "terraform"
  Billing-Account = "005654795190"
} 

