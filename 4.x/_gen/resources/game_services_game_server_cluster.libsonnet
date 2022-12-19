local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='game_services_game_server_cluster', url='', help='`game_services_game_server_cluster` represents the `google_game_services_game_server_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  connection_info:: {
    gke_cluster_reference:: {
      '#new':: d.fn(help='\n`google.game_services_game_server_cluster.connection_info.gke_cluster_reference.new` constructs a new object with attributes and blocks configured for the `gke_cluster_reference`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster` (`string`): The full or partial name of a GKE cluster, using one of the following\nforms:\n\n* &#39;projects/{project_id}/locations/{location}/clusters/{cluster_id}&#39;\n* &#39;locations/{location}/clusters/{cluster_id}&#39;\n* &#39;{cluster_id}&#39;\n\nIf project and location are not specified, the project and location of the\nGameServerCluster resource are used to generate the full name of the\nGKE cluster.\n\n**Returns**:\n  - An attribute object that represents the `gke_cluster_reference` sub block.\n', args=[]),
      new(
        cluster
      ):: std.prune(a={
        cluster: cluster,
      }),
    },
    '#new':: d.fn(help='\n`google.game_services_game_server_cluster.connection_info.new` constructs a new object with attributes and blocks configured for the `connection_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`string`): Namespace designated on the game server cluster where the game server\ninstances will be created. The namespace existence will be validated\nduring creation.\n  - `gke_cluster_reference` (`list[obj]`): Reference of the GKE cluster where the game servers are installed. When `null`, the `gke_cluster_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.connection_info.gke_cluster_reference.new](#fn-connection_infogke_cluster_referencenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `connection_info` sub block.\n', args=[]),
    new(
      namespace,
      gke_cluster_reference=null
    ):: std.prune(a={
      gke_cluster_reference: gke_cluster_reference,
      namespace: namespace,
    }),
  },
  '#new':: d.fn(help="\n`google.game_services_game_server_cluster.new` injects a new `google_game_services_game_server_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.game_services_game_server_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.game_services_game_server_cluster` using the reference:\n\n    $._ref.google_game_services_game_server_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_game_services_game_server_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): Required. The resource name of the game server cluster\n  - `description` (`string`): Human readable description of the cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this game server cluster. Each label is a\nkey-value pair. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Cluster. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `realm_id` (`string`): The realm id of the game server realm.\n  - `connection_info` (`list[obj]`): Game server cluster connection information. This information is used to\nmanage game server clusters. When `null`, the `connection_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.connection_info.new](#fn-game_services_game_server_clusterconnection_infonew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.timeouts.new](#fn-game_services_game_server_clustertimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    realm_id,
    connection_info=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_game_server_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      connection_info=connection_info,
      description=description,
      labels=labels,
      location=location,
      project=project,
      realm_id=realm_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.game_services_game_server_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_cluster`\nTerraform resource.\n\nUnlike [google.game_services_game_server_cluster.new](#fn-game_services_game_server_clusternew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): Required. The resource name of the game server cluster\n  - `description` (`string`): Human readable description of the cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this game server cluster. Each label is a\nkey-value pair. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Cluster. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `realm_id` (`string`): The realm id of the game server realm.\n  - `connection_info` (`list[obj]`): Game server cluster connection information. This information is used to\nmanage game server clusters. When `null`, the `connection_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.connection_info.new](#fn-game_services_game_server_clusterconnection_infonew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.timeouts.new](#fn-game_services_game_server_clustertimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    realm_id,
    connection_info=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    connection_info: connection_info,
    description: description,
    labels: labels,
    location: location,
    project: project,
    realm_id: realm_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.game_services_game_server_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withClusterId':: d.fn(help='`google.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withConnectionInfo':: d.fn(help='`google.list[obj].withConnectionInfo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the connection_info field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConnectionInfoMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `connection_info` field.\n', args=[]),
  withConnectionInfo(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          connection_info: value,
        },
      },
    },
  },
  '#withConnectionInfoMixin':: d.fn(help='`google.list[obj].withConnectionInfoMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the connection_info field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConnectionInfo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `connection_info` field.\n', args=[]),
  withConnectionInfoMixin(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          connection_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRealmId':: d.fn(help='`google.string.withRealmId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the realm_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `realm_id` field.\n', args=[]),
  withRealmId(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          realm_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
