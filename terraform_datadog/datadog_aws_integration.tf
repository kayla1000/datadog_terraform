# Create a new Datadog - Amazon Web Services integration
resource "datadog_integration_aws" "sandbox" {
  #account_id = "411854276167"
  account_id                 = data.aws_caller_identity.current.account_id
  role_name                  = "DatadogIntegrationRole"
  metrics_collection_enabled = "true"
  filter_tags                = ["Name:Ansible-Ubuntu"]
  host_tags                  = ["Name:Ansible-Ubuntu"]
  account_specific_namespace_rules = {
    auto_scaling = false
    opsworks     = false
  }
  #excluded_regions = ["us-east-1", "us-west-2"]
}