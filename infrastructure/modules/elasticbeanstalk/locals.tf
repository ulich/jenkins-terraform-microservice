locals {
  workspaces = {
    default = {
      environment_name = "staging"
    }
    prod = {
      environment_name = "prod"
    }
  }
  workspace  = "${local.workspaces[terraform.workspace]}"
}
