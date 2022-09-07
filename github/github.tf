terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = var.my_token
}

resource "github_repository" "example" {
  name        = "terraform-demos"
  visibility = "private"
}