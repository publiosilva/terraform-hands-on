terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "terraform-hands-on"

    workspaces {
      name = "terraform-hands-on-aws"
    }
  }
}
