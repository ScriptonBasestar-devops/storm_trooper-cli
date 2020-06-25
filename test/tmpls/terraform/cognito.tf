module "cognito-user-pool-client" {
  source                               = "./modules/tf-aws-cognito-user-pool-client"
  name                                 = "${var.cognito_client_params["name"]}"
  user_pool_id                         = "${module.CorpitUserPool.id}"
  read_attributes                      = "${var.read_attributes}"
  supported_identity_providers         = "${var.supported_identity_providers}"
  callback_urls                        = "${var.callback_urls}"
  logout_urls                          = "${var.logout_urls}"
  allowed_oauth_flows                  = ["${var.allowed_oauth_flows}"]
  refresh_token_validity               = "${var.cognito_client_params["refresh_token_validity"]}"
  allowed_oauth_flows_user_pool_client = "${var.cognito_client_params["allowed_oauth_flows_user_pool_client"]}"
  allowed_oauth_scopes                 = "${var.allowed_oauth_scopes}"
}