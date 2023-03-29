local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_subnetwork', url='', help='`compute_subnetwork` represents the `google_compute_subnetwork` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  log_config:: {
    '#new':: d.fn(help='\n`google.compute_subnetwork.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aggregation_interval` (`string`): Can only be specified if VPC flow logging for this subnetwork is enabled.\nToggles the aggregation interval for collecting flow logs. Increasing the\ninterval time will reduce the amount of generated flow logs for long\nlasting connections. Default is an interval of 5 seconds per connection. Default value: &#34;INTERVAL_5_SEC&#34; Possible values: [&#34;INTERVAL_5_SEC&#34;, &#34;INTERVAL_30_SEC&#34;, &#34;INTERVAL_1_MIN&#34;, &#34;INTERVAL_5_MIN&#34;, &#34;INTERVAL_10_MIN&#34;, &#34;INTERVAL_15_MIN&#34;] When `null`, the `aggregation_interval` field will be omitted from the resulting object.\n  - `filter_expr` (`string`): Export filter used to define which VPC flow logs should be logged, as as CEL expression. See\nhttps://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.\nThe default value is &#39;true&#39;, which evaluates to include everything. When `null`, the `filter_expr` field will be omitted from the resulting object.\n  - `flow_sampling` (`number`): Can only be specified if VPC flow logging for this subnetwork is enabled.\nThe value of the field must be in [0, 1]. Set the sampling rate of VPC\nflow logs within the subnetwork where 1.0 means all collected logs are\nreported and 0.0 means no logs are reported. Default is 0.5 which means\nhalf of all collected logs are reported. When `null`, the `flow_sampling` field will be omitted from the resulting object.\n  - `metadata` (`string`): Can only be specified if VPC flow logging for this subnetwork is enabled.\nConfigures whether metadata fields should be added to the reported VPC\nflow logs. Default value: &#34;INCLUDE_ALL_METADATA&#34; Possible values: [&#34;EXCLUDE_ALL_METADATA&#34;, &#34;INCLUDE_ALL_METADATA&#34;, &#34;CUSTOM_METADATA&#34;] When `null`, the `metadata` field will be omitted from the resulting object.\n  - `metadata_fields` (`list`): List of metadata fields that should be added to reported logs.\nCan only be specified if VPC flow logs for this subnetwork is enabled and &#34;metadata&#34; is set to CUSTOM_METADATA. When `null`, the `metadata_fields` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      aggregation_interval=null,
      filter_expr=null,
      flow_sampling=null,
      metadata=null,
      metadata_fields=null
    ):: std.prune(a={
      aggregation_interval: aggregation_interval,
      filter_expr: filter_expr,
      flow_sampling: flow_sampling,
      metadata: metadata,
      metadata_fields: metadata_fields,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_subnetwork.new` injects a new `google_compute_subnetwork` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_subnetwork.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_subnetwork` using the reference:\n\n    $._ref.google_compute_subnetwork.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_subnetwork.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. This field can be set only at resource\ncreation time. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_cidr_range` (`string`): The range of internal addresses that are owned by this subnetwork.\nProvide this property when you create the subnetwork. For example,\n10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and\nnon-overlapping within a network. Only IPv4 is supported.\n  - `ipv6_access_type` (`string`): The access type of IPv6 address this subnet holds. It\u0026#39;s immutable and can only be specified during creation\nor the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet\ncannot enable direct path. Possible values: [\u0026#34;EXTERNAL\u0026#34;, \u0026#34;INTERNAL\u0026#34;] When `null`, the `ipv6_access_type` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the resource, provided by the client when initially\ncreating the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): The network this subnet belongs to.\nOnly networks that are in the distributed mode can have subnetworks.\n  - `private_ip_google_access` (`bool`): When enabled, VMs in this subnetwork without external IP addresses can\naccess Google APIs and services by using Private Google Access. When `null`, the `private_ip_google_access` field will be omitted from the resulting object.\n  - `private_ipv6_google_access` (`string`): The private IPv6 google access type for the VMs in this subnet. When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of the resource. This field can be either \u0026#39;PRIVATE_RFC_1918\u0026#39;, \u0026#39;INTERNAL_HTTPS_LOAD_BALANCER\u0026#39; or \u0026#39;REGIONAL_MANAGED_PROXY\u0026#39;.\nA subnetwork with purpose set to \u0026#39;INTERNAL_HTTPS_LOAD_BALANCER\u0026#39; is a user-created subnetwork that is reserved for Internal HTTP(S) Load Balancing.\nA subnetwork in a given region with purpose set to \u0026#39;REGIONAL_MANAGED_PROXY\u0026#39; is a proxy-only subnet and is shared between all the regional Envoy-based load balancers.\nIf unspecified, the purpose defaults to \u0026#39;PRIVATE_RFC_1918\u0026#39;.\nThe enableFlowLogs field isn\u0026#39;t supported with the purpose field set to \u0026#39;INTERNAL_HTTPS_LOAD_BALANCER\u0026#39;. When `null`, the `purpose` field will be omitted from the resulting object.\n  - `region` (`string`): The GCP region for this subnetwork. When `null`, the `region` field will be omitted from the resulting object.\n  - `role` (`string`): The role of subnetwork.\nThe value can be set to \u0026#39;ACTIVE\u0026#39; or \u0026#39;BACKUP\u0026#39;.\nAn \u0026#39;ACTIVE\u0026#39; subnetwork is one that is currently being used.\nA \u0026#39;BACKUP\u0026#39; subnetwork is one that is ready to be promoted to \u0026#39;ACTIVE\u0026#39; or is currently draining.\n\nSubnetwork role must be specified when purpose is set to \u0026#39;INTERNAL_HTTPS_LOAD_BALANCER\u0026#39; or \u0026#39;REGIONAL_MANAGED_PROXY\u0026#39;. Possible values: [\u0026#34;ACTIVE\u0026#34;, \u0026#34;BACKUP\u0026#34;] When `null`, the `role` field will be omitted from the resulting object.\n  - `secondary_ip_range` (`list`): An array of configurations for secondary IP ranges for VM instances\ncontained in this subnetwork. The primary IP of such VM must belong\nto the primary ipCidrRange of the subnetwork. The alias IPs may belong\nto either primary or secondary ranges.\n\n**Note**: This field uses [attr-as-block mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html) to avoid\nbreaking users during the 0.12 upgrade. To explicitly send a list\nof zero objects you must use the following syntax:\n\u0026#39;example=[]\u0026#39;\nFor more details about this behavior, see [this section](https://www.terraform.io/docs/configuration/attr-as-blocks.html#defining-a-fixed-object-collection-value). When `null`, the `secondary_ip_range` field will be omitted from the resulting object.\n  - `stack_type` (`string`): The stack type for this subnet to identify whether the IPv6 feature is enabled or not.\nIf not specified IPV4_ONLY will be used. Possible values: [\u0026#34;IPV4_ONLY\u0026#34;, \u0026#34;IPV4_IPV6\u0026#34;] When `null`, the `stack_type` field will be omitted from the resulting object.\n  - `log_config` (`list[obj]`): Denotes the logging options for the subnetwork flow logs. If logging is enabled\nlogs will be exported to Stackdriver. This field cannot be set if the \u0026#39;purpose\u0026#39; of this\nsubnetwork is \u0026#39;INTERNAL_HTTPS_LOAD_BALANCER\u0026#39; When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.log_config.new](#fn-log_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    ip_cidr_range,
    name,
    network,
    description=null,
    ipv6_access_type=null,
    log_config=null,
    private_ip_google_access=null,
    private_ipv6_google_access=null,
    project=null,
    purpose=null,
    region=null,
    role=null,
    secondary_ip_range=null,
    stack_type=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_subnetwork',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      ip_cidr_range=ip_cidr_range,
      ipv6_access_type=ipv6_access_type,
      log_config=log_config,
      name=name,
      network=network,
      private_ip_google_access=private_ip_google_access,
      private_ipv6_google_access=private_ipv6_google_access,
      project=project,
      purpose=purpose,
      region=region,
      role=role,
      secondary_ip_range=secondary_ip_range,
      stack_type=stack_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_subnetwork.newAttrs` constructs a new object with attributes and blocks configured for the `compute_subnetwork`\nTerraform resource.\n\nUnlike [google.compute_subnetwork.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. This field can be set only at resource\ncreation time. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_cidr_range` (`string`): The range of internal addresses that are owned by this subnetwork.\nProvide this property when you create the subnetwork. For example,\n10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and\nnon-overlapping within a network. Only IPv4 is supported.\n  - `ipv6_access_type` (`string`): The access type of IPv6 address this subnet holds. It&#39;s immutable and can only be specified during creation\nor the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet\ncannot enable direct path. Possible values: [&#34;EXTERNAL&#34;, &#34;INTERNAL&#34;] When `null`, the `ipv6_access_type` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the resource, provided by the client when initially\ncreating the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): The network this subnet belongs to.\nOnly networks that are in the distributed mode can have subnetworks.\n  - `private_ip_google_access` (`bool`): When enabled, VMs in this subnetwork without external IP addresses can\naccess Google APIs and services by using Private Google Access. When `null`, the `private_ip_google_access` field will be omitted from the resulting object.\n  - `private_ipv6_google_access` (`string`): The private IPv6 google access type for the VMs in this subnet. When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of the resource. This field can be either &#39;PRIVATE_RFC_1918&#39;, &#39;INTERNAL_HTTPS_LOAD_BALANCER&#39; or &#39;REGIONAL_MANAGED_PROXY&#39;.\nA subnetwork with purpose set to &#39;INTERNAL_HTTPS_LOAD_BALANCER&#39; is a user-created subnetwork that is reserved for Internal HTTP(S) Load Balancing.\nA subnetwork in a given region with purpose set to &#39;REGIONAL_MANAGED_PROXY&#39; is a proxy-only subnet and is shared between all the regional Envoy-based load balancers.\nIf unspecified, the purpose defaults to &#39;PRIVATE_RFC_1918&#39;.\nThe enableFlowLogs field isn&#39;t supported with the purpose field set to &#39;INTERNAL_HTTPS_LOAD_BALANCER&#39;. When `null`, the `purpose` field will be omitted from the resulting object.\n  - `region` (`string`): The GCP region for this subnetwork. When `null`, the `region` field will be omitted from the resulting object.\n  - `role` (`string`): The role of subnetwork.\nThe value can be set to &#39;ACTIVE&#39; or &#39;BACKUP&#39;.\nAn &#39;ACTIVE&#39; subnetwork is one that is currently being used.\nA &#39;BACKUP&#39; subnetwork is one that is ready to be promoted to &#39;ACTIVE&#39; or is currently draining.\n\nSubnetwork role must be specified when purpose is set to &#39;INTERNAL_HTTPS_LOAD_BALANCER&#39; or &#39;REGIONAL_MANAGED_PROXY&#39;. Possible values: [&#34;ACTIVE&#34;, &#34;BACKUP&#34;] When `null`, the `role` field will be omitted from the resulting object.\n  - `secondary_ip_range` (`list`): An array of configurations for secondary IP ranges for VM instances\ncontained in this subnetwork. The primary IP of such VM must belong\nto the primary ipCidrRange of the subnetwork. The alias IPs may belong\nto either primary or secondary ranges.\n\n**Note**: This field uses [attr-as-block mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html) to avoid\nbreaking users during the 0.12 upgrade. To explicitly send a list\nof zero objects you must use the following syntax:\n&#39;example=[]&#39;\nFor more details about this behavior, see [this section](https://www.terraform.io/docs/configuration/attr-as-blocks.html#defining-a-fixed-object-collection-value). When `null`, the `secondary_ip_range` field will be omitted from the resulting object.\n  - `stack_type` (`string`): The stack type for this subnet to identify whether the IPv6 feature is enabled or not.\nIf not specified IPV4_ONLY will be used. Possible values: [&#34;IPV4_ONLY&#34;, &#34;IPV4_IPV6&#34;] When `null`, the `stack_type` field will be omitted from the resulting object.\n  - `log_config` (`list[obj]`): Denotes the logging options for the subnetwork flow logs. If logging is enabled\nlogs will be exported to Stackdriver. This field cannot be set if the &#39;purpose&#39; of this\nsubnetwork is &#39;INTERNAL_HTTPS_LOAD_BALANCER&#39; When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.log_config.new](#fn-log_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_subnetwork` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    ip_cidr_range,
    name,
    network,
    description=null,
    ipv6_access_type=null,
    log_config=null,
    private_ip_google_access=null,
    private_ipv6_google_access=null,
    project=null,
    purpose=null,
    region=null,
    role=null,
    secondary_ip_range=null,
    stack_type=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    ip_cidr_range: ip_cidr_range,
    ipv6_access_type: ipv6_access_type,
    log_config: log_config,
    name: name,
    network: network,
    private_ip_google_access: private_ip_google_access,
    private_ipv6_google_access: private_ipv6_google_access,
    project: project,
    purpose: purpose,
    region: region,
    role: role,
    secondary_ip_range: secondary_ip_range,
    stack_type: stack_type,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_subnetwork.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIpCidrRange':: d.fn(help='`google.string.withIpCidrRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_cidr_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_cidr_range` field.\n', args=[]),
  withIpCidrRange(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          ip_cidr_range: value,
        },
      },
    },
  },
  '#withIpv6AccessType':: d.fn(help='`google.string.withIpv6AccessType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ipv6_access_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ipv6_access_type` field.\n', args=[]),
  withIpv6AccessType(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          ipv6_access_type: value,
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPrivateIpGoogleAccess':: d.fn(help='`google.bool.withPrivateIpGoogleAccess` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the private_ip_google_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `private_ip_google_access` field.\n', args=[]),
  withPrivateIpGoogleAccess(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          private_ip_google_access: value,
        },
      },
    },
  },
  '#withPrivateIpv6GoogleAccess':: d.fn(help='`google.string.withPrivateIpv6GoogleAccess` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the private_ipv6_google_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `private_ipv6_google_access` field.\n', args=[]),
  withPrivateIpv6GoogleAccess(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          private_ipv6_google_access: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPurpose':: d.fn(help='`google.string.withPurpose` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the purpose field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `purpose` field.\n', args=[]),
  withPurpose(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  '#withSecondaryIpRange':: d.fn(help='`google.list.withSecondaryIpRange` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the secondary_ip_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `secondary_ip_range` field.\n', args=[]),
  withSecondaryIpRange(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          secondary_ip_range: value,
        },
      },
    },
  },
  '#withStackType':: d.fn(help='`google.string.withStackType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the stack_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `stack_type` field.\n', args=[]),
  withStackType(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          stack_type: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
