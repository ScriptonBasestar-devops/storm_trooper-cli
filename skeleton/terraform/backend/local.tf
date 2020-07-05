#https://www.terraform.io/docs/backends/types/local.html
terraform {
  backend "local" {
    path = "relative/path/to/terraform.tfstate"
  }
}
