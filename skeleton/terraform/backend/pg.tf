//https://www.terraform.io/docs/backends/types/pg.html
terraform {
  backend "pg" {
    conn_str = "postgres://user:pass@db.example.com/terraform_backend"
  }
}
