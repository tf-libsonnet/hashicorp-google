local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_user', url='', help='`alloydb_user` represents the `google_alloydb_user` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.alloydb_user.new` injects a new `google_alloydb_user` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_user.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_user` using the reference:\n\n    $._ref.google_alloydb_user.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_user.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/clusters/{cluster_id}\u0026#39;\n  - `database_roles` (`list`): List of database roles this database user has. When `null`, the `database_roles` field will be omitted from the resulting object.\n  - `password` (`string`): Password for this database user. When `null`, the `password` field will be omitted from the resulting object.\n  - `user_id` (`string`): The database role name of the user.\n  - `user_type` (`string`): The type of this user. Possible values: [\u0026#34;ALLOYDB_BUILT_IN\u0026#34;, \u0026#34;ALLOYDB_IAM_USER\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_user.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    user_id,
    user_type,
    database_roles=null,
    password=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_user',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster=cluster,
      database_roles=database_roles,
      password=password,
      timeouts=timeouts,
      user_id=user_id,
      user_type=user_type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_user.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_user`\nTerraform resource.\n\nUnlike [google.alloydb_user.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format\n&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;\n  - `database_roles` (`list`): List of database roles this database user has. When `null`, the `database_roles` field will be omitted from the resulting object.\n  - `password` (`string`): Password for this database user. When `null`, the `password` field will be omitted from the resulting object.\n  - `user_id` (`string`): The database role name of the user.\n  - `user_type` (`string`): The type of this user. Possible values: [&#34;ALLOYDB_BUILT_IN&#34;, &#34;ALLOYDB_IAM_USER&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_user.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_user` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    user_id,
    user_type,
    database_roles=null,
    password=null,
    timeouts=null
  ):: std.prune(a={
    cluster: cluster,
    database_roles: database_roles,
    password: password,
    timeouts: timeouts,
    user_id: user_id,
    user_type: user_type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.alloydb_user.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withDatabaseRoles':: d.fn(help='`google.list.withDatabaseRoles` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the database_roles field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `database_roles` field.\n', args=[]),
  withDatabaseRoles(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          database_roles: value,
        },
      },
    },
  },
  '#withPassword':: d.fn(help='`google.string.withPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `password` field.\n', args=[]),
  withPassword(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserId':: d.fn(help='`google.string.withUserId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user_id` field.\n', args=[]),
  withUserId(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          user_id: value,
        },
      },
    },
  },
  '#withUserType':: d.fn(help='`google.string.withUserType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user_type` field.\n', args=[]),
  withUserType(resourceLabel, value): {
    resource+: {
      google_alloydb_user+: {
        [resourceLabel]+: {
          user_type: value,
        },
      },
    },
  },
}
