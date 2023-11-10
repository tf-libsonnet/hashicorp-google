local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='redis_cluster', url='', help='`redis_cluster` represents the `google_redis_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.redis_cluster.new` injects a new `google_redis_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.redis_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.redis_cluster` using the reference:\n\n    $._ref.google_redis_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_redis_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `authorization_mode` (`string`): Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster. Default value: \u0026#34;AUTH_MODE_DISABLED\u0026#34; Possible values: [\u0026#34;AUTH_MODE_UNSPECIFIED\u0026#34;, \u0026#34;AUTH_MODE_IAM_AUTH\u0026#34;, \u0026#34;AUTH_MODE_DISABLED\u0026#34;] When `null`, the `authorization_mode` field will be omitted from the resulting object.\n  - `name` (`string`): Unique name of the resource in this scope including project and location using the form:\nprojects/{projectId}/locations/{locationId}/clusters/{clusterId} When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The name of the region of the Redis cluster. When `null`, the `region` field will be omitted from the resulting object.\n  - `replica_count` (`number`): Optional. The number of replica nodes per shard. When `null`, the `replica_count` field will be omitted from the resulting object.\n  - `shard_count` (`number`): Required. Number of shards for the Redis cluster.\n  - `transit_encryption_mode` (`string`): Optional. The in-transit encryption for the Redis cluster.\nIf not provided, encryption is disabled for the cluster. Default value: \u0026#34;TRANSIT_ENCRYPTION_MODE_DISABLED\u0026#34; Possible values: [\u0026#34;TRANSIT_ENCRYPTION_MODE_UNSPECIFIED\u0026#34;, \u0026#34;TRANSIT_ENCRYPTION_MODE_DISABLED\u0026#34;, \u0026#34;TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION\u0026#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.\n  - `psc_configs` (`list[obj]`): Required. Each PscConfig configures the consumer network where two\nnetwork addresses will be designated to the cluster for client access.\nCurrently, only one PscConfig is supported. When `null`, the `psc_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.psc_configs.new](#fn-psc_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    shard_count,
    authorization_mode=null,
    name=null,
    project=null,
    psc_configs=null,
    region=null,
    replica_count=null,
    timeouts=null,
    transit_encryption_mode=null,
    _meta={}
  ):: tf.withResource(
    type='google_redis_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorization_mode=authorization_mode,
      name=name,
      project=project,
      psc_configs=psc_configs,
      region=region,
      replica_count=replica_count,
      shard_count=shard_count,
      timeouts=timeouts,
      transit_encryption_mode=transit_encryption_mode
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.redis_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `redis_cluster`\nTerraform resource.\n\nUnlike [google.redis_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `authorization_mode` (`string`): Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster. Default value: &#34;AUTH_MODE_DISABLED&#34; Possible values: [&#34;AUTH_MODE_UNSPECIFIED&#34;, &#34;AUTH_MODE_IAM_AUTH&#34;, &#34;AUTH_MODE_DISABLED&#34;] When `null`, the `authorization_mode` field will be omitted from the resulting object.\n  - `name` (`string`): Unique name of the resource in this scope including project and location using the form:\nprojects/{projectId}/locations/{locationId}/clusters/{clusterId} When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The name of the region of the Redis cluster. When `null`, the `region` field will be omitted from the resulting object.\n  - `replica_count` (`number`): Optional. The number of replica nodes per shard. When `null`, the `replica_count` field will be omitted from the resulting object.\n  - `shard_count` (`number`): Required. Number of shards for the Redis cluster.\n  - `transit_encryption_mode` (`string`): Optional. The in-transit encryption for the Redis cluster.\nIf not provided, encryption is disabled for the cluster. Default value: &#34;TRANSIT_ENCRYPTION_MODE_DISABLED&#34; Possible values: [&#34;TRANSIT_ENCRYPTION_MODE_UNSPECIFIED&#34;, &#34;TRANSIT_ENCRYPTION_MODE_DISABLED&#34;, &#34;TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION&#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.\n  - `psc_configs` (`list[obj]`): Required. Each PscConfig configures the consumer network where two\nnetwork addresses will be designated to the cluster for client access.\nCurrently, only one PscConfig is supported. When `null`, the `psc_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.psc_configs.new](#fn-psc_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `redis_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    shard_count,
    authorization_mode=null,
    name=null,
    project=null,
    psc_configs=null,
    region=null,
    replica_count=null,
    timeouts=null,
    transit_encryption_mode=null
  ):: std.prune(a={
    authorization_mode: authorization_mode,
    name: name,
    project: project,
    psc_configs: psc_configs,
    region: region,
    replica_count: replica_count,
    shard_count: shard_count,
    timeouts: timeouts,
    transit_encryption_mode: transit_encryption_mode,
  }),
  psc_configs:: {
    '#new':: d.fn(help='\n`google.redis_cluster.psc_configs.new` constructs a new object with attributes and blocks configured for the `psc_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network` (`string`): Required. The consumer network where the network address of\nthe discovery endpoint will be reserved, in the form of\nprojects/{network_project_id_or_number}/global/networks/{network_id}.\n\n**Returns**:\n  - An attribute object that represents the `psc_configs` sub block.\n', args=[]),
    new(
      network
    ):: std.prune(a={
      network: network,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.redis_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthorizationMode':: d.fn(help='`google.string.withAuthorizationMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorization_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorization_mode` field.\n', args=[]),
  withAuthorizationMode(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          authorization_mode: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPscConfigs':: d.fn(help='`google.list[obj].withPscConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the psc_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPscConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `psc_configs` field.\n', args=[]),
  withPscConfigs(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          psc_configs: value,
        },
      },
    },
  },
  '#withPscConfigsMixin':: d.fn(help='`google.list[obj].withPscConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the psc_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPscConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `psc_configs` field.\n', args=[]),
  withPscConfigsMixin(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          psc_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReplicaCount':: d.fn(help='`google.number.withReplicaCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the replica_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `replica_count` field.\n', args=[]),
  withReplicaCount(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          replica_count: value,
        },
      },
    },
  },
  '#withShardCount':: d.fn(help='`google.number.withShardCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the shard_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `shard_count` field.\n', args=[]),
  withShardCount(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          shard_count: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransitEncryptionMode':: d.fn(help='`google.string.withTransitEncryptionMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the transit_encryption_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `transit_encryption_mode` field.\n', args=[]),
  withTransitEncryptionMode(resourceLabel, value): {
    resource+: {
      google_redis_cluster+: {
        [resourceLabel]+: {
          transit_encryption_mode: value,
        },
      },
    },
  },
}
