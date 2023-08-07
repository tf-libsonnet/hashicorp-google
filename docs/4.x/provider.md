---
permalink: /provider/
---

# provider

`provider` represents the `google` Terraform provider config.



This package contains functions and utilities for setting up the provider using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`obj batching`](#obj-batching)
  * [`fn new()`](#fn-batchingnew)

## Fields

### fn new

```ts
new()
```


`google.provider.new` injects a new `google` Terraform `provider`
block into the root module document.

Optionally, this inserts the provider into the
[required_providers](https://developer.hashicorp.com/terraform/language/providers/requirements) `terraform` sub block if
the `src` and/or `version` parameters are set.

**Args**:
  - `access_approval_custom_endpoint` (`string`): Set the `access_approval_custom_endpoint` field on the resulting provider block. When `null`, the `access_approval_custom_endpoint` field will be omitted from the resulting object.
  - `access_context_manager_custom_endpoint` (`string`): Set the `access_context_manager_custom_endpoint` field on the resulting provider block. When `null`, the `access_context_manager_custom_endpoint` field will be omitted from the resulting object.
  - `access_token` (`string`): Set the `access_token` field on the resulting provider block. When `null`, the `access_token` field will be omitted from the resulting object.
  - `active_directory_custom_endpoint` (`string`): Set the `active_directory_custom_endpoint` field on the resulting provider block. When `null`, the `active_directory_custom_endpoint` field will be omitted from the resulting object.
  - `alloydb_custom_endpoint` (`string`): Set the `alloydb_custom_endpoint` field on the resulting provider block. When `null`, the `alloydb_custom_endpoint` field will be omitted from the resulting object.
  - `apigee_custom_endpoint` (`string`): Set the `apigee_custom_endpoint` field on the resulting provider block. When `null`, the `apigee_custom_endpoint` field will be omitted from the resulting object.
  - `apikeys_custom_endpoint` (`string`): Set the `apikeys_custom_endpoint` field on the resulting provider block. When `null`, the `apikeys_custom_endpoint` field will be omitted from the resulting object.
  - `app_engine_custom_endpoint` (`string`): Set the `app_engine_custom_endpoint` field on the resulting provider block. When `null`, the `app_engine_custom_endpoint` field will be omitted from the resulting object.
  - `artifact_registry_custom_endpoint` (`string`): Set the `artifact_registry_custom_endpoint` field on the resulting provider block. When `null`, the `artifact_registry_custom_endpoint` field will be omitted from the resulting object.
  - `assured_workloads_custom_endpoint` (`string`): Set the `assured_workloads_custom_endpoint` field on the resulting provider block. When `null`, the `assured_workloads_custom_endpoint` field will be omitted from the resulting object.
  - `beyondcorp_custom_endpoint` (`string`): Set the `beyondcorp_custom_endpoint` field on the resulting provider block. When `null`, the `beyondcorp_custom_endpoint` field will be omitted from the resulting object.
  - `big_query_custom_endpoint` (`string`): Set the `big_query_custom_endpoint` field on the resulting provider block. When `null`, the `big_query_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_analytics_hub_custom_endpoint` (`string`): Set the `bigquery_analytics_hub_custom_endpoint` field on the resulting provider block. When `null`, the `bigquery_analytics_hub_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_connection_custom_endpoint` (`string`): Set the `bigquery_connection_custom_endpoint` field on the resulting provider block. When `null`, the `bigquery_connection_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_data_transfer_custom_endpoint` (`string`): Set the `bigquery_data_transfer_custom_endpoint` field on the resulting provider block. When `null`, the `bigquery_data_transfer_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_datapolicy_custom_endpoint` (`string`): Set the `bigquery_datapolicy_custom_endpoint` field on the resulting provider block. When `null`, the `bigquery_datapolicy_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_reservation_custom_endpoint` (`string`): Set the `bigquery_reservation_custom_endpoint` field on the resulting provider block. When `null`, the `bigquery_reservation_custom_endpoint` field will be omitted from the resulting object.
  - `bigtable_custom_endpoint` (`string`): Set the `bigtable_custom_endpoint` field on the resulting provider block. When `null`, the `bigtable_custom_endpoint` field will be omitted from the resulting object.
  - `billing_custom_endpoint` (`string`): Set the `billing_custom_endpoint` field on the resulting provider block. When `null`, the `billing_custom_endpoint` field will be omitted from the resulting object.
  - `billing_project` (`string`): Set the `billing_project` field on the resulting provider block. When `null`, the `billing_project` field will be omitted from the resulting object.
  - `binary_authorization_custom_endpoint` (`string`): Set the `binary_authorization_custom_endpoint` field on the resulting provider block. When `null`, the `binary_authorization_custom_endpoint` field will be omitted from the resulting object.
  - `certificate_manager_custom_endpoint` (`string`): Set the `certificate_manager_custom_endpoint` field on the resulting provider block. When `null`, the `certificate_manager_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_asset_custom_endpoint` (`string`): Set the `cloud_asset_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_asset_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_billing_custom_endpoint` (`string`): Set the `cloud_billing_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_billing_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_build_custom_endpoint` (`string`): Set the `cloud_build_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_build_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_build_worker_pool_custom_endpoint` (`string`): Set the `cloud_build_worker_pool_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_build_worker_pool_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_functions_custom_endpoint` (`string`): Set the `cloud_functions_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_functions_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_identity_custom_endpoint` (`string`): Set the `cloud_identity_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_identity_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_ids_custom_endpoint` (`string`): Set the `cloud_ids_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_ids_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_iot_custom_endpoint` (`string`): Set the `cloud_iot_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_iot_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_resource_manager_custom_endpoint` (`string`): Set the `cloud_resource_manager_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_resource_manager_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_run_custom_endpoint` (`string`): Set the `cloud_run_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_run_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_run_v2_custom_endpoint` (`string`): Set the `cloud_run_v2_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_run_v2_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_scheduler_custom_endpoint` (`string`): Set the `cloud_scheduler_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_scheduler_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_tasks_custom_endpoint` (`string`): Set the `cloud_tasks_custom_endpoint` field on the resulting provider block. When `null`, the `cloud_tasks_custom_endpoint` field will be omitted from the resulting object.
  - `cloudbuildv2_custom_endpoint` (`string`): Set the `cloudbuildv2_custom_endpoint` field on the resulting provider block. When `null`, the `cloudbuildv2_custom_endpoint` field will be omitted from the resulting object.
  - `clouddeploy_custom_endpoint` (`string`): Set the `clouddeploy_custom_endpoint` field on the resulting provider block. When `null`, the `clouddeploy_custom_endpoint` field will be omitted from the resulting object.
  - `cloudfunctions2_custom_endpoint` (`string`): Set the `cloudfunctions2_custom_endpoint` field on the resulting provider block. When `null`, the `cloudfunctions2_custom_endpoint` field will be omitted from the resulting object.
  - `composer_custom_endpoint` (`string`): Set the `composer_custom_endpoint` field on the resulting provider block. When `null`, the `composer_custom_endpoint` field will be omitted from the resulting object.
  - `compute_custom_endpoint` (`string`): Set the `compute_custom_endpoint` field on the resulting provider block. When `null`, the `compute_custom_endpoint` field will be omitted from the resulting object.
  - `container_analysis_custom_endpoint` (`string`): Set the `container_analysis_custom_endpoint` field on the resulting provider block. When `null`, the `container_analysis_custom_endpoint` field will be omitted from the resulting object.
  - `container_attached_custom_endpoint` (`string`): Set the `container_attached_custom_endpoint` field on the resulting provider block. When `null`, the `container_attached_custom_endpoint` field will be omitted from the resulting object.
  - `container_aws_custom_endpoint` (`string`): Set the `container_aws_custom_endpoint` field on the resulting provider block. When `null`, the `container_aws_custom_endpoint` field will be omitted from the resulting object.
  - `container_azure_custom_endpoint` (`string`): Set the `container_azure_custom_endpoint` field on the resulting provider block. When `null`, the `container_azure_custom_endpoint` field will be omitted from the resulting object.
  - `container_custom_endpoint` (`string`): Set the `container_custom_endpoint` field on the resulting provider block. When `null`, the `container_custom_endpoint` field will be omitted from the resulting object.
  - `credentials` (`string`): Set the `credentials` field on the resulting provider block. When `null`, the `credentials` field will be omitted from the resulting object.
  - `data_catalog_custom_endpoint` (`string`): Set the `data_catalog_custom_endpoint` field on the resulting provider block. When `null`, the `data_catalog_custom_endpoint` field will be omitted from the resulting object.
  - `data_fusion_custom_endpoint` (`string`): Set the `data_fusion_custom_endpoint` field on the resulting provider block. When `null`, the `data_fusion_custom_endpoint` field will be omitted from the resulting object.
  - `data_loss_prevention_custom_endpoint` (`string`): Set the `data_loss_prevention_custom_endpoint` field on the resulting provider block. When `null`, the `data_loss_prevention_custom_endpoint` field will be omitted from the resulting object.
  - `database_migration_service_custom_endpoint` (`string`): Set the `database_migration_service_custom_endpoint` field on the resulting provider block. When `null`, the `database_migration_service_custom_endpoint` field will be omitted from the resulting object.
  - `dataflow_custom_endpoint` (`string`): Set the `dataflow_custom_endpoint` field on the resulting provider block. When `null`, the `dataflow_custom_endpoint` field will be omitted from the resulting object.
  - `dataplex_custom_endpoint` (`string`): Set the `dataplex_custom_endpoint` field on the resulting provider block. When `null`, the `dataplex_custom_endpoint` field will be omitted from the resulting object.
  - `dataproc_custom_endpoint` (`string`): Set the `dataproc_custom_endpoint` field on the resulting provider block. When `null`, the `dataproc_custom_endpoint` field will be omitted from the resulting object.
  - `dataproc_metastore_custom_endpoint` (`string`): Set the `dataproc_metastore_custom_endpoint` field on the resulting provider block. When `null`, the `dataproc_metastore_custom_endpoint` field will be omitted from the resulting object.
  - `datastore_custom_endpoint` (`string`): Set the `datastore_custom_endpoint` field on the resulting provider block. When `null`, the `datastore_custom_endpoint` field will be omitted from the resulting object.
  - `datastream_custom_endpoint` (`string`): Set the `datastream_custom_endpoint` field on the resulting provider block. When `null`, the `datastream_custom_endpoint` field will be omitted from the resulting object.
  - `deployment_manager_custom_endpoint` (`string`): Set the `deployment_manager_custom_endpoint` field on the resulting provider block. When `null`, the `deployment_manager_custom_endpoint` field will be omitted from the resulting object.
  - `dialogflow_custom_endpoint` (`string`): Set the `dialogflow_custom_endpoint` field on the resulting provider block. When `null`, the `dialogflow_custom_endpoint` field will be omitted from the resulting object.
  - `dialogflow_cx_custom_endpoint` (`string`): Set the `dialogflow_cx_custom_endpoint` field on the resulting provider block. When `null`, the `dialogflow_cx_custom_endpoint` field will be omitted from the resulting object.
  - `dns_custom_endpoint` (`string`): Set the `dns_custom_endpoint` field on the resulting provider block. When `null`, the `dns_custom_endpoint` field will be omitted from the resulting object.
  - `document_ai_custom_endpoint` (`string`): Set the `document_ai_custom_endpoint` field on the resulting provider block. When `null`, the `document_ai_custom_endpoint` field will be omitted from the resulting object.
  - `document_ai_warehouse_custom_endpoint` (`string`): Set the `document_ai_warehouse_custom_endpoint` field on the resulting provider block. When `null`, the `document_ai_warehouse_custom_endpoint` field will be omitted from the resulting object.
  - `essential_contacts_custom_endpoint` (`string`): Set the `essential_contacts_custom_endpoint` field on the resulting provider block. When `null`, the `essential_contacts_custom_endpoint` field will be omitted from the resulting object.
  - `eventarc_custom_endpoint` (`string`): Set the `eventarc_custom_endpoint` field on the resulting provider block. When `null`, the `eventarc_custom_endpoint` field will be omitted from the resulting object.
  - `filestore_custom_endpoint` (`string`): Set the `filestore_custom_endpoint` field on the resulting provider block. When `null`, the `filestore_custom_endpoint` field will be omitted from the resulting object.
  - `firebaserules_custom_endpoint` (`string`): Set the `firebaserules_custom_endpoint` field on the resulting provider block. When `null`, the `firebaserules_custom_endpoint` field will be omitted from the resulting object.
  - `firestore_custom_endpoint` (`string`): Set the `firestore_custom_endpoint` field on the resulting provider block. When `null`, the `firestore_custom_endpoint` field will be omitted from the resulting object.
  - `game_services_custom_endpoint` (`string`): Set the `game_services_custom_endpoint` field on the resulting provider block. When `null`, the `game_services_custom_endpoint` field will be omitted from the resulting object.
  - `gke_backup_custom_endpoint` (`string`): Set the `gke_backup_custom_endpoint` field on the resulting provider block. When `null`, the `gke_backup_custom_endpoint` field will be omitted from the resulting object.
  - `gke_hub2_custom_endpoint` (`string`): Set the `gke_hub2_custom_endpoint` field on the resulting provider block. When `null`, the `gke_hub2_custom_endpoint` field will be omitted from the resulting object.
  - `gke_hub_custom_endpoint` (`string`): Set the `gke_hub_custom_endpoint` field on the resulting provider block. When `null`, the `gke_hub_custom_endpoint` field will be omitted from the resulting object.
  - `healthcare_custom_endpoint` (`string`): Set the `healthcare_custom_endpoint` field on the resulting provider block. When `null`, the `healthcare_custom_endpoint` field will be omitted from the resulting object.
  - `iam2_custom_endpoint` (`string`): Set the `iam2_custom_endpoint` field on the resulting provider block. When `null`, the `iam2_custom_endpoint` field will be omitted from the resulting object.
  - `iam_beta_custom_endpoint` (`string`): Set the `iam_beta_custom_endpoint` field on the resulting provider block. When `null`, the `iam_beta_custom_endpoint` field will be omitted from the resulting object.
  - `iam_credentials_custom_endpoint` (`string`): Set the `iam_credentials_custom_endpoint` field on the resulting provider block. When `null`, the `iam_credentials_custom_endpoint` field will be omitted from the resulting object.
  - `iam_custom_endpoint` (`string`): Set the `iam_custom_endpoint` field on the resulting provider block. When `null`, the `iam_custom_endpoint` field will be omitted from the resulting object.
  - `iam_workforce_pool_custom_endpoint` (`string`): Set the `iam_workforce_pool_custom_endpoint` field on the resulting provider block. When `null`, the `iam_workforce_pool_custom_endpoint` field will be omitted from the resulting object.
  - `iap_custom_endpoint` (`string`): Set the `iap_custom_endpoint` field on the resulting provider block. When `null`, the `iap_custom_endpoint` field will be omitted from the resulting object.
  - `identity_platform_custom_endpoint` (`string`): Set the `identity_platform_custom_endpoint` field on the resulting provider block. When `null`, the `identity_platform_custom_endpoint` field will be omitted from the resulting object.
  - `impersonate_service_account` (`string`): Set the `impersonate_service_account` field on the resulting provider block. When `null`, the `impersonate_service_account` field will be omitted from the resulting object.
  - `impersonate_service_account_delegates` (`list`): Set the `impersonate_service_account_delegates` field on the resulting provider block. When `null`, the `impersonate_service_account_delegates` field will be omitted from the resulting object.
  - `kms_custom_endpoint` (`string`): Set the `kms_custom_endpoint` field on the resulting provider block. When `null`, the `kms_custom_endpoint` field will be omitted from the resulting object.
  - `logging_custom_endpoint` (`string`): Set the `logging_custom_endpoint` field on the resulting provider block. When `null`, the `logging_custom_endpoint` field will be omitted from the resulting object.
  - `looker_custom_endpoint` (`string`): Set the `looker_custom_endpoint` field on the resulting provider block. When `null`, the `looker_custom_endpoint` field will be omitted from the resulting object.
  - `memcache_custom_endpoint` (`string`): Set the `memcache_custom_endpoint` field on the resulting provider block. When `null`, the `memcache_custom_endpoint` field will be omitted from the resulting object.
  - `ml_engine_custom_endpoint` (`string`): Set the `ml_engine_custom_endpoint` field on the resulting provider block. When `null`, the `ml_engine_custom_endpoint` field will be omitted from the resulting object.
  - `monitoring_custom_endpoint` (`string`): Set the `monitoring_custom_endpoint` field on the resulting provider block. When `null`, the `monitoring_custom_endpoint` field will be omitted from the resulting object.
  - `network_connectivity_custom_endpoint` (`string`): Set the `network_connectivity_custom_endpoint` field on the resulting provider block. When `null`, the `network_connectivity_custom_endpoint` field will be omitted from the resulting object.
  - `network_management_custom_endpoint` (`string`): Set the `network_management_custom_endpoint` field on the resulting provider block. When `null`, the `network_management_custom_endpoint` field will be omitted from the resulting object.
  - `network_security_custom_endpoint` (`string`): Set the `network_security_custom_endpoint` field on the resulting provider block. When `null`, the `network_security_custom_endpoint` field will be omitted from the resulting object.
  - `network_services_custom_endpoint` (`string`): Set the `network_services_custom_endpoint` field on the resulting provider block. When `null`, the `network_services_custom_endpoint` field will be omitted from the resulting object.
  - `notebooks_custom_endpoint` (`string`): Set the `notebooks_custom_endpoint` field on the resulting provider block. When `null`, the `notebooks_custom_endpoint` field will be omitted from the resulting object.
  - `org_policy_custom_endpoint` (`string`): Set the `org_policy_custom_endpoint` field on the resulting provider block. When `null`, the `org_policy_custom_endpoint` field will be omitted from the resulting object.
  - `os_config_custom_endpoint` (`string`): Set the `os_config_custom_endpoint` field on the resulting provider block. When `null`, the `os_config_custom_endpoint` field will be omitted from the resulting object.
  - `os_login_custom_endpoint` (`string`): Set the `os_login_custom_endpoint` field on the resulting provider block. When `null`, the `os_login_custom_endpoint` field will be omitted from the resulting object.
  - `privateca_custom_endpoint` (`string`): Set the `privateca_custom_endpoint` field on the resulting provider block. When `null`, the `privateca_custom_endpoint` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting provider block. When `null`, the `project` field will be omitted from the resulting object.
  - `public_ca_custom_endpoint` (`string`): Set the `public_ca_custom_endpoint` field on the resulting provider block. When `null`, the `public_ca_custom_endpoint` field will be omitted from the resulting object.
  - `pubsub_custom_endpoint` (`string`): Set the `pubsub_custom_endpoint` field on the resulting provider block. When `null`, the `pubsub_custom_endpoint` field will be omitted from the resulting object.
  - `pubsub_lite_custom_endpoint` (`string`): Set the `pubsub_lite_custom_endpoint` field on the resulting provider block. When `null`, the `pubsub_lite_custom_endpoint` field will be omitted from the resulting object.
  - `recaptcha_enterprise_custom_endpoint` (`string`): Set the `recaptcha_enterprise_custom_endpoint` field on the resulting provider block. When `null`, the `recaptcha_enterprise_custom_endpoint` field will be omitted from the resulting object.
  - `redis_custom_endpoint` (`string`): Set the `redis_custom_endpoint` field on the resulting provider block. When `null`, the `redis_custom_endpoint` field will be omitted from the resulting object.
  - `region` (`string`): Set the `region` field on the resulting provider block. When `null`, the `region` field will be omitted from the resulting object.
  - `request_reason` (`string`): Set the `request_reason` field on the resulting provider block. When `null`, the `request_reason` field will be omitted from the resulting object.
  - `request_timeout` (`string`): Set the `request_timeout` field on the resulting provider block. When `null`, the `request_timeout` field will be omitted from the resulting object.
  - `resource_manager_custom_endpoint` (`string`): Set the `resource_manager_custom_endpoint` field on the resulting provider block. When `null`, the `resource_manager_custom_endpoint` field will be omitted from the resulting object.
  - `resource_manager_v3_custom_endpoint` (`string`): Set the `resource_manager_v3_custom_endpoint` field on the resulting provider block. When `null`, the `resource_manager_v3_custom_endpoint` field will be omitted from the resulting object.
  - `scopes` (`list`): Set the `scopes` field on the resulting provider block. When `null`, the `scopes` field will be omitted from the resulting object.
  - `secret_manager_custom_endpoint` (`string`): Set the `secret_manager_custom_endpoint` field on the resulting provider block. When `null`, the `secret_manager_custom_endpoint` field will be omitted from the resulting object.
  - `security_center_custom_endpoint` (`string`): Set the `security_center_custom_endpoint` field on the resulting provider block. When `null`, the `security_center_custom_endpoint` field will be omitted from the resulting object.
  - `service_management_custom_endpoint` (`string`): Set the `service_management_custom_endpoint` field on the resulting provider block. When `null`, the `service_management_custom_endpoint` field will be omitted from the resulting object.
  - `service_networking_custom_endpoint` (`string`): Set the `service_networking_custom_endpoint` field on the resulting provider block. When `null`, the `service_networking_custom_endpoint` field will be omitted from the resulting object.
  - `service_usage_custom_endpoint` (`string`): Set the `service_usage_custom_endpoint` field on the resulting provider block. When `null`, the `service_usage_custom_endpoint` field will be omitted from the resulting object.
  - `source_repo_custom_endpoint` (`string`): Set the `source_repo_custom_endpoint` field on the resulting provider block. When `null`, the `source_repo_custom_endpoint` field will be omitted from the resulting object.
  - `spanner_custom_endpoint` (`string`): Set the `spanner_custom_endpoint` field on the resulting provider block. When `null`, the `spanner_custom_endpoint` field will be omitted from the resulting object.
  - `sql_custom_endpoint` (`string`): Set the `sql_custom_endpoint` field on the resulting provider block. When `null`, the `sql_custom_endpoint` field will be omitted from the resulting object.
  - `storage_custom_endpoint` (`string`): Set the `storage_custom_endpoint` field on the resulting provider block. When `null`, the `storage_custom_endpoint` field will be omitted from the resulting object.
  - `storage_transfer_custom_endpoint` (`string`): Set the `storage_transfer_custom_endpoint` field on the resulting provider block. When `null`, the `storage_transfer_custom_endpoint` field will be omitted from the resulting object.
  - `tags_custom_endpoint` (`string`): Set the `tags_custom_endpoint` field on the resulting provider block. When `null`, the `tags_custom_endpoint` field will be omitted from the resulting object.
  - `tags_location_custom_endpoint` (`string`): Set the `tags_location_custom_endpoint` field on the resulting provider block. When `null`, the `tags_location_custom_endpoint` field will be omitted from the resulting object.
  - `tpu_custom_endpoint` (`string`): Set the `tpu_custom_endpoint` field on the resulting provider block. When `null`, the `tpu_custom_endpoint` field will be omitted from the resulting object.
  - `user_project_override` (`bool`): Set the `user_project_override` field on the resulting provider block. When `null`, the `user_project_override` field will be omitted from the resulting object.
  - `vertex_ai_custom_endpoint` (`string`): Set the `vertex_ai_custom_endpoint` field on the resulting provider block. When `null`, the `vertex_ai_custom_endpoint` field will be omitted from the resulting object.
  - `vpc_access_custom_endpoint` (`string`): Set the `vpc_access_custom_endpoint` field on the resulting provider block. When `null`, the `vpc_access_custom_endpoint` field will be omitted from the resulting object.
  - `workflows_custom_endpoint` (`string`): Set the `workflows_custom_endpoint` field on the resulting provider block. When `null`, the `workflows_custom_endpoint` field will be omitted from the resulting object.
  - `zone` (`string`): Set the `zone` field on the resulting provider block. When `null`, the `zone` field will be omitted from the resulting object.
  - `batching` (`list[obj]`): Set the `batching` field on the resulting provider block. When `null`, the `batching` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.provider.batching.new](#fn-googlebatchingnew) constructor.
  - `alias` (`string`): The provider `alias` to set for this instance of the provider block. When `null`, the `alias`
  field will be omitted from the resulting provider block.
  - `src` (`string`): The provider `source` to set on the resulting `required_providers` block. If `src` or `version` is
  set and is not `null`, a `required_providers` block and entry for the provider will be injected into the document.
  - `version` (`string`): The provider `version` to set on the resulting `required_providers` block. If `src` or
  `version` is set and is not `null`, a `required_providers` block and entry for the provider will be injected into the
  document.


**Returns**:
- A mixin object that injects the new provider (and optionally, `required_providers` block) into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.provider.` constructs a new object with attributes and blocks configured for the `google`
Terraform `provider`.

Unlike [google.provider.new](#fn-googlenew), this function will not inject the `provider`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `access_approval_custom_endpoint` (`string`): Set the `access_approval_custom_endpoint` field on the resulting object. When `null`, the `access_approval_custom_endpoint` field will be omitted from the resulting object.
  - `access_context_manager_custom_endpoint` (`string`): Set the `access_context_manager_custom_endpoint` field on the resulting object. When `null`, the `access_context_manager_custom_endpoint` field will be omitted from the resulting object.
  - `access_token` (`string`): Set the `access_token` field on the resulting object. When `null`, the `access_token` field will be omitted from the resulting object.
  - `active_directory_custom_endpoint` (`string`): Set the `active_directory_custom_endpoint` field on the resulting object. When `null`, the `active_directory_custom_endpoint` field will be omitted from the resulting object.
  - `alloydb_custom_endpoint` (`string`): Set the `alloydb_custom_endpoint` field on the resulting object. When `null`, the `alloydb_custom_endpoint` field will be omitted from the resulting object.
  - `apigee_custom_endpoint` (`string`): Set the `apigee_custom_endpoint` field on the resulting object. When `null`, the `apigee_custom_endpoint` field will be omitted from the resulting object.
  - `apikeys_custom_endpoint` (`string`): Set the `apikeys_custom_endpoint` field on the resulting object. When `null`, the `apikeys_custom_endpoint` field will be omitted from the resulting object.
  - `app_engine_custom_endpoint` (`string`): Set the `app_engine_custom_endpoint` field on the resulting object. When `null`, the `app_engine_custom_endpoint` field will be omitted from the resulting object.
  - `artifact_registry_custom_endpoint` (`string`): Set the `artifact_registry_custom_endpoint` field on the resulting object. When `null`, the `artifact_registry_custom_endpoint` field will be omitted from the resulting object.
  - `assured_workloads_custom_endpoint` (`string`): Set the `assured_workloads_custom_endpoint` field on the resulting object. When `null`, the `assured_workloads_custom_endpoint` field will be omitted from the resulting object.
  - `beyondcorp_custom_endpoint` (`string`): Set the `beyondcorp_custom_endpoint` field on the resulting object. When `null`, the `beyondcorp_custom_endpoint` field will be omitted from the resulting object.
  - `big_query_custom_endpoint` (`string`): Set the `big_query_custom_endpoint` field on the resulting object. When `null`, the `big_query_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_analytics_hub_custom_endpoint` (`string`): Set the `bigquery_analytics_hub_custom_endpoint` field on the resulting object. When `null`, the `bigquery_analytics_hub_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_connection_custom_endpoint` (`string`): Set the `bigquery_connection_custom_endpoint` field on the resulting object. When `null`, the `bigquery_connection_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_data_transfer_custom_endpoint` (`string`): Set the `bigquery_data_transfer_custom_endpoint` field on the resulting object. When `null`, the `bigquery_data_transfer_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_datapolicy_custom_endpoint` (`string`): Set the `bigquery_datapolicy_custom_endpoint` field on the resulting object. When `null`, the `bigquery_datapolicy_custom_endpoint` field will be omitted from the resulting object.
  - `bigquery_reservation_custom_endpoint` (`string`): Set the `bigquery_reservation_custom_endpoint` field on the resulting object. When `null`, the `bigquery_reservation_custom_endpoint` field will be omitted from the resulting object.
  - `bigtable_custom_endpoint` (`string`): Set the `bigtable_custom_endpoint` field on the resulting object. When `null`, the `bigtable_custom_endpoint` field will be omitted from the resulting object.
  - `billing_custom_endpoint` (`string`): Set the `billing_custom_endpoint` field on the resulting object. When `null`, the `billing_custom_endpoint` field will be omitted from the resulting object.
  - `billing_project` (`string`): Set the `billing_project` field on the resulting object. When `null`, the `billing_project` field will be omitted from the resulting object.
  - `binary_authorization_custom_endpoint` (`string`): Set the `binary_authorization_custom_endpoint` field on the resulting object. When `null`, the `binary_authorization_custom_endpoint` field will be omitted from the resulting object.
  - `certificate_manager_custom_endpoint` (`string`): Set the `certificate_manager_custom_endpoint` field on the resulting object. When `null`, the `certificate_manager_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_asset_custom_endpoint` (`string`): Set the `cloud_asset_custom_endpoint` field on the resulting object. When `null`, the `cloud_asset_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_billing_custom_endpoint` (`string`): Set the `cloud_billing_custom_endpoint` field on the resulting object. When `null`, the `cloud_billing_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_build_custom_endpoint` (`string`): Set the `cloud_build_custom_endpoint` field on the resulting object. When `null`, the `cloud_build_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_build_worker_pool_custom_endpoint` (`string`): Set the `cloud_build_worker_pool_custom_endpoint` field on the resulting object. When `null`, the `cloud_build_worker_pool_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_functions_custom_endpoint` (`string`): Set the `cloud_functions_custom_endpoint` field on the resulting object. When `null`, the `cloud_functions_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_identity_custom_endpoint` (`string`): Set the `cloud_identity_custom_endpoint` field on the resulting object. When `null`, the `cloud_identity_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_ids_custom_endpoint` (`string`): Set the `cloud_ids_custom_endpoint` field on the resulting object. When `null`, the `cloud_ids_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_iot_custom_endpoint` (`string`): Set the `cloud_iot_custom_endpoint` field on the resulting object. When `null`, the `cloud_iot_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_resource_manager_custom_endpoint` (`string`): Set the `cloud_resource_manager_custom_endpoint` field on the resulting object. When `null`, the `cloud_resource_manager_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_run_custom_endpoint` (`string`): Set the `cloud_run_custom_endpoint` field on the resulting object. When `null`, the `cloud_run_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_run_v2_custom_endpoint` (`string`): Set the `cloud_run_v2_custom_endpoint` field on the resulting object. When `null`, the `cloud_run_v2_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_scheduler_custom_endpoint` (`string`): Set the `cloud_scheduler_custom_endpoint` field on the resulting object. When `null`, the `cloud_scheduler_custom_endpoint` field will be omitted from the resulting object.
  - `cloud_tasks_custom_endpoint` (`string`): Set the `cloud_tasks_custom_endpoint` field on the resulting object. When `null`, the `cloud_tasks_custom_endpoint` field will be omitted from the resulting object.
  - `cloudbuildv2_custom_endpoint` (`string`): Set the `cloudbuildv2_custom_endpoint` field on the resulting object. When `null`, the `cloudbuildv2_custom_endpoint` field will be omitted from the resulting object.
  - `clouddeploy_custom_endpoint` (`string`): Set the `clouddeploy_custom_endpoint` field on the resulting object. When `null`, the `clouddeploy_custom_endpoint` field will be omitted from the resulting object.
  - `cloudfunctions2_custom_endpoint` (`string`): Set the `cloudfunctions2_custom_endpoint` field on the resulting object. When `null`, the `cloudfunctions2_custom_endpoint` field will be omitted from the resulting object.
  - `composer_custom_endpoint` (`string`): Set the `composer_custom_endpoint` field on the resulting object. When `null`, the `composer_custom_endpoint` field will be omitted from the resulting object.
  - `compute_custom_endpoint` (`string`): Set the `compute_custom_endpoint` field on the resulting object. When `null`, the `compute_custom_endpoint` field will be omitted from the resulting object.
  - `container_analysis_custom_endpoint` (`string`): Set the `container_analysis_custom_endpoint` field on the resulting object. When `null`, the `container_analysis_custom_endpoint` field will be omitted from the resulting object.
  - `container_attached_custom_endpoint` (`string`): Set the `container_attached_custom_endpoint` field on the resulting object. When `null`, the `container_attached_custom_endpoint` field will be omitted from the resulting object.
  - `container_aws_custom_endpoint` (`string`): Set the `container_aws_custom_endpoint` field on the resulting object. When `null`, the `container_aws_custom_endpoint` field will be omitted from the resulting object.
  - `container_azure_custom_endpoint` (`string`): Set the `container_azure_custom_endpoint` field on the resulting object. When `null`, the `container_azure_custom_endpoint` field will be omitted from the resulting object.
  - `container_custom_endpoint` (`string`): Set the `container_custom_endpoint` field on the resulting object. When `null`, the `container_custom_endpoint` field will be omitted from the resulting object.
  - `credentials` (`string`): Set the `credentials` field on the resulting object. When `null`, the `credentials` field will be omitted from the resulting object.
  - `data_catalog_custom_endpoint` (`string`): Set the `data_catalog_custom_endpoint` field on the resulting object. When `null`, the `data_catalog_custom_endpoint` field will be omitted from the resulting object.
  - `data_fusion_custom_endpoint` (`string`): Set the `data_fusion_custom_endpoint` field on the resulting object. When `null`, the `data_fusion_custom_endpoint` field will be omitted from the resulting object.
  - `data_loss_prevention_custom_endpoint` (`string`): Set the `data_loss_prevention_custom_endpoint` field on the resulting object. When `null`, the `data_loss_prevention_custom_endpoint` field will be omitted from the resulting object.
  - `database_migration_service_custom_endpoint` (`string`): Set the `database_migration_service_custom_endpoint` field on the resulting object. When `null`, the `database_migration_service_custom_endpoint` field will be omitted from the resulting object.
  - `dataflow_custom_endpoint` (`string`): Set the `dataflow_custom_endpoint` field on the resulting object. When `null`, the `dataflow_custom_endpoint` field will be omitted from the resulting object.
  - `dataplex_custom_endpoint` (`string`): Set the `dataplex_custom_endpoint` field on the resulting object. When `null`, the `dataplex_custom_endpoint` field will be omitted from the resulting object.
  - `dataproc_custom_endpoint` (`string`): Set the `dataproc_custom_endpoint` field on the resulting object. When `null`, the `dataproc_custom_endpoint` field will be omitted from the resulting object.
  - `dataproc_metastore_custom_endpoint` (`string`): Set the `dataproc_metastore_custom_endpoint` field on the resulting object. When `null`, the `dataproc_metastore_custom_endpoint` field will be omitted from the resulting object.
  - `datastore_custom_endpoint` (`string`): Set the `datastore_custom_endpoint` field on the resulting object. When `null`, the `datastore_custom_endpoint` field will be omitted from the resulting object.
  - `datastream_custom_endpoint` (`string`): Set the `datastream_custom_endpoint` field on the resulting object. When `null`, the `datastream_custom_endpoint` field will be omitted from the resulting object.
  - `deployment_manager_custom_endpoint` (`string`): Set the `deployment_manager_custom_endpoint` field on the resulting object. When `null`, the `deployment_manager_custom_endpoint` field will be omitted from the resulting object.
  - `dialogflow_custom_endpoint` (`string`): Set the `dialogflow_custom_endpoint` field on the resulting object. When `null`, the `dialogflow_custom_endpoint` field will be omitted from the resulting object.
  - `dialogflow_cx_custom_endpoint` (`string`): Set the `dialogflow_cx_custom_endpoint` field on the resulting object. When `null`, the `dialogflow_cx_custom_endpoint` field will be omitted from the resulting object.
  - `dns_custom_endpoint` (`string`): Set the `dns_custom_endpoint` field on the resulting object. When `null`, the `dns_custom_endpoint` field will be omitted from the resulting object.
  - `document_ai_custom_endpoint` (`string`): Set the `document_ai_custom_endpoint` field on the resulting object. When `null`, the `document_ai_custom_endpoint` field will be omitted from the resulting object.
  - `document_ai_warehouse_custom_endpoint` (`string`): Set the `document_ai_warehouse_custom_endpoint` field on the resulting object. When `null`, the `document_ai_warehouse_custom_endpoint` field will be omitted from the resulting object.
  - `essential_contacts_custom_endpoint` (`string`): Set the `essential_contacts_custom_endpoint` field on the resulting object. When `null`, the `essential_contacts_custom_endpoint` field will be omitted from the resulting object.
  - `eventarc_custom_endpoint` (`string`): Set the `eventarc_custom_endpoint` field on the resulting object. When `null`, the `eventarc_custom_endpoint` field will be omitted from the resulting object.
  - `filestore_custom_endpoint` (`string`): Set the `filestore_custom_endpoint` field on the resulting object. When `null`, the `filestore_custom_endpoint` field will be omitted from the resulting object.
  - `firebaserules_custom_endpoint` (`string`): Set the `firebaserules_custom_endpoint` field on the resulting object. When `null`, the `firebaserules_custom_endpoint` field will be omitted from the resulting object.
  - `firestore_custom_endpoint` (`string`): Set the `firestore_custom_endpoint` field on the resulting object. When `null`, the `firestore_custom_endpoint` field will be omitted from the resulting object.
  - `game_services_custom_endpoint` (`string`): Set the `game_services_custom_endpoint` field on the resulting object. When `null`, the `game_services_custom_endpoint` field will be omitted from the resulting object.
  - `gke_backup_custom_endpoint` (`string`): Set the `gke_backup_custom_endpoint` field on the resulting object. When `null`, the `gke_backup_custom_endpoint` field will be omitted from the resulting object.
  - `gke_hub2_custom_endpoint` (`string`): Set the `gke_hub2_custom_endpoint` field on the resulting object. When `null`, the `gke_hub2_custom_endpoint` field will be omitted from the resulting object.
  - `gke_hub_custom_endpoint` (`string`): Set the `gke_hub_custom_endpoint` field on the resulting object. When `null`, the `gke_hub_custom_endpoint` field will be omitted from the resulting object.
  - `healthcare_custom_endpoint` (`string`): Set the `healthcare_custom_endpoint` field on the resulting object. When `null`, the `healthcare_custom_endpoint` field will be omitted from the resulting object.
  - `iam2_custom_endpoint` (`string`): Set the `iam2_custom_endpoint` field on the resulting object. When `null`, the `iam2_custom_endpoint` field will be omitted from the resulting object.
  - `iam_beta_custom_endpoint` (`string`): Set the `iam_beta_custom_endpoint` field on the resulting object. When `null`, the `iam_beta_custom_endpoint` field will be omitted from the resulting object.
  - `iam_credentials_custom_endpoint` (`string`): Set the `iam_credentials_custom_endpoint` field on the resulting object. When `null`, the `iam_credentials_custom_endpoint` field will be omitted from the resulting object.
  - `iam_custom_endpoint` (`string`): Set the `iam_custom_endpoint` field on the resulting object. When `null`, the `iam_custom_endpoint` field will be omitted from the resulting object.
  - `iam_workforce_pool_custom_endpoint` (`string`): Set the `iam_workforce_pool_custom_endpoint` field on the resulting object. When `null`, the `iam_workforce_pool_custom_endpoint` field will be omitted from the resulting object.
  - `iap_custom_endpoint` (`string`): Set the `iap_custom_endpoint` field on the resulting object. When `null`, the `iap_custom_endpoint` field will be omitted from the resulting object.
  - `identity_platform_custom_endpoint` (`string`): Set the `identity_platform_custom_endpoint` field on the resulting object. When `null`, the `identity_platform_custom_endpoint` field will be omitted from the resulting object.
  - `impersonate_service_account` (`string`): Set the `impersonate_service_account` field on the resulting object. When `null`, the `impersonate_service_account` field will be omitted from the resulting object.
  - `impersonate_service_account_delegates` (`list`): Set the `impersonate_service_account_delegates` field on the resulting object. When `null`, the `impersonate_service_account_delegates` field will be omitted from the resulting object.
  - `kms_custom_endpoint` (`string`): Set the `kms_custom_endpoint` field on the resulting object. When `null`, the `kms_custom_endpoint` field will be omitted from the resulting object.
  - `logging_custom_endpoint` (`string`): Set the `logging_custom_endpoint` field on the resulting object. When `null`, the `logging_custom_endpoint` field will be omitted from the resulting object.
  - `looker_custom_endpoint` (`string`): Set the `looker_custom_endpoint` field on the resulting object. When `null`, the `looker_custom_endpoint` field will be omitted from the resulting object.
  - `memcache_custom_endpoint` (`string`): Set the `memcache_custom_endpoint` field on the resulting object. When `null`, the `memcache_custom_endpoint` field will be omitted from the resulting object.
  - `ml_engine_custom_endpoint` (`string`): Set the `ml_engine_custom_endpoint` field on the resulting object. When `null`, the `ml_engine_custom_endpoint` field will be omitted from the resulting object.
  - `monitoring_custom_endpoint` (`string`): Set the `monitoring_custom_endpoint` field on the resulting object. When `null`, the `monitoring_custom_endpoint` field will be omitted from the resulting object.
  - `network_connectivity_custom_endpoint` (`string`): Set the `network_connectivity_custom_endpoint` field on the resulting object. When `null`, the `network_connectivity_custom_endpoint` field will be omitted from the resulting object.
  - `network_management_custom_endpoint` (`string`): Set the `network_management_custom_endpoint` field on the resulting object. When `null`, the `network_management_custom_endpoint` field will be omitted from the resulting object.
  - `network_security_custom_endpoint` (`string`): Set the `network_security_custom_endpoint` field on the resulting object. When `null`, the `network_security_custom_endpoint` field will be omitted from the resulting object.
  - `network_services_custom_endpoint` (`string`): Set the `network_services_custom_endpoint` field on the resulting object. When `null`, the `network_services_custom_endpoint` field will be omitted from the resulting object.
  - `notebooks_custom_endpoint` (`string`): Set the `notebooks_custom_endpoint` field on the resulting object. When `null`, the `notebooks_custom_endpoint` field will be omitted from the resulting object.
  - `org_policy_custom_endpoint` (`string`): Set the `org_policy_custom_endpoint` field on the resulting object. When `null`, the `org_policy_custom_endpoint` field will be omitted from the resulting object.
  - `os_config_custom_endpoint` (`string`): Set the `os_config_custom_endpoint` field on the resulting object. When `null`, the `os_config_custom_endpoint` field will be omitted from the resulting object.
  - `os_login_custom_endpoint` (`string`): Set the `os_login_custom_endpoint` field on the resulting object. When `null`, the `os_login_custom_endpoint` field will be omitted from the resulting object.
  - `privateca_custom_endpoint` (`string`): Set the `privateca_custom_endpoint` field on the resulting object. When `null`, the `privateca_custom_endpoint` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `public_ca_custom_endpoint` (`string`): Set the `public_ca_custom_endpoint` field on the resulting object. When `null`, the `public_ca_custom_endpoint` field will be omitted from the resulting object.
  - `pubsub_custom_endpoint` (`string`): Set the `pubsub_custom_endpoint` field on the resulting object. When `null`, the `pubsub_custom_endpoint` field will be omitted from the resulting object.
  - `pubsub_lite_custom_endpoint` (`string`): Set the `pubsub_lite_custom_endpoint` field on the resulting object. When `null`, the `pubsub_lite_custom_endpoint` field will be omitted from the resulting object.
  - `recaptcha_enterprise_custom_endpoint` (`string`): Set the `recaptcha_enterprise_custom_endpoint` field on the resulting object. When `null`, the `recaptcha_enterprise_custom_endpoint` field will be omitted from the resulting object.
  - `redis_custom_endpoint` (`string`): Set the `redis_custom_endpoint` field on the resulting object. When `null`, the `redis_custom_endpoint` field will be omitted from the resulting object.
  - `region` (`string`): Set the `region` field on the resulting object. When `null`, the `region` field will be omitted from the resulting object.
  - `request_reason` (`string`): Set the `request_reason` field on the resulting object. When `null`, the `request_reason` field will be omitted from the resulting object.
  - `request_timeout` (`string`): Set the `request_timeout` field on the resulting object. When `null`, the `request_timeout` field will be omitted from the resulting object.
  - `resource_manager_custom_endpoint` (`string`): Set the `resource_manager_custom_endpoint` field on the resulting object. When `null`, the `resource_manager_custom_endpoint` field will be omitted from the resulting object.
  - `resource_manager_v3_custom_endpoint` (`string`): Set the `resource_manager_v3_custom_endpoint` field on the resulting object. When `null`, the `resource_manager_v3_custom_endpoint` field will be omitted from the resulting object.
  - `scopes` (`list`): Set the `scopes` field on the resulting object. When `null`, the `scopes` field will be omitted from the resulting object.
  - `secret_manager_custom_endpoint` (`string`): Set the `secret_manager_custom_endpoint` field on the resulting object. When `null`, the `secret_manager_custom_endpoint` field will be omitted from the resulting object.
  - `security_center_custom_endpoint` (`string`): Set the `security_center_custom_endpoint` field on the resulting object. When `null`, the `security_center_custom_endpoint` field will be omitted from the resulting object.
  - `service_management_custom_endpoint` (`string`): Set the `service_management_custom_endpoint` field on the resulting object. When `null`, the `service_management_custom_endpoint` field will be omitted from the resulting object.
  - `service_networking_custom_endpoint` (`string`): Set the `service_networking_custom_endpoint` field on the resulting object. When `null`, the `service_networking_custom_endpoint` field will be omitted from the resulting object.
  - `service_usage_custom_endpoint` (`string`): Set the `service_usage_custom_endpoint` field on the resulting object. When `null`, the `service_usage_custom_endpoint` field will be omitted from the resulting object.
  - `source_repo_custom_endpoint` (`string`): Set the `source_repo_custom_endpoint` field on the resulting object. When `null`, the `source_repo_custom_endpoint` field will be omitted from the resulting object.
  - `spanner_custom_endpoint` (`string`): Set the `spanner_custom_endpoint` field on the resulting object. When `null`, the `spanner_custom_endpoint` field will be omitted from the resulting object.
  - `sql_custom_endpoint` (`string`): Set the `sql_custom_endpoint` field on the resulting object. When `null`, the `sql_custom_endpoint` field will be omitted from the resulting object.
  - `storage_custom_endpoint` (`string`): Set the `storage_custom_endpoint` field on the resulting object. When `null`, the `storage_custom_endpoint` field will be omitted from the resulting object.
  - `storage_transfer_custom_endpoint` (`string`): Set the `storage_transfer_custom_endpoint` field on the resulting object. When `null`, the `storage_transfer_custom_endpoint` field will be omitted from the resulting object.
  - `tags_custom_endpoint` (`string`): Set the `tags_custom_endpoint` field on the resulting object. When `null`, the `tags_custom_endpoint` field will be omitted from the resulting object.
  - `tags_location_custom_endpoint` (`string`): Set the `tags_location_custom_endpoint` field on the resulting object. When `null`, the `tags_location_custom_endpoint` field will be omitted from the resulting object.
  - `tpu_custom_endpoint` (`string`): Set the `tpu_custom_endpoint` field on the resulting object. When `null`, the `tpu_custom_endpoint` field will be omitted from the resulting object.
  - `user_project_override` (`bool`): Set the `user_project_override` field on the resulting object. When `null`, the `user_project_override` field will be omitted from the resulting object.
  - `vertex_ai_custom_endpoint` (`string`): Set the `vertex_ai_custom_endpoint` field on the resulting object. When `null`, the `vertex_ai_custom_endpoint` field will be omitted from the resulting object.
  - `vpc_access_custom_endpoint` (`string`): Set the `vpc_access_custom_endpoint` field on the resulting object. When `null`, the `vpc_access_custom_endpoint` field will be omitted from the resulting object.
  - `workflows_custom_endpoint` (`string`): Set the `workflows_custom_endpoint` field on the resulting object. When `null`, the `workflows_custom_endpoint` field will be omitted from the resulting object.
  - `zone` (`string`): Set the `zone` field on the resulting object. When `null`, the `zone` field will be omitted from the resulting object.
  - `batching` (`list[obj]`): Set the `batching` field on the resulting object. When `null`, the `batching` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.provider.batching.new](#fn-googlebatchingnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) to construct a new `google` provider
  configuration into the root Terraform configuration.


## obj batching



### fn batching.new

```ts
new()
```


`google.batching.new` constructs a new object with attributes and blocks configured for the `batching`
Terraform sub block.



**Args**:
  - `enable_batching` (`bool`): Set the `enable_batching` field on the resulting object. When `null`, the `enable_batching` field will be omitted from the resulting object.
  - `send_after` (`string`): Set the `send_after` field on the resulting object. When `null`, the `send_after` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `batching` sub block.
