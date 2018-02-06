module "app" {
  source   = "modules/elasticbeanstalk"
  app_name = "${var.app_name}"
}
