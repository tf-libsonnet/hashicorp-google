local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_node_pool', url='', help='`container_node_pool` represents the `google_container_node_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoscaling:: {
    '#new':: d.fn(help='\n`google.container_node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location_policy` (`string`): Location policy specifies the algorithm used when scaling-up the node pool. &#34;BALANCED&#34; - Is a best effort policy that aims to balance the sizes of available zones. &#34;ANY&#34; - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs. When `null`, the `location_policy` field will be omitted from the resulting object.\n  - `max_node_count` (`number`): Maximum number of nodes per zone in the node pool. Must be &gt;= min_node_count. Cannot be used with total limits. When `null`, the `max_node_count` field will be omitted from the resulting object.\n  - `min_node_count` (`number`): Minimum number of nodes per zone in the node pool. Must be &gt;=0 and &lt;= max_node_count. Cannot be used with total limits. When `null`, the `min_node_count` field will be omitted from the resulting object.\n  - `total_max_node_count` (`number`): Maximum number of all nodes in the node pool. Must be &gt;= total_min_node_count. Cannot be used with per zone limits. When `null`, the `total_max_node_count` field will be omitted from the resulting object.\n  - `total_min_node_count` (`number`): Minimum number of all nodes in the node pool. Must be &gt;=0 and &lt;= total_max_node_count. Cannot be used with per zone limits. When `null`, the `total_min_node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.container_node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_repair` (`bool`): Whether the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.\n  - `auto_upgrade` (`bool`): Whether the nodes will be automatically upgraded. When `null`, the `auto_upgrade` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `management` sub block.\n', args=[]),
    new(
      auto_repair=null,
      auto_upgrade=null
    ):: std.prune(a={
      auto_repair: auto_repair,
      auto_upgrade: auto_upgrade,
    }),
  },
  network_config:: {
    '#new':: d.fn(help='\n`google.container_node_pool.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create_pod_range` (`bool`): Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. When `null`, the `create_pod_range` field will be omitted from the resulting object.\n  - `enable_private_nodes` (`bool`): Whether nodes have internal IP addresses only. When `null`, the `enable_private_nodes` field will be omitted from the resulting object.\n  - `pod_ipv4_cidr_block` (`string`): The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. When `null`, the `pod_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `pod_range` (`string`): The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. When `null`, the `pod_range` field will be omitted from the resulting object.\n  - `pod_cidr_overprovision_config` (`list[obj]`): Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited When `null`, the `pod_cidr_overprovision_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.network_config.pod_cidr_overprovision_config.new](#fn-network_configpod_cidr_overprovision_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      create_pod_range=null,
      enable_private_nodes=null,
      pod_cidr_overprovision_config=null,
      pod_ipv4_cidr_block=null,
      pod_range=null
    ):: std.prune(a={
      create_pod_range: create_pod_range,
      enable_private_nodes: enable_private_nodes,
      pod_cidr_overprovision_config: pod_cidr_overprovision_config,
      pod_ipv4_cidr_block: pod_ipv4_cidr_block,
      pod_range: pod_range,
    }),
    pod_cidr_overprovision_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.network_config.pod_cidr_overprovision_config.new` constructs a new object with attributes and blocks configured for the `pod_cidr_overprovision_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Set the `disabled` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pod_cidr_overprovision_config` sub block.\n', args=[]),
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.container_node_pool.new` injects a new `google_container_node_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_node_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_node_pool` using the reference:\n\n    $._ref.google_container_node_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_node_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster` (`string`): The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters.\n  - `initial_node_count` (`number`): The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. When `null`, the `initial_node_count` field will be omitted from the resulting object.\n  - `location` (`string`): The location (region or zone) of the cluster. When `null`, the `location` field will be omitted from the resulting object.\n  - `max_pods_per_node` (`number`): The maximum number of pods per node in this node pool. Note that this does not work on node pools which are \u0026#34;route-based\u0026#34; - that is, node pools belonging to clusters that do not have IP Aliasing enabled. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the node pool. If left blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. When `null`, the `node_count` field will be omitted from the resulting object.\n  - `node_locations` (`list`): The list of zones in which the node pool\u0026#39;s nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster\u0026#39;s zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. When `null`, the `node_locations` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which to create the node pool. If blank, the provider-configured project will be used. When `null`, the `project` field will be omitted from the resulting object.\n  - `version` (`string`): The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it\u0026#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source\u0026#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. When `null`, the `version` field will be omitted from the resulting object.\n  - `autoscaling` (`list[obj]`): Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.\n  - `management` (`list[obj]`): Node management configuration, wherein auto-repair and auto-upgrade is configured. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.management.new](#fn-managementnew) constructor.\n  - `network_config` (`list[obj]`): Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.network_config.new](#fn-network_confignew) constructor.\n  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.new](#fn-node_confignew) constructor.\n  - `placement_policy` (`list[obj]`): Specifies the node placement policy When `null`, the `placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.placement_policy.new](#fn-placement_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n  - `upgrade_settings` (`list[obj]`): Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.new](#fn-upgrade_settingsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    autoscaling=null,
    initial_node_count=null,
    location=null,
    management=null,
    max_pods_per_node=null,
    name=null,
    name_prefix=null,
    network_config=null,
    node_config=null,
    node_count=null,
    node_locations=null,
    placement_policy=null,
    project=null,
    timeouts=null,
    upgrade_settings=null,
    version=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling=autoscaling,
      cluster=cluster,
      initial_node_count=initial_node_count,
      location=location,
      management=management,
      max_pods_per_node=max_pods_per_node,
      name=name,
      name_prefix=name_prefix,
      network_config=network_config,
      node_config=node_config,
      node_count=node_count,
      node_locations=node_locations,
      placement_policy=placement_policy,
      project=project,
      timeouts=timeouts,
      upgrade_settings=upgrade_settings,
      version=version
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `container_node_pool`\nTerraform resource.\n\nUnlike [google.container_node_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster` (`string`): The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters.\n  - `initial_node_count` (`number`): The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. When `null`, the `initial_node_count` field will be omitted from the resulting object.\n  - `location` (`string`): The location (region or zone) of the cluster. When `null`, the `location` field will be omitted from the resulting object.\n  - `max_pods_per_node` (`number`): The maximum number of pods per node in this node pool. Note that this does not work on node pools which are &#34;route-based&#34; - that is, node pools belonging to clusters that do not have IP Aliasing enabled. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the node pool. If left blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. When `null`, the `node_count` field will be omitted from the resulting object.\n  - `node_locations` (`list`): The list of zones in which the node pool&#39;s nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. When `null`, the `node_locations` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which to create the node pool. If blank, the provider-configured project will be used. When `null`, the `project` field will be omitted from the resulting object.\n  - `version` (`string`): The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. When `null`, the `version` field will be omitted from the resulting object.\n  - `autoscaling` (`list[obj]`): Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.\n  - `management` (`list[obj]`): Node management configuration, wherein auto-repair and auto-upgrade is configured. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.management.new](#fn-managementnew) constructor.\n  - `network_config` (`list[obj]`): Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.network_config.new](#fn-network_confignew) constructor.\n  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.new](#fn-node_confignew) constructor.\n  - `placement_policy` (`list[obj]`): Specifies the node placement policy When `null`, the `placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.placement_policy.new](#fn-placement_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n  - `upgrade_settings` (`list[obj]`): Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.new](#fn-upgrade_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_node_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    autoscaling=null,
    initial_node_count=null,
    location=null,
    management=null,
    max_pods_per_node=null,
    name=null,
    name_prefix=null,
    network_config=null,
    node_config=null,
    node_count=null,
    node_locations=null,
    placement_policy=null,
    project=null,
    timeouts=null,
    upgrade_settings=null,
    version=null
  ):: std.prune(a={
    autoscaling: autoscaling,
    cluster: cluster,
    initial_node_count: initial_node_count,
    location: location,
    management: management,
    max_pods_per_node: max_pods_per_node,
    name: name,
    name_prefix: name_prefix,
    network_config: network_config,
    node_config: node_config,
    node_count: node_count,
    node_locations: node_locations,
    placement_policy: placement_policy,
    project: project,
    timeouts: timeouts,
    upgrade_settings: upgrade_settings,
    version: version,
  }),
  node_config:: {
    advanced_machine_features:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.\n\n**Returns**:\n  - An attribute object that represents the `advanced_machine_features` sub block.\n', args=[]),
      new(
        threads_per_core
      ):: std.prune(a={
        threads_per_core: threads_per_core,
      }),
    },
    confidential_nodes:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.confidential_nodes.new` constructs a new object with attributes and blocks configured for the `confidential_nodes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether Confidential Nodes feature is enabled for all nodes in this pool.\n\n**Returns**:\n  - An attribute object that represents the `confidential_nodes` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    ephemeral_storage_local_ssd_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.ephemeral_storage_local_ssd_config.new` constructs a new object with attributes and blocks configured for the `ephemeral_storage_local_ssd_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_ssd_count` (`number`): Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.\n\n**Returns**:\n  - An attribute object that represents the `ephemeral_storage_local_ssd_config` sub block.\n', args=[]),
      new(
        local_ssd_count
      ):: std.prune(a={
        local_ssd_count: local_ssd_count,
      }),
    },
    gcfs_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.gcfs_config.new` constructs a new object with attributes and blocks configured for the `gcfs_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not GCFS is enabled\n\n**Returns**:\n  - An attribute object that represents the `gcfs_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gvnic:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.gvnic.new` constructs a new object with attributes and blocks configured for the `gvnic`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not gvnic is enabled\n\n**Returns**:\n  - An attribute object that represents the `gvnic` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    host_maintenance_policy:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.host_maintenance_policy.new` constructs a new object with attributes and blocks configured for the `host_maintenance_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `maintenance_interval` (`string`): .\n\n**Returns**:\n  - An attribute object that represents the `host_maintenance_policy` sub block.\n', args=[]),
      new(
        maintenance_interval
      ):: std.prune(a={
        maintenance_interval: maintenance_interval,
      }),
    },
    kubelet_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.kubelet_config.new` constructs a new object with attributes and blocks configured for the `kubelet_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_cfs_quota` (`bool`): Enable CPU CFS quota enforcement for containers that specify CPU limits. When `null`, the `cpu_cfs_quota` field will be omitted from the resulting object.\n  - `cpu_cfs_quota_period` (`string`): Set the CPU CFS quota period value &#39;cpu.cfs_period_us&#39;. When `null`, the `cpu_cfs_quota_period` field will be omitted from the resulting object.\n  - `cpu_manager_policy` (`string`): Control the CPU management policy on the node.\n  - `pod_pids_limit` (`number`): Controls the maximum number of processes allowed to run in a pod. When `null`, the `pod_pids_limit` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kubelet_config` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.linux_node_config.new` constructs a new object with attributes and blocks configured for the `linux_node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sysctls` (`obj`): The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.\n\n**Returns**:\n  - An attribute object that represents the `linux_node_config` sub block.\n', args=[]),
      new(
        sysctls
      ):: std.prune(a={
        sysctls: sysctls,
      }),
    },
    local_nvme_ssd_block_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.local_nvme_ssd_block_config.new` constructs a new object with attributes and blocks configured for the `local_nvme_ssd_block_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_ssd_count` (`number`): Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.\n\n**Returns**:\n  - An attribute object that represents the `local_nvme_ssd_block_config` sub block.\n', args=[]),
      new(
        local_ssd_count
      ):: std.prune(a={
        local_ssd_count: local_ssd_count,
      }),
    },
    '#new':: d.fn(help='\n`google.container_node_pool.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.\n  - `image_type` (`string`): The image type to use for this node. Note that for a given image type, the latest version of it will be used. When `null`, the `image_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. When `null`, the `labels` field will be omitted from the resulting object.\n  - `local_ssd_count` (`number`): The number of local SSD disks to be attached to the node. When `null`, the `local_ssd_count` field will be omitted from the resulting object.\n  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Google Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `metadata` (`obj`): The metadata key/value pairs assigned to instances in the cluster. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `node_group` (`string`): Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. When `null`, the `node_group` field will be omitted from the resulting object.\n  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs. When `null`, the `oauth_scopes` field will be omitted from the resulting object.\n  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the node pool. When `null`, the `resource_labels` field will be omitted from the resulting object.\n  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `spot` (`bool`): Whether the nodes are created as spot VM instances. When `null`, the `spot` field will be omitted from the resulting object.\n  - `tags` (`list`): The list of instance tags applied to all nodes. When `null`, the `tags` field will be omitted from the resulting object.\n  - `taint` (`list`): List of Kubernetes taints to be applied to each node. When `null`, the `taint` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Specifies options for controlling advanced machine features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.advanced_machine_features.new](#fn-node_configadvanced_machine_featuresnew) constructor.\n  - `confidential_nodes` (`list[obj]`): Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can&#39;t be changed (or added/removed) after pool creation without deleting and recreating the entire pool. When `null`, the `confidential_nodes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.confidential_nodes.new](#fn-node_configconfidential_nodesnew) constructor.\n  - `ephemeral_storage_local_ssd_config` (`list[obj]`): Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. When `null`, the `ephemeral_storage_local_ssd_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.ephemeral_storage_local_ssd_config.new](#fn-node_configephemeral_storage_local_ssd_confignew) constructor.\n  - `gcfs_config` (`list[obj]`): GCFS configuration for this node. When `null`, the `gcfs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.gcfs_config.new](#fn-node_configgcfs_confignew) constructor.\n  - `gvnic` (`list[obj]`): Enable or disable gvnic in the node pool. When `null`, the `gvnic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.gvnic.new](#fn-node_configgvnicnew) constructor.\n  - `host_maintenance_policy` (`list[obj]`): The maintenance policy for the hosts on which the GKE VMs run on. When `null`, the `host_maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.host_maintenance_policy.new](#fn-node_confighost_maintenance_policynew) constructor.\n  - `kubelet_config` (`list[obj]`): Node kubelet configs. When `null`, the `kubelet_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.kubelet_config.new](#fn-node_configkubelet_confignew) constructor.\n  - `linux_node_config` (`list[obj]`): Parameters that can be configured on Linux nodes. When `null`, the `linux_node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.linux_node_config.new](#fn-node_configlinux_node_confignew) constructor.\n  - `local_nvme_ssd_block_config` (`list[obj]`): Parameters for raw-block local NVMe SSDs. When `null`, the `local_nvme_ssd_block_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.local_nvme_ssd_block_config.new](#fn-node_configlocal_nvme_ssd_block_confignew) constructor.\n  - `reservation_affinity` (`list[obj]`): The reservation affinity configuration for the node pool. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.reservation_affinity.new](#fn-node_configreservation_affinitynew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.shielded_instance_config.new](#fn-node_configshielded_instance_confignew) constructor.\n  - `sole_tenant_config` (`list[obj]`): Node affinity options for sole tenant node pools. When `null`, the `sole_tenant_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.sole_tenant_config.new](#fn-node_configsole_tenant_confignew) constructor.\n  - `workload_metadata_config` (`list[obj]`): The workload metadata configuration for this node. When `null`, the `workload_metadata_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.workload_metadata_config.new](#fn-node_configworkload_metadata_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      advanced_machine_features=null,
      boot_disk_kms_key=null,
      confidential_nodes=null,
      disk_size_gb=null,
      disk_type=null,
      ephemeral_storage_local_ssd_config=null,
      gcfs_config=null,
      guest_accelerator=null,
      gvnic=null,
      host_maintenance_policy=null,
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
      sole_tenant_config=null,
      spot=null,
      tags=null,
      taint=null,
      workload_metadata_config=null
    ):: std.prune(a={
      advanced_machine_features: advanced_machine_features,
      boot_disk_kms_key: boot_disk_kms_key,
      confidential_nodes: confidential_nodes,
      disk_size_gb: disk_size_gb,
      disk_type: disk_type,
      ephemeral_storage_local_ssd_config: ephemeral_storage_local_ssd_config,
      gcfs_config: gcfs_config,
      guest_accelerator: guest_accelerator,
      gvnic: gvnic,
      host_maintenance_policy: host_maintenance_policy,
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
      sole_tenant_config: sole_tenant_config,
      spot: spot,
      tags: tags,
      taint: taint,
      workload_metadata_config: workload_metadata_config,
    }),
    reservation_affinity:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consume_reservation_type` (`string`): Corresponds to the type of reservation consumption.\n  - `key` (`string`): The label key of a reservation resource. When `null`, the `key` field will be omitted from the resulting object.\n  - `values` (`list`): The label values of the reservation resource. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
      new(
        enable_integrity_monitoring=null,
        enable_secure_boot=null
      ):: std.prune(a={
        enable_integrity_monitoring: enable_integrity_monitoring,
        enable_secure_boot: enable_secure_boot,
      }),
    },
    sole_tenant_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.sole_tenant_config.new` constructs a new object with attributes and blocks configured for the `sole_tenant_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_affinity` (`list[obj]`): . When `null`, the `node_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.sole_tenant_config.node_affinity.new](#fn-node_confignode_confignode_affinitynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `sole_tenant_config` sub block.\n', args=[]),
      new(
        node_affinity=null
      ):: std.prune(a={
        node_affinity: node_affinity,
      }),
      node_affinity:: {
        '#new':: d.fn(help='\n`google.container_node_pool.node_config.sole_tenant_config.node_affinity.new` constructs a new object with attributes and blocks configured for the `node_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): .\n  - `operator` (`string`): .\n  - `values` (`list`): .\n\n**Returns**:\n  - An attribute object that represents the `node_affinity` sub block.\n', args=[]),
        new(
          key,
          operator,
          values
        ):: std.prune(a={
          key: key,
          operator: operator,
          values: values,
        }),
      },
    },
    workload_metadata_config:: {
      '#new':: d.fn(help='\n`google.container_node_pool.node_config.workload_metadata_config.new` constructs a new object with attributes and blocks configured for the `workload_metadata_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Mode is the configuration for how to expose metadata to workloads running on the node.\n\n**Returns**:\n  - An attribute object that represents the `workload_metadata_config` sub block.\n', args=[]),
      new(
        mode
      ):: std.prune(a={
        mode: mode,
      }),
    },
  },
  placement_policy:: {
    '#new':: d.fn(help='\n`google.container_node_pool.placement_policy.new` constructs a new object with attributes and blocks configured for the `placement_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `policy_name` (`string`): If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned. When `null`, the `policy_name` field will be omitted from the resulting object.\n  - `type` (`string`): Type defines the type of placement policy\n\n**Returns**:\n  - An attribute object that represents the `placement_policy` sub block.\n', args=[]),
    new(
      type,
      policy_name=null
    ):: std.prune(a={
      policy_name: policy_name,
      type: type,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  upgrade_settings:: {
    blue_green_settings:: {
      '#new':: d.fn(help='\n`google.container_node_pool.upgrade_settings.blue_green_settings.new` constructs a new object with attributes and blocks configured for the `blue_green_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool_soak_duration` (`string`): Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. When `null`, the `node_pool_soak_duration` field will be omitted from the resulting object.\n  - `standard_rollout_policy` (`list[obj]`): Standard rollout policy is the default policy for blue-green. When `null`, the `standard_rollout_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new](#fn-upgrade_settingsupgrade_settingsstandard_rollout_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `blue_green_settings` sub block.\n', args=[]),
      new(
        node_pool_soak_duration=null,
        standard_rollout_policy=null
      ):: std.prune(a={
        node_pool_soak_duration: node_pool_soak_duration,
        standard_rollout_policy: standard_rollout_policy,
      }),
      standard_rollout_policy:: {
        '#new':: d.fn(help='\n`google.container_node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new` constructs a new object with attributes and blocks configured for the `standard_rollout_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `batch_node_count` (`number`): Number of blue nodes to drain in a batch. When `null`, the `batch_node_count` field will be omitted from the resulting object.\n  - `batch_percentage` (`number`): Percentage of the blue pool nodes to drain in a batch. When `null`, the `batch_percentage` field will be omitted from the resulting object.\n  - `batch_soak_duration` (`string`): Soak time after each batch gets drained. When `null`, the `batch_soak_duration` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `standard_rollout_policy` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.container_node_pool.upgrade_settings.new` constructs a new object with attributes and blocks configured for the `upgrade_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_surge` (`number`): The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. When `null`, the `max_surge` field will be omitted from the resulting object.\n  - `max_unavailable` (`number`): The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. When `null`, the `max_unavailable` field will be omitted from the resulting object.\n  - `strategy` (`string`): Update strategy for the given nodepool. When `null`, the `strategy` field will be omitted from the resulting object.\n  - `blue_green_settings` (`list[obj]`): Settings for BlueGreen node pool upgrade. When `null`, the `blue_green_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.blue_green_settings.new](#fn-upgrade_settingsblue_green_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `upgrade_settings` sub block.\n', args=[]),
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
  '#withAutoscaling':: d.fn(help='`google.list[obj].withAutoscaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoscalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling` field.\n', args=[]),
  withAutoscaling(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          autoscaling: value,
        },
      },
    },
  },
  '#withAutoscalingMixin':: d.fn(help='`google.list[obj].withAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling` field.\n', args=[]),
  withAutoscalingMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withInitialNodeCount':: d.fn(help='`google.number.withInitialNodeCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the initial_node_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `initial_node_count` field.\n', args=[]),
  withInitialNodeCount(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          initial_node_count: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withManagement':: d.fn(help='`google.list[obj].withManagement` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagementMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management` field.\n', args=[]),
  withManagement(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          management: value,
        },
      },
    },
  },
  '#withManagementMixin':: d.fn(help='`google.list[obj].withManagementMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManagement](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management` field.\n', args=[]),
  withManagementMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          management+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMaxPodsPerNode':: d.fn(help='`google.number.withMaxPodsPerNode` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_pods_per_node field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_pods_per_node` field.\n', args=[]),
  withMaxPodsPerNode(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          max_pods_per_node: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNamePrefix':: d.fn(help='`google.string.withNamePrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name_prefix` field.\n', args=[]),
  withNamePrefix(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeCount':: d.fn(help='`google.number.withNodeCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the node_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `node_count` field.\n', args=[]),
  withNodeCount(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_count: value,
        },
      },
    },
  },
  '#withNodeLocations':: d.fn(help='`google.list.withNodeLocations` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the node_locations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `node_locations` field.\n', args=[]),
  withNodeLocations(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_locations: value,
        },
      },
    },
  },
  '#withPlacementPolicy':: d.fn(help='`google.list[obj].withPlacementPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the placement_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPlacementPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `placement_policy` field.\n', args=[]),
  withPlacementPolicy(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          placement_policy: value,
        },
      },
    },
  },
  '#withPlacementPolicyMixin':: d.fn(help='`google.list[obj].withPlacementPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the placement_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPlacementPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `placement_policy` field.\n', args=[]),
  withPlacementPolicyMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          placement_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUpgradeSettings':: d.fn(help='`google.list[obj].withUpgradeSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the upgrade_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withUpgradeSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `upgrade_settings` field.\n', args=[]),
  withUpgradeSettings(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          upgrade_settings: value,
        },
      },
    },
  },
  '#withUpgradeSettingsMixin':: d.fn(help='`google.list[obj].withUpgradeSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the upgrade_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withUpgradeSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `upgrade_settings` field.\n', args=[]),
  withUpgradeSettingsMixin(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          upgrade_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.string.withVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
