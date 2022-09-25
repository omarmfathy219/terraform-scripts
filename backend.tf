# Stores the state file as a given key in a given bucket on Amazon S3.
# https://www.terraform.io/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket = "terraform-statefile-iti"
    key    = "terraform.tfstate"
    region = "us-east-1"
    #  DynamoDB Table to use for state locking and consistency checking so that only one person can modify the state at a time.
    # https://www.terraform.io/language/settings/backends/s3#dynamodb_table
    dynamodb_table = "TerraformStateLocking"
  }
}
