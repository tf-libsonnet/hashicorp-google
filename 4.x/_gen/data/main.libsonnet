local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data', url='', help=''),
  access_approval_folder_service_account: (import 'access_approval_folder_service_account.libsonnet'),
  access_approval_organization_service_account: (import 'access_approval_organization_service_account.libsonnet'),
  access_approval_project_service_account: (import 'access_approval_project_service_account.libsonnet'),
  access_context_manager_access_policy_iam_policy: (import 'access_context_manager_access_policy_iam_policy.libsonnet'),
  active_folder: (import 'active_folder.libsonnet'),
  alloydb_locations: (import 'alloydb_locations.libsonnet'),
  alloydb_supported_database_flags: (import 'alloydb_supported_database_flags.libsonnet'),
  apigee_environment_iam_policy: (import 'apigee_environment_iam_policy.libsonnet'),
  app_engine_default_service_account: (import 'app_engine_default_service_account.libsonnet'),
  artifact_registry_repository: (import 'artifact_registry_repository.libsonnet'),
  artifact_registry_repository_iam_policy: (import 'artifact_registry_repository_iam_policy.libsonnet'),
  beyondcorp_app_connection: (import 'beyondcorp_app_connection.libsonnet'),
  beyondcorp_app_connector: (import 'beyondcorp_app_connector.libsonnet'),
  beyondcorp_app_gateway: (import 'beyondcorp_app_gateway.libsonnet'),
  bigquery_analytics_hub_data_exchange_iam_policy: (import 'bigquery_analytics_hub_data_exchange_iam_policy.libsonnet'),
  bigquery_analytics_hub_listing_iam_policy: (import 'bigquery_analytics_hub_listing_iam_policy.libsonnet'),
  bigquery_connection_iam_policy: (import 'bigquery_connection_iam_policy.libsonnet'),
  bigquery_datapolicy_data_policy_iam_policy: (import 'bigquery_datapolicy_data_policy_iam_policy.libsonnet'),
  bigquery_dataset: (import 'bigquery_dataset.libsonnet'),
  bigquery_dataset_iam_policy: (import 'bigquery_dataset_iam_policy.libsonnet'),
  bigquery_default_service_account: (import 'bigquery_default_service_account.libsonnet'),
  bigquery_table_iam_policy: (import 'bigquery_table_iam_policy.libsonnet'),
  bigtable_instance_iam_policy: (import 'bigtable_instance_iam_policy.libsonnet'),
  bigtable_table_iam_policy: (import 'bigtable_table_iam_policy.libsonnet'),
  billing_account: (import 'billing_account.libsonnet'),
  billing_account_iam_policy: (import 'billing_account_iam_policy.libsonnet'),
  binary_authorization_attestor_iam_policy: (import 'binary_authorization_attestor_iam_policy.libsonnet'),
  certificate_manager_certificate_map: (import 'certificate_manager_certificate_map.libsonnet'),
  client_config: (import 'client_config.libsonnet'),
  client_openid_userinfo: (import 'client_openid_userinfo.libsonnet'),
  cloud_identity_group_lookup: (import 'cloud_identity_group_lookup.libsonnet'),
  cloud_identity_group_memberships: (import 'cloud_identity_group_memberships.libsonnet'),
  cloud_identity_groups: (import 'cloud_identity_groups.libsonnet'),
  cloud_run_locations: (import 'cloud_run_locations.libsonnet'),
  cloud_run_service: (import 'cloud_run_service.libsonnet'),
  cloud_run_service_iam_policy: (import 'cloud_run_service_iam_policy.libsonnet'),
  cloud_run_v2_job: (import 'cloud_run_v2_job.libsonnet'),
  cloud_run_v2_job_iam_policy: (import 'cloud_run_v2_job_iam_policy.libsonnet'),
  cloud_run_v2_service: (import 'cloud_run_v2_service.libsonnet'),
  cloud_run_v2_service_iam_policy: (import 'cloud_run_v2_service_iam_policy.libsonnet'),
  cloud_tasks_queue_iam_policy: (import 'cloud_tasks_queue_iam_policy.libsonnet'),
  cloudbuild_trigger: (import 'cloudbuild_trigger.libsonnet'),
  cloudbuildv2_connection_iam_policy: (import 'cloudbuildv2_connection_iam_policy.libsonnet'),
  cloudfunctions2_function: (import 'cloudfunctions2_function.libsonnet'),
  cloudfunctions2_function_iam_policy: (import 'cloudfunctions2_function_iam_policy.libsonnet'),
  cloudfunctions_function: (import 'cloudfunctions_function.libsonnet'),
  cloudfunctions_function_iam_policy: (import 'cloudfunctions_function_iam_policy.libsonnet'),
  composer_environment: (import 'composer_environment.libsonnet'),
  composer_image_versions: (import 'composer_image_versions.libsonnet'),
  compute_address: (import 'compute_address.libsonnet'),
  compute_addresses: (import 'compute_addresses.libsonnet'),
  compute_backend_bucket: (import 'compute_backend_bucket.libsonnet'),
  compute_backend_service: (import 'compute_backend_service.libsonnet'),
  compute_default_service_account: (import 'compute_default_service_account.libsonnet'),
  compute_disk: (import 'compute_disk.libsonnet'),
  compute_disk_iam_policy: (import 'compute_disk_iam_policy.libsonnet'),
  compute_forwarding_rule: (import 'compute_forwarding_rule.libsonnet'),
  compute_global_address: (import 'compute_global_address.libsonnet'),
  compute_global_forwarding_rule: (import 'compute_global_forwarding_rule.libsonnet'),
  compute_ha_vpn_gateway: (import 'compute_ha_vpn_gateway.libsonnet'),
  compute_health_check: (import 'compute_health_check.libsonnet'),
  compute_image: (import 'compute_image.libsonnet'),
  compute_image_iam_policy: (import 'compute_image_iam_policy.libsonnet'),
  compute_instance: (import 'compute_instance.libsonnet'),
  compute_instance_group: (import 'compute_instance_group.libsonnet'),
  compute_instance_group_manager: (import 'compute_instance_group_manager.libsonnet'),
  compute_instance_iam_policy: (import 'compute_instance_iam_policy.libsonnet'),
  compute_instance_serial_port: (import 'compute_instance_serial_port.libsonnet'),
  compute_instance_template: (import 'compute_instance_template.libsonnet'),
  compute_lb_ip_ranges: (import 'compute_lb_ip_ranges.libsonnet'),
  compute_network: (import 'compute_network.libsonnet'),
  compute_network_endpoint_group: (import 'compute_network_endpoint_group.libsonnet'),
  compute_network_peering: (import 'compute_network_peering.libsonnet'),
  compute_networks: (import 'compute_networks.libsonnet'),
  compute_node_types: (import 'compute_node_types.libsonnet'),
  compute_region_disk: (import 'compute_region_disk.libsonnet'),
  compute_region_disk_iam_policy: (import 'compute_region_disk_iam_policy.libsonnet'),
  compute_region_instance_group: (import 'compute_region_instance_group.libsonnet'),
  compute_region_instance_template: (import 'compute_region_instance_template.libsonnet'),
  compute_region_network_endpoint_group: (import 'compute_region_network_endpoint_group.libsonnet'),
  compute_region_ssl_certificate: (import 'compute_region_ssl_certificate.libsonnet'),
  compute_regions: (import 'compute_regions.libsonnet'),
  compute_reservation: (import 'compute_reservation.libsonnet'),
  compute_resource_policy: (import 'compute_resource_policy.libsonnet'),
  compute_router: (import 'compute_router.libsonnet'),
  compute_router_nat: (import 'compute_router_nat.libsonnet'),
  compute_router_status: (import 'compute_router_status.libsonnet'),
  compute_snapshot: (import 'compute_snapshot.libsonnet'),
  compute_snapshot_iam_policy: (import 'compute_snapshot_iam_policy.libsonnet'),
  compute_ssl_certificate: (import 'compute_ssl_certificate.libsonnet'),
  compute_ssl_policy: (import 'compute_ssl_policy.libsonnet'),
  compute_subnetwork: (import 'compute_subnetwork.libsonnet'),
  compute_subnetwork_iam_policy: (import 'compute_subnetwork_iam_policy.libsonnet'),
  compute_vpn_gateway: (import 'compute_vpn_gateway.libsonnet'),
  compute_zones: (import 'compute_zones.libsonnet'),
  container_analysis_note_iam_policy: (import 'container_analysis_note_iam_policy.libsonnet'),
  container_attached_install_manifest: (import 'container_attached_install_manifest.libsonnet'),
  container_attached_versions: (import 'container_attached_versions.libsonnet'),
  container_aws_versions: (import 'container_aws_versions.libsonnet'),
  container_azure_versions: (import 'container_azure_versions.libsonnet'),
  container_cluster: (import 'container_cluster.libsonnet'),
  container_engine_versions: (import 'container_engine_versions.libsonnet'),
  container_registry_image: (import 'container_registry_image.libsonnet'),
  container_registry_repository: (import 'container_registry_repository.libsonnet'),
  data_catalog_entry_group_iam_policy: (import 'data_catalog_entry_group_iam_policy.libsonnet'),
  data_catalog_policy_tag_iam_policy: (import 'data_catalog_policy_tag_iam_policy.libsonnet'),
  data_catalog_tag_template_iam_policy: (import 'data_catalog_tag_template_iam_policy.libsonnet'),
  data_catalog_taxonomy_iam_policy: (import 'data_catalog_taxonomy_iam_policy.libsonnet'),
  data_fusion_instance_iam_policy: (import 'data_fusion_instance_iam_policy.libsonnet'),
  dataplex_asset_iam_policy: (import 'dataplex_asset_iam_policy.libsonnet'),
  dataplex_datascan_iam_policy: (import 'dataplex_datascan_iam_policy.libsonnet'),
  dataplex_lake_iam_policy: (import 'dataplex_lake_iam_policy.libsonnet'),
  dataplex_task_iam_policy: (import 'dataplex_task_iam_policy.libsonnet'),
  dataplex_zone_iam_policy: (import 'dataplex_zone_iam_policy.libsonnet'),
  dataproc_autoscaling_policy_iam_policy: (import 'dataproc_autoscaling_policy_iam_policy.libsonnet'),
  dataproc_cluster_iam_policy: (import 'dataproc_cluster_iam_policy.libsonnet'),
  dataproc_job_iam_policy: (import 'dataproc_job_iam_policy.libsonnet'),
  dataproc_metastore_service: (import 'dataproc_metastore_service.libsonnet'),
  dataproc_metastore_service_iam_policy: (import 'dataproc_metastore_service_iam_policy.libsonnet'),
  datastream_static_ips: (import 'datastream_static_ips.libsonnet'),
  dns_keys: (import 'dns_keys.libsonnet'),
  dns_managed_zone: (import 'dns_managed_zone.libsonnet'),
  dns_managed_zone_iam_policy: (import 'dns_managed_zone_iam_policy.libsonnet'),
  dns_record_set: (import 'dns_record_set.libsonnet'),
  endpoints_service_consumers_iam_policy: (import 'endpoints_service_consumers_iam_policy.libsonnet'),
  endpoints_service_iam_policy: (import 'endpoints_service_iam_policy.libsonnet'),
  folder: (import 'folder.libsonnet'),
  folder_iam_policy: (import 'folder_iam_policy.libsonnet'),
  folder_organization_policy: (import 'folder_organization_policy.libsonnet'),
  folders: (import 'folders.libsonnet'),
  gke_backup_backup_plan_iam_policy: (import 'gke_backup_backup_plan_iam_policy.libsonnet'),
  gke_backup_restore_plan_iam_policy: (import 'gke_backup_restore_plan_iam_policy.libsonnet'),
  gke_hub_feature_iam_policy: (import 'gke_hub_feature_iam_policy.libsonnet'),
  gke_hub_membership_iam_policy: (import 'gke_hub_membership_iam_policy.libsonnet'),
  gke_hub_scope_iam_policy: (import 'gke_hub_scope_iam_policy.libsonnet'),
  healthcare_consent_store_iam_policy: (import 'healthcare_consent_store_iam_policy.libsonnet'),
  healthcare_dataset_iam_policy: (import 'healthcare_dataset_iam_policy.libsonnet'),
  healthcare_dicom_store_iam_policy: (import 'healthcare_dicom_store_iam_policy.libsonnet'),
  healthcare_fhir_store_iam_policy: (import 'healthcare_fhir_store_iam_policy.libsonnet'),
  healthcare_hl7_v2_store_iam_policy: (import 'healthcare_hl7_v2_store_iam_policy.libsonnet'),
  iam_policy: (import 'iam_policy.libsonnet'),
  iam_role: (import 'iam_role.libsonnet'),
  iam_testable_permissions: (import 'iam_testable_permissions.libsonnet'),
  iap_app_engine_service_iam_policy: (import 'iap_app_engine_service_iam_policy.libsonnet'),
  iap_app_engine_version_iam_policy: (import 'iap_app_engine_version_iam_policy.libsonnet'),
  iap_client: (import 'iap_client.libsonnet'),
  iap_tunnel_iam_policy: (import 'iap_tunnel_iam_policy.libsonnet'),
  iap_tunnel_instance_iam_policy: (import 'iap_tunnel_instance_iam_policy.libsonnet'),
  iap_web_backend_service_iam_policy: (import 'iap_web_backend_service_iam_policy.libsonnet'),
  iap_web_iam_policy: (import 'iap_web_iam_policy.libsonnet'),
  iap_web_region_backend_service_iam_policy: (import 'iap_web_region_backend_service_iam_policy.libsonnet'),
  iap_web_type_app_engine_iam_policy: (import 'iap_web_type_app_engine_iam_policy.libsonnet'),
  iap_web_type_compute_iam_policy: (import 'iap_web_type_compute_iam_policy.libsonnet'),
  kms_crypto_key: (import 'kms_crypto_key.libsonnet'),
  kms_crypto_key_iam_policy: (import 'kms_crypto_key_iam_policy.libsonnet'),
  kms_crypto_key_version: (import 'kms_crypto_key_version.libsonnet'),
  kms_key_ring: (import 'kms_key_ring.libsonnet'),
  kms_key_ring_iam_policy: (import 'kms_key_ring_iam_policy.libsonnet'),
  kms_secret: (import 'kms_secret.libsonnet'),
  kms_secret_ciphertext: (import 'kms_secret_ciphertext.libsonnet'),
  logging_folder_settings: (import 'logging_folder_settings.libsonnet'),
  logging_organization_settings: (import 'logging_organization_settings.libsonnet'),
  logging_project_cmek_settings: (import 'logging_project_cmek_settings.libsonnet'),
  logging_project_settings: (import 'logging_project_settings.libsonnet'),
  logging_sink: (import 'logging_sink.libsonnet'),
  monitoring_app_engine_service: (import 'monitoring_app_engine_service.libsonnet'),
  monitoring_cluster_istio_service: (import 'monitoring_cluster_istio_service.libsonnet'),
  monitoring_istio_canonical_service: (import 'monitoring_istio_canonical_service.libsonnet'),
  monitoring_mesh_istio_service: (import 'monitoring_mesh_istio_service.libsonnet'),
  monitoring_notification_channel: (import 'monitoring_notification_channel.libsonnet'),
  monitoring_uptime_check_ips: (import 'monitoring_uptime_check_ips.libsonnet'),
  netblock_ip_ranges: (import 'netblock_ip_ranges.libsonnet'),
  notebooks_instance_iam_policy: (import 'notebooks_instance_iam_policy.libsonnet'),
  notebooks_runtime_iam_policy: (import 'notebooks_runtime_iam_policy.libsonnet'),
  organization: (import 'organization.libsonnet'),
  organization_iam_policy: (import 'organization_iam_policy.libsonnet'),
  privateca_ca_pool_iam_policy: (import 'privateca_ca_pool_iam_policy.libsonnet'),
  privateca_certificate_authority: (import 'privateca_certificate_authority.libsonnet'),
  privateca_certificate_template_iam_policy: (import 'privateca_certificate_template_iam_policy.libsonnet'),
  project: (import 'project.libsonnet'),
  project_iam_policy: (import 'project_iam_policy.libsonnet'),
  project_organization_policy: (import 'project_organization_policy.libsonnet'),
  project_service: (import 'project_service.libsonnet'),
  projects: (import 'projects.libsonnet'),
  pubsub_schema_iam_policy: (import 'pubsub_schema_iam_policy.libsonnet'),
  pubsub_subscription: (import 'pubsub_subscription.libsonnet'),
  pubsub_subscription_iam_policy: (import 'pubsub_subscription_iam_policy.libsonnet'),
  pubsub_topic: (import 'pubsub_topic.libsonnet'),
  pubsub_topic_iam_policy: (import 'pubsub_topic_iam_policy.libsonnet'),
  redis_instance: (import 'redis_instance.libsonnet'),
  scc_source_iam_policy: (import 'scc_source_iam_policy.libsonnet'),
  secret_manager_secret: (import 'secret_manager_secret.libsonnet'),
  secret_manager_secret_iam_policy: (import 'secret_manager_secret_iam_policy.libsonnet'),
  secret_manager_secret_version: (import 'secret_manager_secret_version.libsonnet'),
  secret_manager_secret_version_access: (import 'secret_manager_secret_version_access.libsonnet'),
  secret_manager_secrets: (import 'secret_manager_secrets.libsonnet'),
  secure_source_manager_instance_iam_policy: (import 'secure_source_manager_instance_iam_policy.libsonnet'),
  service_account: (import 'service_account.libsonnet'),
  service_account_access_token: (import 'service_account_access_token.libsonnet'),
  service_account_iam_policy: (import 'service_account_iam_policy.libsonnet'),
  service_account_id_token: (import 'service_account_id_token.libsonnet'),
  service_account_jwt: (import 'service_account_jwt.libsonnet'),
  service_account_key: (import 'service_account_key.libsonnet'),
  service_networking_peered_dns_domain: (import 'service_networking_peered_dns_domain.libsonnet'),
  sourcerepo_repository: (import 'sourcerepo_repository.libsonnet'),
  sourcerepo_repository_iam_policy: (import 'sourcerepo_repository_iam_policy.libsonnet'),
  spanner_database_iam_policy: (import 'spanner_database_iam_policy.libsonnet'),
  spanner_instance: (import 'spanner_instance.libsonnet'),
  spanner_instance_iam_policy: (import 'spanner_instance_iam_policy.libsonnet'),
  sql_backup_run: (import 'sql_backup_run.libsonnet'),
  sql_ca_certs: (import 'sql_ca_certs.libsonnet'),
  sql_database: (import 'sql_database.libsonnet'),
  sql_database_instance: (import 'sql_database_instance.libsonnet'),
  sql_database_instance_latest_recovery_time: (import 'sql_database_instance_latest_recovery_time.libsonnet'),
  sql_database_instances: (import 'sql_database_instances.libsonnet'),
  sql_databases: (import 'sql_databases.libsonnet'),
  sql_tiers: (import 'sql_tiers.libsonnet'),
  storage_bucket: (import 'storage_bucket.libsonnet'),
  storage_bucket_iam_policy: (import 'storage_bucket_iam_policy.libsonnet'),
  storage_bucket_object: (import 'storage_bucket_object.libsonnet'),
  storage_bucket_object_content: (import 'storage_bucket_object_content.libsonnet'),
  storage_object_signed_url: (import 'storage_object_signed_url.libsonnet'),
  storage_project_service_account: (import 'storage_project_service_account.libsonnet'),
  storage_transfer_project_service_account: (import 'storage_transfer_project_service_account.libsonnet'),
  tags_tag_key: (import 'tags_tag_key.libsonnet'),
  tags_tag_key_iam_policy: (import 'tags_tag_key_iam_policy.libsonnet'),
  tags_tag_value: (import 'tags_tag_value.libsonnet'),
  tags_tag_value_iam_policy: (import 'tags_tag_value_iam_policy.libsonnet'),
  tpu_tensorflow_versions: (import 'tpu_tensorflow_versions.libsonnet'),
  vertex_ai_index: (import 'vertex_ai_index.libsonnet'),
  vmwareengine_cluster: (import 'vmwareengine_cluster.libsonnet'),
  vmwareengine_external_address: (import 'vmwareengine_external_address.libsonnet'),
  vmwareengine_network: (import 'vmwareengine_network.libsonnet'),
  vmwareengine_network_peering: (import 'vmwareengine_network_peering.libsonnet'),
  vmwareengine_network_policy: (import 'vmwareengine_network_policy.libsonnet'),
  vmwareengine_nsx_credentials: (import 'vmwareengine_nsx_credentials.libsonnet'),
  vmwareengine_private_cloud: (import 'vmwareengine_private_cloud.libsonnet'),
  vmwareengine_subnet: (import 'vmwareengine_subnet.libsonnet'),
  vmwareengine_vcenter_credentials: (import 'vmwareengine_vcenter_credentials.libsonnet'),
  vpc_access_connector: (import 'vpc_access_connector.libsonnet'),
  workbench_instance_iam_policy: (import 'workbench_instance_iam_policy.libsonnet'),
}
