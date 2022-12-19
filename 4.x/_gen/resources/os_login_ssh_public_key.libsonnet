local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='os_login_ssh_public_key', url='', help='`os_login_ssh_public_key` represents the `google_os_login_ssh_public_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.os_login_ssh_public_key.new` injects a new `google_os_login_ssh_public_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.os_login_ssh_public_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.os_login_ssh_public_key` using the reference:\n\n    $._ref.google_os_login_ssh_public_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_os_login_ssh_public_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `expiration_time_usec` (`string`): An expiration time in microseconds since epoch. When `null`, the `expiration_time_usec` field will be omitted from the resulting object.\n  - `key` (`string`): Public key text in SSH format, defined by RFC4253 section 6.6.\n  - `project` (`string`): The project ID of the Google Cloud Platform project. When `null`, the `project` field will be omitted from the resulting object.\n  - `user` (`string`): The user email.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_login_ssh_public_key.timeouts.new](#fn-os_login_ssh_public_keytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    key,
    user,
    expiration_time_usec=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_login_ssh_public_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      expiration_time_usec=expiration_time_usec,
      key=key,
      project=project,
      timeouts=timeouts,
      user=user
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.os_login_ssh_public_key.newAttrs` constructs a new object with attributes and blocks configured for the `os_login_ssh_public_key`\nTerraform resource.\n\nUnlike [google.os_login_ssh_public_key.new](#fn-os_login_ssh_public_keynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `expiration_time_usec` (`string`): An expiration time in microseconds since epoch. When `null`, the `expiration_time_usec` field will be omitted from the resulting object.\n  - `key` (`string`): Public key text in SSH format, defined by RFC4253 section 6.6.\n  - `project` (`string`): The project ID of the Google Cloud Platform project. When `null`, the `project` field will be omitted from the resulting object.\n  - `user` (`string`): The user email.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_login_ssh_public_key.timeouts.new](#fn-os_login_ssh_public_keytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `os_login_ssh_public_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    key,
    user,
    expiration_time_usec=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    expiration_time_usec: expiration_time_usec,
    key: key,
    project: project,
    timeouts: timeouts,
    user: user,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.os_login_ssh_public_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withExpirationTimeUsec':: d.fn(help='`google.string.withExpirationTimeUsec` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the expiration_time_usec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `expiration_time_usec` field.\n', args=[]),
  withExpirationTimeUsec(resourceLabel, value): {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          expiration_time_usec: value,
        },
      },
    },
  },
  '#withKey':: d.fn(help='`google.string.withKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key` field.\n', args=[]),
  withKey(resourceLabel, value): {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          key: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUser':: d.fn(help='`google.string.withUser` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user` field.\n', args=[]),
  withUser(resourceLabel, value): {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          user: value,
        },
      },
    },
  },
}
