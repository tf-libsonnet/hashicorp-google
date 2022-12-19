local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='memcache_instance', url='', help='`memcache_instance` represents the `google_memcache_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  maintenance_policy:: {
    '#new':: d.fn(help='\n`google.memcache_instance.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Optional. Description of what this policy is for.\nCreate/Update methods return INVALID_ARGUMENT if the\nlength is greater than 512. When `null`, the `description` field will be omitted from the resulting object.\n  - `weekly_maintenance_window` (`list[obj]`): Required. Maintenance window that is applied to resources covered by this policy.\nMinimum 1. For the current version, the maximum number of weekly_maintenance_windows\nis expected to be one. When `null`, the `weekly_maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.weekly_maintenance_window.new](#fn-memcache_instanceweekly_maintenance_windownew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_policy` sub block.\n', args=[]),
    new(
      description=null,
      weekly_maintenance_window=null
    ):: std.prune(a={
      description: description,
      weekly_maintenance_window: weekly_maintenance_window,
    }),
    weekly_maintenance_window:: {
      '#new':: d.fn(help='\n`google.memcache_instance.maintenance_policy.weekly_maintenance_window.new` constructs a new object with attributes and blocks configured for the `weekly_maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`string`): Required. The day of week that maintenance updates occur.\n- DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.\n- MONDAY: Monday\n- TUESDAY: Tuesday\n- WEDNESDAY: Wednesday\n- THURSDAY: Thursday\n- FRIDAY: Friday\n- SATURDAY: Saturday\n- SUNDAY: Sunday Possible values: [&#34;DAY_OF_WEEK_UNSPECIFIED&#34;, &#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n  - `duration` (`string`): Required. The length of the maintenance window, ranging from 3 hours to 8 hours.\nA duration in seconds with up to nine fractional digits,\nterminated by &#39;s&#39;. Example: &#34;3.5s&#34;.\n  - `start_time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `start_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.weekly_maintenance_window.start_time.new](#fn-memcache_instancemaintenance_policystart_timenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weekly_maintenance_window` sub block.\n', args=[]),
      new(
        day,
        duration,
        start_time=null
      ):: std.prune(a={
        day: day,
        duration: duration,
        start_time: start_time,
      }),
      start_time:: {
        '#new':: d.fn(help='\n`google.memcache_instance.maintenance_policy.weekly_maintenance_window.start_time.new` constructs a new object with attributes and blocks configured for the `start_time`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.\nAn API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59.\nAn API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `start_time` sub block.\n', args=[]),
        new(
          hours=null,
          minutes=null,
          nanos=null,
          seconds=null
        ):: std.prune(a={
          hours: hours,
          minutes: minutes,
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
  },
  memcache_parameters:: {
    '#new':: d.fn(help='\n`google.memcache_instance.memcache_parameters.new` constructs a new object with attributes and blocks configured for the `memcache_parameters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `params` (`obj`): User-defined set of parameters to use in the memcache process. When `null`, the `params` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `memcache_parameters` sub block.\n', args=[]),
    new(
      params=null
    ):: std.prune(a={
      params: params,
    }),
  },
  '#new':: d.fn(help="\n`google.memcache_instance.new` injects a new `google_memcache_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.memcache_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.memcache_instance` using the reference:\n\n    $._ref.google_memcache_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_memcache_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `authorized_network` (`string`): The full name of the GCE network to connect the instance to.  If not provided,\n\u0026#39;default\u0026#39; will be used. When `null`, the `authorized_network` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-visible name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `memcache_version` (`string`): The major version of Memcached software. If not provided, latest supported version will be used.\nCurrently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically\ndetermined by our system based on the latest supported minor version. Default value: \u0026#34;MEMCACHE_1_5\u0026#34; Possible values: [\u0026#34;MEMCACHE_1_5\u0026#34;] When `null`, the `memcache_version` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the instance.\n  - `node_count` (`number`): Number of nodes in the memcache instance.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the Memcache instance. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `zones` (`list`): Zones where memcache nodes should be provisioned.  If not\nprovided, all zones will be used. When `null`, the `zones` field will be omitted from the resulting object.\n  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `memcache_parameters` (`list[obj]`): User-specified parameters for this memcache instance. When `null`, the `memcache_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.memcache_parameters.new](#fn-memcache_parametersnew) constructor.\n  - `node_config` (`list[obj]`): Configuration for memcache nodes. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.node_config.new](#fn-node_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    node_count,
    authorized_network=null,
    display_name=null,
    labels=null,
    maintenance_policy=null,
    memcache_parameters=null,
    memcache_version=null,
    node_config=null,
    project=null,
    region=null,
    timeouts=null,
    zones=null,
    _meta={}
  ):: tf.withResource(
    type='google_memcache_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorized_network=authorized_network,
      display_name=display_name,
      labels=labels,
      maintenance_policy=maintenance_policy,
      memcache_parameters=memcache_parameters,
      memcache_version=memcache_version,
      name=name,
      node_config=node_config,
      node_count=node_count,
      project=project,
      region=region,
      timeouts=timeouts,
      zones=zones
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.memcache_instance.newAttrs` constructs a new object with attributes and blocks configured for the `memcache_instance`\nTerraform resource.\n\nUnlike [google.memcache_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `authorized_network` (`string`): The full name of the GCE network to connect the instance to.  If not provided,\n&#39;default&#39; will be used. When `null`, the `authorized_network` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-visible name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `memcache_version` (`string`): The major version of Memcached software. If not provided, latest supported version will be used.\nCurrently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically\ndetermined by our system based on the latest supported minor version. Default value: &#34;MEMCACHE_1_5&#34; Possible values: [&#34;MEMCACHE_1_5&#34;] When `null`, the `memcache_version` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the instance.\n  - `node_count` (`number`): Number of nodes in the memcache instance.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the Memcache instance. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `zones` (`list`): Zones where memcache nodes should be provisioned.  If not\nprovided, all zones will be used. When `null`, the `zones` field will be omitted from the resulting object.\n  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `memcache_parameters` (`list[obj]`): User-specified parameters for this memcache instance. When `null`, the `memcache_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.memcache_parameters.new](#fn-memcache_parametersnew) constructor.\n  - `node_config` (`list[obj]`): Configuration for memcache nodes. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.node_config.new](#fn-node_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `memcache_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    node_count,
    authorized_network=null,
    display_name=null,
    labels=null,
    maintenance_policy=null,
    memcache_parameters=null,
    memcache_version=null,
    node_config=null,
    project=null,
    region=null,
    timeouts=null,
    zones=null
  ):: std.prune(a={
    authorized_network: authorized_network,
    display_name: display_name,
    labels: labels,
    maintenance_policy: maintenance_policy,
    memcache_parameters: memcache_parameters,
    memcache_version: memcache_version,
    name: name,
    node_config: node_config,
    node_count: node_count,
    project: project,
    region: region,
    timeouts: timeouts,
    zones: zones,
  }),
  node_config:: {
    '#new':: d.fn(help='\n`google.memcache_instance.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_count` (`number`): Number of CPUs per node.\n  - `memory_size_mb` (`number`): Memory size in Mebibytes for each memcache node.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      cpu_count,
      memory_size_mb
    ):: std.prune(a={
      cpu_count: cpu_count,
      memory_size_mb: memory_size_mb,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.memcache_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthorizedNetwork':: d.fn(help='`google.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorized_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorized_network` field.\n', args=[]),
  withAuthorizedNetwork(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMaintenancePolicy':: d.fn(help='`google.list[obj].withMaintenancePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenancePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicy(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  '#withMaintenancePolicyMixin':: d.fn(help='`google.list[obj].withMaintenancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenancePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicyMixin(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMemcacheParameters':: d.fn(help='`google.list[obj].withMemcacheParameters` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the memcache_parameters field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMemcacheParametersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `memcache_parameters` field.\n', args=[]),
  withMemcacheParameters(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          memcache_parameters: value,
        },
      },
    },
  },
  '#withMemcacheParametersMixin':: d.fn(help='`google.list[obj].withMemcacheParametersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the memcache_parameters field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMemcacheParameters](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `memcache_parameters` field.\n', args=[]),
  withMemcacheParametersMixin(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          memcache_parameters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMemcacheVersion':: d.fn(help='`google.string.withMemcacheVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the memcache_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `memcache_version` field.\n', args=[]),
  withMemcacheVersion(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          memcache_version: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeCount':: d.fn(help='`google.number.withNodeCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the node_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `node_count` field.\n', args=[]),
  withNodeCount(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          node_count: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZones':: d.fn(help='`google.list.withZones` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the zones field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `zones` field.\n', args=[]),
  withZones(resourceLabel, value): {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          zones: value,
        },
      },
    },
  },
}
