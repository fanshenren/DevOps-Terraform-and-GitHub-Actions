terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "example-org-49ec8c"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db" {
  name    = "GitHub_Actions_DEMO_DB"
  comment = "Database for Snowflake Terraform demo (updated SNOW user and password and environment variables with default role accountadmin AND GRANT try sysadmin"
}