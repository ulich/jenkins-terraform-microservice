# Please refer to https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html

resource "aws_elastic_beanstalk_application" "application" {
  name = "${var.app_name}"
}

resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "${var.app_name}"
  application         = "${aws_elastic_beanstalk_application.application.name}"
  solution_stack_name = "Amazon Linux 2017.09 v2.6.1 mit 64 Bit und Java 8"
  tier                = "WebServer"

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name = "SERVER_PORT"
    value = "5000"
  }
}
