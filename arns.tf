resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-us-east-1-003A-540427313667-003A-certificate-002F-196ba4c6-dd0c-4a94-afc9-5d4769bf8e0e" {
  domain_name   = "autocloud.dev"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.autocloud.dev", "autocloud.dev"]

  tags = {
    Name = "autocloud-nonprod-wildcard"
  }

  validation_method = "EMAIL"
}

resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-us-east-1-003A-540427313667-003A-certificate-002F-9d106333-11d5-4e31-89cb-61367982da89" {
  domain_name   = "demo.autocloud.dev"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.demo.autocloud.dev", "*.demo.autocloud.io", "demo.autocloud.dev", "demo.autocloud.io"]

  tags = {
    Account               = "nonprod"
    Cloud_provider        = "aws"
    Environment           = "demo"
    Name                  = "autocloud-demo-wildcard"
    Namespace             = "autocloud"
    Region                = "us-east-1"
    VantaContainsUserData = "false"
    VantaDescription      = "AutoCloud AWS demo Account ACM Wildcard"
    VantaNonProd          = "true"
    VantaOwner            = "chris@autocloud.dev"
  }

  validation_method = "DNS"
}

resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-us-east-1-003A-540427313667-003A-certificate-002F-b7635d4d-6dd0-4a96-b438-87ef7102870f" {
  domain_name   = "nonprod.autocloud.dev"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.nonprod.autocloud.dev", "*.nonprod.autocloud.io", "nonprod.autocloud.dev", "nonprod.autocloud.io"]

  tags = {
    Account               = "nonprod"
    Cloud_provider        = "aws"
    Environment           = "nonprod"
    Name                  = "autocloud-nonprod-wildcard"
    Namespace             = "autocloud"
    Region                = "us-east-1"
    VantaContainsUserData = "false"
    VantaDescription      = "AutoCloud AWS nonprod Account ACM Wildcard"
    VantaNonProd          = "true"
    VantaOwner            = "chris@autocloud.dev"
  }

  validation_method = "DNS"
}
