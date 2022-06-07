terraform {
  required_providers {
    gitea = {
      source = "terraform.local/local/gitea"
      version = "0.1.0"
    }
  }
}

provider "gitea" {
  base_url = var.gitea_url
  token    = var.gitea_token
}