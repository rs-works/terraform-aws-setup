# terraform {
#   backend "s3" {
#     bucket         = "terraform-aws-setup-terraform"
#     key            = "global/terraform.tfstate"
#     region         = "ap-northeast-1"
#     profile        = "terraform-aws-iac"
#     dynamodb_table = "terraform-aws-setup-terraform-lock"
#   }
# }
