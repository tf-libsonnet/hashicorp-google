local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_instance', url='', help='`alloydb_instance` represents the `google_alloydb_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  machine_config:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.machine_config.new` constructs a new object with attributes and blocks configured for the `machine_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_count` (`number`): The number of CPU&#39;s in the VM instance. When `null`, the `cpu_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `machine_config` sub block.\n', args=[]),
    new(
      cpu_count=null
    ):: std.prune(a={
      cpu_count: cpu_count,
    }),
  },
  '#new':: d.fn(help="\n`google.alloydb_instance.new` injects a new `google_alloydb_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_instance` using the reference:\n\n    $._ref.google_alloydb_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `availability_type` (`string`): Availability type of an Instance. Defaults to REGIONAL for both primary and read instances. Note that primary and read instances can have different availability types. Possible values: [\u0026#34;AVAILABILITY_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;ZONAL\u0026#34;, \u0026#34;REGIONAL\u0026#34;] When `null`, the `availability_type` field will be omitted from the resulting object.\n  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/clusters/{cluster_id}\u0026#39;\n  - `database_flags` (`obj`): Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. When `null`, the `database_flags` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gce_zone` (`string`): The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. When `null`, the `gce_zone` field will be omitted from the resulting object.\n  - `instance_id` (`string`): The ID of the alloydb instance.\n  - `instance_type` (`string`): The type of the instance. Possible values: [\u0026#34;PRIMARY\u0026#34;, \u0026#34;READ_POOL\u0026#34;]\n  - `labels` (`obj`): User-defined labels for the alloydb instance. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_config` (`list[obj]`): Configurations for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.machine_config.new](#fn-machine_confignew) constructor.\n  - `read_pool_config` (`list[obj]`): Read pool specific config. When `null`, the `read_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.read_pool_config.new](#fn-read_pool_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    instance_id,
    instance_type,
    annotations=null,
    availability_type=null,
    database_flags=null,
    display_name=null,
    gce_zone=null,
    labels=null,
    machine_config=null,
    read_pool_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      availability_type=availability_type,
      cluster=cluster,
      database_flags=database_flags,
      display_name=display_name,
      gce_zone=gce_zone,
      instance_id=instance_id,
      instance_type=instance_type,
      labels=labels,
      machine_config=machine_config,
      read_pool_config=read_pool_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_instance.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_instance`\nTerraform resource.\n\nUnlike [google.alloydb_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `availability_type` (`string`): Availability type of an Instance. Defaults to REGIONAL for both primary and read instances. Note that primary and read instances can have different availability types. Possible values: [&#34;AVAILABILITY_TYPE_UNSPECIFIED&#34;, &#34;ZONAL&#34;, &#34;REGIONAL&#34;] When `null`, the `availability_type` field will be omitted from the resulting object.\n  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format\n&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;\n  - `database_flags` (`obj`): Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. When `null`, the `database_flags` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gce_zone` (`string`): The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. When `null`, the `gce_zone` field will be omitted from the resulting object.\n  - `instance_id` (`string`): The ID of the alloydb instance.\n  - `instance_type` (`string`): The type of the instance. Possible values: [&#34;PRIMARY&#34;, &#34;READ_POOL&#34;]\n  - `labels` (`obj`): User-defined labels for the alloydb instance. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_config` (`list[obj]`): Configurations for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.machine_config.new](#fn-machine_confignew) constructor.\n  - `read_pool_config` (`list[obj]`): Read pool specific config. When `null`, the `read_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.read_pool_config.new](#fn-read_pool_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    instance_id,
    instance_type,
    annotations=null,
    availability_type=null,
    database_flags=null,
    display_name=null,
    gce_zone=null,
    labels=null,
    machine_config=null,
    read_pool_config=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    availability_type: availability_type,
    cluster: cluster,
    database_flags: database_flags,
    display_name: display_name,
    gce_zone: gce_zone,
    instance_id: instance_id,
    instance_type: instance_type,
    labels: labels,
    machine_config: machine_config,
    read_pool_config: read_pool_config,
    timeouts: timeouts,
  }),
  read_pool_config:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.read_pool_config.new` constructs a new object with attributes and blocks configured for the `read_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_count` (`number`): Read capacity, i.e. number of nodes in a read pool instance. When `null`, the `node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `read_pool_config` sub block.\n', args=[]),
    new(
      node_count=null
    ):: std.prune(a={
      node_count: node_count,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_alloydb_instance+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAvailabilityType':: d.fn(help='`google.string.withAvailabilityType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the availability_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `availability_type` field.\n', args=[]),
  withAvailabilityType(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          availability_type: value,
        },
      },
    },
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withDatabaseFlags':: d.fn(help='`google.obj.withDatabaseFlags` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the database_flags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `database_flags` field.\n', args=[]),
  withDatabaseFlags(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          database_flags: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGceZone':: d.fn(help='`google.string.withGceZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the gce_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `gce_zone` field.\n', args=[]),
  withGceZone(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          gce_zone: value,
        },
      },
    },
  },
  '#withInstanceId':: d.fn(help='`google.string.withInstanceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_id` field.\n', args=[]),
  withInstanceId(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  '#withInstanceType':: d.fn(help='`google.string.withInstanceType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_type` field.\n', args=[]),
  withInstanceType(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          instance_type: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMachineConfig':: d.fn(help='`google.list[obj].withMachineConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the machine_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMachineConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `machine_config` field.\n', args=[]),
  withMachineConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          machine_config: value,
        },
      },
    },
  },
  '#withMachineConfigMixin':: d.fn(help='`google.list[obj].withMachineConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the machine_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMachineConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `machine_config` field.\n', args=[]),
  withMachineConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          machine_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withReadPoolConfig':: d.fn(help='`google.list[obj].withReadPoolConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the read_pool_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReadPoolConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `read_pool_config` field.\n', args=[]),
  withReadPoolConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          read_pool_config: value,
        },
      },
    },
  },
  '#withReadPoolConfigMixin':: d.fn(help='`google.list[obj].withReadPoolConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the read_pool_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReadPoolConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `read_pool_config` field.\n', args=[]),
  withReadPoolConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          read_pool_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
