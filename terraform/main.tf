terraform {
  required_providers {
    vercel = {
      source = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}

provider "vercel" {
    api_token = var.api_token
}

resource "vercel_project" "example" {
  name      = "terraform-test-project"
  git_repository = {
    type = "github"
    repo = "evktalo/vercel-experiementing"
  }
}