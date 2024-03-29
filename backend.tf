# terraform {
#   backend "s3" {
#     bucket         = "pbl19"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

terraform {
  
  backend "remote" {
    organization = "savvy-infrastructure-as-code"

    workspaces {
        name =  "Automate-Infrastructure-With-IaC-using-Terraform-Terraform-Cloud"

    }
  }
}