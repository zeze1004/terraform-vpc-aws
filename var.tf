locals {
  env = "Dev"
  project = "sulsul"
  name = join("-", [local.env, local.project])
}