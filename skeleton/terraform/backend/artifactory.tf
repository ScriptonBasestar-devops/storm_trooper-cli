//https://www.terraform.io/docs/backends/types/artifactory.html
terraform {
  backend "artifactory" {
    username = "SheldonCooper"
    password = "AmyFarrahFowler"
    url      = "https://custom.artifactoryonline.com/artifactory"
    repo     = "foo"
    subpath  = "terraform-bar"
  }
}
