module "app" {
  source   = "modules/elasticbeanstalk"
  app_name = "${app_name}"
}
