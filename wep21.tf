locals {
  wep21_team = [
    "wep21",
  ]
  wep21_repositories = [
    "aws_sdk_cpp_vendor-release",
    "bag2_to_image-release",
    "tinyspline_vendor-release",
    "turbojpeg_compressed_image_transport-release",
  ]
}

module "wep21_team" {
  source       = "./modules/release_team"
  team_name    = "wep21"
  members      = local.wep21_team
  repositories = local.wep21_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}
