---
permalink: /container_cluster/
---

# container_cluster

`container_cluster` represents the `google_container_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAddonsConfig()`](#fn-withaddonsconfig)
* [`fn withAddonsConfigMixin()`](#fn-withaddonsconfigmixin)
* [`fn withAuthenticatorGroupsConfig()`](#fn-withauthenticatorgroupsconfig)
* [`fn withAuthenticatorGroupsConfigMixin()`](#fn-withauthenticatorgroupsconfigmixin)
* [`fn withBinaryAuthorization()`](#fn-withbinaryauthorization)
* [`fn withBinaryAuthorizationMixin()`](#fn-withbinaryauthorizationmixin)
* [`fn withClusterAutoscaling()`](#fn-withclusterautoscaling)
* [`fn withClusterAutoscalingMixin()`](#fn-withclusterautoscalingmixin)
* [`fn withClusterIpv4Cidr()`](#fn-withclusteripv4cidr)
* [`fn withConfidentialNodes()`](#fn-withconfidentialnodes)
* [`fn withConfidentialNodesMixin()`](#fn-withconfidentialnodesmixin)
* [`fn withCostManagementConfig()`](#fn-withcostmanagementconfig)
* [`fn withCostManagementConfigMixin()`](#fn-withcostmanagementconfigmixin)
* [`fn withDatabaseEncryption()`](#fn-withdatabaseencryption)
* [`fn withDatabaseEncryptionMixin()`](#fn-withdatabaseencryptionmixin)
* [`fn withDatapathProvider()`](#fn-withdatapathprovider)
* [`fn withDefaultMaxPodsPerNode()`](#fn-withdefaultmaxpodspernode)
* [`fn withDefaultSnatStatus()`](#fn-withdefaultsnatstatus)
* [`fn withDefaultSnatStatusMixin()`](#fn-withdefaultsnatstatusmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDnsConfig()`](#fn-withdnsconfig)
* [`fn withDnsConfigMixin()`](#fn-withdnsconfigmixin)
* [`fn withEnableAutopilot()`](#fn-withenableautopilot)
* [`fn withEnableBinaryAuthorization()`](#fn-withenablebinaryauthorization)
* [`fn withEnableIntranodeVisibility()`](#fn-withenableintranodevisibility)
* [`fn withEnableKubernetesAlpha()`](#fn-withenablekubernetesalpha)
* [`fn withEnableL4IlbSubsetting()`](#fn-withenablel4ilbsubsetting)
* [`fn withEnableLegacyAbac()`](#fn-withenablelegacyabac)
* [`fn withEnableShieldedNodes()`](#fn-withenableshieldednodes)
* [`fn withEnableTpu()`](#fn-withenabletpu)
* [`fn withGatewayApiConfig()`](#fn-withgatewayapiconfig)
* [`fn withGatewayApiConfigMixin()`](#fn-withgatewayapiconfigmixin)
* [`fn withInitialNodeCount()`](#fn-withinitialnodecount)
* [`fn withIpAllocationPolicy()`](#fn-withipallocationpolicy)
* [`fn withIpAllocationPolicyMixin()`](#fn-withipallocationpolicymixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withLoggingConfig()`](#fn-withloggingconfig)
* [`fn withLoggingConfigMixin()`](#fn-withloggingconfigmixin)
* [`fn withLoggingService()`](#fn-withloggingservice)
* [`fn withMaintenancePolicy()`](#fn-withmaintenancepolicy)
* [`fn withMaintenancePolicyMixin()`](#fn-withmaintenancepolicymixin)
* [`fn withMasterAuth()`](#fn-withmasterauth)
* [`fn withMasterAuthMixin()`](#fn-withmasterauthmixin)
* [`fn withMasterAuthorizedNetworksConfig()`](#fn-withmasterauthorizednetworksconfig)
* [`fn withMasterAuthorizedNetworksConfigMixin()`](#fn-withmasterauthorizednetworksconfigmixin)
* [`fn withMeshCertificates()`](#fn-withmeshcertificates)
* [`fn withMeshCertificatesMixin()`](#fn-withmeshcertificatesmixin)
* [`fn withMinMasterVersion()`](#fn-withminmasterversion)
* [`fn withMonitoringConfig()`](#fn-withmonitoringconfig)
* [`fn withMonitoringConfigMixin()`](#fn-withmonitoringconfigmixin)
* [`fn withMonitoringService()`](#fn-withmonitoringservice)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkPolicy()`](#fn-withnetworkpolicy)
* [`fn withNetworkPolicyMixin()`](#fn-withnetworkpolicymixin)
* [`fn withNetworkingMode()`](#fn-withnetworkingmode)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withNodeLocations()`](#fn-withnodelocations)
* [`fn withNodePool()`](#fn-withnodepool)
* [`fn withNodePoolDefaults()`](#fn-withnodepooldefaults)
* [`fn withNodePoolDefaultsMixin()`](#fn-withnodepooldefaultsmixin)
* [`fn withNodePoolMixin()`](#fn-withnodepoolmixin)
* [`fn withNodeVersion()`](#fn-withnodeversion)
* [`fn withNotificationConfig()`](#fn-withnotificationconfig)
* [`fn withNotificationConfigMixin()`](#fn-withnotificationconfigmixin)
* [`fn withPrivateClusterConfig()`](#fn-withprivateclusterconfig)
* [`fn withPrivateClusterConfigMixin()`](#fn-withprivateclusterconfigmixin)
* [`fn withPrivateIpv6GoogleAccess()`](#fn-withprivateipv6googleaccess)
* [`fn withProject()`](#fn-withproject)
* [`fn withReleaseChannel()`](#fn-withreleasechannel)
* [`fn withReleaseChannelMixin()`](#fn-withreleasechannelmixin)
* [`fn withRemoveDefaultNodePool()`](#fn-withremovedefaultnodepool)
* [`fn withResourceLabels()`](#fn-withresourcelabels)
* [`fn withResourceUsageExportConfig()`](#fn-withresourceusageexportconfig)
* [`fn withResourceUsageExportConfigMixin()`](#fn-withresourceusageexportconfigmixin)
* [`fn withServiceExternalIpsConfig()`](#fn-withserviceexternalipsconfig)
* [`fn withServiceExternalIpsConfigMixin()`](#fn-withserviceexternalipsconfigmixin)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVerticalPodAutoscaling()`](#fn-withverticalpodautoscaling)
* [`fn withVerticalPodAutoscalingMixin()`](#fn-withverticalpodautoscalingmixin)
* [`fn withWorkloadIdentityConfig()`](#fn-withworkloadidentityconfig)
* [`fn withWorkloadIdentityConfigMixin()`](#fn-withworkloadidentityconfigmixin)
* [`obj addons_config`](#obj-addons_config)
  * [`fn new()`](#fn-addons_confignew)
  * [`obj addons_config.cloudrun_config`](#obj-addons_configcloudrun_config)
    * [`fn new()`](#fn-addons_configcloudrun_confignew)
  * [`obj addons_config.config_connector_config`](#obj-addons_configconfig_connector_config)
    * [`fn new()`](#fn-addons_configconfig_connector_confignew)
  * [`obj addons_config.dns_cache_config`](#obj-addons_configdns_cache_config)
    * [`fn new()`](#fn-addons_configdns_cache_confignew)
  * [`obj addons_config.gce_persistent_disk_csi_driver_config`](#obj-addons_configgce_persistent_disk_csi_driver_config)
    * [`fn new()`](#fn-addons_configgce_persistent_disk_csi_driver_confignew)
  * [`obj addons_config.gcp_filestore_csi_driver_config`](#obj-addons_configgcp_filestore_csi_driver_config)
    * [`fn new()`](#fn-addons_configgcp_filestore_csi_driver_confignew)
  * [`obj addons_config.gke_backup_agent_config`](#obj-addons_configgke_backup_agent_config)
    * [`fn new()`](#fn-addons_configgke_backup_agent_confignew)
  * [`obj addons_config.horizontal_pod_autoscaling`](#obj-addons_confighorizontal_pod_autoscaling)
    * [`fn new()`](#fn-addons_confighorizontal_pod_autoscalingnew)
  * [`obj addons_config.http_load_balancing`](#obj-addons_confighttp_load_balancing)
    * [`fn new()`](#fn-addons_confighttp_load_balancingnew)
  * [`obj addons_config.network_policy_config`](#obj-addons_confignetwork_policy_config)
    * [`fn new()`](#fn-addons_confignetwork_policy_confignew)
* [`obj authenticator_groups_config`](#obj-authenticator_groups_config)
  * [`fn new()`](#fn-authenticator_groups_confignew)
* [`obj binary_authorization`](#obj-binary_authorization)
  * [`fn new()`](#fn-binary_authorizationnew)
* [`obj cluster_autoscaling`](#obj-cluster_autoscaling)
  * [`fn new()`](#fn-cluster_autoscalingnew)
  * [`obj cluster_autoscaling.auto_provisioning_defaults`](#obj-cluster_autoscalingauto_provisioning_defaults)
    * [`fn new()`](#fn-cluster_autoscalingauto_provisioning_defaultsnew)
    * [`obj cluster_autoscaling.auto_provisioning_defaults.management`](#obj-cluster_autoscalingauto_provisioning_defaultsmanagement)
      * [`fn new()`](#fn-cluster_autoscalingauto_provisioning_defaultsmanagementnew)
    * [`obj cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config`](#obj-cluster_autoscalingauto_provisioning_defaultsshielded_instance_config)
      * [`fn new()`](#fn-cluster_autoscalingauto_provisioning_defaultsshielded_instance_confignew)
    * [`obj cluster_autoscaling.auto_provisioning_defaults.upgrade_settings`](#obj-cluster_autoscalingauto_provisioning_defaultsupgrade_settings)
      * [`fn new()`](#fn-cluster_autoscalingauto_provisioning_defaultsupgrade_settingsnew)
      * [`obj cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings`](#obj-cluster_autoscalingauto_provisioning_defaultsupgrade_settingsblue_green_settings)
        * [`fn new()`](#fn-cluster_autoscalingauto_provisioning_defaultsupgrade_settingsblue_green_settingsnew)
        * [`obj cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy`](#obj-cluster_autoscalingauto_provisioning_defaultsupgrade_settingsblue_green_settingsstandard_rollout_policy)
          * [`fn new()`](#fn-cluster_autoscalingauto_provisioning_defaultsupgrade_settingsblue_green_settingsstandard_rollout_policynew)
  * [`obj cluster_autoscaling.resource_limits`](#obj-cluster_autoscalingresource_limits)
    * [`fn new()`](#fn-cluster_autoscalingresource_limitsnew)
* [`obj confidential_nodes`](#obj-confidential_nodes)
  * [`fn new()`](#fn-confidential_nodesnew)
* [`obj cost_management_config`](#obj-cost_management_config)
  * [`fn new()`](#fn-cost_management_confignew)
* [`obj database_encryption`](#obj-database_encryption)
  * [`fn new()`](#fn-database_encryptionnew)
* [`obj default_snat_status`](#obj-default_snat_status)
  * [`fn new()`](#fn-default_snat_statusnew)
* [`obj dns_config`](#obj-dns_config)
  * [`fn new()`](#fn-dns_confignew)
* [`obj gateway_api_config`](#obj-gateway_api_config)
  * [`fn new()`](#fn-gateway_api_confignew)
* [`obj ip_allocation_policy`](#obj-ip_allocation_policy)
  * [`fn new()`](#fn-ip_allocation_policynew)
* [`obj logging_config`](#obj-logging_config)
  * [`fn new()`](#fn-logging_confignew)
* [`obj maintenance_policy`](#obj-maintenance_policy)
  * [`fn new()`](#fn-maintenance_policynew)
  * [`obj maintenance_policy.daily_maintenance_window`](#obj-maintenance_policydaily_maintenance_window)
    * [`fn new()`](#fn-maintenance_policydaily_maintenance_windownew)
  * [`obj maintenance_policy.maintenance_exclusion`](#obj-maintenance_policymaintenance_exclusion)
    * [`fn new()`](#fn-maintenance_policymaintenance_exclusionnew)
    * [`obj maintenance_policy.maintenance_exclusion.exclusion_options`](#obj-maintenance_policymaintenance_exclusionexclusion_options)
      * [`fn new()`](#fn-maintenance_policymaintenance_exclusionexclusion_optionsnew)
  * [`obj maintenance_policy.recurring_window`](#obj-maintenance_policyrecurring_window)
    * [`fn new()`](#fn-maintenance_policyrecurring_windownew)
* [`obj master_auth`](#obj-master_auth)
  * [`fn new()`](#fn-master_authnew)
  * [`obj master_auth.client_certificate_config`](#obj-master_authclient_certificate_config)
    * [`fn new()`](#fn-master_authclient_certificate_confignew)
* [`obj master_authorized_networks_config`](#obj-master_authorized_networks_config)
  * [`fn new()`](#fn-master_authorized_networks_confignew)
  * [`obj master_authorized_networks_config.cidr_blocks`](#obj-master_authorized_networks_configcidr_blocks)
    * [`fn new()`](#fn-master_authorized_networks_configcidr_blocksnew)
* [`obj mesh_certificates`](#obj-mesh_certificates)
  * [`fn new()`](#fn-mesh_certificatesnew)
* [`obj monitoring_config`](#obj-monitoring_config)
  * [`fn new()`](#fn-monitoring_confignew)
  * [`obj monitoring_config.managed_prometheus`](#obj-monitoring_configmanaged_prometheus)
    * [`fn new()`](#fn-monitoring_configmanaged_prometheusnew)
* [`obj network_policy`](#obj-network_policy)
  * [`fn new()`](#fn-network_policynew)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
  * [`obj node_config.advanced_machine_features`](#obj-node_configadvanced_machine_features)
    * [`fn new()`](#fn-node_configadvanced_machine_featuresnew)
  * [`obj node_config.gcfs_config`](#obj-node_configgcfs_config)
    * [`fn new()`](#fn-node_configgcfs_confignew)
  * [`obj node_config.gvnic`](#obj-node_configgvnic)
    * [`fn new()`](#fn-node_configgvnicnew)
  * [`obj node_config.kubelet_config`](#obj-node_configkubelet_config)
    * [`fn new()`](#fn-node_configkubelet_confignew)
  * [`obj node_config.linux_node_config`](#obj-node_configlinux_node_config)
    * [`fn new()`](#fn-node_configlinux_node_confignew)
  * [`obj node_config.local_nvme_ssd_block_config`](#obj-node_configlocal_nvme_ssd_block_config)
    * [`fn new()`](#fn-node_configlocal_nvme_ssd_block_confignew)
  * [`obj node_config.reservation_affinity`](#obj-node_configreservation_affinity)
    * [`fn new()`](#fn-node_configreservation_affinitynew)
  * [`obj node_config.shielded_instance_config`](#obj-node_configshielded_instance_config)
    * [`fn new()`](#fn-node_configshielded_instance_confignew)
  * [`obj node_config.workload_metadata_config`](#obj-node_configworkload_metadata_config)
    * [`fn new()`](#fn-node_configworkload_metadata_confignew)
* [`obj node_pool`](#obj-node_pool)
  * [`fn new()`](#fn-node_poolnew)
  * [`obj node_pool.autoscaling`](#obj-node_poolautoscaling)
    * [`fn new()`](#fn-node_poolautoscalingnew)
  * [`obj node_pool.management`](#obj-node_poolmanagement)
    * [`fn new()`](#fn-node_poolmanagementnew)
  * [`obj node_pool.network_config`](#obj-node_poolnetwork_config)
    * [`fn new()`](#fn-node_poolnetwork_confignew)
  * [`obj node_pool.node_config`](#obj-node_poolnode_config)
    * [`fn new()`](#fn-node_poolnode_confignew)
    * [`obj node_pool.node_config.advanced_machine_features`](#obj-node_poolnode_configadvanced_machine_features)
      * [`fn new()`](#fn-node_poolnode_configadvanced_machine_featuresnew)
    * [`obj node_pool.node_config.gcfs_config`](#obj-node_poolnode_configgcfs_config)
      * [`fn new()`](#fn-node_poolnode_configgcfs_confignew)
    * [`obj node_pool.node_config.gvnic`](#obj-node_poolnode_configgvnic)
      * [`fn new()`](#fn-node_poolnode_configgvnicnew)
    * [`obj node_pool.node_config.kubelet_config`](#obj-node_poolnode_configkubelet_config)
      * [`fn new()`](#fn-node_poolnode_configkubelet_confignew)
    * [`obj node_pool.node_config.linux_node_config`](#obj-node_poolnode_configlinux_node_config)
      * [`fn new()`](#fn-node_poolnode_configlinux_node_confignew)
    * [`obj node_pool.node_config.local_nvme_ssd_block_config`](#obj-node_poolnode_configlocal_nvme_ssd_block_config)
      * [`fn new()`](#fn-node_poolnode_configlocal_nvme_ssd_block_confignew)
    * [`obj node_pool.node_config.reservation_affinity`](#obj-node_poolnode_configreservation_affinity)
      * [`fn new()`](#fn-node_poolnode_configreservation_affinitynew)
    * [`obj node_pool.node_config.shielded_instance_config`](#obj-node_poolnode_configshielded_instance_config)
      * [`fn new()`](#fn-node_poolnode_configshielded_instance_confignew)
    * [`obj node_pool.node_config.workload_metadata_config`](#obj-node_poolnode_configworkload_metadata_config)
      * [`fn new()`](#fn-node_poolnode_configworkload_metadata_confignew)
  * [`obj node_pool.placement_policy`](#obj-node_poolplacement_policy)
    * [`fn new()`](#fn-node_poolplacement_policynew)
  * [`obj node_pool.upgrade_settings`](#obj-node_poolupgrade_settings)
    * [`fn new()`](#fn-node_poolupgrade_settingsnew)
    * [`obj node_pool.upgrade_settings.blue_green_settings`](#obj-node_poolupgrade_settingsblue_green_settings)
      * [`fn new()`](#fn-node_poolupgrade_settingsblue_green_settingsnew)
      * [`obj node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy`](#obj-node_poolupgrade_settingsblue_green_settingsstandard_rollout_policy)
        * [`fn new()`](#fn-node_poolupgrade_settingsblue_green_settingsstandard_rollout_policynew)
* [`obj node_pool_defaults`](#obj-node_pool_defaults)
  * [`fn new()`](#fn-node_pool_defaultsnew)
  * [`obj node_pool_defaults.node_config_defaults`](#obj-node_pool_defaultsnode_config_defaults)
    * [`fn new()`](#fn-node_pool_defaultsnode_config_defaultsnew)
* [`obj notification_config`](#obj-notification_config)
  * [`fn new()`](#fn-notification_confignew)
  * [`obj notification_config.pubsub`](#obj-notification_configpubsub)
    * [`fn new()`](#fn-notification_configpubsubnew)
    * [`obj notification_config.pubsub.filter`](#obj-notification_configpubsubfilter)
      * [`fn new()`](#fn-notification_configpubsubfilternew)
* [`obj private_cluster_config`](#obj-private_cluster_config)
  * [`fn new()`](#fn-private_cluster_confignew)
  * [`obj private_cluster_config.master_global_access_config`](#obj-private_cluster_configmaster_global_access_config)
    * [`fn new()`](#fn-private_cluster_configmaster_global_access_confignew)
* [`obj release_channel`](#obj-release_channel)
  * [`fn new()`](#fn-release_channelnew)
* [`obj resource_usage_export_config`](#obj-resource_usage_export_config)
  * [`fn new()`](#fn-resource_usage_export_confignew)
  * [`obj resource_usage_export_config.bigquery_destination`](#obj-resource_usage_export_configbigquery_destination)
    * [`fn new()`](#fn-resource_usage_export_configbigquery_destinationnew)
* [`obj service_external_ips_config`](#obj-service_external_ips_config)
  * [`fn new()`](#fn-service_external_ips_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vertical_pod_autoscaling`](#obj-vertical_pod_autoscaling)
  * [`fn new()`](#fn-vertical_pod_autoscalingnew)
* [`obj workload_identity_config`](#obj-workload_identity_config)
  * [`fn new()`](#fn-workload_identity_confignew)

## Fields

### fn new

```ts
new()
```


`google.container_cluster.new` injects a new `google_container_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.container_cluster` using the reference:

    $._ref.google_container_cluster.some_id.get('id')

This is the same as directly entering `"${ google_container_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster_ipv4_cidr` (`string`): The IP address range of the Kubernetes pods in this cluster in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8. This field will only work for routes-based clusters, where ip_allocation_policy is not defined. When `null`, the `cluster_ipv4_cidr` field will be omitted from the resulting object.
  - `datapath_provider` (`string`): The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation. When `null`, the `datapath_provider` field will be omitted from the resulting object.
  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node in this cluster. This doesn&#39;t work on &#34;routes-based&#34; clusters, clusters that don&#39;t have IP Aliasing enabled. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.
  - `description` (`string`):  Description of the cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_autopilot` (`bool`): Enable Autopilot for this cluster. When `null`, the `enable_autopilot` field will be omitted from the resulting object.
  - `enable_binary_authorization` (`bool`): Enable Binary Authorization for this cluster. If enabled, all container images will be validated by Google Binary Authorization. When `null`, the `enable_binary_authorization` field will be omitted from the resulting object.
  - `enable_intranode_visibility` (`bool`): Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network. When `null`, the `enable_intranode_visibility` field will be omitted from the resulting object.
  - `enable_kubernetes_alpha` (`bool`): Whether to enable Kubernetes Alpha features for this cluster. Note that when this option is enabled, the cluster cannot be upgraded and will be automatically deleted after 30 days. When `null`, the `enable_kubernetes_alpha` field will be omitted from the resulting object.
  - `enable_l4_ilb_subsetting` (`bool`): Whether L4ILB Subsetting is enabled for this cluster. When `null`, the `enable_l4_ilb_subsetting` field will be omitted from the resulting object.
  - `enable_legacy_abac` (`bool`): Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM. Defaults to false. When `null`, the `enable_legacy_abac` field will be omitted from the resulting object.
  - `enable_shielded_nodes` (`bool`): Enable Shielded Nodes features on all nodes in this cluster. Defaults to true. When `null`, the `enable_shielded_nodes` field will be omitted from the resulting object.
  - `enable_tpu` (`bool`): Whether to enable Cloud TPU resources in this cluster. When `null`, the `enable_tpu` field will be omitted from the resulting object.
  - `initial_node_count` (`number`): The number of nodes to create in this cluster&#39;s default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Must be set if node_pool is not set. If you&#39;re using google_container_node_pool objects with no default node pool, you&#39;ll need to set this to a value of at least 1, alongside setting remove_default_node_pool to true. When `null`, the `initial_node_count` field will be omitted from the resulting object.
  - `location` (`string`): The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. When `null`, the `location` field will be omitted from the resulting object.
  - `logging_service` (`string`): The logging service that the cluster should write logs to. Available options include logging.googleapis.com(Legacy Stackdriver), logging.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Logging), and none. Defaults to logging.googleapis.com/kubernetes. When `null`, the `logging_service` field will be omitted from the resulting object.
  - `min_master_version` (`string`): The minimum version of the master. GKE will auto-update the master to new versions, so this does not guarantee the current master version--use the read-only master_version field to obtain that. If unset, the cluster&#39;s version will be set by GKE to the version of the most recent official release (which is not necessarily the latest version). When `null`, the `min_master_version` field will be omitted from the resulting object.
  - `monitoring_service` (`string`): The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com(Legacy Stackdriver), monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Monitoring), and none. Defaults to monitoring.googleapis.com/kubernetes. When `null`, the `monitoring_service` field will be omitted from the resulting object.
  - `name` (`string`): The name of the cluster, unique within the project and location.
  - `network` (`string`): The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network. When `null`, the `network` field will be omitted from the resulting object.
  - `networking_mode` (`string`): Determines whether alias IPs or routes will be used for pod IPs in the cluster. When `null`, the `networking_mode` field will be omitted from the resulting object.
  - `node_locations` (`list`): The list of zones in which the cluster&#39;s nodes are located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If this is specified for a zonal cluster, omit the cluster&#39;s zone. When `null`, the `node_locations` field will be omitted from the resulting object.
  - `node_version` (`string`): The Kubernetes version on the nodes. Must either be unset or set to the same value as min_master_version on create. Defaults to the default version set by GKE which is not necessarily the latest version. This only affects nodes in the default node pool. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. To update nodes in other node pools, use the version attribute on the node pool. When `null`, the `node_version` field will be omitted from the resulting object.
  - `private_ipv6_google_access` (`string`): The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4). When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `remove_default_node_pool` (`bool`): If true, deletes the default node pool upon cluster creation. If you&#39;re using google_container_node_pool resources with no default node pool, this should be set to true, alongside setting initial_node_count to at least 1. When `null`, the `remove_default_node_pool` field will be omitted from the resulting object.
  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the cluster. When `null`, the `resource_labels` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork in which the cluster&#39;s instances are launched. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `addons_config` (`list[obj]`): The configuration for addons supported by GKE. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.new](#fn-addons_confignew) constructor.
  - `authenticator_groups_config` (`list[obj]`): Configuration for the Google Groups for GKE feature. When `null`, the `authenticator_groups_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.authenticator_groups_config.new](#fn-authenticator_groups_confignew) constructor.
  - `binary_authorization` (`list[obj]`): Configuration options for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.
  - `cluster_autoscaling` (`list[obj]`): Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs of the cluster&#39;s workload. See the guide to using Node Auto-Provisioning for more details. When `null`, the `cluster_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.new](#fn-cluster_autoscalingnew) constructor.
  - `confidential_nodes` (`list[obj]`): Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can&#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. When `null`, the `confidential_nodes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.confidential_nodes.new](#fn-confidential_nodesnew) constructor.
  - `cost_management_config` (`list[obj]`): Cost management configuration for the cluster. When `null`, the `cost_management_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cost_management_config.new](#fn-cost_management_confignew) constructor.
  - `database_encryption` (`list[obj]`): Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: &#34;ENCRYPTED&#34;; &#34;DECRYPTED&#34;. key_name is the name of a CloudKMS key. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.database_encryption.new](#fn-database_encryptionnew) constructor.
  - `default_snat_status` (`list[obj]`): Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled. When `null`, the `default_snat_status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.default_snat_status.new](#fn-default_snat_statusnew) constructor.
  - `dns_config` (`list[obj]`): Configuration for Cloud DNS for Kubernetes Engine. When `null`, the `dns_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.dns_config.new](#fn-dns_confignew) constructor.
  - `gateway_api_config` (`list[obj]`): Configuration for GKE Gateway API controller. When `null`, the `gateway_api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.gateway_api_config.new](#fn-gateway_api_confignew) constructor.
  - `ip_allocation_policy` (`list[obj]`): Configuration of cluster IP allocation for VPC-native clusters. Adding this block enables IP aliasing, making the cluster VPC-native instead of routes-based. When `null`, the `ip_allocation_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.ip_allocation_policy.new](#fn-ip_allocation_policynew) constructor.
  - `logging_config` (`list[obj]`): Logging configuration for the cluster. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.logging_config.new](#fn-logging_confignew) constructor.
  - `maintenance_policy` (`list[obj]`): The maintenance policy to use for the cluster. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `master_auth` (`list[obj]`): The authentication information for accessing the Kubernetes master. Some values in this block are only returned by the API if your service account has permission to get credentials for your GKE cluster. If you see an unexpected diff unsetting your client cert, ensure you have the container.clusters.getCredentials permission. When `null`, the `master_auth` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_auth.new](#fn-master_authnew) constructor.
  - `master_authorized_networks_config` (`list[obj]`): The desired configuration options for master authorized networks. Omit the nested cidr_blocks attribute to disallow external access (except the cluster node IPs, which GKE automatically whitelists). When `null`, the `master_authorized_networks_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_authorized_networks_config.new](#fn-master_authorized_networks_confignew) constructor.
  - `mesh_certificates` (`list[obj]`): If set, and enable_certificates=true, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster. When `null`, the `mesh_certificates` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.mesh_certificates.new](#fn-mesh_certificatesnew) constructor.
  - `monitoring_config` (`list[obj]`): Monitoring configuration for the cluster. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.
  - `network_policy` (`list[obj]`): Configuration options for the NetworkPolicy feature. When `null`, the `network_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.network_policy.new](#fn-network_policynew) constructor.
  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.new](#fn-node_confignew) constructor.
  - `node_pool` (`list[obj]`): List of node pools associated with this cluster. See google_container_node_pool for schema. Warning: node pools defined inside a cluster can&#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability to say &#34;these are the only node pools associated with this cluster&#34;, use the google_container_node_pool resource instead of this property. When `null`, the `node_pool` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.new](#fn-node_poolnew) constructor.
  - `node_pool_defaults` (`list[obj]`): The default nodel pool settings for the entire cluster. When `null`, the `node_pool_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool_defaults.new](#fn-node_pool_defaultsnew) constructor.
  - `notification_config` (`list[obj]`): The notification config for sending cluster upgrade notifications When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.new](#fn-notification_confignew) constructor.
  - `private_cluster_config` (`list[obj]`): Configuration for private clusters, clusters with private nodes. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.
  - `release_channel` (`list[obj]`): Configuration options for the Release channel feature, which provide more control over automatic upgrades of your GKE clusters. Note that removing this field from your config will not unenroll it. Instead, use the &#34;UNSPECIFIED&#34; channel. When `null`, the `release_channel` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.release_channel.new](#fn-release_channelnew) constructor.
  - `resource_usage_export_config` (`list[obj]`): Configuration for the ResourceUsageExportConfig feature. When `null`, the `resource_usage_export_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.resource_usage_export_config.new](#fn-resource_usage_export_confignew) constructor.
  - `service_external_ips_config` (`list[obj]`): If set, and enabled=true, services with external ips field will not be blocked When `null`, the `service_external_ips_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.service_external_ips_config.new](#fn-service_external_ips_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.timeouts.new](#fn-timeoutsnew) constructor.
  - `vertical_pod_autoscaling` (`list[obj]`): Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it. When `null`, the `vertical_pod_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.vertical_pod_autoscaling.new](#fn-vertical_pod_autoscalingnew) constructor.
  - `workload_identity_config` (`list[obj]`): Configuration for the use of Kubernetes Service Accounts in GCP IAM policies. When `null`, the `workload_identity_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.workload_identity_config.new](#fn-workload_identity_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_cluster`
Terraform resource.

Unlike [google.container_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_ipv4_cidr` (`string`): The IP address range of the Kubernetes pods in this cluster in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8. This field will only work for routes-based clusters, where ip_allocation_policy is not defined. When `null`, the `cluster_ipv4_cidr` field will be omitted from the resulting object.
  - `datapath_provider` (`string`): The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation. When `null`, the `datapath_provider` field will be omitted from the resulting object.
  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node in this cluster. This doesn&#39;t work on &#34;routes-based&#34; clusters, clusters that don&#39;t have IP Aliasing enabled. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.
  - `description` (`string`):  Description of the cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_autopilot` (`bool`): Enable Autopilot for this cluster. When `null`, the `enable_autopilot` field will be omitted from the resulting object.
  - `enable_binary_authorization` (`bool`): Enable Binary Authorization for this cluster. If enabled, all container images will be validated by Google Binary Authorization. When `null`, the `enable_binary_authorization` field will be omitted from the resulting object.
  - `enable_intranode_visibility` (`bool`): Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network. When `null`, the `enable_intranode_visibility` field will be omitted from the resulting object.
  - `enable_kubernetes_alpha` (`bool`): Whether to enable Kubernetes Alpha features for this cluster. Note that when this option is enabled, the cluster cannot be upgraded and will be automatically deleted after 30 days. When `null`, the `enable_kubernetes_alpha` field will be omitted from the resulting object.
  - `enable_l4_ilb_subsetting` (`bool`): Whether L4ILB Subsetting is enabled for this cluster. When `null`, the `enable_l4_ilb_subsetting` field will be omitted from the resulting object.
  - `enable_legacy_abac` (`bool`): Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM. Defaults to false. When `null`, the `enable_legacy_abac` field will be omitted from the resulting object.
  - `enable_shielded_nodes` (`bool`): Enable Shielded Nodes features on all nodes in this cluster. Defaults to true. When `null`, the `enable_shielded_nodes` field will be omitted from the resulting object.
  - `enable_tpu` (`bool`): Whether to enable Cloud TPU resources in this cluster. When `null`, the `enable_tpu` field will be omitted from the resulting object.
  - `initial_node_count` (`number`): The number of nodes to create in this cluster&#39;s default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Must be set if node_pool is not set. If you&#39;re using google_container_node_pool objects with no default node pool, you&#39;ll need to set this to a value of at least 1, alongside setting remove_default_node_pool to true. When `null`, the `initial_node_count` field will be omitted from the resulting object.
  - `location` (`string`): The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. When `null`, the `location` field will be omitted from the resulting object.
  - `logging_service` (`string`): The logging service that the cluster should write logs to. Available options include logging.googleapis.com(Legacy Stackdriver), logging.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Logging), and none. Defaults to logging.googleapis.com/kubernetes. When `null`, the `logging_service` field will be omitted from the resulting object.
  - `min_master_version` (`string`): The minimum version of the master. GKE will auto-update the master to new versions, so this does not guarantee the current master version--use the read-only master_version field to obtain that. If unset, the cluster&#39;s version will be set by GKE to the version of the most recent official release (which is not necessarily the latest version). When `null`, the `min_master_version` field will be omitted from the resulting object.
  - `monitoring_service` (`string`): The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com(Legacy Stackdriver), monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Monitoring), and none. Defaults to monitoring.googleapis.com/kubernetes. When `null`, the `monitoring_service` field will be omitted from the resulting object.
  - `name` (`string`): The name of the cluster, unique within the project and location.
  - `network` (`string`): The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network. When `null`, the `network` field will be omitted from the resulting object.
  - `networking_mode` (`string`): Determines whether alias IPs or routes will be used for pod IPs in the cluster. When `null`, the `networking_mode` field will be omitted from the resulting object.
  - `node_locations` (`list`): The list of zones in which the cluster&#39;s nodes are located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If this is specified for a zonal cluster, omit the cluster&#39;s zone. When `null`, the `node_locations` field will be omitted from the resulting object.
  - `node_version` (`string`): The Kubernetes version on the nodes. Must either be unset or set to the same value as min_master_version on create. Defaults to the default version set by GKE which is not necessarily the latest version. This only affects nodes in the default node pool. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. To update nodes in other node pools, use the version attribute on the node pool. When `null`, the `node_version` field will be omitted from the resulting object.
  - `private_ipv6_google_access` (`string`): The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4). When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `remove_default_node_pool` (`bool`): If true, deletes the default node pool upon cluster creation. If you&#39;re using google_container_node_pool resources with no default node pool, this should be set to true, alongside setting initial_node_count to at least 1. When `null`, the `remove_default_node_pool` field will be omitted from the resulting object.
  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the cluster. When `null`, the `resource_labels` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork in which the cluster&#39;s instances are launched. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `addons_config` (`list[obj]`): The configuration for addons supported by GKE. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.new](#fn-addons_confignew) constructor.
  - `authenticator_groups_config` (`list[obj]`): Configuration for the Google Groups for GKE feature. When `null`, the `authenticator_groups_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.authenticator_groups_config.new](#fn-authenticator_groups_confignew) constructor.
  - `binary_authorization` (`list[obj]`): Configuration options for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.
  - `cluster_autoscaling` (`list[obj]`): Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs of the cluster&#39;s workload. See the guide to using Node Auto-Provisioning for more details. When `null`, the `cluster_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.new](#fn-cluster_autoscalingnew) constructor.
  - `confidential_nodes` (`list[obj]`): Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can&#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. When `null`, the `confidential_nodes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.confidential_nodes.new](#fn-confidential_nodesnew) constructor.
  - `cost_management_config` (`list[obj]`): Cost management configuration for the cluster. When `null`, the `cost_management_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cost_management_config.new](#fn-cost_management_confignew) constructor.
  - `database_encryption` (`list[obj]`): Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: &#34;ENCRYPTED&#34;; &#34;DECRYPTED&#34;. key_name is the name of a CloudKMS key. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.database_encryption.new](#fn-database_encryptionnew) constructor.
  - `default_snat_status` (`list[obj]`): Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled. When `null`, the `default_snat_status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.default_snat_status.new](#fn-default_snat_statusnew) constructor.
  - `dns_config` (`list[obj]`): Configuration for Cloud DNS for Kubernetes Engine. When `null`, the `dns_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.dns_config.new](#fn-dns_confignew) constructor.
  - `gateway_api_config` (`list[obj]`): Configuration for GKE Gateway API controller. When `null`, the `gateway_api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.gateway_api_config.new](#fn-gateway_api_confignew) constructor.
  - `ip_allocation_policy` (`list[obj]`): Configuration of cluster IP allocation for VPC-native clusters. Adding this block enables IP aliasing, making the cluster VPC-native instead of routes-based. When `null`, the `ip_allocation_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.ip_allocation_policy.new](#fn-ip_allocation_policynew) constructor.
  - `logging_config` (`list[obj]`): Logging configuration for the cluster. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.logging_config.new](#fn-logging_confignew) constructor.
  - `maintenance_policy` (`list[obj]`): The maintenance policy to use for the cluster. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `master_auth` (`list[obj]`): The authentication information for accessing the Kubernetes master. Some values in this block are only returned by the API if your service account has permission to get credentials for your GKE cluster. If you see an unexpected diff unsetting your client cert, ensure you have the container.clusters.getCredentials permission. When `null`, the `master_auth` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_auth.new](#fn-master_authnew) constructor.
  - `master_authorized_networks_config` (`list[obj]`): The desired configuration options for master authorized networks. Omit the nested cidr_blocks attribute to disallow external access (except the cluster node IPs, which GKE automatically whitelists). When `null`, the `master_authorized_networks_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_authorized_networks_config.new](#fn-master_authorized_networks_confignew) constructor.
  - `mesh_certificates` (`list[obj]`): If set, and enable_certificates=true, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster. When `null`, the `mesh_certificates` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.mesh_certificates.new](#fn-mesh_certificatesnew) constructor.
  - `monitoring_config` (`list[obj]`): Monitoring configuration for the cluster. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.
  - `network_policy` (`list[obj]`): Configuration options for the NetworkPolicy feature. When `null`, the `network_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.network_policy.new](#fn-network_policynew) constructor.
  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.new](#fn-node_confignew) constructor.
  - `node_pool` (`list[obj]`): List of node pools associated with this cluster. See google_container_node_pool for schema. Warning: node pools defined inside a cluster can&#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability to say &#34;these are the only node pools associated with this cluster&#34;, use the google_container_node_pool resource instead of this property. When `null`, the `node_pool` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.new](#fn-node_poolnew) constructor.
  - `node_pool_defaults` (`list[obj]`): The default nodel pool settings for the entire cluster. When `null`, the `node_pool_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool_defaults.new](#fn-node_pool_defaultsnew) constructor.
  - `notification_config` (`list[obj]`): The notification config for sending cluster upgrade notifications When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.new](#fn-notification_confignew) constructor.
  - `private_cluster_config` (`list[obj]`): Configuration for private clusters, clusters with private nodes. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.
  - `release_channel` (`list[obj]`): Configuration options for the Release channel feature, which provide more control over automatic upgrades of your GKE clusters. Note that removing this field from your config will not unenroll it. Instead, use the &#34;UNSPECIFIED&#34; channel. When `null`, the `release_channel` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.release_channel.new](#fn-release_channelnew) constructor.
  - `resource_usage_export_config` (`list[obj]`): Configuration for the ResourceUsageExportConfig feature. When `null`, the `resource_usage_export_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.resource_usage_export_config.new](#fn-resource_usage_export_confignew) constructor.
  - `service_external_ips_config` (`list[obj]`): If set, and enabled=true, services with external ips field will not be blocked When `null`, the `service_external_ips_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.service_external_ips_config.new](#fn-service_external_ips_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.timeouts.new](#fn-timeoutsnew) constructor.
  - `vertical_pod_autoscaling` (`list[obj]`): Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it. When `null`, the `vertical_pod_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.vertical_pod_autoscaling.new](#fn-vertical_pod_autoscalingnew) constructor.
  - `workload_identity_config` (`list[obj]`): Configuration for the use of Kubernetes Service Accounts in GCP IAM policies. When `null`, the `workload_identity_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.workload_identity_config.new](#fn-workload_identity_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_cluster` resource into the root Terraform configuration.


### fn withAddonsConfig

```ts
withAddonsConfig()
```

`google.list[obj].withAddonsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the addons_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAddonsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `addons_config` field.


### fn withAddonsConfigMixin

```ts
withAddonsConfigMixin()
```

`google.list[obj].withAddonsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the addons_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAddonsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `addons_config` field.


### fn withAuthenticatorGroupsConfig

```ts
withAuthenticatorGroupsConfig()
```

`google.list[obj].withAuthenticatorGroupsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authenticator_groups_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuthenticatorGroupsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authenticator_groups_config` field.


### fn withAuthenticatorGroupsConfigMixin

```ts
withAuthenticatorGroupsConfigMixin()
```

`google.list[obj].withAuthenticatorGroupsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authenticator_groups_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuthenticatorGroupsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authenticator_groups_config` field.


### fn withBinaryAuthorization

```ts
withBinaryAuthorization()
```

`google.list[obj].withBinaryAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the binary_authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBinaryAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.


### fn withBinaryAuthorizationMixin

```ts
withBinaryAuthorizationMixin()
```

`google.list[obj].withBinaryAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the binary_authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBinaryAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.


### fn withClusterAutoscaling

```ts
withClusterAutoscaling()
```

`google.list[obj].withClusterAutoscaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_autoscaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withClusterAutoscalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_autoscaling` field.


### fn withClusterAutoscalingMixin

```ts
withClusterAutoscalingMixin()
```

`google.list[obj].withClusterAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_autoscaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withClusterAutoscaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_autoscaling` field.


### fn withClusterIpv4Cidr

```ts
withClusterIpv4Cidr()
```

`google.string.withClusterIpv4Cidr` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_ipv4_cidr field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_ipv4_cidr` field.


### fn withConfidentialNodes

```ts
withConfidentialNodes()
```

`google.list[obj].withConfidentialNodes` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the confidential_nodes field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfidentialNodesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `confidential_nodes` field.


### fn withConfidentialNodesMixin

```ts
withConfidentialNodesMixin()
```

`google.list[obj].withConfidentialNodesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the confidential_nodes field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfidentialNodes](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `confidential_nodes` field.


### fn withCostManagementConfig

```ts
withCostManagementConfig()
```

`google.list[obj].withCostManagementConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cost_management_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCostManagementConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cost_management_config` field.


### fn withCostManagementConfigMixin

```ts
withCostManagementConfigMixin()
```

`google.list[obj].withCostManagementConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cost_management_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCostManagementConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cost_management_config` field.


### fn withDatabaseEncryption

```ts
withDatabaseEncryption()
```

`google.list[obj].withDatabaseEncryption` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the database_encryption field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDatabaseEncryptionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `database_encryption` field.


### fn withDatabaseEncryptionMixin

```ts
withDatabaseEncryptionMixin()
```

`google.list[obj].withDatabaseEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the database_encryption field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDatabaseEncryption](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `database_encryption` field.


### fn withDatapathProvider

```ts
withDatapathProvider()
```

`google.string.withDatapathProvider` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the datapath_provider field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `datapath_provider` field.


### fn withDefaultMaxPodsPerNode

```ts
withDefaultMaxPodsPerNode()
```

`google.number.withDefaultMaxPodsPerNode` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the default_max_pods_per_node field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `default_max_pods_per_node` field.


### fn withDefaultSnatStatus

```ts
withDefaultSnatStatus()
```

`google.list[obj].withDefaultSnatStatus` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_snat_status field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultSnatStatusMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_snat_status` field.


### fn withDefaultSnatStatusMixin

```ts
withDefaultSnatStatusMixin()
```

`google.list[obj].withDefaultSnatStatusMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_snat_status field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultSnatStatus](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_snat_status` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDnsConfig

```ts
withDnsConfig()
```

`google.list[obj].withDnsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dns_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDnsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dns_config` field.


### fn withDnsConfigMixin

```ts
withDnsConfigMixin()
```

`google.list[obj].withDnsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dns_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDnsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dns_config` field.


### fn withEnableAutopilot

```ts
withEnableAutopilot()
```

`google.bool.withEnableAutopilot` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_autopilot field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_autopilot` field.


### fn withEnableBinaryAuthorization

```ts
withEnableBinaryAuthorization()
```

`google.bool.withEnableBinaryAuthorization` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_binary_authorization field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_binary_authorization` field.


### fn withEnableIntranodeVisibility

```ts
withEnableIntranodeVisibility()
```

`google.bool.withEnableIntranodeVisibility` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_intranode_visibility field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_intranode_visibility` field.


### fn withEnableKubernetesAlpha

```ts
withEnableKubernetesAlpha()
```

`google.bool.withEnableKubernetesAlpha` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_kubernetes_alpha field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_kubernetes_alpha` field.


### fn withEnableL4IlbSubsetting

```ts
withEnableL4IlbSubsetting()
```

`google.bool.withEnableL4IlbSubsetting` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_l4_ilb_subsetting field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_l4_ilb_subsetting` field.


### fn withEnableLegacyAbac

```ts
withEnableLegacyAbac()
```

`google.bool.withEnableLegacyAbac` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_legacy_abac field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_legacy_abac` field.


### fn withEnableShieldedNodes

```ts
withEnableShieldedNodes()
```

`google.bool.withEnableShieldedNodes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_shielded_nodes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_shielded_nodes` field.


### fn withEnableTpu

```ts
withEnableTpu()
```

`google.bool.withEnableTpu` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_tpu field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_tpu` field.


### fn withGatewayApiConfig

```ts
withGatewayApiConfig()
```

`google.list[obj].withGatewayApiConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway_api_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGatewayApiConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway_api_config` field.


### fn withGatewayApiConfigMixin

```ts
withGatewayApiConfigMixin()
```

`google.list[obj].withGatewayApiConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway_api_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGatewayApiConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway_api_config` field.


### fn withInitialNodeCount

```ts
withInitialNodeCount()
```

`google.number.withInitialNodeCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the initial_node_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `initial_node_count` field.


### fn withIpAllocationPolicy

```ts
withIpAllocationPolicy()
```

`google.list[obj].withIpAllocationPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ip_allocation_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIpAllocationPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ip_allocation_policy` field.


### fn withIpAllocationPolicyMixin

```ts
withIpAllocationPolicyMixin()
```

`google.list[obj].withIpAllocationPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ip_allocation_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIpAllocationPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ip_allocation_policy` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withLoggingConfig

```ts
withLoggingConfig()
```

`google.list[obj].withLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLoggingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging_config` field.


### fn withLoggingConfigMixin

```ts
withLoggingConfigMixin()
```

`google.list[obj].withLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLoggingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging_config` field.


### fn withLoggingService

```ts
withLoggingService()
```

`google.string.withLoggingService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the logging_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `logging_service` field.


### fn withMaintenancePolicy

```ts
withMaintenancePolicy()
```

`google.list[obj].withMaintenancePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaintenancePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.


### fn withMaintenancePolicyMixin

```ts
withMaintenancePolicyMixin()
```

`google.list[obj].withMaintenancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenancePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.


### fn withMasterAuth

```ts
withMasterAuth()
```

`google.list[obj].withMasterAuth` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the master_auth field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMasterAuthMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `master_auth` field.


### fn withMasterAuthMixin

```ts
withMasterAuthMixin()
```

`google.list[obj].withMasterAuthMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the master_auth field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMasterAuth](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `master_auth` field.


### fn withMasterAuthorizedNetworksConfig

```ts
withMasterAuthorizedNetworksConfig()
```

`google.list[obj].withMasterAuthorizedNetworksConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the master_authorized_networks_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMasterAuthorizedNetworksConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `master_authorized_networks_config` field.


### fn withMasterAuthorizedNetworksConfigMixin

```ts
withMasterAuthorizedNetworksConfigMixin()
```

`google.list[obj].withMasterAuthorizedNetworksConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the master_authorized_networks_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMasterAuthorizedNetworksConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `master_authorized_networks_config` field.


### fn withMeshCertificates

```ts
withMeshCertificates()
```

`google.list[obj].withMeshCertificates` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mesh_certificates field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMeshCertificatesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mesh_certificates` field.


### fn withMeshCertificatesMixin

```ts
withMeshCertificatesMixin()
```

`google.list[obj].withMeshCertificatesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mesh_certificates field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMeshCertificates](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mesh_certificates` field.


### fn withMinMasterVersion

```ts
withMinMasterVersion()
```

`google.string.withMinMasterVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the min_master_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `min_master_version` field.


### fn withMonitoringConfig

```ts
withMonitoringConfig()
```

`google.list[obj].withMonitoringConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitoring_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMonitoringConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.


### fn withMonitoringConfigMixin

```ts
withMonitoringConfigMixin()
```

`google.list[obj].withMonitoringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitoring_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoringConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.


### fn withMonitoringService

```ts
withMonitoringService()
```

`google.string.withMonitoringService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the monitoring_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `monitoring_service` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withNetworkPolicy

```ts
withNetworkPolicy()
```

`google.list[obj].withNetworkPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_policy` field.


### fn withNetworkPolicyMixin

```ts
withNetworkPolicyMixin()
```

`google.list[obj].withNetworkPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_policy` field.


### fn withNetworkingMode

```ts
withNetworkingMode()
```

`google.string.withNetworkingMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the networking_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `networking_mode` field.


### fn withNodeConfig

```ts
withNodeConfig()
```

`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeConfigMixin

```ts
withNodeConfigMixin()
```

`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeLocations

```ts
withNodeLocations()
```

`google.list.withNodeLocations` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the node_locations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `node_locations` field.


### fn withNodePool

```ts
withNodePool()
```

`google.list[obj].withNodePool` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_pool field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodePoolMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_pool` field.


### fn withNodePoolDefaults

```ts
withNodePoolDefaults()
```

`google.list[obj].withNodePoolDefaults` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_pool_defaults field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodePoolDefaultsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_pool_defaults` field.


### fn withNodePoolDefaultsMixin

```ts
withNodePoolDefaultsMixin()
```

`google.list[obj].withNodePoolDefaultsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_pool_defaults field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodePoolDefaults](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_pool_defaults` field.


### fn withNodePoolMixin

```ts
withNodePoolMixin()
```

`google.list[obj].withNodePoolMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_pool field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodePool](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_pool` field.


### fn withNodeVersion

```ts
withNodeVersion()
```

`google.string.withNodeVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the node_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `node_version` field.


### fn withNotificationConfig

```ts
withNotificationConfig()
```

`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withNotificationConfigMixin

```ts
withNotificationConfigMixin()
```

`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withPrivateClusterConfig

```ts
withPrivateClusterConfig()
```

`google.list[obj].withPrivateClusterConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_cluster_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPrivateClusterConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.


### fn withPrivateClusterConfigMixin

```ts
withPrivateClusterConfigMixin()
```

`google.list[obj].withPrivateClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_cluster_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPrivateClusterConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.


### fn withPrivateIpv6GoogleAccess

```ts
withPrivateIpv6GoogleAccess()
```

`google.string.withPrivateIpv6GoogleAccess` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the private_ipv6_google_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `private_ipv6_google_access` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReleaseChannel

```ts
withReleaseChannel()
```

`google.list[obj].withReleaseChannel` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the release_channel field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withReleaseChannelMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `release_channel` field.


### fn withReleaseChannelMixin

```ts
withReleaseChannelMixin()
```

`google.list[obj].withReleaseChannelMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the release_channel field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withReleaseChannel](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `release_channel` field.


### fn withRemoveDefaultNodePool

```ts
withRemoveDefaultNodePool()
```

`google.bool.withRemoveDefaultNodePool` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the remove_default_node_pool field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `remove_default_node_pool` field.


### fn withResourceLabels

```ts
withResourceLabels()
```

`google.obj.withResourceLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the resource_labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `resource_labels` field.


### fn withResourceUsageExportConfig

```ts
withResourceUsageExportConfig()
```

`google.list[obj].withResourceUsageExportConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_usage_export_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withResourceUsageExportConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_usage_export_config` field.


### fn withResourceUsageExportConfigMixin

```ts
withResourceUsageExportConfigMixin()
```

`google.list[obj].withResourceUsageExportConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_usage_export_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withResourceUsageExportConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_usage_export_config` field.


### fn withServiceExternalIpsConfig

```ts
withServiceExternalIpsConfig()
```

`google.list[obj].withServiceExternalIpsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_external_ips_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withServiceExternalIpsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_external_ips_config` field.


### fn withServiceExternalIpsConfigMixin

```ts
withServiceExternalIpsConfigMixin()
```

`google.list[obj].withServiceExternalIpsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_external_ips_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withServiceExternalIpsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_external_ips_config` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withVerticalPodAutoscaling

```ts
withVerticalPodAutoscaling()
```

`google.list[obj].withVerticalPodAutoscaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vertical_pod_autoscaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVerticalPodAutoscalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vertical_pod_autoscaling` field.


### fn withVerticalPodAutoscalingMixin

```ts
withVerticalPodAutoscalingMixin()
```

`google.list[obj].withVerticalPodAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vertical_pod_autoscaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVerticalPodAutoscaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vertical_pod_autoscaling` field.


### fn withWorkloadIdentityConfig

```ts
withWorkloadIdentityConfig()
```

`google.list[obj].withWorkloadIdentityConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the workload_identity_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWorkloadIdentityConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `workload_identity_config` field.


### fn withWorkloadIdentityConfigMixin

```ts
withWorkloadIdentityConfigMixin()
```

`google.list[obj].withWorkloadIdentityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the workload_identity_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWorkloadIdentityConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `workload_identity_config` field.


## obj addons_config



### fn addons_config.new

```ts
new()
```


`google.container_cluster.addons_config.new` constructs a new object with attributes and blocks configured for the `addons_config`
Terraform sub block.



**Args**:
  - `cloudrun_config` (`list[obj]`): The status of the CloudRun addon. It is disabled by default. Set disabled = false to enable. When `null`, the `cloudrun_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.cloudrun_config.new](#fn-addons_configcloudrun_confignew) constructor.
  - `config_connector_config` (`list[obj]`): The of the Config Connector addon. When `null`, the `config_connector_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.config_connector_config.new](#fn-addons_configconfig_connector_confignew) constructor.
  - `dns_cache_config` (`list[obj]`): The status of the NodeLocal DNSCache addon. It is disabled by default. Set enabled = true to enable. When `null`, the `dns_cache_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.dns_cache_config.new](#fn-addons_configdns_cache_confignew) constructor.
  - `gce_persistent_disk_csi_driver_config` (`list[obj]`): Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Defaults to enabled; set disabled = true to disable. When `null`, the `gce_persistent_disk_csi_driver_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.gce_persistent_disk_csi_driver_config.new](#fn-addons_configgce_persistent_disk_csi_driver_confignew) constructor.
  - `gcp_filestore_csi_driver_config` (`list[obj]`): The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes. Defaults to disabled; set enabled = true to enable. When `null`, the `gcp_filestore_csi_driver_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.gcp_filestore_csi_driver_config.new](#fn-addons_configgcp_filestore_csi_driver_confignew) constructor.
  - `gke_backup_agent_config` (`list[obj]`): The status of the Backup for GKE Agent addon. It is disabled by default. Set enabled = true to enable. When `null`, the `gke_backup_agent_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.gke_backup_agent_config.new](#fn-addons_configgke_backup_agent_confignew) constructor.
  - `horizontal_pod_autoscaling` (`list[obj]`): The status of the Horizontal Pod Autoscaling addon, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster, which is also used by the Cloud Monitoring service. It is enabled by default; set disabled = true to disable. When `null`, the `horizontal_pod_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.horizontal_pod_autoscaling.new](#fn-addons_confighorizontal_pod_autoscalingnew) constructor.
  - `http_load_balancing` (`list[obj]`): The status of the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default; set disabled = true to disable. When `null`, the `http_load_balancing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.http_load_balancing.new](#fn-addons_confighttp_load_balancingnew) constructor.
  - `network_policy_config` (`list[obj]`): Whether we should enable the network policy addon for the master. This must be enabled in order to enable network policy for the nodes. To enable this, you must also define a network_policy block, otherwise nothing will happen. It can only be disabled if the nodes already do not have network policies enabled. Defaults to disabled; set disabled = false to enable. When `null`, the `network_policy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.network_policy_config.new](#fn-addons_confignetwork_policy_confignew) constructor.

**Returns**:
  - An attribute object that represents the `addons_config` sub block.


## obj addons_config.cloudrun_config



### fn addons_config.cloudrun_config.new

```ts
new()
```


`google.container_cluster.addons_config.cloudrun_config.new` constructs a new object with attributes and blocks configured for the `cloudrun_config`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): Set the `disabled` field on the resulting object.
  - `load_balancer_type` (`string`): Set the `load_balancer_type` field on the resulting object. When `null`, the `load_balancer_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloudrun_config` sub block.


## obj addons_config.config_connector_config



### fn addons_config.config_connector_config.new

```ts
new()
```


`google.container_cluster.addons_config.config_connector_config.new` constructs a new object with attributes and blocks configured for the `config_connector_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Set the `enabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `config_connector_config` sub block.


## obj addons_config.dns_cache_config



### fn addons_config.dns_cache_config.new

```ts
new()
```


`google.container_cluster.addons_config.dns_cache_config.new` constructs a new object with attributes and blocks configured for the `dns_cache_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Set the `enabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `dns_cache_config` sub block.


## obj addons_config.gce_persistent_disk_csi_driver_config



### fn addons_config.gce_persistent_disk_csi_driver_config.new

```ts
new()
```


`google.container_cluster.addons_config.gce_persistent_disk_csi_driver_config.new` constructs a new object with attributes and blocks configured for the `gce_persistent_disk_csi_driver_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Set the `enabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `gce_persistent_disk_csi_driver_config` sub block.


## obj addons_config.gcp_filestore_csi_driver_config



### fn addons_config.gcp_filestore_csi_driver_config.new

```ts
new()
```


`google.container_cluster.addons_config.gcp_filestore_csi_driver_config.new` constructs a new object with attributes and blocks configured for the `gcp_filestore_csi_driver_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Set the `enabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `gcp_filestore_csi_driver_config` sub block.


## obj addons_config.gke_backup_agent_config



### fn addons_config.gke_backup_agent_config.new

```ts
new()
```


`google.container_cluster.addons_config.gke_backup_agent_config.new` constructs a new object with attributes and blocks configured for the `gke_backup_agent_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Set the `enabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `gke_backup_agent_config` sub block.


## obj addons_config.horizontal_pod_autoscaling



### fn addons_config.horizontal_pod_autoscaling.new

```ts
new()
```


`google.container_cluster.addons_config.horizontal_pod_autoscaling.new` constructs a new object with attributes and blocks configured for the `horizontal_pod_autoscaling`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): Set the `disabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `horizontal_pod_autoscaling` sub block.


## obj addons_config.http_load_balancing



### fn addons_config.http_load_balancing.new

```ts
new()
```


`google.container_cluster.addons_config.http_load_balancing.new` constructs a new object with attributes and blocks configured for the `http_load_balancing`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): Set the `disabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `http_load_balancing` sub block.


## obj addons_config.network_policy_config



### fn addons_config.network_policy_config.new

```ts
new()
```


`google.container_cluster.addons_config.network_policy_config.new` constructs a new object with attributes and blocks configured for the `network_policy_config`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): Set the `disabled` field on the resulting object.

**Returns**:
  - An attribute object that represents the `network_policy_config` sub block.


## obj authenticator_groups_config



### fn authenticator_groups_config.new

```ts
new()
```


`google.container_cluster.authenticator_groups_config.new` constructs a new object with attributes and blocks configured for the `authenticator_groups_config`
Terraform sub block.



**Args**:
  - `security_group` (`string`): The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com.

**Returns**:
  - An attribute object that represents the `authenticator_groups_config` sub block.


## obj binary_authorization



### fn binary_authorization.new

```ts
new()
```


`google.container_cluster.binary_authorization.new` constructs a new object with attributes and blocks configured for the `binary_authorization`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enable Binary Authorization for this cluster. When `null`, the `enabled` field will be omitted from the resulting object.
  - `evaluation_mode` (`string`): Mode of operation for Binary Authorization policy evaluation. When `null`, the `evaluation_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `binary_authorization` sub block.


## obj cluster_autoscaling



### fn cluster_autoscaling.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.new` constructs a new object with attributes and blocks configured for the `cluster_autoscaling`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether node auto-provisioning is enabled. Resource limits for cpu and memory must be defined to enable node auto-provisioning. When `null`, the `enabled` field will be omitted from the resulting object.
  - `auto_provisioning_defaults` (`list[obj]`): Contains defaults for a node pool created by NAP. When `null`, the `auto_provisioning_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.new](#fn-cluster_autoscalingauto_provisioning_defaultsnew) constructor.
  - `resource_limits` (`list[obj]`): Global constraints for machine resources in the cluster. Configuring the cpu and memory types is required if node auto-provisioning is enabled. These limits will apply to node pool autoscaling in addition to node auto-provisioning. When `null`, the `resource_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.resource_limits.new](#fn-cluster_autoscalingresource_limitsnew) constructor.

**Returns**:
  - An attribute object that represents the `cluster_autoscaling` sub block.


## obj cluster_autoscaling.auto_provisioning_defaults



### fn cluster_autoscaling.auto_provisioning_defaults.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.new` constructs a new object with attributes and blocks configured for the `auto_provisioning_defaults`
Terraform sub block.



**Args**:
  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.
  - `disk_size` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size` field will be omitted from the resulting object.
  - `disk_type` (`string`): Type of the disk attached to each node. When `null`, the `disk_type` field will be omitted from the resulting object.
  - `image_type` (`string`): The default image type used by NAP once a new node pool is being created. When `null`, the `image_type` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `oauth_scopes` (`list`): Scopes that are used by NAP when creating node pools. When `null`, the `oauth_scopes` field will be omitted from the resulting object.
  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.
  - `management` (`list[obj]`): NodeManagement configuration for this NodePool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.management.new](#fn-cluster_autoscalingcluster_autoscalingmanagementnew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config.new](#fn-cluster_autoscalingcluster_autoscalingshielded_instance_confignew) constructor.
  - `upgrade_settings` (`list[obj]`): Specifies the upgrade settings for NAP created node pools When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.new](#fn-cluster_autoscalingcluster_autoscalingupgrade_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `auto_provisioning_defaults` sub block.


## obj cluster_autoscaling.auto_provisioning_defaults.management



### fn cluster_autoscaling.auto_provisioning_defaults.management.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.management.new` constructs a new object with attributes and blocks configured for the `management`
Terraform sub block.



**Args**:
  - `auto_repair` (`bool`): Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered. When `null`, the `auto_repair` field will be omitted from the resulting object.
  - `auto_upgrade` (`bool`): Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes. When `null`, the `auto_upgrade` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `management` sub block.


## obj cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config



### fn cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj cluster_autoscaling.auto_provisioning_defaults.upgrade_settings



### fn cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.new` constructs a new object with attributes and blocks configured for the `upgrade_settings`
Terraform sub block.



**Args**:
  - `max_surge` (`number`): The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. When `null`, the `max_surge` field will be omitted from the resulting object.
  - `max_unavailable` (`number`): The maximum number of nodes that can be simultaneously unavailable during the upgrade process. When `null`, the `max_unavailable` field will be omitted from the resulting object.
  - `strategy` (`string`): Update strategy of the node pool. When `null`, the `strategy` field will be omitted from the resulting object.
  - `blue_green_settings` (`list[obj]`): Settings for blue-green upgrade strategy. When `null`, the `blue_green_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.new](#fn-cluster_autoscalingcluster_autoscalingauto_provisioning_defaultsblue_green_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `upgrade_settings` sub block.


## obj cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings



### fn cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.new` constructs a new object with attributes and blocks configured for the `blue_green_settings`
Terraform sub block.



**Args**:
  - `node_pool_soak_duration` (`string`): Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.

																A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `node_pool_soak_duration` field will be omitted from the resulting object.
  - `standard_rollout_policy` (`list[obj]`): Standard policy for the blue-green upgrade. When `null`, the `standard_rollout_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.new](#fn-cluster_autoscalingcluster_autoscalingauto_provisioning_defaultsupgrade_settingsstandard_rollout_policynew) constructor.

**Returns**:
  - An attribute object that represents the `blue_green_settings` sub block.


## obj cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy



### fn cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.new` constructs a new object with attributes and blocks configured for the `standard_rollout_policy`
Terraform sub block.



**Args**:
  - `batch_node_count` (`number`): Number of blue nodes to drain in a batch. When `null`, the `batch_node_count` field will be omitted from the resulting object.
  - `batch_percentage` (`number`): Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0]. When `null`, the `batch_percentage` field will be omitted from the resulting object.
  - `batch_soak_duration` (`string`): Soak time after each batch gets drained.

																			A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `batch_soak_duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `standard_rollout_policy` sub block.


## obj cluster_autoscaling.resource_limits



### fn cluster_autoscaling.resource_limits.new

```ts
new()
```


`google.container_cluster.cluster_autoscaling.resource_limits.new` constructs a new object with attributes and blocks configured for the `resource_limits`
Terraform sub block.



**Args**:
  - `maximum` (`number`): Maximum amount of the resource in the cluster. When `null`, the `maximum` field will be omitted from the resulting object.
  - `minimum` (`number`): Minimum amount of the resource in the cluster. When `null`, the `minimum` field will be omitted from the resulting object.
  - `resource_type` (`string`): The type of the resource. For example, cpu and memory. See the guide to using Node Auto-Provisioning for a list of types.

**Returns**:
  - An attribute object that represents the `resource_limits` sub block.


## obj confidential_nodes



### fn confidential_nodes.new

```ts
new()
```


`google.container_cluster.confidential_nodes.new` constructs a new object with attributes and blocks configured for the `confidential_nodes`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether Confidential Nodes feature is enabled for all nodes in this cluster.

**Returns**:
  - An attribute object that represents the `confidential_nodes` sub block.


## obj cost_management_config



### fn cost_management_config.new

```ts
new()
```


`google.container_cluster.cost_management_config.new` constructs a new object with attributes and blocks configured for the `cost_management_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether to enable GKE cost allocation. When you enable GKE cost allocation, the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery. Defaults to false.

**Returns**:
  - An attribute object that represents the `cost_management_config` sub block.


## obj database_encryption



### fn database_encryption.new

```ts
new()
```


`google.container_cluster.database_encryption.new` constructs a new object with attributes and blocks configured for the `database_encryption`
Terraform sub block.



**Args**:
  - `key_name` (`string`): The key to use to encrypt/decrypt secrets. When `null`, the `key_name` field will be omitted from the resulting object.
  - `state` (`string`): ENCRYPTED or DECRYPTED.

**Returns**:
  - An attribute object that represents the `database_encryption` sub block.


## obj default_snat_status



### fn default_snat_status.new

```ts
new()
```


`google.container_cluster.default_snat_status.new` constructs a new object with attributes and blocks configured for the `default_snat_status`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.

**Returns**:
  - An attribute object that represents the `default_snat_status` sub block.


## obj dns_config



### fn dns_config.new

```ts
new()
```


`google.container_cluster.dns_config.new` constructs a new object with attributes and blocks configured for the `dns_config`
Terraform sub block.



**Args**:
  - `cluster_dns` (`string`): Which in-cluster DNS provider should be used. When `null`, the `cluster_dns` field will be omitted from the resulting object.
  - `cluster_dns_domain` (`string`): The suffix used for all cluster service records. When `null`, the `cluster_dns_domain` field will be omitted from the resulting object.
  - `cluster_dns_scope` (`string`): The scope of access to cluster DNS records. When `null`, the `cluster_dns_scope` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `dns_config` sub block.


## obj gateway_api_config



### fn gateway_api_config.new

```ts
new()
```


`google.container_cluster.gateway_api_config.new` constructs a new object with attributes and blocks configured for the `gateway_api_config`
Terraform sub block.



**Args**:
  - `channel` (`string`): The Gateway API release channel to use for Gateway API.

**Returns**:
  - An attribute object that represents the `gateway_api_config` sub block.


## obj ip_allocation_policy



### fn ip_allocation_policy.new

```ts
new()
```


`google.container_cluster.ip_allocation_policy.new` constructs a new object with attributes and blocks configured for the `ip_allocation_policy`
Terraform sub block.



**Args**:
  - `cluster_ipv4_cidr_block` (`string`): The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. When `null`, the `cluster_ipv4_cidr_block` field will be omitted from the resulting object.
  - `cluster_secondary_range_name` (`string`): The name of the existing secondary range in the cluster&#39;s subnetwork to use for pod IP addresses. Alternatively, cluster_ipv4_cidr_block can be used to automatically create a GKE-managed one. When `null`, the `cluster_secondary_range_name` field will be omitted from the resulting object.
  - `services_ipv4_cidr_block` (`string`): The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. When `null`, the `services_ipv4_cidr_block` field will be omitted from the resulting object.
  - `services_secondary_range_name` (`string`): The name of the existing secondary range in the cluster&#39;s subnetwork to use for service ClusterIPs. Alternatively, services_ipv4_cidr_block can be used to automatically create a GKE-managed one. When `null`, the `services_secondary_range_name` field will be omitted from the resulting object.
  - `stack_type` (`string`): The IP Stack type of the cluster. Choose between IPV4 and IPV4_IPV6. Default type is IPV4 Only if not set When `null`, the `stack_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ip_allocation_policy` sub block.


## obj logging_config



### fn logging_config.new

```ts
new()
```


`google.container_cluster.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `enable_components` (`list`): GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, SCHEDULER, and WORKLOADS.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj maintenance_policy



### fn maintenance_policy.new

```ts
new()
```


`google.container_cluster.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`
Terraform sub block.



**Args**:
  - `daily_maintenance_window` (`list[obj]`): Time window specified for daily maintenance operations. Specify start_time in RFC3339 format &#34;HH:MM”, where HH : [00-23] and MM : [00-59] GMT. When `null`, the `daily_maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.daily_maintenance_window.new](#fn-maintenance_policydaily_maintenance_windownew) constructor.
  - `maintenance_exclusion` (`list[obj]`): Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. When `null`, the `maintenance_exclusion` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.maintenance_exclusion.new](#fn-maintenance_policymaintenance_exclusionnew) constructor.
  - `recurring_window` (`list[obj]`): Time window for recurring maintenance operations. When `null`, the `recurring_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.recurring_window.new](#fn-maintenance_policyrecurring_windownew) constructor.

**Returns**:
  - An attribute object that represents the `maintenance_policy` sub block.


## obj maintenance_policy.daily_maintenance_window



### fn maintenance_policy.daily_maintenance_window.new

```ts
new()
```


`google.container_cluster.maintenance_policy.daily_maintenance_window.new` constructs a new object with attributes and blocks configured for the `daily_maintenance_window`
Terraform sub block.



**Args**:
  - `start_time` (`string`): Set the `start_time` field on the resulting object.

**Returns**:
  - An attribute object that represents the `daily_maintenance_window` sub block.


## obj maintenance_policy.maintenance_exclusion



### fn maintenance_policy.maintenance_exclusion.new

```ts
new()
```


`google.container_cluster.maintenance_policy.maintenance_exclusion.new` constructs a new object with attributes and blocks configured for the `maintenance_exclusion`
Terraform sub block.



**Args**:
  - `end_time` (`string`): Set the `end_time` field on the resulting object.
  - `exclusion_name` (`string`): Set the `exclusion_name` field on the resulting object.
  - `start_time` (`string`): Set the `start_time` field on the resulting object.
  - `exclusion_options` (`list[obj]`): Maintenance exclusion related options. When `null`, the `exclusion_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.maintenance_exclusion.exclusion_options.new](#fn-maintenance_policymaintenance_policyexclusion_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `maintenance_exclusion` sub block.


## obj maintenance_policy.maintenance_exclusion.exclusion_options



### fn maintenance_policy.maintenance_exclusion.exclusion_options.new

```ts
new()
```


`google.container_cluster.maintenance_policy.maintenance_exclusion.exclusion_options.new` constructs a new object with attributes and blocks configured for the `exclusion_options`
Terraform sub block.



**Args**:
  - `scope` (`string`): The scope of automatic upgrades to restrict in the exclusion window.

**Returns**:
  - An attribute object that represents the `exclusion_options` sub block.


## obj maintenance_policy.recurring_window



### fn maintenance_policy.recurring_window.new

```ts
new()
```


`google.container_cluster.maintenance_policy.recurring_window.new` constructs a new object with attributes and blocks configured for the `recurring_window`
Terraform sub block.



**Args**:
  - `end_time` (`string`): Set the `end_time` field on the resulting object.
  - `recurrence` (`string`): Set the `recurrence` field on the resulting object.
  - `start_time` (`string`): Set the `start_time` field on the resulting object.

**Returns**:
  - An attribute object that represents the `recurring_window` sub block.


## obj master_auth



### fn master_auth.new

```ts
new()
```


`google.container_cluster.master_auth.new` constructs a new object with attributes and blocks configured for the `master_auth`
Terraform sub block.



**Args**:
  - `client_certificate_config` (`list[obj]`): Whether client certificate authorization is enabled for this cluster. When `null`, the `client_certificate_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_auth.client_certificate_config.new](#fn-master_authclient_certificate_confignew) constructor.

**Returns**:
  - An attribute object that represents the `master_auth` sub block.


## obj master_auth.client_certificate_config



### fn master_auth.client_certificate_config.new

```ts
new()
```


`google.container_cluster.master_auth.client_certificate_config.new` constructs a new object with attributes and blocks configured for the `client_certificate_config`
Terraform sub block.



**Args**:
  - `issue_client_certificate` (`bool`): Whether client certificate authorization is enabled for this cluster.

**Returns**:
  - An attribute object that represents the `client_certificate_config` sub block.


## obj master_authorized_networks_config



### fn master_authorized_networks_config.new

```ts
new()
```


`google.container_cluster.master_authorized_networks_config.new` constructs a new object with attributes and blocks configured for the `master_authorized_networks_config`
Terraform sub block.



**Args**:
  - `gcp_public_cidrs_access_enabled` (`bool`): Whether master is accessbile via Google Compute Engine Public IP addresses. When `null`, the `gcp_public_cidrs_access_enabled` field will be omitted from the resulting object.
  - `cidr_blocks` (`list[obj]`): External networks that can access the Kubernetes cluster master through HTTPS. When `null`, the `cidr_blocks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_authorized_networks_config.cidr_blocks.new](#fn-master_authorized_networks_configcidr_blocksnew) constructor.

**Returns**:
  - An attribute object that represents the `master_authorized_networks_config` sub block.


## obj master_authorized_networks_config.cidr_blocks



### fn master_authorized_networks_config.cidr_blocks.new

```ts
new()
```


`google.container_cluster.master_authorized_networks_config.cidr_blocks.new` constructs a new object with attributes and blocks configured for the `cidr_blocks`
Terraform sub block.



**Args**:
  - `cidr_block` (`string`): External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation.
  - `display_name` (`string`): Field for users to identify CIDR blocks. When `null`, the `display_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cidr_blocks` sub block.


## obj mesh_certificates



### fn mesh_certificates.new

```ts
new()
```


`google.container_cluster.mesh_certificates.new` constructs a new object with attributes and blocks configured for the `mesh_certificates`
Terraform sub block.



**Args**:
  - `enable_certificates` (`bool`): When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster.

**Returns**:
  - An attribute object that represents the `mesh_certificates` sub block.


## obj monitoring_config



### fn monitoring_config.new

```ts
new()
```


`google.container_cluster.monitoring_config.new` constructs a new object with attributes and blocks configured for the `monitoring_config`
Terraform sub block.



**Args**:
  - `enable_components` (`list`): GKE components exposing metrics. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, and SCHEDULER.
  - `managed_prometheus` (`list[obj]`): Configuration for Google Cloud Managed Services for Prometheus. When `null`, the `managed_prometheus` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.monitoring_config.managed_prometheus.new](#fn-monitoring_configmanaged_prometheusnew) constructor.

**Returns**:
  - An attribute object that represents the `monitoring_config` sub block.


## obj monitoring_config.managed_prometheus



### fn monitoring_config.managed_prometheus.new

```ts
new()
```


`google.container_cluster.monitoring_config.managed_prometheus.new` constructs a new object with attributes and blocks configured for the `managed_prometheus`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not the managed collection is enabled.

**Returns**:
  - An attribute object that represents the `managed_prometheus` sub block.


## obj network_policy



### fn network_policy.new

```ts
new()
```


`google.container_cluster.network_policy.new` constructs a new object with attributes and blocks configured for the `network_policy`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether network policy is enabled on the cluster.
  - `provider` (`string`): The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED. When `null`, the `provider` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_policy` sub block.


## obj node_config



### fn node_config.new

```ts
new()
```


`google.container_cluster.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd When `null`, the `disk_type` field will be omitted from the resulting object.
  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.
  - `image_type` (`string`): The image type to use for this node. Note that for a given image type, the latest version of it will be used. When `null`, the `image_type` field will be omitted from the resulting object.
  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. When `null`, the `labels` field will be omitted from the resulting object.
  - `local_ssd_count` (`number`): The number of local SSD disks to be attached to the node. When `null`, the `local_ssd_count` field will be omitted from the resulting object.
  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `metadata` (`obj`): The metadata key/value pairs assigned to instances in the cluster. When `null`, the `metadata` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `node_group` (`string`): Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. When `null`, the `node_group` field will be omitted from the resulting object.
  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs. When `null`, the `oauth_scopes` field will be omitted from the resulting object.
  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. When `null`, the `preemptible` field will be omitted from the resulting object.
  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the node pool. When `null`, the `resource_labels` field will be omitted from the resulting object.
  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.
  - `spot` (`bool`): Whether the nodes are created as spot VM instances. When `null`, the `spot` field will be omitted from the resulting object.
  - `tags` (`list`): The list of instance tags applied to all nodes. When `null`, the `tags` field will be omitted from the resulting object.
  - `taint` (`list`): List of Kubernetes taints to be applied to each node. When `null`, the `taint` field will be omitted from the resulting object.
  - `advanced_machine_features` (`list[obj]`): Specifies options for controlling advanced machine features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.advanced_machine_features.new](#fn-node_configadvanced_machine_featuresnew) constructor.
  - `gcfs_config` (`list[obj]`): GCFS configuration for this node. When `null`, the `gcfs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.gcfs_config.new](#fn-node_configgcfs_confignew) constructor.
  - `gvnic` (`list[obj]`): Enable or disable gvnic in the node pool. When `null`, the `gvnic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.gvnic.new](#fn-node_configgvnicnew) constructor.
  - `kubelet_config` (`list[obj]`): Node kubelet configs. When `null`, the `kubelet_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.kubelet_config.new](#fn-node_configkubelet_confignew) constructor.
  - `linux_node_config` (`list[obj]`): Parameters that can be configured on Linux nodes. When `null`, the `linux_node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.linux_node_config.new](#fn-node_configlinux_node_confignew) constructor.
  - `local_nvme_ssd_block_config` (`list[obj]`): Parameters for raw-block local NVMe SSDs. When `null`, the `local_nvme_ssd_block_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.local_nvme_ssd_block_config.new](#fn-node_configlocal_nvme_ssd_block_confignew) constructor.
  - `reservation_affinity` (`list[obj]`): The reservation affinity configuration for the node pool. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.reservation_affinity.new](#fn-node_configreservation_affinitynew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.shielded_instance_config.new](#fn-node_configshielded_instance_confignew) constructor.
  - `workload_metadata_config` (`list[obj]`): The workload metadata configuration for this node. When `null`, the `workload_metadata_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.workload_metadata_config.new](#fn-node_configworkload_metadata_confignew) constructor.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj node_config.advanced_machine_features



### fn node_config.advanced_machine_features.new

```ts
new()
```


`google.container_cluster.node_config.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`
Terraform sub block.



**Args**:
  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.

**Returns**:
  - An attribute object that represents the `advanced_machine_features` sub block.


## obj node_config.gcfs_config



### fn node_config.gcfs_config.new

```ts
new()
```


`google.container_cluster.node_config.gcfs_config.new` constructs a new object with attributes and blocks configured for the `gcfs_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not GCFS is enabled

**Returns**:
  - An attribute object that represents the `gcfs_config` sub block.


## obj node_config.gvnic



### fn node_config.gvnic.new

```ts
new()
```


`google.container_cluster.node_config.gvnic.new` constructs a new object with attributes and blocks configured for the `gvnic`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not gvnic is enabled

**Returns**:
  - An attribute object that represents the `gvnic` sub block.


## obj node_config.kubelet_config



### fn node_config.kubelet_config.new

```ts
new()
```


`google.container_cluster.node_config.kubelet_config.new` constructs a new object with attributes and blocks configured for the `kubelet_config`
Terraform sub block.



**Args**:
  - `cpu_cfs_quota` (`bool`): Enable CPU CFS quota enforcement for containers that specify CPU limits. When `null`, the `cpu_cfs_quota` field will be omitted from the resulting object.
  - `cpu_cfs_quota_period` (`string`): Set the CPU CFS quota period value &#39;cpu.cfs_period_us&#39;. When `null`, the `cpu_cfs_quota_period` field will be omitted from the resulting object.
  - `cpu_manager_policy` (`string`): Control the CPU management policy on the node.
  - `pod_pids_limit` (`number`): Controls the maximum number of processes allowed to run in a pod. When `null`, the `pod_pids_limit` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `kubelet_config` sub block.


## obj node_config.linux_node_config



### fn node_config.linux_node_config.new

```ts
new()
```


`google.container_cluster.node_config.linux_node_config.new` constructs a new object with attributes and blocks configured for the `linux_node_config`
Terraform sub block.



**Args**:
  - `sysctls` (`obj`): The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.

**Returns**:
  - An attribute object that represents the `linux_node_config` sub block.


## obj node_config.local_nvme_ssd_block_config



### fn node_config.local_nvme_ssd_block_config.new

```ts
new()
```


`google.container_cluster.node_config.local_nvme_ssd_block_config.new` constructs a new object with attributes and blocks configured for the `local_nvme_ssd_block_config`
Terraform sub block.



**Args**:
  - `local_ssd_count` (`number`): Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.

**Returns**:
  - An attribute object that represents the `local_nvme_ssd_block_config` sub block.


## obj node_config.reservation_affinity



### fn node_config.reservation_affinity.new

```ts
new()
```


`google.container_cluster.node_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `consume_reservation_type` (`string`): Corresponds to the type of reservation consumption.
  - `key` (`string`): The label key of a reservation resource. When `null`, the `key` field will be omitted from the resulting object.
  - `values` (`list`): The label values of the reservation resource. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj node_config.shielded_instance_config



### fn node_config.shielded_instance_config.new

```ts
new()
```


`google.container_cluster.node_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj node_config.workload_metadata_config



### fn node_config.workload_metadata_config.new

```ts
new()
```


`google.container_cluster.node_config.workload_metadata_config.new` constructs a new object with attributes and blocks configured for the `workload_metadata_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Mode is the configuration for how to expose metadata to workloads running on the node.

**Returns**:
  - An attribute object that represents the `workload_metadata_config` sub block.


## obj node_pool



### fn node_pool.new

```ts
new()
```


`google.container_cluster.node_pool.new` constructs a new object with attributes and blocks configured for the `node_pool`
Terraform sub block.



**Args**:
  - `initial_node_count` (`number`): The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. When `null`, the `initial_node_count` field will be omitted from the resulting object.
  - `max_pods_per_node` (`number`): The maximum number of pods per node in this node pool. Note that this does not work on node pools which are &#34;route-based&#34; - that is, node pools belonging to clusters that do not have IP Aliasing enabled. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.
  - `name` (`string`): The name of the node pool. If left blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. When `null`, the `node_count` field will be omitted from the resulting object.
  - `node_locations` (`list`): The list of zones in which the node pool&#39;s nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. When `null`, the `node_locations` field will be omitted from the resulting object.
  - `version` (`string`): The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. When `null`, the `version` field will be omitted from the resulting object.
  - `autoscaling` (`list[obj]`): Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.autoscaling.new](#fn-node_poolautoscalingnew) constructor.
  - `management` (`list[obj]`): Node management configuration, wherein auto-repair and auto-upgrade is configured. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.management.new](#fn-node_poolmanagementnew) constructor.
  - `network_config` (`list[obj]`): Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.network_config.new](#fn-node_poolnetwork_confignew) constructor.
  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.new](#fn-node_poolnode_confignew) constructor.
  - `placement_policy` (`list[obj]`): Specifies the node placement policy When `null`, the `placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.placement_policy.new](#fn-node_poolplacement_policynew) constructor.
  - `upgrade_settings` (`list[obj]`): Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.upgrade_settings.new](#fn-node_poolupgrade_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `node_pool` sub block.


## obj node_pool.autoscaling



### fn node_pool.autoscaling.new

```ts
new()
```


`google.container_cluster.node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`
Terraform sub block.



**Args**:
  - `location_policy` (`string`): Location policy specifies the algorithm used when scaling-up the node pool. &#34;BALANCED&#34; - Is a best effort policy that aims to balance the sizes of available zones. &#34;ANY&#34; - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs. When `null`, the `location_policy` field will be omitted from the resulting object.
  - `max_node_count` (`number`): Maximum number of nodes per zone in the node pool. Must be &gt;= min_node_count. Cannot be used with total limits. When `null`, the `max_node_count` field will be omitted from the resulting object.
  - `min_node_count` (`number`): Minimum number of nodes per zone in the node pool. Must be &gt;=0 and &lt;= max_node_count. Cannot be used with total limits. When `null`, the `min_node_count` field will be omitted from the resulting object.
  - `total_max_node_count` (`number`): Maximum number of all nodes in the node pool. Must be &gt;= total_min_node_count. Cannot be used with per zone limits. When `null`, the `total_max_node_count` field will be omitted from the resulting object.
  - `total_min_node_count` (`number`): Minimum number of all nodes in the node pool. Must be &gt;=0 and &lt;= total_max_node_count. Cannot be used with per zone limits. When `null`, the `total_min_node_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling` sub block.


## obj node_pool.management



### fn node_pool.management.new

```ts
new()
```


`google.container_cluster.node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`
Terraform sub block.



**Args**:
  - `auto_repair` (`bool`): Whether the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.
  - `auto_upgrade` (`bool`): Whether the nodes will be automatically upgraded. When `null`, the `auto_upgrade` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `management` sub block.


## obj node_pool.network_config



### fn node_pool.network_config.new

```ts
new()
```


`google.container_cluster.node_pool.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `create_pod_range` (`bool`): Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. When `null`, the `create_pod_range` field will be omitted from the resulting object.
  - `enable_private_nodes` (`bool`): Whether nodes have internal IP addresses only. When `null`, the `enable_private_nodes` field will be omitted from the resulting object.
  - `pod_ipv4_cidr_block` (`string`): The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. When `null`, the `pod_ipv4_cidr_block` field will be omitted from the resulting object.
  - `pod_range` (`string`): The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. When `null`, the `pod_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj node_pool.node_config



### fn node_pool.node_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd When `null`, the `disk_type` field will be omitted from the resulting object.
  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.
  - `image_type` (`string`): The image type to use for this node. Note that for a given image type, the latest version of it will be used. When `null`, the `image_type` field will be omitted from the resulting object.
  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. When `null`, the `labels` field will be omitted from the resulting object.
  - `local_ssd_count` (`number`): The number of local SSD disks to be attached to the node. When `null`, the `local_ssd_count` field will be omitted from the resulting object.
  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `metadata` (`obj`): The metadata key/value pairs assigned to instances in the cluster. When `null`, the `metadata` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `node_group` (`string`): Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. When `null`, the `node_group` field will be omitted from the resulting object.
  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs. When `null`, the `oauth_scopes` field will be omitted from the resulting object.
  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. When `null`, the `preemptible` field will be omitted from the resulting object.
  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the node pool. When `null`, the `resource_labels` field will be omitted from the resulting object.
  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.
  - `spot` (`bool`): Whether the nodes are created as spot VM instances. When `null`, the `spot` field will be omitted from the resulting object.
  - `tags` (`list`): The list of instance tags applied to all nodes. When `null`, the `tags` field will be omitted from the resulting object.
  - `taint` (`list`): List of Kubernetes taints to be applied to each node. When `null`, the `taint` field will be omitted from the resulting object.
  - `advanced_machine_features` (`list[obj]`): Specifies options for controlling advanced machine features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.advanced_machine_features.new](#fn-node_poolnode_pooladvanced_machine_featuresnew) constructor.
  - `gcfs_config` (`list[obj]`): GCFS configuration for this node. When `null`, the `gcfs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.gcfs_config.new](#fn-node_poolnode_poolgcfs_confignew) constructor.
  - `gvnic` (`list[obj]`): Enable or disable gvnic in the node pool. When `null`, the `gvnic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.gvnic.new](#fn-node_poolnode_poolgvnicnew) constructor.
  - `kubelet_config` (`list[obj]`): Node kubelet configs. When `null`, the `kubelet_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.kubelet_config.new](#fn-node_poolnode_poolkubelet_confignew) constructor.
  - `linux_node_config` (`list[obj]`): Parameters that can be configured on Linux nodes. When `null`, the `linux_node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.linux_node_config.new](#fn-node_poolnode_poollinux_node_confignew) constructor.
  - `local_nvme_ssd_block_config` (`list[obj]`): Parameters for raw-block local NVMe SSDs. When `null`, the `local_nvme_ssd_block_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.local_nvme_ssd_block_config.new](#fn-node_poolnode_poollocal_nvme_ssd_block_confignew) constructor.
  - `reservation_affinity` (`list[obj]`): The reservation affinity configuration for the node pool. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.reservation_affinity.new](#fn-node_poolnode_poolreservation_affinitynew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.shielded_instance_config.new](#fn-node_poolnode_poolshielded_instance_confignew) constructor.
  - `workload_metadata_config` (`list[obj]`): The workload metadata configuration for this node. When `null`, the `workload_metadata_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.workload_metadata_config.new](#fn-node_poolnode_poolworkload_metadata_confignew) constructor.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj node_pool.node_config.advanced_machine_features



### fn node_pool.node_config.advanced_machine_features.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`
Terraform sub block.



**Args**:
  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.

**Returns**:
  - An attribute object that represents the `advanced_machine_features` sub block.


## obj node_pool.node_config.gcfs_config



### fn node_pool.node_config.gcfs_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.gcfs_config.new` constructs a new object with attributes and blocks configured for the `gcfs_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not GCFS is enabled

**Returns**:
  - An attribute object that represents the `gcfs_config` sub block.


## obj node_pool.node_config.gvnic



### fn node_pool.node_config.gvnic.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.gvnic.new` constructs a new object with attributes and blocks configured for the `gvnic`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not gvnic is enabled

**Returns**:
  - An attribute object that represents the `gvnic` sub block.


## obj node_pool.node_config.kubelet_config



### fn node_pool.node_config.kubelet_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.kubelet_config.new` constructs a new object with attributes and blocks configured for the `kubelet_config`
Terraform sub block.



**Args**:
  - `cpu_cfs_quota` (`bool`): Enable CPU CFS quota enforcement for containers that specify CPU limits. When `null`, the `cpu_cfs_quota` field will be omitted from the resulting object.
  - `cpu_cfs_quota_period` (`string`): Set the CPU CFS quota period value &#39;cpu.cfs_period_us&#39;. When `null`, the `cpu_cfs_quota_period` field will be omitted from the resulting object.
  - `cpu_manager_policy` (`string`): Control the CPU management policy on the node.
  - `pod_pids_limit` (`number`): Controls the maximum number of processes allowed to run in a pod. When `null`, the `pod_pids_limit` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `kubelet_config` sub block.


## obj node_pool.node_config.linux_node_config



### fn node_pool.node_config.linux_node_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.linux_node_config.new` constructs a new object with attributes and blocks configured for the `linux_node_config`
Terraform sub block.



**Args**:
  - `sysctls` (`obj`): The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.

**Returns**:
  - An attribute object that represents the `linux_node_config` sub block.


## obj node_pool.node_config.local_nvme_ssd_block_config



### fn node_pool.node_config.local_nvme_ssd_block_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.local_nvme_ssd_block_config.new` constructs a new object with attributes and blocks configured for the `local_nvme_ssd_block_config`
Terraform sub block.



**Args**:
  - `local_ssd_count` (`number`): Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.

**Returns**:
  - An attribute object that represents the `local_nvme_ssd_block_config` sub block.


## obj node_pool.node_config.reservation_affinity



### fn node_pool.node_config.reservation_affinity.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `consume_reservation_type` (`string`): Corresponds to the type of reservation consumption.
  - `key` (`string`): The label key of a reservation resource. When `null`, the `key` field will be omitted from the resulting object.
  - `values` (`list`): The label values of the reservation resource. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj node_pool.node_config.shielded_instance_config



### fn node_pool.node_config.shielded_instance_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj node_pool.node_config.workload_metadata_config



### fn node_pool.node_config.workload_metadata_config.new

```ts
new()
```


`google.container_cluster.node_pool.node_config.workload_metadata_config.new` constructs a new object with attributes and blocks configured for the `workload_metadata_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Mode is the configuration for how to expose metadata to workloads running on the node.

**Returns**:
  - An attribute object that represents the `workload_metadata_config` sub block.


## obj node_pool.placement_policy



### fn node_pool.placement_policy.new

```ts
new()
```


`google.container_cluster.node_pool.placement_policy.new` constructs a new object with attributes and blocks configured for the `placement_policy`
Terraform sub block.



**Args**:
  - `type` (`string`): Type defines the type of placement policy

**Returns**:
  - An attribute object that represents the `placement_policy` sub block.


## obj node_pool.upgrade_settings



### fn node_pool.upgrade_settings.new

```ts
new()
```


`google.container_cluster.node_pool.upgrade_settings.new` constructs a new object with attributes and blocks configured for the `upgrade_settings`
Terraform sub block.



**Args**:
  - `max_surge` (`number`): The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. When `null`, the `max_surge` field will be omitted from the resulting object.
  - `max_unavailable` (`number`): The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. When `null`, the `max_unavailable` field will be omitted from the resulting object.
  - `strategy` (`string`): Update strategy for the given nodepool. When `null`, the `strategy` field will be omitted from the resulting object.
  - `blue_green_settings` (`list[obj]`): Settings for BlueGreen node pool upgrade. When `null`, the `blue_green_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.upgrade_settings.blue_green_settings.new](#fn-node_poolnode_poolblue_green_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `upgrade_settings` sub block.


## obj node_pool.upgrade_settings.blue_green_settings



### fn node_pool.upgrade_settings.blue_green_settings.new

```ts
new()
```


`google.container_cluster.node_pool.upgrade_settings.blue_green_settings.new` constructs a new object with attributes and blocks configured for the `blue_green_settings`
Terraform sub block.



**Args**:
  - `node_pool_soak_duration` (`string`): Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. When `null`, the `node_pool_soak_duration` field will be omitted from the resulting object.
  - `standard_rollout_policy` (`list[obj]`): Standard rollout policy is the default policy for blue-green. When `null`, the `standard_rollout_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new](#fn-node_poolnode_poolupgrade_settingsstandard_rollout_policynew) constructor.

**Returns**:
  - An attribute object that represents the `blue_green_settings` sub block.


## obj node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy



### fn node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new

```ts
new()
```


`google.container_cluster.node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new` constructs a new object with attributes and blocks configured for the `standard_rollout_policy`
Terraform sub block.



**Args**:
  - `batch_node_count` (`number`): Number of blue nodes to drain in a batch. When `null`, the `batch_node_count` field will be omitted from the resulting object.
  - `batch_percentage` (`number`): Percentage of the blue pool nodes to drain in a batch. When `null`, the `batch_percentage` field will be omitted from the resulting object.
  - `batch_soak_duration` (`string`): Soak time after each batch gets drained. When `null`, the `batch_soak_duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `standard_rollout_policy` sub block.


## obj node_pool_defaults



### fn node_pool_defaults.new

```ts
new()
```


`google.container_cluster.node_pool_defaults.new` constructs a new object with attributes and blocks configured for the `node_pool_defaults`
Terraform sub block.



**Args**:
  - `node_config_defaults` (`list[obj]`): Subset of NodeConfig message that has defaults. When `null`, the `node_config_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool_defaults.node_config_defaults.new](#fn-node_pool_defaultsnode_config_defaultsnew) constructor.

**Returns**:
  - An attribute object that represents the `node_pool_defaults` sub block.


## obj node_pool_defaults.node_config_defaults



### fn node_pool_defaults.node_config_defaults.new

```ts
new()
```


`google.container_cluster.node_pool_defaults.node_config_defaults.new` constructs a new object with attributes and blocks configured for the `node_config_defaults`
Terraform sub block.



**Args**:
  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_config_defaults` sub block.


## obj notification_config



### fn notification_config.new

```ts
new()
```


`google.container_cluster.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`
Terraform sub block.



**Args**:
  - `pubsub` (`list[obj]`): Notification config for Cloud Pub/Sub When `null`, the `pubsub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.pubsub.new](#fn-notification_configpubsubnew) constructor.

**Returns**:
  - An attribute object that represents the `notification_config` sub block.


## obj notification_config.pubsub



### fn notification_config.pubsub.new

```ts
new()
```


`google.container_cluster.notification_config.pubsub.new` constructs a new object with attributes and blocks configured for the `pubsub`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not the notification config is enabled
  - `topic` (`string`): The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: projects/{project}/topics/{topic}. When `null`, the `topic` field will be omitted from the resulting object.
  - `filter` (`list[obj]`): Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.pubsub.filter.new](#fn-notification_confignotification_configfilternew) constructor.

**Returns**:
  - An attribute object that represents the `pubsub` sub block.


## obj notification_config.pubsub.filter



### fn notification_config.pubsub.filter.new

```ts
new()
```


`google.container_cluster.notification_config.pubsub.filter.new` constructs a new object with attributes and blocks configured for the `filter`
Terraform sub block.



**Args**:
  - `event_type` (`list`): Can be used to filter what notifications are sent. Valid values include include UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT and SECURITY_BULLETIN_EVENT

**Returns**:
  - An attribute object that represents the `filter` sub block.


## obj private_cluster_config



### fn private_cluster_config.new

```ts
new()
```


`google.container_cluster.private_cluster_config.new` constructs a new object with attributes and blocks configured for the `private_cluster_config`
Terraform sub block.



**Args**:
  - `enable_private_endpoint` (`bool`): When true, the cluster&#39;s private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. When false, either endpoint can be used. This field only applies to private clusters, when enable_private_nodes is true. When `null`, the `enable_private_endpoint` field will be omitted from the resulting object.
  - `enable_private_nodes` (`bool`): Enables the private cluster feature, creating a private endpoint on the cluster. In a private cluster, nodes only have RFC 1918 private addresses and communicate with the master&#39;s private endpoint via private networking. When `null`, the `enable_private_nodes` field will be omitted from the resulting object.
  - `master_ipv4_cidr_block` (`string`): The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning private IP addresses to the cluster master(s) and the ILB VIP. This range must not overlap with any other ranges in use within the cluster&#39;s network, and it must be a /28 subnet. See Private Cluster Limitations for more details. This field only applies to private clusters, when enable_private_nodes is true. When `null`, the `master_ipv4_cidr_block` field will be omitted from the resulting object.
  - `private_endpoint_subnetwork` (`string`): Subnetwork in cluster&#39;s network where master&#39;s endpoint will be provisioned. When `null`, the `private_endpoint_subnetwork` field will be omitted from the resulting object.
  - `master_global_access_config` (`list[obj]`): Controls cluster master global access settings. When `null`, the `master_global_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.private_cluster_config.master_global_access_config.new](#fn-private_cluster_configmaster_global_access_confignew) constructor.

**Returns**:
  - An attribute object that represents the `private_cluster_config` sub block.


## obj private_cluster_config.master_global_access_config



### fn private_cluster_config.master_global_access_config.new

```ts
new()
```


`google.container_cluster.private_cluster_config.master_global_access_config.new` constructs a new object with attributes and blocks configured for the `master_global_access_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether the cluster master is accessible globally or not.

**Returns**:
  - An attribute object that represents the `master_global_access_config` sub block.


## obj release_channel



### fn release_channel.new

```ts
new()
```


`google.container_cluster.release_channel.new` constructs a new object with attributes and blocks configured for the `release_channel`
Terraform sub block.



**Args**:
  - `channel` (`string`): The selected release channel. Accepted values are:
* UNSPECIFIED: Not set.
* RAPID: Weekly upgrade cadence; Early testers and developers who requires new features.
* REGULAR: Multiple per month upgrade cadence; Production users who need features not yet offered in the Stable channel.
* STABLE: Every few months upgrade cadence; Production users who need stability above all else, and for whom frequent upgrades are too risky.

**Returns**:
  - An attribute object that represents the `release_channel` sub block.


## obj resource_usage_export_config



### fn resource_usage_export_config.new

```ts
new()
```


`google.container_cluster.resource_usage_export_config.new` constructs a new object with attributes and blocks configured for the `resource_usage_export_config`
Terraform sub block.



**Args**:
  - `enable_network_egress_metering` (`bool`): Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic. When `null`, the `enable_network_egress_metering` field will be omitted from the resulting object.
  - `enable_resource_consumption_metering` (`bool`): Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export. Defaults to true. When `null`, the `enable_resource_consumption_metering` field will be omitted from the resulting object.
  - `bigquery_destination` (`list[obj]`): Parameters for using BigQuery as the destination of resource usage export. When `null`, the `bigquery_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.resource_usage_export_config.bigquery_destination.new](#fn-resource_usage_export_configbigquery_destinationnew) constructor.

**Returns**:
  - An attribute object that represents the `resource_usage_export_config` sub block.


## obj resource_usage_export_config.bigquery_destination



### fn resource_usage_export_config.bigquery_destination.new

```ts
new()
```


`google.container_cluster.resource_usage_export_config.bigquery_destination.new` constructs a new object with attributes and blocks configured for the `bigquery_destination`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of a BigQuery Dataset.

**Returns**:
  - An attribute object that represents the `bigquery_destination` sub block.


## obj service_external_ips_config



### fn service_external_ips_config.new

```ts
new()
```


`google.container_cluster.service_external_ips_config.new` constructs a new object with attributes and blocks configured for the `service_external_ips_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): When enabled, services with exterenal ips specified will be allowed.

**Returns**:
  - An attribute object that represents the `service_external_ips_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vertical_pod_autoscaling



### fn vertical_pod_autoscaling.new

```ts
new()
```


`google.container_cluster.vertical_pod_autoscaling.new` constructs a new object with attributes and blocks configured for the `vertical_pod_autoscaling`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enables vertical pod autoscaling.

**Returns**:
  - An attribute object that represents the `vertical_pod_autoscaling` sub block.


## obj workload_identity_config



### fn workload_identity_config.new

```ts
new()
```


`google.container_cluster.workload_identity_config.new` constructs a new object with attributes and blocks configured for the `workload_identity_config`
Terraform sub block.



**Args**:
  - `workload_pool` (`string`): The workload pool to attach all Kubernetes service accounts to. When `null`, the `workload_pool` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `workload_identity_config` sub block.
