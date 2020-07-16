#https://www.terraform.io/docs/backends/types/local.html
terraform {
  backend "local" {
    path = "<%= @cloud['persistence']['directory'] %>/terraform.tfstate"
  }
}
