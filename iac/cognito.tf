resource "aws_cognito_user_pool" "pool" {
  name                = "mypool"
  username_attributes = ["email"]

  schema {
    attribute_data_type = "String"
    mutable             = true
    name                = "email"
    required            = true
    string_attribute_constraints {
      min_length = 1
      max_length = 2048
    }
  }

  username_configuration {
    case_sensitive = false
  }
}
