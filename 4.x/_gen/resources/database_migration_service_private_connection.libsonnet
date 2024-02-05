local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='database_migration_service_private_connection', url='', help='`database_migration_service_private_connection` represents the `google_database_migration_service_private_connection` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.database_migration_service_private_connection.new` injects a new `google_database_migration_service_private_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.database_migration_service_private_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.database_migration_service_private_connection` using the reference:\n\n    $._ref.google_database_migration_service_private_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_database_migration_service_private_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this private connection is located in.\n  - `private_connection_id` (`string`): The private connectivity identifier.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_private_connection.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_peering_config` (`list[obj]`): The VPC Peering configuration is used to create VPC peering\nbetween databasemigrationservice and the consumer\u0026#39;s VPC. When `null`, the `vpc_peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_private_connection.vpc_peering_config.new](#fn-vpc_peering_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    private_connection_id,
    display_name=null,
    labels=null,
    project=null,
    timeouts=null,
    vpc_peering_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_database_migration_service_private_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      labels=labels,
      location=location,
      private_connection_id=private_connection_id,
      project=project,
      timeouts=timeouts,
      vpc_peering_config=vpc_peering_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.database_migration_service_private_connection.newAttrs` constructs a new object with attributes and blocks configured for the `database_migration_service_private_connection`\nTerraform resource.\n\nUnlike [google.database_migration_service_private_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this private connection is located in.\n  - `private_connection_id` (`string`): The private connectivity identifier.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_private_connection.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_peering_config` (`list[obj]`): The VPC Peering configuration is used to create VPC peering\nbetween databasemigrationservice and the consumer&#39;s VPC. When `null`, the `vpc_peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_private_connection.vpc_peering_config.new](#fn-vpc_peering_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `database_migration_service_private_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    private_connection_id,
    display_name=null,
    labels=null,
    project=null,
    timeouts=null,
    vpc_peering_config=null
  ):: std.prune(a={
    display_name: display_name,
    labels: labels,
    location: location,
    private_connection_id: private_connection_id,
    project: project,
    timeouts: timeouts,
    vpc_peering_config: vpc_peering_config,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.database_migration_service_private_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  vpc_peering_config:: {
    '#new':: d.fn(help='\n`google.database_migration_service_private_connection.vpc_peering_config.new` constructs a new object with attributes and blocks configured for the `vpc_peering_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subnet` (`string`): A free subnet for peering. (CIDR of /29)\n  - `vpc_name` (`string`): Fully qualified name of the VPC that Database Migration Service will peer to.\nFormat: projects/{project}/global/{networks}/{name}\n\n**Returns**:\n  - An attribute object that represents the `vpc_peering_config` sub block.\n', args=[]),
    new(
      subnet,
      vpc_name
    ):: std.prune(a={
      subnet: subnet,
      vpc_name: vpc_name,
    }),
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPrivateConnectionId':: d.fn(help='`google.string.withPrivateConnectionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the private_connection_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `private_connection_id` field.\n', args=[]),
  withPrivateConnectionId(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          private_connection_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVpcPeeringConfig':: d.fn(help='`google.list[obj].withVpcPeeringConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_peering_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVpcPeeringConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_peering_config` field.\n', args=[]),
  withVpcPeeringConfig(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          vpc_peering_config: value,
        },
      },
    },
  },
  '#withVpcPeeringConfigMixin':: d.fn(help='`google.list[obj].withVpcPeeringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_peering_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVpcPeeringConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_peering_config` field.\n', args=[]),
  withVpcPeeringConfigMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_private_connection+: {
        [resourceLabel]+: {
          vpc_peering_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
