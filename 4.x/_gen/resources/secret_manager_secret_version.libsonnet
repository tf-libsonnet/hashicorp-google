local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='secret_manager_secret_version', url='', help='`secret_manager_secret_version` represents the `google_secret_manager_secret_version` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.secret_manager_secret_version.new` injects a new `google_secret_manager_secret_version` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.secret_manager_secret_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.secret_manager_secret_version` using the reference:\n\n    $._ref.google_secret_manager_secret_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_secret_manager_secret_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `enabled` (`bool`): The current state of the SecretVersion. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `secret` (`string`): Secret Manager secret resource\n  - `secret_data` (`string`): The secret data. Must be no larger than 64KiB.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret_version.timeouts.new](#fn-secretmanagersecretversiontimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    secret,
    secret_data,
    enabled=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_secret_manager_secret_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      enabled=enabled,
      secret=secret,
      secret_data=secret_data,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.secret_manager_secret_version.newAttrs` constructs a new object with attributes and blocks configured for the `secret_manager_secret_version`\nTerraform resource.\n\nUnlike [google.secret_manager_secret_version.new](#fn-secretmanagersecretversionnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `enabled` (`bool`): The current state of the SecretVersion. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `secret` (`string`): Secret Manager secret resource\n  - `secret_data` (`string`): The secret data. Must be no larger than 64KiB.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret_version.timeouts.new](#fn-secretmanagersecretversiontimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `secret_manager_secret_version` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    secret,
    secret_data,
    enabled=null,
    timeouts=null
  ):: std.prune(a={
    enabled: enabled,
    secret: secret,
    secret_data: secret_data,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.secret_manager_secret_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withEnabled':: d.fn(help='`google.secret_manager_secret_version.withEnabled` constructs a mixin object that can be merged into the `secret_manager_secret_version`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withSecret':: d.fn(help='`google.secret_manager_secret_version.withSecret` constructs a mixin object that can be merged into the `secret_manager_secret_version`\nTerraform resource block to set or update the secret field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `secret` field.\n', args=[]),
  withSecret(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          secret: value,
        },
      },
    },
  },
  '#withSecretData':: d.fn(help='`google.secret_manager_secret_version.withSecretData` constructs a mixin object that can be merged into the `secret_manager_secret_version`\nTerraform resource block to set or update the secret_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `secret_data` field.\n', args=[]),
  withSecretData(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          secret_data: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.secret_manager_secret_version.withTimeouts` constructs a mixin object that can be merged into the `secret_manager_secret_version`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.secret_manager_secret_version.withTimeoutsMixin` constructs a mixin object that can be merged into the `secret_manager_secret_version`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.secret_manager_secret_version.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
