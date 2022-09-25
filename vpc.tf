# This is Hachicorp's language for describing infrastructure as code.
# It's a bit like YAML, but with a lot more power.
# <====================== Terrform Commands ======================>
# terraform init: initialize the terraform project and download the provider plugin
# terraform plan: show what terraform will do when you apply
# terraform apply: apply the changes
# terraform apply --var-file=variables.tfvars: apply the changes with variables from a file (variables.tfvars)
# terraform destroy: destroy the infrastructure
# terraform force-unlock: unlock the state file if it's locked
# terraform fmt: format the code to be more readable
# terraform workspace new dev: create a new workspace called dev
# terraform workspace select dev: select the dev workspace
# terraform workspace list: list all the workspaces
# terraform workspace show: show the current workspace
# terraform workspace delete dev: delete the dev workspace
# terraform output vpc_id: show the output of the vpc_id

# set up the VPC
resource "aws_vpc" "myvpc" {
  cidr_block         = "10.0.0.0/16"
  enable_dns_support = true
  tags = {
    Name = "myvpc"
  }
}