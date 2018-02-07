module "app" {
  source = "github.com/ulich/terraform-microservice-modules//elasticbeanstalk"
  app_name = "${var.app_name}"
}
