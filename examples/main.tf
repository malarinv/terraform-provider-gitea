resource "gitea_repository" "test" {
  username     = "lerentis"
  name         = "test"
  private      = true
  issue_labels = "Default"
  license      = "MIT"
  gitignores   = "Go"
}

resource "gitea_repository" "mirror" {
  username                     = "lerentis"
  name                         = "terraform-provider-gitea-mirror"
  description                  = "Mirror of Terraform Provider"
  mirror                       = true
  migration_clone_addresse     = "https://git.uploadfilter24.eu/lerentis/terraform-provider-gitea.git"
  migration_service            = "gitea"
  migration_service_auth_token = var.gitea_mirror_token
}
