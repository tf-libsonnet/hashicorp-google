local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='identity_platform_config', url='', help='`identity_platform_config` represents the `google_identity_platform_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.identity_platform_config.new` injects a new `google_identity_platform_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.identity_platform_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.identity_platform_config` using the reference:\n\n    $._ref.google_identity_platform_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_identity_platform_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `autodelete_anonymous_users` (`bool`): Whether anonymous users will be auto-deleted after a period of 30 days When `null`, the `autodelete_anonymous_users` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.timeouts.new](#fn-identityplatformconfigtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    autodelete_anonymous_users=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_config',
    label=resourceLabel,
    attrs=self.newAttrs(autodelete_anonymous_users=autodelete_anonymous_users, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.identity_platform_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_config`\nTerraform resource.\n\nUnlike [google.identity_platform_config.new](#fn-identityplatformconfignew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `autodelete_anonymous_users` (`bool`): Whether anonymous users will be auto-deleted after a period of 30 days When `null`, the `autodelete_anonymous_users` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.timeouts.new](#fn-identityplatformconfigtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    autodelete_anonymous_users=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    autodelete_anonymous_users: autodelete_anonymous_users,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.identity_platform_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutodeleteAnonymousUsers':: d.fn(help='`google.identity_platform_config.withAutodeleteAnonymousUsers` constructs a mixin object that can be merged into the `identity_platform_config`\nTerraform resource block to set or update the autodelete_anonymous_users field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `autodelete_anonymous_users` field.\n', args=[]),
  withAutodeleteAnonymousUsers(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          autodelete_anonymous_users: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.identity_platform_config.withProject` constructs a mixin object that can be merged into the `identity_platform_config`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.identity_platform_config.withTimeouts` constructs a mixin object that can be merged into the `identity_platform_config`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.identity_platform_config.withTimeoutsMixin` constructs a mixin object that can be merged into the `identity_platform_config`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.identity_platform_config.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
