local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_azure_node_pool', url='', help='`container_azure_node_pool` represents the `google_container_azure_node_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoscaling:: {
    '#new':: d.fn(help='\n`google.container_azure_node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_node_count` (`number`): Maximum number of nodes in the node pool. Must be &gt;= min_node_count.\n  - `min_node_count` (`number`): Minimum number of nodes in the node pool. Must be &gt;= 1 and &lt;= max_node_count.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling` sub block.\n', args=[]),
    new(
      max_node_count,
      min_node_count
    ):: std.prune(a={
      max_node_count: max_node_count,
      min_node_count: min_node_count,
    }),
  },
  config:: {
    '#new':: d.fn(help='\n`google.container_azure_node_pool.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Optional. The initial labels assigned to nodes of this node pool. An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `tags` (`obj`): Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.&#43;-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. When `null`, the `tags` field will be omitted from the resulting object.\n  - `vm_size` (`string`): Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`. When `null`, the `vm_size` field will be omitted from the resulting object.\n  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.proxy_config.new](#fn-configproxy_confignew) constructor.\n  - `root_volume` (`list[obj]`): Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.root_volume.new](#fn-configroot_volumenew) constructor.\n  - `ssh_config` (`list[obj]`): SSH configuration for how to access the node pool machines. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.ssh_config.new](#fn-configssh_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
    new(
      labels=null,
      proxy_config=null,
      root_volume=null,
      ssh_config=null,
      tags=null,
      vm_size=null
    ):: std.prune(a={
      labels: labels,
      proxy_config: proxy_config,
      root_volume: root_volume,
      ssh_config: ssh_config,
      tags: tags,
      vm_size: vm_size,
    }),
    proxy_config:: {
      '#new':: d.fn(help='\n`google.container_azure_node_pool.config.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_group_id` (`string`): The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-name&gt;`\n  - `secret_id` (`string`): The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:&lt;key-vault-name&gt;.vault.azure.net/secrets/&lt;secret-name&gt;/&lt;secret-version&gt;`.\n\n**Returns**:\n  - An attribute object that represents the `proxy_config` sub block.\n', args=[]),
      new(
        resource_group_id,
        secret_id
      ):: std.prune(a={
        resource_group_id: resource_group_id,
        secret_id: secret_id,
      }),
    },
    root_volume:: {
      '#new':: d.fn(help='\n`google.container_azure_node_pool.config.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`\nTerraform sub block.\n\n\n\n**Args**:\n  - `size_gib` (`number`): Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `root_volume` sub block.\n', args=[]),
      new(
        size_gib=null
      ):: std.prune(a={
        size_gib: size_gib,
      }),
    },
    ssh_config:: {
      '#new':: d.fn(help='\n`google.container_azure_node_pool.config.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `authorized_key` (`string`): The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page.\n\n**Returns**:\n  - An attribute object that represents the `ssh_config` sub block.\n', args=[]),
      new(
        authorized_key
      ):: std.prune(a={
        authorized_key: authorized_key,
      }),
    },
  },
  management:: {
    '#new':: d.fn(help='\n`google.container_azure_node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_repair` (`bool`): Optional. Whether or not the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `management` sub block.\n', args=[]),
    new(
      auto_repair=null
    ):: std.prune(a={
      auto_repair: auto_repair,
    }),
  },
  max_pods_constraint:: {
    '#new':: d.fn(help='\n`google.container_azure_node_pool.max_pods_constraint.new` constructs a new object with attributes and blocks configured for the `max_pods_constraint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_pods_per_node` (`number`): The maximum number of pods to schedule on a single node.\n\n**Returns**:\n  - An attribute object that represents the `max_pods_constraint` sub block.\n', args=[]),
    new(
      max_pods_per_node
    ):: std.prune(a={
      max_pods_per_node: max_pods_per_node,
    }),
  },
  '#new':: d.fn(help="\n`google.container_azure_node_pool.new` injects a new `google_container_azure_node_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_azure_node_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_azure_node_pool` using the reference:\n\n    $._ref.google_container_azure_node_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_azure_node_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `azure_availability_zone` (`string`): Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`. When `null`, the `azure_availability_zone` field will be omitted from the resulting object.\n  - `cluster` (`string`): The azureCluster for the resource\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `subnet_id` (`string`): The ARM ID of the subnet where the node pool VMs run. Make sure it\u0026#39;s a subnet under the virtual network in the cluster configuration.\n  - `version` (`string`): The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.\n  - `autoscaling` (`list[obj]`): Autoscaler configuration for this node pool. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.\n  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.new](#fn-confignew) constructor.\n  - `management` (`list[obj]`): The Management configuration for this node pool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.management.new](#fn-managementnew) constructor.\n  - `max_pods_constraint` (`list[obj]`): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. When `null`, the `max_pods_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.max_pods_constraint.new](#fn-max_pods_constraintnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    location,
    name,
    subnet_id,
    version,
    annotations=null,
    autoscaling=null,
    azure_availability_zone=null,
    config=null,
    management=null,
    max_pods_constraint=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_azure_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      autoscaling=autoscaling,
      azure_availability_zone=azure_availability_zone,
      cluster=cluster,
      config=config,
      location=location,
      management=management,
      max_pods_constraint=max_pods_constraint,
      name=name,
      project=project,
      subnet_id=subnet_id,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_azure_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `container_azure_node_pool`\nTerraform resource.\n\nUnlike [google.container_azure_node_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `azure_availability_zone` (`string`): Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`. When `null`, the `azure_availability_zone` field will be omitted from the resulting object.\n  - `cluster` (`string`): The azureCluster for the resource\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `subnet_id` (`string`): The ARM ID of the subnet where the node pool VMs run. Make sure it&#39;s a subnet under the virtual network in the cluster configuration.\n  - `version` (`string`): The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.\n  - `autoscaling` (`list[obj]`): Autoscaler configuration for this node pool. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.\n  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.new](#fn-confignew) constructor.\n  - `management` (`list[obj]`): The Management configuration for this node pool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.management.new](#fn-managementnew) constructor.\n  - `max_pods_constraint` (`list[obj]`): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. When `null`, the `max_pods_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.max_pods_constraint.new](#fn-max_pods_constraintnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_azure_node_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    location,
    name,
    subnet_id,
    version,
    annotations=null,
    autoscaling=null,
    azure_availability_zone=null,
    config=null,
    management=null,
    max_pods_constraint=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    autoscaling: autoscaling,
    azure_availability_zone: azure_availability_zone,
    cluster: cluster,
    config: config,
    location: location,
    management: management,
    max_pods_constraint: max_pods_constraint,
    name: name,
    project: project,
    subnet_id: subnet_id,
    timeouts: timeouts,
    version: version,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_azure_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAutoscaling':: d.fn(help='`google.list[obj].withAutoscaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoscalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling` field.\n', args=[]),
  withAutoscaling(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          autoscaling: value,
        },
      },
    },
  },
  '#withAutoscalingMixin':: d.fn(help='`google.list[obj].withAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling` field.\n', args=[]),
  withAutoscalingMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAzureAvailabilityZone':: d.fn(help='`google.string.withAzureAvailabilityZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the azure_availability_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `azure_availability_zone` field.\n', args=[]),
  withAzureAvailabilityZone(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          azure_availability_zone: value,
        },
      },
    },
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withConfig':: d.fn(help='`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withManagement':: d.fn(help='`google.list[obj].withManagement` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagementMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management` field.\n', args=[]),
  withManagement(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          management: value,
        },
      },
    },
  },
  '#withManagementMixin':: d.fn(help='`google.list[obj].withManagementMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManagement](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management` field.\n', args=[]),
  withManagementMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          management+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMaxPodsConstraint':: d.fn(help='`google.list[obj].withMaxPodsConstraint` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the max_pods_constraint field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaxPodsConstraintMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `max_pods_constraint` field.\n', args=[]),
  withMaxPodsConstraint(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          max_pods_constraint: value,
        },
      },
    },
  },
  '#withMaxPodsConstraintMixin':: d.fn(help='`google.list[obj].withMaxPodsConstraintMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the max_pods_constraint field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaxPodsConstraint](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `max_pods_constraint` field.\n', args=[]),
  withMaxPodsConstraintMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          max_pods_constraint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSubnetId':: d.fn(help='`google.string.withSubnetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnet_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnet_id` field.\n', args=[]),
  withSubnetId(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          subnet_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.string.withVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
