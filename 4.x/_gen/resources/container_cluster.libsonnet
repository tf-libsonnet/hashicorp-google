local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_cluster', url='', help='`container_cluster` represents the `google_container_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  addons_config:: {
    cloudrun_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.cloudrun_config.new` constructs a new object with attributes and blocks configured for the `cloudrun_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Set the `disabled` field on the resulting object.\n  - `load_balancer_type` (`string`): Set the `load_balancer_type` field on the resulting object. When `null`, the `load_balancer_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cloudrun_config` sub block.\n', args=[]),
      new(
        disabled,
        load_balancer_type=null
      ):: std.prune(a={
        disabled: disabled,
        load_balancer_type: load_balancer_type,
      }),
    },
    config_connector_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.config_connector_config.new` constructs a new object with attributes and blocks configured for the `config_connector_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Set the `enabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `config_connector_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    dns_cache_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.dns_cache_config.new` constructs a new object with attributes and blocks configured for the `dns_cache_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Set the `enabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dns_cache_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gce_persistent_disk_csi_driver_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.gce_persistent_disk_csi_driver_config.new` constructs a new object with attributes and blocks configured for the `gce_persistent_disk_csi_driver_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Set the `enabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gce_persistent_disk_csi_driver_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gcp_filestore_csi_driver_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.gcp_filestore_csi_driver_config.new` constructs a new object with attributes and blocks configured for the `gcp_filestore_csi_driver_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Set the `enabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gcp_filestore_csi_driver_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gke_backup_agent_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.gke_backup_agent_config.new` constructs a new object with attributes and blocks configured for the `gke_backup_agent_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Set the `enabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gke_backup_agent_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    horizontal_pod_autoscaling:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.horizontal_pod_autoscaling.new` constructs a new object with attributes and blocks configured for the `horizontal_pod_autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Set the `disabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `horizontal_pod_autoscaling` sub block.\n', args=[]),
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
    http_load_balancing:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.http_load_balancing.new` constructs a new object with attributes and blocks configured for the `http_load_balancing`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Set the `disabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http_load_balancing` sub block.\n', args=[]),
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
    network_policy_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.addons_config.network_policy_config.new` constructs a new object with attributes and blocks configured for the `network_policy_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Set the `disabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_policy_config` sub block.\n', args=[]),
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.addons_config.new` constructs a new object with attributes and blocks configured for the `addons_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloudrun_config` (`list[obj]`): The status of the CloudRun addon. It is disabled by default. Set disabled = false to enable. When `null`, the `cloudrun_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.cloudrun_config.new](#fn-addons_configcloudrun_confignew) constructor.\n  - `config_connector_config` (`list[obj]`): The of the Config Connector addon. When `null`, the `config_connector_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.config_connector_config.new](#fn-addons_configconfig_connector_confignew) constructor.\n  - `dns_cache_config` (`list[obj]`): The status of the NodeLocal DNSCache addon. It is disabled by default. Set enabled = true to enable. When `null`, the `dns_cache_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.dns_cache_config.new](#fn-addons_configdns_cache_confignew) constructor.\n  - `gce_persistent_disk_csi_driver_config` (`list[obj]`): Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Defaults to enabled; set disabled = true to disable. When `null`, the `gce_persistent_disk_csi_driver_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.gce_persistent_disk_csi_driver_config.new](#fn-addons_configgce_persistent_disk_csi_driver_confignew) constructor.\n  - `gcp_filestore_csi_driver_config` (`list[obj]`): The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes. Defaults to disabled; set enabled = true to enable. When `null`, the `gcp_filestore_csi_driver_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.gcp_filestore_csi_driver_config.new](#fn-addons_configgcp_filestore_csi_driver_confignew) constructor.\n  - `gke_backup_agent_config` (`list[obj]`): The status of the Backup for GKE Agent addon. It is disabled by default. Set enabled = true to enable. When `null`, the `gke_backup_agent_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.gke_backup_agent_config.new](#fn-addons_configgke_backup_agent_confignew) constructor.\n  - `horizontal_pod_autoscaling` (`list[obj]`): The status of the Horizontal Pod Autoscaling addon, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster, which is also used by the Cloud Monitoring service. It is enabled by default; set disabled = true to disable. When `null`, the `horizontal_pod_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.horizontal_pod_autoscaling.new](#fn-addons_confighorizontal_pod_autoscalingnew) constructor.\n  - `http_load_balancing` (`list[obj]`): The status of the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default; set disabled = true to disable. When `null`, the `http_load_balancing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.http_load_balancing.new](#fn-addons_confighttp_load_balancingnew) constructor.\n  - `network_policy_config` (`list[obj]`): Whether we should enable the network policy addon for the master. This must be enabled in order to enable network policy for the nodes. To enable this, you must also define a network_policy block, otherwise nothing will happen. It can only be disabled if the nodes already do not have network policies enabled. Defaults to disabled; set disabled = false to enable. When `null`, the `network_policy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.network_policy_config.new](#fn-addons_confignetwork_policy_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `addons_config` sub block.\n', args=[]),
    new(
      cloudrun_config=null,
      config_connector_config=null,
      dns_cache_config=null,
      gce_persistent_disk_csi_driver_config=null,
      gcp_filestore_csi_driver_config=null,
      gke_backup_agent_config=null,
      horizontal_pod_autoscaling=null,
      http_load_balancing=null,
      network_policy_config=null
    ):: std.prune(a={
      cloudrun_config: cloudrun_config,
      config_connector_config: config_connector_config,
      dns_cache_config: dns_cache_config,
      gce_persistent_disk_csi_driver_config: gce_persistent_disk_csi_driver_config,
      gcp_filestore_csi_driver_config: gcp_filestore_csi_driver_config,
      gke_backup_agent_config: gke_backup_agent_config,
      horizontal_pod_autoscaling: horizontal_pod_autoscaling,
      http_load_balancing: http_load_balancing,
      network_policy_config: network_policy_config,
    }),
  },
  authenticator_groups_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.authenticator_groups_config.new` constructs a new object with attributes and blocks configured for the `authenticator_groups_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `security_group` (`string`): The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com.\n\n**Returns**:\n  - An attribute object that represents the `authenticator_groups_config` sub block.\n', args=[]),
    new(
      security_group
    ):: std.prune(a={
      security_group: security_group,
    }),
  },
  binary_authorization:: {
    '#new':: d.fn(help='\n`google.container_cluster.binary_authorization.new` constructs a new object with attributes and blocks configured for the `binary_authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Enable Binary Authorization for this cluster. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `evaluation_mode` (`string`): Mode of operation for Binary Authorization policy evaluation. When `null`, the `evaluation_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `binary_authorization` sub block.\n', args=[]),
    new(
      enabled=null,
      evaluation_mode=null
    ):: std.prune(a={
      enabled: enabled,
      evaluation_mode: evaluation_mode,
    }),
  },
  cluster_autoscaling:: {
    auto_provisioning_defaults:: {
      management:: {
        '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.management.new` constructs a new object with attributes and blocks configured for the `management`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_repair` (`bool`): Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered. When `null`, the `auto_repair` field will be omitted from the resulting object.\n  - `auto_upgrade` (`bool`): Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes. When `null`, the `auto_upgrade` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `management` sub block.\n', args=[]),
        new(
          auto_repair=null,
          auto_upgrade=null
        ):: std.prune(a={
          auto_repair: auto_repair,
          auto_upgrade: auto_upgrade,
        }),
      },
      '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.new` constructs a new object with attributes and blocks configured for the `auto_provisioning_defaults`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.\n  - `disk_size` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size` field will be omitted from the resulting object.\n  - `disk_type` (`string`): Type of the disk attached to each node. When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `image_type` (`string`): The default image type used by NAP once a new node pool is being created. When `null`, the `image_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `oauth_scopes` (`list`): Scopes that are used by NAP when creating node pools. When `null`, the `oauth_scopes` field will be omitted from the resulting object.\n  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `management` (`list[obj]`): NodeManagement configuration for this NodePool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.management.new](#fn-cluster_autoscalingcluster_autoscalingmanagementnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config.new](#fn-cluster_autoscalingcluster_autoscalingshielded_instance_confignew) constructor.\n  - `upgrade_settings` (`list[obj]`): Specifies the upgrade settings for NAP created node pools When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.new](#fn-cluster_autoscalingcluster_autoscalingupgrade_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `auto_provisioning_defaults` sub block.\n', args=[]),
      new(
        boot_disk_kms_key=null,
        disk_size=null,
        disk_type=null,
        image_type=null,
        management=null,
        min_cpu_platform=null,
        oauth_scopes=null,
        service_account=null,
        shielded_instance_config=null,
        upgrade_settings=null
      ):: std.prune(a={
        boot_disk_kms_key: boot_disk_kms_key,
        disk_size: disk_size,
        disk_type: disk_type,
        image_type: image_type,
        management: management,
        min_cpu_platform: min_cpu_platform,
        oauth_scopes: oauth_scopes,
        service_account: service_account,
        shielded_instance_config: shielded_instance_config,
        upgrade_settings: upgrade_settings,
      }),
      shielded_instance_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
        }),
      },
      upgrade_settings:: {
        blue_green_settings:: {
          '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.new` constructs a new object with attributes and blocks configured for the `blue_green_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool_soak_duration` (`string`): Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tA duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `node_pool_soak_duration` field will be omitted from the resulting object.\n  - `standard_rollout_policy` (`list[obj]`): Standard policy for the blue-green upgrade. When `null`, the `standard_rollout_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.new](#fn-cluster_autoscalingcluster_autoscalingauto_provisioning_defaultsupgrade_settingsstandard_rollout_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `blue_green_settings` sub block.\n', args=[]),
          new(
            node_pool_soak_duration=null,
            standard_rollout_policy=null
          ):: std.prune(a={
            node_pool_soak_duration: node_pool_soak_duration,
            standard_rollout_policy: standard_rollout_policy,
          }),
          standard_rollout_policy:: {
            '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.new` constructs a new object with attributes and blocks configured for the `standard_rollout_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `batch_node_count` (`number`): Number of blue nodes to drain in a batch. When `null`, the `batch_node_count` field will be omitted from the resulting object.\n  - `batch_percentage` (`number`): Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0]. When `null`, the `batch_percentage` field will be omitted from the resulting object.\n  - `batch_soak_duration` (`string`): Soak time after each batch gets drained.\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tA duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `batch_soak_duration` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `standard_rollout_policy` sub block.\n', args=[]),
            new(
              batch_node_count=null,
              batch_percentage=null,
              batch_soak_duration=null
            ):: std.prune(a={
              batch_node_count: batch_node_count,
              batch_percentage: batch_percentage,
              batch_soak_duration: batch_soak_duration,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.new` constructs a new object with attributes and blocks configured for the `upgrade_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_surge` (`number`): The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. When `null`, the `max_surge` field will be omitted from the resulting object.\n  - `max_unavailable` (`number`): The maximum number of nodes that can be simultaneously unavailable during the upgrade process. When `null`, the `max_unavailable` field will be omitted from the resulting object.\n  - `strategy` (`string`): Update strategy of the node pool. When `null`, the `strategy` field will be omitted from the resulting object.\n  - `blue_green_settings` (`list[obj]`): Settings for blue-green upgrade strategy. When `null`, the `blue_green_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.new](#fn-cluster_autoscalingcluster_autoscalingauto_provisioning_defaultsblue_green_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `upgrade_settings` sub block.\n', args=[]),
        new(
          blue_green_settings=null,
          max_surge=null,
          max_unavailable=null,
          strategy=null
        ):: std.prune(a={
          blue_green_settings: blue_green_settings,
          max_surge: max_surge,
          max_unavailable: max_unavailable,
          strategy: strategy,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.new` constructs a new object with attributes and blocks configured for the `cluster_autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether node auto-provisioning is enabled. Resource limits for cpu and memory must be defined to enable node auto-provisioning. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `auto_provisioning_defaults` (`list[obj]`): Contains defaults for a node pool created by NAP. When `null`, the `auto_provisioning_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.auto_provisioning_defaults.new](#fn-cluster_autoscalingauto_provisioning_defaultsnew) constructor.\n  - `resource_limits` (`list[obj]`): Global constraints for machine resources in the cluster. Configuring the cpu and memory types is required if node auto-provisioning is enabled. These limits will apply to node pool autoscaling in addition to node auto-provisioning. When `null`, the `resource_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.resource_limits.new](#fn-cluster_autoscalingresource_limitsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cluster_autoscaling` sub block.\n', args=[]),
    new(
      auto_provisioning_defaults=null,
      enabled=null,
      resource_limits=null
    ):: std.prune(a={
      auto_provisioning_defaults: auto_provisioning_defaults,
      enabled: enabled,
      resource_limits: resource_limits,
    }),
    resource_limits:: {
      '#new':: d.fn(help='\n`google.container_cluster.cluster_autoscaling.resource_limits.new` constructs a new object with attributes and blocks configured for the `resource_limits`\nTerraform sub block.\n\n\n\n**Args**:\n  - `maximum` (`number`): Maximum amount of the resource in the cluster. When `null`, the `maximum` field will be omitted from the resulting object.\n  - `minimum` (`number`): Minimum amount of the resource in the cluster. When `null`, the `minimum` field will be omitted from the resulting object.\n  - `resource_type` (`string`): The type of the resource. For example, cpu and memory. See the guide to using Node Auto-Provisioning for a list of types.\n\n**Returns**:\n  - An attribute object that represents the `resource_limits` sub block.\n', args=[]),
      new(
        resource_type,
        maximum=null,
        minimum=null
      ):: std.prune(a={
        maximum: maximum,
        minimum: minimum,
        resource_type: resource_type,
      }),
    },
  },
  confidential_nodes:: {
    '#new':: d.fn(help='\n`google.container_cluster.confidential_nodes.new` constructs a new object with attributes and blocks configured for the `confidential_nodes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether Confidential Nodes feature is enabled for all nodes in this cluster.\n\n**Returns**:\n  - An attribute object that represents the `confidential_nodes` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  cost_management_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.cost_management_config.new` constructs a new object with attributes and blocks configured for the `cost_management_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether to enable GKE cost allocation. When you enable GKE cost allocation, the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery. Defaults to false.\n\n**Returns**:\n  - An attribute object that represents the `cost_management_config` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  database_encryption:: {
    '#new':: d.fn(help='\n`google.container_cluster.database_encryption.new` constructs a new object with attributes and blocks configured for the `database_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key_name` (`string`): The key to use to encrypt/decrypt secrets. When `null`, the `key_name` field will be omitted from the resulting object.\n  - `state` (`string`): ENCRYPTED or DECRYPTED.\n\n**Returns**:\n  - An attribute object that represents the `database_encryption` sub block.\n', args=[]),
    new(
      state,
      key_name=null
    ):: std.prune(a={
      key_name: key_name,
      state: state,
    }),
  },
  default_snat_status:: {
    '#new':: d.fn(help='\n`google.container_cluster.default_snat_status.new` constructs a new object with attributes and blocks configured for the `default_snat_status`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.\n\n**Returns**:\n  - An attribute object that represents the `default_snat_status` sub block.\n', args=[]),
    new(
      disabled
    ):: std.prune(a={
      disabled: disabled,
    }),
  },
  dns_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.dns_config.new` constructs a new object with attributes and blocks configured for the `dns_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_dns` (`string`): Which in-cluster DNS provider should be used. When `null`, the `cluster_dns` field will be omitted from the resulting object.\n  - `cluster_dns_domain` (`string`): The suffix used for all cluster service records. When `null`, the `cluster_dns_domain` field will be omitted from the resulting object.\n  - `cluster_dns_scope` (`string`): The scope of access to cluster DNS records. When `null`, the `cluster_dns_scope` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dns_config` sub block.\n', args=[]),
    new(
      cluster_dns=null,
      cluster_dns_domain=null,
      cluster_dns_scope=null
    ):: std.prune(a={
      cluster_dns: cluster_dns,
      cluster_dns_domain: cluster_dns_domain,
      cluster_dns_scope: cluster_dns_scope,
    }),
  },
  gateway_api_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.gateway_api_config.new` constructs a new object with attributes and blocks configured for the `gateway_api_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The Gateway API release channel to use for Gateway API.\n\n**Returns**:\n  - An attribute object that represents the `gateway_api_config` sub block.\n', args=[]),
    new(
      channel
    ):: std.prune(a={
      channel: channel,
    }),
  },
  ip_allocation_policy:: {
    '#new':: d.fn(help='\n`google.container_cluster.ip_allocation_policy.new` constructs a new object with attributes and blocks configured for the `ip_allocation_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_ipv4_cidr_block` (`string`): The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. When `null`, the `cluster_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `cluster_secondary_range_name` (`string`): The name of the existing secondary range in the cluster&#39;s subnetwork to use for pod IP addresses. Alternatively, cluster_ipv4_cidr_block can be used to automatically create a GKE-managed one. When `null`, the `cluster_secondary_range_name` field will be omitted from the resulting object.\n  - `services_ipv4_cidr_block` (`string`): The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. When `null`, the `services_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `services_secondary_range_name` (`string`): The name of the existing secondary range in the cluster&#39;s subnetwork to use for service ClusterIPs. Alternatively, services_ipv4_cidr_block can be used to automatically create a GKE-managed one. When `null`, the `services_secondary_range_name` field will be omitted from the resulting object.\n  - `stack_type` (`string`): The IP Stack type of the cluster. Choose between IPV4 and IPV4_IPV6. Default type is IPV4 Only if not set When `null`, the `stack_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ip_allocation_policy` sub block.\n', args=[]),
    new(
      cluster_ipv4_cidr_block=null,
      cluster_secondary_range_name=null,
      services_ipv4_cidr_block=null,
      services_secondary_range_name=null,
      stack_type=null
    ):: std.prune(a={
      cluster_ipv4_cidr_block: cluster_ipv4_cidr_block,
      cluster_secondary_range_name: cluster_secondary_range_name,
      services_ipv4_cidr_block: services_ipv4_cidr_block,
      services_secondary_range_name: services_secondary_range_name,
      stack_type: stack_type,
    }),
  },
  logging_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_components` (`list`): GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, SCHEDULER, and WORKLOADS.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
    new(
      enable_components
    ):: std.prune(a={
      enable_components: enable_components,
    }),
  },
  maintenance_policy:: {
    daily_maintenance_window:: {
      '#new':: d.fn(help='\n`google.container_cluster.maintenance_policy.daily_maintenance_window.new` constructs a new object with attributes and blocks configured for the `daily_maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `start_time` (`string`): Set the `start_time` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `daily_maintenance_window` sub block.\n', args=[]),
      new(
        start_time
      ):: std.prune(a={
        start_time: start_time,
      }),
    },
    maintenance_exclusion:: {
      exclusion_options:: {
        '#new':: d.fn(help='\n`google.container_cluster.maintenance_policy.maintenance_exclusion.exclusion_options.new` constructs a new object with attributes and blocks configured for the `exclusion_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `scope` (`string`): The scope of automatic upgrades to restrict in the exclusion window.\n\n**Returns**:\n  - An attribute object that represents the `exclusion_options` sub block.\n', args=[]),
        new(
          scope
        ):: std.prune(a={
          scope: scope,
        }),
      },
      '#new':: d.fn(help='\n`google.container_cluster.maintenance_policy.maintenance_exclusion.new` constructs a new object with attributes and blocks configured for the `maintenance_exclusion`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_time` (`string`): Set the `end_time` field on the resulting object.\n  - `exclusion_name` (`string`): Set the `exclusion_name` field on the resulting object.\n  - `start_time` (`string`): Set the `start_time` field on the resulting object.\n  - `exclusion_options` (`list[obj]`): Maintenance exclusion related options. When `null`, the `exclusion_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.maintenance_exclusion.exclusion_options.new](#fn-maintenance_policymaintenance_policyexclusion_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_exclusion` sub block.\n', args=[]),
      new(
        end_time,
        exclusion_name,
        start_time,
        exclusion_options=null
      ):: std.prune(a={
        end_time: end_time,
        exclusion_name: exclusion_name,
        exclusion_options: exclusion_options,
        start_time: start_time,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `daily_maintenance_window` (`list[obj]`): Time window specified for daily maintenance operations. Specify start_time in RFC3339 format &#34;HH:MM”, where HH : [00-23] and MM : [00-59] GMT. When `null`, the `daily_maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.daily_maintenance_window.new](#fn-maintenance_policydaily_maintenance_windownew) constructor.\n  - `maintenance_exclusion` (`list[obj]`): Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. When `null`, the `maintenance_exclusion` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.maintenance_exclusion.new](#fn-maintenance_policymaintenance_exclusionnew) constructor.\n  - `recurring_window` (`list[obj]`): Time window for recurring maintenance operations. When `null`, the `recurring_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.recurring_window.new](#fn-maintenance_policyrecurring_windownew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_policy` sub block.\n', args=[]),
    new(
      daily_maintenance_window=null,
      maintenance_exclusion=null,
      recurring_window=null
    ):: std.prune(a={
      daily_maintenance_window: daily_maintenance_window,
      maintenance_exclusion: maintenance_exclusion,
      recurring_window: recurring_window,
    }),
    recurring_window:: {
      '#new':: d.fn(help='\n`google.container_cluster.maintenance_policy.recurring_window.new` constructs a new object with attributes and blocks configured for the `recurring_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_time` (`string`): Set the `end_time` field on the resulting object.\n  - `recurrence` (`string`): Set the `recurrence` field on the resulting object.\n  - `start_time` (`string`): Set the `start_time` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `recurring_window` sub block.\n', args=[]),
      new(
        end_time,
        recurrence,
        start_time
      ):: std.prune(a={
        end_time: end_time,
        recurrence: recurrence,
        start_time: start_time,
      }),
    },
  },
  master_auth:: {
    client_certificate_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.master_auth.client_certificate_config.new` constructs a new object with attributes and blocks configured for the `client_certificate_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `issue_client_certificate` (`bool`): Whether client certificate authorization is enabled for this cluster.\n\n**Returns**:\n  - An attribute object that represents the `client_certificate_config` sub block.\n', args=[]),
      new(
        issue_client_certificate
      ):: std.prune(a={
        issue_client_certificate: issue_client_certificate,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.master_auth.new` constructs a new object with attributes and blocks configured for the `master_auth`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_certificate_config` (`list[obj]`): Whether client certificate authorization is enabled for this cluster. When `null`, the `client_certificate_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_auth.client_certificate_config.new](#fn-master_authclient_certificate_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `master_auth` sub block.\n', args=[]),
    new(
      client_certificate_config=null
    ):: std.prune(a={
      client_certificate_config: client_certificate_config,
    }),
  },
  master_authorized_networks_config:: {
    cidr_blocks:: {
      '#new':: d.fn(help='\n`google.container_cluster.master_authorized_networks_config.cidr_blocks.new` constructs a new object with attributes and blocks configured for the `cidr_blocks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cidr_block` (`string`): External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation.\n  - `display_name` (`string`): Field for users to identify CIDR blocks. When `null`, the `display_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cidr_blocks` sub block.\n', args=[]),
      new(
        cidr_block,
        display_name=null
      ):: std.prune(a={
        cidr_block: cidr_block,
        display_name: display_name,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.master_authorized_networks_config.new` constructs a new object with attributes and blocks configured for the `master_authorized_networks_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcp_public_cidrs_access_enabled` (`bool`): Whether master is accessbile via Google Compute Engine Public IP addresses. When `null`, the `gcp_public_cidrs_access_enabled` field will be omitted from the resulting object.\n  - `cidr_blocks` (`list[obj]`): External networks that can access the Kubernetes cluster master through HTTPS. When `null`, the `cidr_blocks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_authorized_networks_config.cidr_blocks.new](#fn-master_authorized_networks_configcidr_blocksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `master_authorized_networks_config` sub block.\n', args=[]),
    new(
      cidr_blocks=null,
      gcp_public_cidrs_access_enabled=null
    ):: std.prune(a={
      cidr_blocks: cidr_blocks,
      gcp_public_cidrs_access_enabled: gcp_public_cidrs_access_enabled,
    }),
  },
  mesh_certificates:: {
    '#new':: d.fn(help='\n`google.container_cluster.mesh_certificates.new` constructs a new object with attributes and blocks configured for the `mesh_certificates`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_certificates` (`bool`): When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster.\n\n**Returns**:\n  - An attribute object that represents the `mesh_certificates` sub block.\n', args=[]),
    new(
      enable_certificates
    ):: std.prune(a={
      enable_certificates: enable_certificates,
    }),
  },
  monitoring_config:: {
    managed_prometheus:: {
      '#new':: d.fn(help='\n`google.container_cluster.monitoring_config.managed_prometheus.new` constructs a new object with attributes and blocks configured for the `managed_prometheus`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not the managed collection is enabled.\n\n**Returns**:\n  - An attribute object that represents the `managed_prometheus` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.monitoring_config.new` constructs a new object with attributes and blocks configured for the `monitoring_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_components` (`list`): GKE components exposing metrics. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, and SCHEDULER.\n  - `managed_prometheus` (`list[obj]`): Configuration for Google Cloud Managed Services for Prometheus. When `null`, the `managed_prometheus` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.monitoring_config.managed_prometheus.new](#fn-monitoring_configmanaged_prometheusnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `monitoring_config` sub block.\n', args=[]),
    new(
      enable_components,
      managed_prometheus=null
    ):: std.prune(a={
      enable_components: enable_components,
      managed_prometheus: managed_prometheus,
    }),
  },
  network_policy:: {
    '#new':: d.fn(help='\n`google.container_cluster.network_policy.new` constructs a new object with attributes and blocks configured for the `network_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether network policy is enabled on the cluster.\n  - `provider` (`string`): The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED. When `null`, the `provider` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_policy` sub block.\n', args=[]),
    new(
      enabled,
      provider=null
    ):: std.prune(a={
      enabled: enabled,
      provider: provider,
    }),
  },
  '#new':: d.fn(help="\n`google.container_cluster.new` injects a new `google_container_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_cluster` using the reference:\n\n    $._ref.google_container_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster_ipv4_cidr` (`string`): The IP address range of the Kubernetes pods in this cluster in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8. This field will only work for routes-based clusters, where ip_allocation_policy is not defined. When `null`, the `cluster_ipv4_cidr` field will be omitted from the resulting object.\n  - `datapath_provider` (`string`): The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation. When `null`, the `datapath_provider` field will be omitted from the resulting object.\n  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node in this cluster. This doesn\u0026#39;t work on \u0026#34;routes-based\u0026#34; clusters, clusters that don\u0026#39;t have IP Aliasing enabled. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.\n  - `description` (`string`):  Description of the cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_autopilot` (`bool`): Enable Autopilot for this cluster. When `null`, the `enable_autopilot` field will be omitted from the resulting object.\n  - `enable_binary_authorization` (`bool`): Enable Binary Authorization for this cluster. If enabled, all container images will be validated by Google Binary Authorization. When `null`, the `enable_binary_authorization` field will be omitted from the resulting object.\n  - `enable_intranode_visibility` (`bool`): Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network. When `null`, the `enable_intranode_visibility` field will be omitted from the resulting object.\n  - `enable_kubernetes_alpha` (`bool`): Whether to enable Kubernetes Alpha features for this cluster. Note that when this option is enabled, the cluster cannot be upgraded and will be automatically deleted after 30 days. When `null`, the `enable_kubernetes_alpha` field will be omitted from the resulting object.\n  - `enable_l4_ilb_subsetting` (`bool`): Whether L4ILB Subsetting is enabled for this cluster. When `null`, the `enable_l4_ilb_subsetting` field will be omitted from the resulting object.\n  - `enable_legacy_abac` (`bool`): Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM. Defaults to false. When `null`, the `enable_legacy_abac` field will be omitted from the resulting object.\n  - `enable_shielded_nodes` (`bool`): Enable Shielded Nodes features on all nodes in this cluster. Defaults to true. When `null`, the `enable_shielded_nodes` field will be omitted from the resulting object.\n  - `enable_tpu` (`bool`): Whether to enable Cloud TPU resources in this cluster. When `null`, the `enable_tpu` field will be omitted from the resulting object.\n  - `initial_node_count` (`number`): The number of nodes to create in this cluster\u0026#39;s default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Must be set if node_pool is not set. If you\u0026#39;re using google_container_node_pool objects with no default node pool, you\u0026#39;ll need to set this to a value of at least 1, alongside setting remove_default_node_pool to true. When `null`, the `initial_node_count` field will be omitted from the resulting object.\n  - `location` (`string`): The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. When `null`, the `location` field will be omitted from the resulting object.\n  - `logging_service` (`string`): The logging service that the cluster should write logs to. Available options include logging.googleapis.com(Legacy Stackdriver), logging.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Logging), and none. Defaults to logging.googleapis.com/kubernetes. When `null`, the `logging_service` field will be omitted from the resulting object.\n  - `min_master_version` (`string`): The minimum version of the master. GKE will auto-update the master to new versions, so this does not guarantee the current master version--use the read-only master_version field to obtain that. If unset, the cluster\u0026#39;s version will be set by GKE to the version of the most recent official release (which is not necessarily the latest version). When `null`, the `min_master_version` field will be omitted from the resulting object.\n  - `monitoring_service` (`string`): The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com(Legacy Stackdriver), monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Monitoring), and none. Defaults to monitoring.googleapis.com/kubernetes. When `null`, the `monitoring_service` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the cluster, unique within the project and location.\n  - `network` (`string`): The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network. When `null`, the `network` field will be omitted from the resulting object.\n  - `networking_mode` (`string`): Determines whether alias IPs or routes will be used for pod IPs in the cluster. When `null`, the `networking_mode` field will be omitted from the resulting object.\n  - `node_locations` (`list`): The list of zones in which the cluster\u0026#39;s nodes are located. Nodes must be in the region of their regional cluster or in the same region as their cluster\u0026#39;s zone for zonal clusters. If this is specified for a zonal cluster, omit the cluster\u0026#39;s zone. When `null`, the `node_locations` field will be omitted from the resulting object.\n  - `node_version` (`string`): The Kubernetes version on the nodes. Must either be unset or set to the same value as min_master_version on create. Defaults to the default version set by GKE which is not necessarily the latest version. This only affects nodes in the default node pool. While a fuzzy version can be specified, it\u0026#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source\u0026#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. To update nodes in other node pools, use the version attribute on the node pool. When `null`, the `node_version` field will be omitted from the resulting object.\n  - `private_ipv6_google_access` (`string`): The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4). When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `remove_default_node_pool` (`bool`): If true, deletes the default node pool upon cluster creation. If you\u0026#39;re using google_container_node_pool resources with no default node pool, this should be set to true, alongside setting initial_node_count to at least 1. When `null`, the `remove_default_node_pool` field will be omitted from the resulting object.\n  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the cluster. When `null`, the `resource_labels` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork in which the cluster\u0026#39;s instances are launched. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `addons_config` (`list[obj]`): The configuration for addons supported by GKE. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.new](#fn-addons_confignew) constructor.\n  - `authenticator_groups_config` (`list[obj]`): Configuration for the Google Groups for GKE feature. When `null`, the `authenticator_groups_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.authenticator_groups_config.new](#fn-authenticator_groups_confignew) constructor.\n  - `binary_authorization` (`list[obj]`): Configuration options for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.\n  - `cluster_autoscaling` (`list[obj]`): Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs of the cluster\u0026#39;s workload. See the guide to using Node Auto-Provisioning for more details. When `null`, the `cluster_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.new](#fn-cluster_autoscalingnew) constructor.\n  - `confidential_nodes` (`list[obj]`): Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can\u0026#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. When `null`, the `confidential_nodes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.confidential_nodes.new](#fn-confidential_nodesnew) constructor.\n  - `cost_management_config` (`list[obj]`): Cost management configuration for the cluster. When `null`, the `cost_management_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cost_management_config.new](#fn-cost_management_confignew) constructor.\n  - `database_encryption` (`list[obj]`): Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: \u0026#34;ENCRYPTED\u0026#34;; \u0026#34;DECRYPTED\u0026#34;. key_name is the name of a CloudKMS key. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.database_encryption.new](#fn-database_encryptionnew) constructor.\n  - `default_snat_status` (`list[obj]`): Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled. When `null`, the `default_snat_status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.default_snat_status.new](#fn-default_snat_statusnew) constructor.\n  - `dns_config` (`list[obj]`): Configuration for Cloud DNS for Kubernetes Engine. When `null`, the `dns_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.dns_config.new](#fn-dns_confignew) constructor.\n  - `gateway_api_config` (`list[obj]`): Configuration for GKE Gateway API controller. When `null`, the `gateway_api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.gateway_api_config.new](#fn-gateway_api_confignew) constructor.\n  - `ip_allocation_policy` (`list[obj]`): Configuration of cluster IP allocation for VPC-native clusters. Adding this block enables IP aliasing, making the cluster VPC-native instead of routes-based. When `null`, the `ip_allocation_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.ip_allocation_policy.new](#fn-ip_allocation_policynew) constructor.\n  - `logging_config` (`list[obj]`): Logging configuration for the cluster. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.logging_config.new](#fn-logging_confignew) constructor.\n  - `maintenance_policy` (`list[obj]`): The maintenance policy to use for the cluster. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `master_auth` (`list[obj]`): The authentication information for accessing the Kubernetes master. Some values in this block are only returned by the API if your service account has permission to get credentials for your GKE cluster. If you see an unexpected diff unsetting your client cert, ensure you have the container.clusters.getCredentials permission. When `null`, the `master_auth` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_auth.new](#fn-master_authnew) constructor.\n  - `master_authorized_networks_config` (`list[obj]`): The desired configuration options for master authorized networks. Omit the nested cidr_blocks attribute to disallow external access (except the cluster node IPs, which GKE automatically whitelists). When `null`, the `master_authorized_networks_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_authorized_networks_config.new](#fn-master_authorized_networks_confignew) constructor.\n  - `mesh_certificates` (`list[obj]`): If set, and enable_certificates=true, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster. When `null`, the `mesh_certificates` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.mesh_certificates.new](#fn-mesh_certificatesnew) constructor.\n  - `monitoring_config` (`list[obj]`): Monitoring configuration for the cluster. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.\n  - `network_policy` (`list[obj]`): Configuration options for the NetworkPolicy feature. When `null`, the `network_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.network_policy.new](#fn-network_policynew) constructor.\n  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.new](#fn-node_confignew) constructor.\n  - `node_pool` (`list[obj]`): List of node pools associated with this cluster. See google_container_node_pool for schema. Warning: node pools defined inside a cluster can\u0026#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability to say \u0026#34;these are the only node pools associated with this cluster\u0026#34;, use the google_container_node_pool resource instead of this property. When `null`, the `node_pool` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.new](#fn-node_poolnew) constructor.\n  - `node_pool_defaults` (`list[obj]`): The default nodel pool settings for the entire cluster. When `null`, the `node_pool_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool_defaults.new](#fn-node_pool_defaultsnew) constructor.\n  - `notification_config` (`list[obj]`): The notification config for sending cluster upgrade notifications When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.new](#fn-notification_confignew) constructor.\n  - `private_cluster_config` (`list[obj]`): Configuration for private clusters, clusters with private nodes. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.\n  - `release_channel` (`list[obj]`): Configuration options for the Release channel feature, which provide more control over automatic upgrades of your GKE clusters. Note that removing this field from your config will not unenroll it. Instead, use the \u0026#34;UNSPECIFIED\u0026#34; channel. When `null`, the `release_channel` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.release_channel.new](#fn-release_channelnew) constructor.\n  - `resource_usage_export_config` (`list[obj]`): Configuration for the ResourceUsageExportConfig feature. When `null`, the `resource_usage_export_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.resource_usage_export_config.new](#fn-resource_usage_export_confignew) constructor.\n  - `service_external_ips_config` (`list[obj]`): If set, and enabled=true, services with external ips field will not be blocked When `null`, the `service_external_ips_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.service_external_ips_config.new](#fn-service_external_ips_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vertical_pod_autoscaling` (`list[obj]`): Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it. When `null`, the `vertical_pod_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.vertical_pod_autoscaling.new](#fn-vertical_pod_autoscalingnew) constructor.\n  - `workload_identity_config` (`list[obj]`): Configuration for the use of Kubernetes Service Accounts in GCP IAM policies. When `null`, the `workload_identity_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.workload_identity_config.new](#fn-workload_identity_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    addons_config=null,
    authenticator_groups_config=null,
    binary_authorization=null,
    cluster_autoscaling=null,
    cluster_ipv4_cidr=null,
    confidential_nodes=null,
    cost_management_config=null,
    database_encryption=null,
    datapath_provider=null,
    default_max_pods_per_node=null,
    default_snat_status=null,
    description=null,
    dns_config=null,
    enable_autopilot=null,
    enable_binary_authorization=null,
    enable_intranode_visibility=null,
    enable_kubernetes_alpha=null,
    enable_l4_ilb_subsetting=null,
    enable_legacy_abac=null,
    enable_shielded_nodes=null,
    enable_tpu=null,
    gateway_api_config=null,
    initial_node_count=null,
    ip_allocation_policy=null,
    location=null,
    logging_config=null,
    logging_service=null,
    maintenance_policy=null,
    master_auth=null,
    master_authorized_networks_config=null,
    mesh_certificates=null,
    min_master_version=null,
    monitoring_config=null,
    monitoring_service=null,
    network=null,
    network_policy=null,
    networking_mode=null,
    node_config=null,
    node_locations=null,
    node_pool=null,
    node_pool_defaults=null,
    node_version=null,
    notification_config=null,
    private_cluster_config=null,
    private_ipv6_google_access=null,
    project=null,
    release_channel=null,
    remove_default_node_pool=null,
    resource_labels=null,
    resource_usage_export_config=null,
    service_external_ips_config=null,
    subnetwork=null,
    timeouts=null,
    vertical_pod_autoscaling=null,
    workload_identity_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      addons_config=addons_config,
      authenticator_groups_config=authenticator_groups_config,
      binary_authorization=binary_authorization,
      cluster_autoscaling=cluster_autoscaling,
      cluster_ipv4_cidr=cluster_ipv4_cidr,
      confidential_nodes=confidential_nodes,
      cost_management_config=cost_management_config,
      database_encryption=database_encryption,
      datapath_provider=datapath_provider,
      default_max_pods_per_node=default_max_pods_per_node,
      default_snat_status=default_snat_status,
      description=description,
      dns_config=dns_config,
      enable_autopilot=enable_autopilot,
      enable_binary_authorization=enable_binary_authorization,
      enable_intranode_visibility=enable_intranode_visibility,
      enable_kubernetes_alpha=enable_kubernetes_alpha,
      enable_l4_ilb_subsetting=enable_l4_ilb_subsetting,
      enable_legacy_abac=enable_legacy_abac,
      enable_shielded_nodes=enable_shielded_nodes,
      enable_tpu=enable_tpu,
      gateway_api_config=gateway_api_config,
      initial_node_count=initial_node_count,
      ip_allocation_policy=ip_allocation_policy,
      location=location,
      logging_config=logging_config,
      logging_service=logging_service,
      maintenance_policy=maintenance_policy,
      master_auth=master_auth,
      master_authorized_networks_config=master_authorized_networks_config,
      mesh_certificates=mesh_certificates,
      min_master_version=min_master_version,
      monitoring_config=monitoring_config,
      monitoring_service=monitoring_service,
      name=name,
      network=network,
      network_policy=network_policy,
      networking_mode=networking_mode,
      node_config=node_config,
      node_locations=node_locations,
      node_pool=node_pool,
      node_pool_defaults=node_pool_defaults,
      node_version=node_version,
      notification_config=notification_config,
      private_cluster_config=private_cluster_config,
      private_ipv6_google_access=private_ipv6_google_access,
      project=project,
      release_channel=release_channel,
      remove_default_node_pool=remove_default_node_pool,
      resource_labels=resource_labels,
      resource_usage_export_config=resource_usage_export_config,
      service_external_ips_config=service_external_ips_config,
      subnetwork=subnetwork,
      timeouts=timeouts,
      vertical_pod_autoscaling=vertical_pod_autoscaling,
      workload_identity_config=workload_identity_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_cluster`\nTerraform resource.\n\nUnlike [google.container_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_ipv4_cidr` (`string`): The IP address range of the Kubernetes pods in this cluster in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8. This field will only work for routes-based clusters, where ip_allocation_policy is not defined. When `null`, the `cluster_ipv4_cidr` field will be omitted from the resulting object.\n  - `datapath_provider` (`string`): The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation. When `null`, the `datapath_provider` field will be omitted from the resulting object.\n  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node in this cluster. This doesn&#39;t work on &#34;routes-based&#34; clusters, clusters that don&#39;t have IP Aliasing enabled. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.\n  - `description` (`string`):  Description of the cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_autopilot` (`bool`): Enable Autopilot for this cluster. When `null`, the `enable_autopilot` field will be omitted from the resulting object.\n  - `enable_binary_authorization` (`bool`): Enable Binary Authorization for this cluster. If enabled, all container images will be validated by Google Binary Authorization. When `null`, the `enable_binary_authorization` field will be omitted from the resulting object.\n  - `enable_intranode_visibility` (`bool`): Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network. When `null`, the `enable_intranode_visibility` field will be omitted from the resulting object.\n  - `enable_kubernetes_alpha` (`bool`): Whether to enable Kubernetes Alpha features for this cluster. Note that when this option is enabled, the cluster cannot be upgraded and will be automatically deleted after 30 days. When `null`, the `enable_kubernetes_alpha` field will be omitted from the resulting object.\n  - `enable_l4_ilb_subsetting` (`bool`): Whether L4ILB Subsetting is enabled for this cluster. When `null`, the `enable_l4_ilb_subsetting` field will be omitted from the resulting object.\n  - `enable_legacy_abac` (`bool`): Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM. Defaults to false. When `null`, the `enable_legacy_abac` field will be omitted from the resulting object.\n  - `enable_shielded_nodes` (`bool`): Enable Shielded Nodes features on all nodes in this cluster. Defaults to true. When `null`, the `enable_shielded_nodes` field will be omitted from the resulting object.\n  - `enable_tpu` (`bool`): Whether to enable Cloud TPU resources in this cluster. When `null`, the `enable_tpu` field will be omitted from the resulting object.\n  - `initial_node_count` (`number`): The number of nodes to create in this cluster&#39;s default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Must be set if node_pool is not set. If you&#39;re using google_container_node_pool objects with no default node pool, you&#39;ll need to set this to a value of at least 1, alongside setting remove_default_node_pool to true. When `null`, the `initial_node_count` field will be omitted from the resulting object.\n  - `location` (`string`): The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. When `null`, the `location` field will be omitted from the resulting object.\n  - `logging_service` (`string`): The logging service that the cluster should write logs to. Available options include logging.googleapis.com(Legacy Stackdriver), logging.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Logging), and none. Defaults to logging.googleapis.com/kubernetes. When `null`, the `logging_service` field will be omitted from the resulting object.\n  - `min_master_version` (`string`): The minimum version of the master. GKE will auto-update the master to new versions, so this does not guarantee the current master version--use the read-only master_version field to obtain that. If unset, the cluster&#39;s version will be set by GKE to the version of the most recent official release (which is not necessarily the latest version). When `null`, the `min_master_version` field will be omitted from the resulting object.\n  - `monitoring_service` (`string`): The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com(Legacy Stackdriver), monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Monitoring), and none. Defaults to monitoring.googleapis.com/kubernetes. When `null`, the `monitoring_service` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the cluster, unique within the project and location.\n  - `network` (`string`): The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network. When `null`, the `network` field will be omitted from the resulting object.\n  - `networking_mode` (`string`): Determines whether alias IPs or routes will be used for pod IPs in the cluster. When `null`, the `networking_mode` field will be omitted from the resulting object.\n  - `node_locations` (`list`): The list of zones in which the cluster&#39;s nodes are located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If this is specified for a zonal cluster, omit the cluster&#39;s zone. When `null`, the `node_locations` field will be omitted from the resulting object.\n  - `node_version` (`string`): The Kubernetes version on the nodes. Must either be unset or set to the same value as min_master_version on create. Defaults to the default version set by GKE which is not necessarily the latest version. This only affects nodes in the default node pool. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. To update nodes in other node pools, use the version attribute on the node pool. When `null`, the `node_version` field will be omitted from the resulting object.\n  - `private_ipv6_google_access` (`string`): The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4). When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `remove_default_node_pool` (`bool`): If true, deletes the default node pool upon cluster creation. If you&#39;re using google_container_node_pool resources with no default node pool, this should be set to true, alongside setting initial_node_count to at least 1. When `null`, the `remove_default_node_pool` field will be omitted from the resulting object.\n  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the cluster. When `null`, the `resource_labels` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork in which the cluster&#39;s instances are launched. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `addons_config` (`list[obj]`): The configuration for addons supported by GKE. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.addons_config.new](#fn-addons_confignew) constructor.\n  - `authenticator_groups_config` (`list[obj]`): Configuration for the Google Groups for GKE feature. When `null`, the `authenticator_groups_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.authenticator_groups_config.new](#fn-authenticator_groups_confignew) constructor.\n  - `binary_authorization` (`list[obj]`): Configuration options for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.\n  - `cluster_autoscaling` (`list[obj]`): Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs of the cluster&#39;s workload. See the guide to using Node Auto-Provisioning for more details. When `null`, the `cluster_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cluster_autoscaling.new](#fn-cluster_autoscalingnew) constructor.\n  - `confidential_nodes` (`list[obj]`): Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can&#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. When `null`, the `confidential_nodes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.confidential_nodes.new](#fn-confidential_nodesnew) constructor.\n  - `cost_management_config` (`list[obj]`): Cost management configuration for the cluster. When `null`, the `cost_management_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.cost_management_config.new](#fn-cost_management_confignew) constructor.\n  - `database_encryption` (`list[obj]`): Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: &#34;ENCRYPTED&#34;; &#34;DECRYPTED&#34;. key_name is the name of a CloudKMS key. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.database_encryption.new](#fn-database_encryptionnew) constructor.\n  - `default_snat_status` (`list[obj]`): Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled. When `null`, the `default_snat_status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.default_snat_status.new](#fn-default_snat_statusnew) constructor.\n  - `dns_config` (`list[obj]`): Configuration for Cloud DNS for Kubernetes Engine. When `null`, the `dns_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.dns_config.new](#fn-dns_confignew) constructor.\n  - `gateway_api_config` (`list[obj]`): Configuration for GKE Gateway API controller. When `null`, the `gateway_api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.gateway_api_config.new](#fn-gateway_api_confignew) constructor.\n  - `ip_allocation_policy` (`list[obj]`): Configuration of cluster IP allocation for VPC-native clusters. Adding this block enables IP aliasing, making the cluster VPC-native instead of routes-based. When `null`, the `ip_allocation_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.ip_allocation_policy.new](#fn-ip_allocation_policynew) constructor.\n  - `logging_config` (`list[obj]`): Logging configuration for the cluster. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.logging_config.new](#fn-logging_confignew) constructor.\n  - `maintenance_policy` (`list[obj]`): The maintenance policy to use for the cluster. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `master_auth` (`list[obj]`): The authentication information for accessing the Kubernetes master. Some values in this block are only returned by the API if your service account has permission to get credentials for your GKE cluster. If you see an unexpected diff unsetting your client cert, ensure you have the container.clusters.getCredentials permission. When `null`, the `master_auth` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_auth.new](#fn-master_authnew) constructor.\n  - `master_authorized_networks_config` (`list[obj]`): The desired configuration options for master authorized networks. Omit the nested cidr_blocks attribute to disallow external access (except the cluster node IPs, which GKE automatically whitelists). When `null`, the `master_authorized_networks_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.master_authorized_networks_config.new](#fn-master_authorized_networks_confignew) constructor.\n  - `mesh_certificates` (`list[obj]`): If set, and enable_certificates=true, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster. When `null`, the `mesh_certificates` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.mesh_certificates.new](#fn-mesh_certificatesnew) constructor.\n  - `monitoring_config` (`list[obj]`): Monitoring configuration for the cluster. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.\n  - `network_policy` (`list[obj]`): Configuration options for the NetworkPolicy feature. When `null`, the `network_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.network_policy.new](#fn-network_policynew) constructor.\n  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.new](#fn-node_confignew) constructor.\n  - `node_pool` (`list[obj]`): List of node pools associated with this cluster. See google_container_node_pool for schema. Warning: node pools defined inside a cluster can&#39;t be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability to say &#34;these are the only node pools associated with this cluster&#34;, use the google_container_node_pool resource instead of this property. When `null`, the `node_pool` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.new](#fn-node_poolnew) constructor.\n  - `node_pool_defaults` (`list[obj]`): The default nodel pool settings for the entire cluster. When `null`, the `node_pool_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool_defaults.new](#fn-node_pool_defaultsnew) constructor.\n  - `notification_config` (`list[obj]`): The notification config for sending cluster upgrade notifications When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.new](#fn-notification_confignew) constructor.\n  - `private_cluster_config` (`list[obj]`): Configuration for private clusters, clusters with private nodes. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.\n  - `release_channel` (`list[obj]`): Configuration options for the Release channel feature, which provide more control over automatic upgrades of your GKE clusters. Note that removing this field from your config will not unenroll it. Instead, use the &#34;UNSPECIFIED&#34; channel. When `null`, the `release_channel` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.release_channel.new](#fn-release_channelnew) constructor.\n  - `resource_usage_export_config` (`list[obj]`): Configuration for the ResourceUsageExportConfig feature. When `null`, the `resource_usage_export_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.resource_usage_export_config.new](#fn-resource_usage_export_confignew) constructor.\n  - `service_external_ips_config` (`list[obj]`): If set, and enabled=true, services with external ips field will not be blocked When `null`, the `service_external_ips_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.service_external_ips_config.new](#fn-service_external_ips_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vertical_pod_autoscaling` (`list[obj]`): Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it. When `null`, the `vertical_pod_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.vertical_pod_autoscaling.new](#fn-vertical_pod_autoscalingnew) constructor.\n  - `workload_identity_config` (`list[obj]`): Configuration for the use of Kubernetes Service Accounts in GCP IAM policies. When `null`, the `workload_identity_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.workload_identity_config.new](#fn-workload_identity_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    addons_config=null,
    authenticator_groups_config=null,
    binary_authorization=null,
    cluster_autoscaling=null,
    cluster_ipv4_cidr=null,
    confidential_nodes=null,
    cost_management_config=null,
    database_encryption=null,
    datapath_provider=null,
    default_max_pods_per_node=null,
    default_snat_status=null,
    description=null,
    dns_config=null,
    enable_autopilot=null,
    enable_binary_authorization=null,
    enable_intranode_visibility=null,
    enable_kubernetes_alpha=null,
    enable_l4_ilb_subsetting=null,
    enable_legacy_abac=null,
    enable_shielded_nodes=null,
    enable_tpu=null,
    gateway_api_config=null,
    initial_node_count=null,
    ip_allocation_policy=null,
    location=null,
    logging_config=null,
    logging_service=null,
    maintenance_policy=null,
    master_auth=null,
    master_authorized_networks_config=null,
    mesh_certificates=null,
    min_master_version=null,
    monitoring_config=null,
    monitoring_service=null,
    network=null,
    network_policy=null,
    networking_mode=null,
    node_config=null,
    node_locations=null,
    node_pool=null,
    node_pool_defaults=null,
    node_version=null,
    notification_config=null,
    private_cluster_config=null,
    private_ipv6_google_access=null,
    project=null,
    release_channel=null,
    remove_default_node_pool=null,
    resource_labels=null,
    resource_usage_export_config=null,
    service_external_ips_config=null,
    subnetwork=null,
    timeouts=null,
    vertical_pod_autoscaling=null,
    workload_identity_config=null
  ):: std.prune(a={
    addons_config: addons_config,
    authenticator_groups_config: authenticator_groups_config,
    binary_authorization: binary_authorization,
    cluster_autoscaling: cluster_autoscaling,
    cluster_ipv4_cidr: cluster_ipv4_cidr,
    confidential_nodes: confidential_nodes,
    cost_management_config: cost_management_config,
    database_encryption: database_encryption,
    datapath_provider: datapath_provider,
    default_max_pods_per_node: default_max_pods_per_node,
    default_snat_status: default_snat_status,
    description: description,
    dns_config: dns_config,
    enable_autopilot: enable_autopilot,
    enable_binary_authorization: enable_binary_authorization,
    enable_intranode_visibility: enable_intranode_visibility,
    enable_kubernetes_alpha: enable_kubernetes_alpha,
    enable_l4_ilb_subsetting: enable_l4_ilb_subsetting,
    enable_legacy_abac: enable_legacy_abac,
    enable_shielded_nodes: enable_shielded_nodes,
    enable_tpu: enable_tpu,
    gateway_api_config: gateway_api_config,
    initial_node_count: initial_node_count,
    ip_allocation_policy: ip_allocation_policy,
    location: location,
    logging_config: logging_config,
    logging_service: logging_service,
    maintenance_policy: maintenance_policy,
    master_auth: master_auth,
    master_authorized_networks_config: master_authorized_networks_config,
    mesh_certificates: mesh_certificates,
    min_master_version: min_master_version,
    monitoring_config: monitoring_config,
    monitoring_service: monitoring_service,
    name: name,
    network: network,
    network_policy: network_policy,
    networking_mode: networking_mode,
    node_config: node_config,
    node_locations: node_locations,
    node_pool: node_pool,
    node_pool_defaults: node_pool_defaults,
    node_version: node_version,
    notification_config: notification_config,
    private_cluster_config: private_cluster_config,
    private_ipv6_google_access: private_ipv6_google_access,
    project: project,
    release_channel: release_channel,
    remove_default_node_pool: remove_default_node_pool,
    resource_labels: resource_labels,
    resource_usage_export_config: resource_usage_export_config,
    service_external_ips_config: service_external_ips_config,
    subnetwork: subnetwork,
    timeouts: timeouts,
    vertical_pod_autoscaling: vertical_pod_autoscaling,
    workload_identity_config: workload_identity_config,
  }),
  node_config:: {
    advanced_machine_features:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.\n\n**Returns**:\n  - An attribute object that represents the `advanced_machine_features` sub block.\n', args=[]),
      new(
        threads_per_core
      ):: std.prune(a={
        threads_per_core: threads_per_core,
      }),
    },
    gcfs_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.gcfs_config.new` constructs a new object with attributes and blocks configured for the `gcfs_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not GCFS is enabled\n\n**Returns**:\n  - An attribute object that represents the `gcfs_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gvnic:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.gvnic.new` constructs a new object with attributes and blocks configured for the `gvnic`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not gvnic is enabled\n\n**Returns**:\n  - An attribute object that represents the `gvnic` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    kubelet_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.kubelet_config.new` constructs a new object with attributes and blocks configured for the `kubelet_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_cfs_quota` (`bool`): Enable CPU CFS quota enforcement for containers that specify CPU limits. When `null`, the `cpu_cfs_quota` field will be omitted from the resulting object.\n  - `cpu_cfs_quota_period` (`string`): Set the CPU CFS quota period value &#39;cpu.cfs_period_us&#39;. When `null`, the `cpu_cfs_quota_period` field will be omitted from the resulting object.\n  - `cpu_manager_policy` (`string`): Control the CPU management policy on the node.\n  - `pod_pids_limit` (`number`): Controls the maximum number of processes allowed to run in a pod. When `null`, the `pod_pids_limit` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kubelet_config` sub block.\n', args=[]),
      new(
        cpu_manager_policy,
        cpu_cfs_quota=null,
        cpu_cfs_quota_period=null,
        pod_pids_limit=null
      ):: std.prune(a={
        cpu_cfs_quota: cpu_cfs_quota,
        cpu_cfs_quota_period: cpu_cfs_quota_period,
        cpu_manager_policy: cpu_manager_policy,
        pod_pids_limit: pod_pids_limit,
      }),
    },
    linux_node_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.linux_node_config.new` constructs a new object with attributes and blocks configured for the `linux_node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sysctls` (`obj`): The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.\n\n**Returns**:\n  - An attribute object that represents the `linux_node_config` sub block.\n', args=[]),
      new(
        sysctls
      ):: std.prune(a={
        sysctls: sysctls,
      }),
    },
    local_nvme_ssd_block_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.local_nvme_ssd_block_config.new` constructs a new object with attributes and blocks configured for the `local_nvme_ssd_block_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_ssd_count` (`number`): Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.\n\n**Returns**:\n  - An attribute object that represents the `local_nvme_ssd_block_config` sub block.\n', args=[]),
      new(
        local_ssd_count
      ):: std.prune(a={
        local_ssd_count: local_ssd_count,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.\n  - `image_type` (`string`): The image type to use for this node. Note that for a given image type, the latest version of it will be used. When `null`, the `image_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. When `null`, the `labels` field will be omitted from the resulting object.\n  - `local_ssd_count` (`number`): The number of local SSD disks to be attached to the node. When `null`, the `local_ssd_count` field will be omitted from the resulting object.\n  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Google Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `metadata` (`obj`): The metadata key/value pairs assigned to instances in the cluster. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `node_group` (`string`): Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. When `null`, the `node_group` field will be omitted from the resulting object.\n  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs. When `null`, the `oauth_scopes` field will be omitted from the resulting object.\n  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the node pool. When `null`, the `resource_labels` field will be omitted from the resulting object.\n  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `spot` (`bool`): Whether the nodes are created as spot VM instances. When `null`, the `spot` field will be omitted from the resulting object.\n  - `tags` (`list`): The list of instance tags applied to all nodes. When `null`, the `tags` field will be omitted from the resulting object.\n  - `taint` (`list`): List of Kubernetes taints to be applied to each node. When `null`, the `taint` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Specifies options for controlling advanced machine features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.advanced_machine_features.new](#fn-node_configadvanced_machine_featuresnew) constructor.\n  - `gcfs_config` (`list[obj]`): GCFS configuration for this node. When `null`, the `gcfs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.gcfs_config.new](#fn-node_configgcfs_confignew) constructor.\n  - `gvnic` (`list[obj]`): Enable or disable gvnic in the node pool. When `null`, the `gvnic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.gvnic.new](#fn-node_configgvnicnew) constructor.\n  - `kubelet_config` (`list[obj]`): Node kubelet configs. When `null`, the `kubelet_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.kubelet_config.new](#fn-node_configkubelet_confignew) constructor.\n  - `linux_node_config` (`list[obj]`): Parameters that can be configured on Linux nodes. When `null`, the `linux_node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.linux_node_config.new](#fn-node_configlinux_node_confignew) constructor.\n  - `local_nvme_ssd_block_config` (`list[obj]`): Parameters for raw-block local NVMe SSDs. When `null`, the `local_nvme_ssd_block_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.local_nvme_ssd_block_config.new](#fn-node_configlocal_nvme_ssd_block_confignew) constructor.\n  - `reservation_affinity` (`list[obj]`): The reservation affinity configuration for the node pool. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.reservation_affinity.new](#fn-node_configreservation_affinitynew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.shielded_instance_config.new](#fn-node_configshielded_instance_confignew) constructor.\n  - `workload_metadata_config` (`list[obj]`): The workload metadata configuration for this node. When `null`, the `workload_metadata_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_config.workload_metadata_config.new](#fn-node_configworkload_metadata_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      advanced_machine_features=null,
      boot_disk_kms_key=null,
      disk_size_gb=null,
      disk_type=null,
      gcfs_config=null,
      guest_accelerator=null,
      gvnic=null,
      image_type=null,
      kubelet_config=null,
      labels=null,
      linux_node_config=null,
      local_nvme_ssd_block_config=null,
      local_ssd_count=null,
      logging_variant=null,
      machine_type=null,
      metadata=null,
      min_cpu_platform=null,
      node_group=null,
      oauth_scopes=null,
      preemptible=null,
      reservation_affinity=null,
      resource_labels=null,
      service_account=null,
      shielded_instance_config=null,
      spot=null,
      tags=null,
      taint=null,
      workload_metadata_config=null
    ):: std.prune(a={
      advanced_machine_features: advanced_machine_features,
      boot_disk_kms_key: boot_disk_kms_key,
      disk_size_gb: disk_size_gb,
      disk_type: disk_type,
      gcfs_config: gcfs_config,
      guest_accelerator: guest_accelerator,
      gvnic: gvnic,
      image_type: image_type,
      kubelet_config: kubelet_config,
      labels: labels,
      linux_node_config: linux_node_config,
      local_nvme_ssd_block_config: local_nvme_ssd_block_config,
      local_ssd_count: local_ssd_count,
      logging_variant: logging_variant,
      machine_type: machine_type,
      metadata: metadata,
      min_cpu_platform: min_cpu_platform,
      node_group: node_group,
      oauth_scopes: oauth_scopes,
      preemptible: preemptible,
      reservation_affinity: reservation_affinity,
      resource_labels: resource_labels,
      service_account: service_account,
      shielded_instance_config: shielded_instance_config,
      spot: spot,
      tags: tags,
      taint: taint,
      workload_metadata_config: workload_metadata_config,
    }),
    reservation_affinity:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consume_reservation_type` (`string`): Corresponds to the type of reservation consumption.\n  - `key` (`string`): The label key of a reservation resource. When `null`, the `key` field will be omitted from the resulting object.\n  - `values` (`list`): The label values of the reservation resource. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
      new(
        consume_reservation_type,
        key=null,
        values=null
      ):: std.prune(a={
        consume_reservation_type: consume_reservation_type,
        key: key,
        values: values,
      }),
    },
    shielded_instance_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
      new(
        enable_integrity_monitoring=null,
        enable_secure_boot=null
      ):: std.prune(a={
        enable_integrity_monitoring: enable_integrity_monitoring,
        enable_secure_boot: enable_secure_boot,
      }),
    },
    workload_metadata_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_config.workload_metadata_config.new` constructs a new object with attributes and blocks configured for the `workload_metadata_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Mode is the configuration for how to expose metadata to workloads running on the node.\n\n**Returns**:\n  - An attribute object that represents the `workload_metadata_config` sub block.\n', args=[]),
      new(
        mode
      ):: std.prune(a={
        mode: mode,
      }),
    },
  },
  node_pool:: {
    autoscaling:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location_policy` (`string`): Location policy specifies the algorithm used when scaling-up the node pool. &#34;BALANCED&#34; - Is a best effort policy that aims to balance the sizes of available zones. &#34;ANY&#34; - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs. When `null`, the `location_policy` field will be omitted from the resulting object.\n  - `max_node_count` (`number`): Maximum number of nodes per zone in the node pool. Must be &gt;= min_node_count. Cannot be used with total limits. When `null`, the `max_node_count` field will be omitted from the resulting object.\n  - `min_node_count` (`number`): Minimum number of nodes per zone in the node pool. Must be &gt;=0 and &lt;= max_node_count. Cannot be used with total limits. When `null`, the `min_node_count` field will be omitted from the resulting object.\n  - `total_max_node_count` (`number`): Maximum number of all nodes in the node pool. Must be &gt;= total_min_node_count. Cannot be used with per zone limits. When `null`, the `total_max_node_count` field will be omitted from the resulting object.\n  - `total_min_node_count` (`number`): Minimum number of all nodes in the node pool. Must be &gt;=0 and &lt;= total_max_node_count. Cannot be used with per zone limits. When `null`, the `total_min_node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling` sub block.\n', args=[]),
      new(
        location_policy=null,
        max_node_count=null,
        min_node_count=null,
        total_max_node_count=null,
        total_min_node_count=null
      ):: std.prune(a={
        location_policy: location_policy,
        max_node_count: max_node_count,
        min_node_count: min_node_count,
        total_max_node_count: total_max_node_count,
        total_min_node_count: total_min_node_count,
      }),
    },
    management:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_repair` (`bool`): Whether the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.\n  - `auto_upgrade` (`bool`): Whether the nodes will be automatically upgraded. When `null`, the `auto_upgrade` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `management` sub block.\n', args=[]),
      new(
        auto_repair=null,
        auto_upgrade=null
      ):: std.prune(a={
        auto_repair: auto_repair,
        auto_upgrade: auto_upgrade,
      }),
    },
    network_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_pool.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create_pod_range` (`bool`): Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. When `null`, the `create_pod_range` field will be omitted from the resulting object.\n  - `enable_private_nodes` (`bool`): Whether nodes have internal IP addresses only. When `null`, the `enable_private_nodes` field will be omitted from the resulting object.\n  - `pod_ipv4_cidr_block` (`string`): The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. When `null`, the `pod_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `pod_range` (`string`): The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. When `null`, the `pod_range` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
      new(
        create_pod_range=null,
        enable_private_nodes=null,
        pod_ipv4_cidr_block=null,
        pod_range=null
      ):: std.prune(a={
        create_pod_range: create_pod_range,
        enable_private_nodes: enable_private_nodes,
        pod_ipv4_cidr_block: pod_ipv4_cidr_block,
        pod_range: pod_range,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.node_pool.new` constructs a new object with attributes and blocks configured for the `node_pool`\nTerraform sub block.\n\n\n\n**Args**:\n  - `initial_node_count` (`number`): The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. When `null`, the `initial_node_count` field will be omitted from the resulting object.\n  - `max_pods_per_node` (`number`): The maximum number of pods per node in this node pool. Note that this does not work on node pools which are &#34;route-based&#34; - that is, node pools belonging to clusters that do not have IP Aliasing enabled. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the node pool. If left blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. When `null`, the `node_count` field will be omitted from the resulting object.\n  - `node_locations` (`list`): The list of zones in which the node pool&#39;s nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. When `null`, the `node_locations` field will be omitted from the resulting object.\n  - `version` (`string`): The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. When `null`, the `version` field will be omitted from the resulting object.\n  - `autoscaling` (`list[obj]`): Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.autoscaling.new](#fn-node_poolautoscalingnew) constructor.\n  - `management` (`list[obj]`): Node management configuration, wherein auto-repair and auto-upgrade is configured. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.management.new](#fn-node_poolmanagementnew) constructor.\n  - `network_config` (`list[obj]`): Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.network_config.new](#fn-node_poolnetwork_confignew) constructor.\n  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.new](#fn-node_poolnode_confignew) constructor.\n  - `placement_policy` (`list[obj]`): Specifies the node placement policy When `null`, the `placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.placement_policy.new](#fn-node_poolplacement_policynew) constructor.\n  - `upgrade_settings` (`list[obj]`): Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.upgrade_settings.new](#fn-node_poolupgrade_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool` sub block.\n', args=[]),
    new(
      autoscaling=null,
      initial_node_count=null,
      management=null,
      max_pods_per_node=null,
      name=null,
      name_prefix=null,
      network_config=null,
      node_config=null,
      node_count=null,
      node_locations=null,
      placement_policy=null,
      upgrade_settings=null,
      version=null
    ):: std.prune(a={
      autoscaling: autoscaling,
      initial_node_count: initial_node_count,
      management: management,
      max_pods_per_node: max_pods_per_node,
      name: name,
      name_prefix: name_prefix,
      network_config: network_config,
      node_config: node_config,
      node_count: node_count,
      node_locations: node_locations,
      placement_policy: placement_policy,
      upgrade_settings: upgrade_settings,
      version: version,
    }),
    node_config:: {
      advanced_machine_features:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.\n\n**Returns**:\n  - An attribute object that represents the `advanced_machine_features` sub block.\n', args=[]),
        new(
          threads_per_core
        ):: std.prune(a={
          threads_per_core: threads_per_core,
        }),
      },
      gcfs_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.gcfs_config.new` constructs a new object with attributes and blocks configured for the `gcfs_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not GCFS is enabled\n\n**Returns**:\n  - An attribute object that represents the `gcfs_config` sub block.\n', args=[]),
        new(
          enabled
        ):: std.prune(a={
          enabled: enabled,
        }),
      },
      gvnic:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.gvnic.new` constructs a new object with attributes and blocks configured for the `gvnic`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not gvnic is enabled\n\n**Returns**:\n  - An attribute object that represents the `gvnic` sub block.\n', args=[]),
        new(
          enabled
        ):: std.prune(a={
          enabled: enabled,
        }),
      },
      kubelet_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.kubelet_config.new` constructs a new object with attributes and blocks configured for the `kubelet_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_cfs_quota` (`bool`): Enable CPU CFS quota enforcement for containers that specify CPU limits. When `null`, the `cpu_cfs_quota` field will be omitted from the resulting object.\n  - `cpu_cfs_quota_period` (`string`): Set the CPU CFS quota period value &#39;cpu.cfs_period_us&#39;. When `null`, the `cpu_cfs_quota_period` field will be omitted from the resulting object.\n  - `cpu_manager_policy` (`string`): Control the CPU management policy on the node.\n  - `pod_pids_limit` (`number`): Controls the maximum number of processes allowed to run in a pod. When `null`, the `pod_pids_limit` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kubelet_config` sub block.\n', args=[]),
        new(
          cpu_manager_policy,
          cpu_cfs_quota=null,
          cpu_cfs_quota_period=null,
          pod_pids_limit=null
        ):: std.prune(a={
          cpu_cfs_quota: cpu_cfs_quota,
          cpu_cfs_quota_period: cpu_cfs_quota_period,
          cpu_manager_policy: cpu_manager_policy,
          pod_pids_limit: pod_pids_limit,
        }),
      },
      linux_node_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.linux_node_config.new` constructs a new object with attributes and blocks configured for the `linux_node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sysctls` (`obj`): The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.\n\n**Returns**:\n  - An attribute object that represents the `linux_node_config` sub block.\n', args=[]),
        new(
          sysctls
        ):: std.prune(a={
          sysctls: sysctls,
        }),
      },
      local_nvme_ssd_block_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.local_nvme_ssd_block_config.new` constructs a new object with attributes and blocks configured for the `local_nvme_ssd_block_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_ssd_count` (`number`): Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.\n\n**Returns**:\n  - An attribute object that represents the `local_nvme_ssd_block_config` sub block.\n', args=[]),
        new(
          local_ssd_count
        ):: std.prune(a={
          local_ssd_count: local_ssd_count,
        }),
      },
      '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.\n  - `image_type` (`string`): The image type to use for this node. Note that for a given image type, the latest version of it will be used. When `null`, the `image_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. When `null`, the `labels` field will be omitted from the resulting object.\n  - `local_ssd_count` (`number`): The number of local SSD disks to be attached to the node. When `null`, the `local_ssd_count` field will be omitted from the resulting object.\n  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Google Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `metadata` (`obj`): The metadata key/value pairs assigned to instances in the cluster. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `node_group` (`string`): Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. When `null`, the `node_group` field will be omitted from the resulting object.\n  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs. When `null`, the `oauth_scopes` field will be omitted from the resulting object.\n  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the node pool. When `null`, the `resource_labels` field will be omitted from the resulting object.\n  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `spot` (`bool`): Whether the nodes are created as spot VM instances. When `null`, the `spot` field will be omitted from the resulting object.\n  - `tags` (`list`): The list of instance tags applied to all nodes. When `null`, the `tags` field will be omitted from the resulting object.\n  - `taint` (`list`): List of Kubernetes taints to be applied to each node. When `null`, the `taint` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Specifies options for controlling advanced machine features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.advanced_machine_features.new](#fn-node_poolnode_pooladvanced_machine_featuresnew) constructor.\n  - `gcfs_config` (`list[obj]`): GCFS configuration for this node. When `null`, the `gcfs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.gcfs_config.new](#fn-node_poolnode_poolgcfs_confignew) constructor.\n  - `gvnic` (`list[obj]`): Enable or disable gvnic in the node pool. When `null`, the `gvnic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.gvnic.new](#fn-node_poolnode_poolgvnicnew) constructor.\n  - `kubelet_config` (`list[obj]`): Node kubelet configs. When `null`, the `kubelet_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.kubelet_config.new](#fn-node_poolnode_poolkubelet_confignew) constructor.\n  - `linux_node_config` (`list[obj]`): Parameters that can be configured on Linux nodes. When `null`, the `linux_node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.linux_node_config.new](#fn-node_poolnode_poollinux_node_confignew) constructor.\n  - `local_nvme_ssd_block_config` (`list[obj]`): Parameters for raw-block local NVMe SSDs. When `null`, the `local_nvme_ssd_block_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.local_nvme_ssd_block_config.new](#fn-node_poolnode_poollocal_nvme_ssd_block_confignew) constructor.\n  - `reservation_affinity` (`list[obj]`): The reservation affinity configuration for the node pool. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.reservation_affinity.new](#fn-node_poolnode_poolreservation_affinitynew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.shielded_instance_config.new](#fn-node_poolnode_poolshielded_instance_confignew) constructor.\n  - `workload_metadata_config` (`list[obj]`): The workload metadata configuration for this node. When `null`, the `workload_metadata_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.node_config.workload_metadata_config.new](#fn-node_poolnode_poolworkload_metadata_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
      new(
        advanced_machine_features=null,
        boot_disk_kms_key=null,
        disk_size_gb=null,
        disk_type=null,
        gcfs_config=null,
        guest_accelerator=null,
        gvnic=null,
        image_type=null,
        kubelet_config=null,
        labels=null,
        linux_node_config=null,
        local_nvme_ssd_block_config=null,
        local_ssd_count=null,
        logging_variant=null,
        machine_type=null,
        metadata=null,
        min_cpu_platform=null,
        node_group=null,
        oauth_scopes=null,
        preemptible=null,
        reservation_affinity=null,
        resource_labels=null,
        service_account=null,
        shielded_instance_config=null,
        spot=null,
        tags=null,
        taint=null,
        workload_metadata_config=null
      ):: std.prune(a={
        advanced_machine_features: advanced_machine_features,
        boot_disk_kms_key: boot_disk_kms_key,
        disk_size_gb: disk_size_gb,
        disk_type: disk_type,
        gcfs_config: gcfs_config,
        guest_accelerator: guest_accelerator,
        gvnic: gvnic,
        image_type: image_type,
        kubelet_config: kubelet_config,
        labels: labels,
        linux_node_config: linux_node_config,
        local_nvme_ssd_block_config: local_nvme_ssd_block_config,
        local_ssd_count: local_ssd_count,
        logging_variant: logging_variant,
        machine_type: machine_type,
        metadata: metadata,
        min_cpu_platform: min_cpu_platform,
        node_group: node_group,
        oauth_scopes: oauth_scopes,
        preemptible: preemptible,
        reservation_affinity: reservation_affinity,
        resource_labels: resource_labels,
        service_account: service_account,
        shielded_instance_config: shielded_instance_config,
        spot: spot,
        tags: tags,
        taint: taint,
        workload_metadata_config: workload_metadata_config,
      }),
      reservation_affinity:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consume_reservation_type` (`string`): Corresponds to the type of reservation consumption.\n  - `key` (`string`): The label key of a reservation resource. When `null`, the `key` field will be omitted from the resulting object.\n  - `values` (`list`): The label values of the reservation resource. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
        new(
          consume_reservation_type,
          key=null,
          values=null
        ):: std.prune(a={
          consume_reservation_type: consume_reservation_type,
          key: key,
          values: values,
        }),
      },
      shielded_instance_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
        }),
      },
      workload_metadata_config:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.node_config.workload_metadata_config.new` constructs a new object with attributes and blocks configured for the `workload_metadata_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Mode is the configuration for how to expose metadata to workloads running on the node.\n\n**Returns**:\n  - An attribute object that represents the `workload_metadata_config` sub block.\n', args=[]),
        new(
          mode
        ):: std.prune(a={
          mode: mode,
        }),
      },
    },
    placement_policy:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_pool.placement_policy.new` constructs a new object with attributes and blocks configured for the `placement_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): Type defines the type of placement policy\n\n**Returns**:\n  - An attribute object that represents the `placement_policy` sub block.\n', args=[]),
      new(
        type
      ):: std.prune(a={
        type: type,
      }),
    },
    upgrade_settings:: {
      blue_green_settings:: {
        '#new':: d.fn(help='\n`google.container_cluster.node_pool.upgrade_settings.blue_green_settings.new` constructs a new object with attributes and blocks configured for the `blue_green_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool_soak_duration` (`string`): Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. When `null`, the `node_pool_soak_duration` field will be omitted from the resulting object.\n  - `standard_rollout_policy` (`list[obj]`): Standard rollout policy is the default policy for blue-green. When `null`, the `standard_rollout_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new](#fn-node_poolnode_poolupgrade_settingsstandard_rollout_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `blue_green_settings` sub block.\n', args=[]),
        new(
          node_pool_soak_duration=null,
          standard_rollout_policy=null
        ):: std.prune(a={
          node_pool_soak_duration: node_pool_soak_duration,
          standard_rollout_policy: standard_rollout_policy,
        }),
        standard_rollout_policy:: {
          '#new':: d.fn(help='\n`google.container_cluster.node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new` constructs a new object with attributes and blocks configured for the `standard_rollout_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `batch_node_count` (`number`): Number of blue nodes to drain in a batch. When `null`, the `batch_node_count` field will be omitted from the resulting object.\n  - `batch_percentage` (`number`): Percentage of the blue pool nodes to drain in a batch. When `null`, the `batch_percentage` field will be omitted from the resulting object.\n  - `batch_soak_duration` (`string`): Soak time after each batch gets drained. When `null`, the `batch_soak_duration` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `standard_rollout_policy` sub block.\n', args=[]),
          new(
            batch_node_count=null,
            batch_percentage=null,
            batch_soak_duration=null
          ):: std.prune(a={
            batch_node_count: batch_node_count,
            batch_percentage: batch_percentage,
            batch_soak_duration: batch_soak_duration,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.container_cluster.node_pool.upgrade_settings.new` constructs a new object with attributes and blocks configured for the `upgrade_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_surge` (`number`): The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. When `null`, the `max_surge` field will be omitted from the resulting object.\n  - `max_unavailable` (`number`): The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. When `null`, the `max_unavailable` field will be omitted from the resulting object.\n  - `strategy` (`string`): Update strategy for the given nodepool. When `null`, the `strategy` field will be omitted from the resulting object.\n  - `blue_green_settings` (`list[obj]`): Settings for BlueGreen node pool upgrade. When `null`, the `blue_green_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool.upgrade_settings.blue_green_settings.new](#fn-node_poolnode_poolblue_green_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `upgrade_settings` sub block.\n', args=[]),
      new(
        blue_green_settings=null,
        max_surge=null,
        max_unavailable=null,
        strategy=null
      ):: std.prune(a={
        blue_green_settings: blue_green_settings,
        max_surge: max_surge,
        max_unavailable: max_unavailable,
        strategy: strategy,
      }),
    },
  },
  node_pool_defaults:: {
    '#new':: d.fn(help='\n`google.container_cluster.node_pool_defaults.new` constructs a new object with attributes and blocks configured for the `node_pool_defaults`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_config_defaults` (`list[obj]`): Subset of NodeConfig message that has defaults. When `null`, the `node_config_defaults` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.node_pool_defaults.node_config_defaults.new](#fn-node_pool_defaultsnode_config_defaultsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_defaults` sub block.\n', args=[]),
    new(
      node_config_defaults=null
    ):: std.prune(a={
      node_config_defaults: node_config_defaults,
    }),
    node_config_defaults:: {
      '#new':: d.fn(help='\n`google.container_cluster.node_pool_defaults.node_config_defaults.new` constructs a new object with attributes and blocks configured for the `node_config_defaults`\nTerraform sub block.\n\n\n\n**Args**:\n  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_config_defaults` sub block.\n', args=[]),
      new(
        logging_variant=null
      ):: std.prune(a={
        logging_variant: logging_variant,
      }),
    },
  },
  notification_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub` (`list[obj]`): Notification config for Cloud Pub/Sub When `null`, the `pubsub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.pubsub.new](#fn-notification_configpubsubnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `notification_config` sub block.\n', args=[]),
    new(
      pubsub=null
    ):: std.prune(a={
      pubsub: pubsub,
    }),
    pubsub:: {
      filter:: {
        '#new':: d.fn(help='\n`google.container_cluster.notification_config.pubsub.filter.new` constructs a new object with attributes and blocks configured for the `filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event_type` (`list`): Can be used to filter what notifications are sent. Valid values include include UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT and SECURITY_BULLETIN_EVENT\n\n**Returns**:\n  - An attribute object that represents the `filter` sub block.\n', args=[]),
        new(
          event_type
        ):: std.prune(a={
          event_type: event_type,
        }),
      },
      '#new':: d.fn(help='\n`google.container_cluster.notification_config.pubsub.new` constructs a new object with attributes and blocks configured for the `pubsub`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not the notification config is enabled\n  - `topic` (`string`): The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: projects/{project}/topics/{topic}. When `null`, the `topic` field will be omitted from the resulting object.\n  - `filter` (`list[obj]`): Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.notification_config.pubsub.filter.new](#fn-notification_confignotification_configfilternew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pubsub` sub block.\n', args=[]),
      new(
        enabled,
        filter=null,
        topic=null
      ):: std.prune(a={
        enabled: enabled,
        filter: filter,
        topic: topic,
      }),
    },
  },
  private_cluster_config:: {
    master_global_access_config:: {
      '#new':: d.fn(help='\n`google.container_cluster.private_cluster_config.master_global_access_config.new` constructs a new object with attributes and blocks configured for the `master_global_access_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether the cluster master is accessible globally or not.\n\n**Returns**:\n  - An attribute object that represents the `master_global_access_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.private_cluster_config.new` constructs a new object with attributes and blocks configured for the `private_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_private_endpoint` (`bool`): When true, the cluster&#39;s private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. When false, either endpoint can be used. This field only applies to private clusters, when enable_private_nodes is true. When `null`, the `enable_private_endpoint` field will be omitted from the resulting object.\n  - `enable_private_nodes` (`bool`): Enables the private cluster feature, creating a private endpoint on the cluster. In a private cluster, nodes only have RFC 1918 private addresses and communicate with the master&#39;s private endpoint via private networking. When `null`, the `enable_private_nodes` field will be omitted from the resulting object.\n  - `master_ipv4_cidr_block` (`string`): The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning private IP addresses to the cluster master(s) and the ILB VIP. This range must not overlap with any other ranges in use within the cluster&#39;s network, and it must be a /28 subnet. See Private Cluster Limitations for more details. This field only applies to private clusters, when enable_private_nodes is true. When `null`, the `master_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `private_endpoint_subnetwork` (`string`): Subnetwork in cluster&#39;s network where master&#39;s endpoint will be provisioned. When `null`, the `private_endpoint_subnetwork` field will be omitted from the resulting object.\n  - `master_global_access_config` (`list[obj]`): Controls cluster master global access settings. When `null`, the `master_global_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.private_cluster_config.master_global_access_config.new](#fn-private_cluster_configmaster_global_access_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `private_cluster_config` sub block.\n', args=[]),
    new(
      enable_private_endpoint=null,
      enable_private_nodes=null,
      master_global_access_config=null,
      master_ipv4_cidr_block=null,
      private_endpoint_subnetwork=null
    ):: std.prune(a={
      enable_private_endpoint: enable_private_endpoint,
      enable_private_nodes: enable_private_nodes,
      master_global_access_config: master_global_access_config,
      master_ipv4_cidr_block: master_ipv4_cidr_block,
      private_endpoint_subnetwork: private_endpoint_subnetwork,
    }),
  },
  release_channel:: {
    '#new':: d.fn(help='\n`google.container_cluster.release_channel.new` constructs a new object with attributes and blocks configured for the `release_channel`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The selected release channel. Accepted values are:\n* UNSPECIFIED: Not set.\n* RAPID: Weekly upgrade cadence; Early testers and developers who requires new features.\n* REGULAR: Multiple per month upgrade cadence; Production users who need features not yet offered in the Stable channel.\n* STABLE: Every few months upgrade cadence; Production users who need stability above all else, and for whom frequent upgrades are too risky.\n\n**Returns**:\n  - An attribute object that represents the `release_channel` sub block.\n', args=[]),
    new(
      channel
    ):: std.prune(a={
      channel: channel,
    }),
  },
  resource_usage_export_config:: {
    bigquery_destination:: {
      '#new':: d.fn(help='\n`google.container_cluster.resource_usage_export_config.bigquery_destination.new` constructs a new object with attributes and blocks configured for the `bigquery_destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of a BigQuery Dataset.\n\n**Returns**:\n  - An attribute object that represents the `bigquery_destination` sub block.\n', args=[]),
      new(
        dataset_id
      ):: std.prune(a={
        dataset_id: dataset_id,
      }),
    },
    '#new':: d.fn(help='\n`google.container_cluster.resource_usage_export_config.new` constructs a new object with attributes and blocks configured for the `resource_usage_export_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_network_egress_metering` (`bool`): Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic. When `null`, the `enable_network_egress_metering` field will be omitted from the resulting object.\n  - `enable_resource_consumption_metering` (`bool`): Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export. Defaults to true. When `null`, the `enable_resource_consumption_metering` field will be omitted from the resulting object.\n  - `bigquery_destination` (`list[obj]`): Parameters for using BigQuery as the destination of resource usage export. When `null`, the `bigquery_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_cluster.resource_usage_export_config.bigquery_destination.new](#fn-resource_usage_export_configbigquery_destinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `resource_usage_export_config` sub block.\n', args=[]),
    new(
      bigquery_destination=null,
      enable_network_egress_metering=null,
      enable_resource_consumption_metering=null
    ):: std.prune(a={
      bigquery_destination: bigquery_destination,
      enable_network_egress_metering: enable_network_egress_metering,
      enable_resource_consumption_metering: enable_resource_consumption_metering,
    }),
  },
  service_external_ips_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.service_external_ips_config.new` constructs a new object with attributes and blocks configured for the `service_external_ips_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): When enabled, services with exterenal ips specified will be allowed.\n\n**Returns**:\n  - An attribute object that represents the `service_external_ips_config` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  vertical_pod_autoscaling:: {
    '#new':: d.fn(help='\n`google.container_cluster.vertical_pod_autoscaling.new` constructs a new object with attributes and blocks configured for the `vertical_pod_autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Enables vertical pod autoscaling.\n\n**Returns**:\n  - An attribute object that represents the `vertical_pod_autoscaling` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  '#withAddonsConfig':: d.fn(help='`google.list[obj].withAddonsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the addons_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAddonsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `addons_config` field.\n', args=[]),
  withAddonsConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          addons_config: value,
        },
      },
    },
  },
  '#withAddonsConfigMixin':: d.fn(help='`google.list[obj].withAddonsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the addons_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAddonsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `addons_config` field.\n', args=[]),
  withAddonsConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          addons_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAuthenticatorGroupsConfig':: d.fn(help='`google.list[obj].withAuthenticatorGroupsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authenticator_groups_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuthenticatorGroupsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authenticator_groups_config` field.\n', args=[]),
  withAuthenticatorGroupsConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          authenticator_groups_config: value,
        },
      },
    },
  },
  '#withAuthenticatorGroupsConfigMixin':: d.fn(help='`google.list[obj].withAuthenticatorGroupsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authenticator_groups_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuthenticatorGroupsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authenticator_groups_config` field.\n', args=[]),
  withAuthenticatorGroupsConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          authenticator_groups_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBinaryAuthorization':: d.fn(help='`google.list[obj].withBinaryAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the binary_authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBinaryAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.\n', args=[]),
  withBinaryAuthorization(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          binary_authorization: value,
        },
      },
    },
  },
  '#withBinaryAuthorizationMixin':: d.fn(help='`google.list[obj].withBinaryAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the binary_authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBinaryAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.\n', args=[]),
  withBinaryAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          binary_authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterAutoscaling':: d.fn(help='`google.list[obj].withClusterAutoscaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_autoscaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withClusterAutoscalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_autoscaling` field.\n', args=[]),
  withClusterAutoscaling(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cluster_autoscaling: value,
        },
      },
    },
  },
  '#withClusterAutoscalingMixin':: d.fn(help='`google.list[obj].withClusterAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_autoscaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withClusterAutoscaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_autoscaling` field.\n', args=[]),
  withClusterAutoscalingMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cluster_autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterIpv4Cidr':: d.fn(help='`google.string.withClusterIpv4Cidr` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_ipv4_cidr field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_ipv4_cidr` field.\n', args=[]),
  withClusterIpv4Cidr(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cluster_ipv4_cidr: value,
        },
      },
    },
  },
  '#withConfidentialNodes':: d.fn(help='`google.list[obj].withConfidentialNodes` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the confidential_nodes field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfidentialNodesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `confidential_nodes` field.\n', args=[]),
  withConfidentialNodes(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          confidential_nodes: value,
        },
      },
    },
  },
  '#withConfidentialNodesMixin':: d.fn(help='`google.list[obj].withConfidentialNodesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the confidential_nodes field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfidentialNodes](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `confidential_nodes` field.\n', args=[]),
  withConfidentialNodesMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          confidential_nodes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCostManagementConfig':: d.fn(help='`google.list[obj].withCostManagementConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cost_management_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCostManagementConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cost_management_config` field.\n', args=[]),
  withCostManagementConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cost_management_config: value,
        },
      },
    },
  },
  '#withCostManagementConfigMixin':: d.fn(help='`google.list[obj].withCostManagementConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cost_management_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCostManagementConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cost_management_config` field.\n', args=[]),
  withCostManagementConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cost_management_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatabaseEncryption':: d.fn(help='`google.list[obj].withDatabaseEncryption` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the database_encryption field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDatabaseEncryptionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `database_encryption` field.\n', args=[]),
  withDatabaseEncryption(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          database_encryption: value,
        },
      },
    },
  },
  '#withDatabaseEncryptionMixin':: d.fn(help='`google.list[obj].withDatabaseEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the database_encryption field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDatabaseEncryption](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `database_encryption` field.\n', args=[]),
  withDatabaseEncryptionMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          database_encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatapathProvider':: d.fn(help='`google.string.withDatapathProvider` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the datapath_provider field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `datapath_provider` field.\n', args=[]),
  withDatapathProvider(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          datapath_provider: value,
        },
      },
    },
  },
  '#withDefaultMaxPodsPerNode':: d.fn(help='`google.number.withDefaultMaxPodsPerNode` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the default_max_pods_per_node field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `default_max_pods_per_node` field.\n', args=[]),
  withDefaultMaxPodsPerNode(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          default_max_pods_per_node: value,
        },
      },
    },
  },
  '#withDefaultSnatStatus':: d.fn(help='`google.list[obj].withDefaultSnatStatus` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_snat_status field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDefaultSnatStatusMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_snat_status` field.\n', args=[]),
  withDefaultSnatStatus(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          default_snat_status: value,
        },
      },
    },
  },
  '#withDefaultSnatStatusMixin':: d.fn(help='`google.list[obj].withDefaultSnatStatusMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_snat_status field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultSnatStatus](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_snat_status` field.\n', args=[]),
  withDefaultSnatStatusMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          default_snat_status+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDnsConfig':: d.fn(help='`google.list[obj].withDnsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dns_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDnsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dns_config` field.\n', args=[]),
  withDnsConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          dns_config: value,
        },
      },
    },
  },
  '#withDnsConfigMixin':: d.fn(help='`google.list[obj].withDnsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dns_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDnsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dns_config` field.\n', args=[]),
  withDnsConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          dns_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnableAutopilot':: d.fn(help='`google.bool.withEnableAutopilot` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_autopilot field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_autopilot` field.\n', args=[]),
  withEnableAutopilot(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_autopilot: value,
        },
      },
    },
  },
  '#withEnableBinaryAuthorization':: d.fn(help='`google.bool.withEnableBinaryAuthorization` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_binary_authorization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_binary_authorization` field.\n', args=[]),
  withEnableBinaryAuthorization(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_binary_authorization: value,
        },
      },
    },
  },
  '#withEnableIntranodeVisibility':: d.fn(help='`google.bool.withEnableIntranodeVisibility` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_intranode_visibility field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_intranode_visibility` field.\n', args=[]),
  withEnableIntranodeVisibility(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_intranode_visibility: value,
        },
      },
    },
  },
  '#withEnableKubernetesAlpha':: d.fn(help='`google.bool.withEnableKubernetesAlpha` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_kubernetes_alpha field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_kubernetes_alpha` field.\n', args=[]),
  withEnableKubernetesAlpha(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_kubernetes_alpha: value,
        },
      },
    },
  },
  '#withEnableL4IlbSubsetting':: d.fn(help='`google.bool.withEnableL4IlbSubsetting` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_l4_ilb_subsetting field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_l4_ilb_subsetting` field.\n', args=[]),
  withEnableL4IlbSubsetting(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_l4_ilb_subsetting: value,
        },
      },
    },
  },
  '#withEnableLegacyAbac':: d.fn(help='`google.bool.withEnableLegacyAbac` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_legacy_abac field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_legacy_abac` field.\n', args=[]),
  withEnableLegacyAbac(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_legacy_abac: value,
        },
      },
    },
  },
  '#withEnableShieldedNodes':: d.fn(help='`google.bool.withEnableShieldedNodes` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_shielded_nodes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_shielded_nodes` field.\n', args=[]),
  withEnableShieldedNodes(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_shielded_nodes: value,
        },
      },
    },
  },
  '#withEnableTpu':: d.fn(help='`google.bool.withEnableTpu` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_tpu field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_tpu` field.\n', args=[]),
  withEnableTpu(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_tpu: value,
        },
      },
    },
  },
  '#withGatewayApiConfig':: d.fn(help='`google.list[obj].withGatewayApiConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway_api_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGatewayApiConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway_api_config` field.\n', args=[]),
  withGatewayApiConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          gateway_api_config: value,
        },
      },
    },
  },
  '#withGatewayApiConfigMixin':: d.fn(help='`google.list[obj].withGatewayApiConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway_api_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGatewayApiConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway_api_config` field.\n', args=[]),
  withGatewayApiConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          gateway_api_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInitialNodeCount':: d.fn(help='`google.number.withInitialNodeCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the initial_node_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `initial_node_count` field.\n', args=[]),
  withInitialNodeCount(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          initial_node_count: value,
        },
      },
    },
  },
  '#withIpAllocationPolicy':: d.fn(help='`google.list[obj].withIpAllocationPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ip_allocation_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIpAllocationPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ip_allocation_policy` field.\n', args=[]),
  withIpAllocationPolicy(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          ip_allocation_policy: value,
        },
      },
    },
  },
  '#withIpAllocationPolicyMixin':: d.fn(help='`google.list[obj].withIpAllocationPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ip_allocation_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIpAllocationPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ip_allocation_policy` field.\n', args=[]),
  withIpAllocationPolicyMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          ip_allocation_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withLoggingConfig':: d.fn(help='`google.list[obj].withLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the logging_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLoggingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `logging_config` field.\n', args=[]),
  withLoggingConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          logging_config: value,
        },
      },
    },
  },
  '#withLoggingConfigMixin':: d.fn(help='`google.list[obj].withLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the logging_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLoggingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `logging_config` field.\n', args=[]),
  withLoggingConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLoggingService':: d.fn(help='`google.string.withLoggingService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the logging_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `logging_service` field.\n', args=[]),
  withLoggingService(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          logging_service: value,
        },
      },
    },
  },
  '#withMaintenancePolicy':: d.fn(help='`google.list[obj].withMaintenancePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenancePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicy(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  '#withMaintenancePolicyMixin':: d.fn(help='`google.list[obj].withMaintenancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenancePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicyMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMasterAuth':: d.fn(help='`google.list[obj].withMasterAuth` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the master_auth field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMasterAuthMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `master_auth` field.\n', args=[]),
  withMasterAuth(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_auth: value,
        },
      },
    },
  },
  '#withMasterAuthMixin':: d.fn(help='`google.list[obj].withMasterAuthMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the master_auth field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMasterAuth](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `master_auth` field.\n', args=[]),
  withMasterAuthMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_auth+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMasterAuthorizedNetworksConfig':: d.fn(help='`google.list[obj].withMasterAuthorizedNetworksConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the master_authorized_networks_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMasterAuthorizedNetworksConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `master_authorized_networks_config` field.\n', args=[]),
  withMasterAuthorizedNetworksConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_authorized_networks_config: value,
        },
      },
    },
  },
  '#withMasterAuthorizedNetworksConfigMixin':: d.fn(help='`google.list[obj].withMasterAuthorizedNetworksConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the master_authorized_networks_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMasterAuthorizedNetworksConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `master_authorized_networks_config` field.\n', args=[]),
  withMasterAuthorizedNetworksConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_authorized_networks_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMeshCertificates':: d.fn(help='`google.list[obj].withMeshCertificates` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mesh_certificates field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMeshCertificatesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mesh_certificates` field.\n', args=[]),
  withMeshCertificates(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          mesh_certificates: value,
        },
      },
    },
  },
  '#withMeshCertificatesMixin':: d.fn(help='`google.list[obj].withMeshCertificatesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mesh_certificates field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMeshCertificates](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mesh_certificates` field.\n', args=[]),
  withMeshCertificatesMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          mesh_certificates+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMinMasterVersion':: d.fn(help='`google.string.withMinMasterVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the min_master_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `min_master_version` field.\n', args=[]),
  withMinMasterVersion(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          min_master_version: value,
        },
      },
    },
  },
  '#withMonitoringConfig':: d.fn(help='`google.list[obj].withMonitoringConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the monitoring_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMonitoringConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.\n', args=[]),
  withMonitoringConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          monitoring_config: value,
        },
      },
    },
  },
  '#withMonitoringConfigMixin':: d.fn(help='`google.list[obj].withMonitoringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the monitoring_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoringConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.\n', args=[]),
  withMonitoringConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          monitoring_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMonitoringService':: d.fn(help='`google.string.withMonitoringService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the monitoring_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `monitoring_service` field.\n', args=[]),
  withMonitoringService(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          monitoring_service: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkPolicy':: d.fn(help='`google.list[obj].withNetworkPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_policy` field.\n', args=[]),
  withNetworkPolicy(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          network_policy: value,
        },
      },
    },
  },
  '#withNetworkPolicyMixin':: d.fn(help='`google.list[obj].withNetworkPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_policy` field.\n', args=[]),
  withNetworkPolicyMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          network_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetworkingMode':: d.fn(help='`google.string.withNetworkingMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the networking_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `networking_mode` field.\n', args=[]),
  withNetworkingMode(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          networking_mode: value,
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeLocations':: d.fn(help='`google.list.withNodeLocations` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the node_locations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `node_locations` field.\n', args=[]),
  withNodeLocations(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_locations: value,
        },
      },
    },
  },
  '#withNodePool':: d.fn(help='`google.list[obj].withNodePool` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodePoolMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool` field.\n', args=[]),
  withNodePool(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool: value,
        },
      },
    },
  },
  '#withNodePoolDefaults':: d.fn(help='`google.list[obj].withNodePoolDefaults` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool_defaults field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodePoolDefaultsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool_defaults` field.\n', args=[]),
  withNodePoolDefaults(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool_defaults: value,
        },
      },
    },
  },
  '#withNodePoolDefaultsMixin':: d.fn(help='`google.list[obj].withNodePoolDefaultsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool_defaults field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodePoolDefaults](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool_defaults` field.\n', args=[]),
  withNodePoolDefaultsMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool_defaults+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodePoolMixin':: d.fn(help='`google.list[obj].withNodePoolMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodePool](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool` field.\n', args=[]),
  withNodePoolMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeVersion':: d.fn(help='`google.string.withNodeVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the node_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `node_version` field.\n', args=[]),
  withNodeVersion(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_version: value,
        },
      },
    },
  },
  '#withNotificationConfig':: d.fn(help='`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  '#withNotificationConfigMixin':: d.fn(help='`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPrivateClusterConfig':: d.fn(help='`google.list[obj].withPrivateClusterConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_cluster_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPrivateClusterConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.\n', args=[]),
  withPrivateClusterConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          private_cluster_config: value,
        },
      },
    },
  },
  '#withPrivateClusterConfigMixin':: d.fn(help='`google.list[obj].withPrivateClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_cluster_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPrivateClusterConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.\n', args=[]),
  withPrivateClusterConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          private_cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPrivateIpv6GoogleAccess':: d.fn(help='`google.string.withPrivateIpv6GoogleAccess` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the private_ipv6_google_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `private_ipv6_google_access` field.\n', args=[]),
  withPrivateIpv6GoogleAccess(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          private_ipv6_google_access: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReleaseChannel':: d.fn(help='`google.list[obj].withReleaseChannel` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the release_channel field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReleaseChannelMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `release_channel` field.\n', args=[]),
  withReleaseChannel(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          release_channel: value,
        },
      },
    },
  },
  '#withReleaseChannelMixin':: d.fn(help='`google.list[obj].withReleaseChannelMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the release_channel field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReleaseChannel](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `release_channel` field.\n', args=[]),
  withReleaseChannelMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          release_channel+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRemoveDefaultNodePool':: d.fn(help='`google.bool.withRemoveDefaultNodePool` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the remove_default_node_pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `remove_default_node_pool` field.\n', args=[]),
  withRemoveDefaultNodePool(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          remove_default_node_pool: value,
        },
      },
    },
  },
  '#withResourceLabels':: d.fn(help='`google.obj.withResourceLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the resource_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `resource_labels` field.\n', args=[]),
  withResourceLabels(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          resource_labels: value,
        },
      },
    },
  },
  '#withResourceUsageExportConfig':: d.fn(help='`google.list[obj].withResourceUsageExportConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resource_usage_export_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withResourceUsageExportConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resource_usage_export_config` field.\n', args=[]),
  withResourceUsageExportConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          resource_usage_export_config: value,
        },
      },
    },
  },
  '#withResourceUsageExportConfigMixin':: d.fn(help='`google.list[obj].withResourceUsageExportConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resource_usage_export_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withResourceUsageExportConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resource_usage_export_config` field.\n', args=[]),
  withResourceUsageExportConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          resource_usage_export_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceExternalIpsConfig':: d.fn(help='`google.list[obj].withServiceExternalIpsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_external_ips_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withServiceExternalIpsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_external_ips_config` field.\n', args=[]),
  withServiceExternalIpsConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          service_external_ips_config: value,
        },
      },
    },
  },
  '#withServiceExternalIpsConfigMixin':: d.fn(help='`google.list[obj].withServiceExternalIpsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_external_ips_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withServiceExternalIpsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_external_ips_config` field.\n', args=[]),
  withServiceExternalIpsConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          service_external_ips_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVerticalPodAutoscaling':: d.fn(help='`google.list[obj].withVerticalPodAutoscaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vertical_pod_autoscaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVerticalPodAutoscalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vertical_pod_autoscaling` field.\n', args=[]),
  withVerticalPodAutoscaling(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          vertical_pod_autoscaling: value,
        },
      },
    },
  },
  '#withVerticalPodAutoscalingMixin':: d.fn(help='`google.list[obj].withVerticalPodAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vertical_pod_autoscaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVerticalPodAutoscaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vertical_pod_autoscaling` field.\n', args=[]),
  withVerticalPodAutoscalingMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          vertical_pod_autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withWorkloadIdentityConfig':: d.fn(help='`google.list[obj].withWorkloadIdentityConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the workload_identity_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWorkloadIdentityConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `workload_identity_config` field.\n', args=[]),
  withWorkloadIdentityConfig(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          workload_identity_config: value,
        },
      },
    },
  },
  '#withWorkloadIdentityConfigMixin':: d.fn(help='`google.list[obj].withWorkloadIdentityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the workload_identity_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWorkloadIdentityConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `workload_identity_config` field.\n', args=[]),
  withWorkloadIdentityConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          workload_identity_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  workload_identity_config:: {
    '#new':: d.fn(help='\n`google.container_cluster.workload_identity_config.new` constructs a new object with attributes and blocks configured for the `workload_identity_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `workload_pool` (`string`): The workload pool to attach all Kubernetes service accounts to. When `null`, the `workload_pool` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `workload_identity_config` sub block.\n', args=[]),
    new(
      workload_pool=null
    ):: std.prune(a={
      workload_pool: workload_pool,
    }),
  },
}
