local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_hmac_key', url='', help='`storage_hmac_key` represents the `google_storage_hmac_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.storage_hmac_key.new` injects a new `google_storage_hmac_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_hmac_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_hmac_key` using the reference:\n\n    $._ref.google_storage_hmac_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_hmac_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The email address of the key\u0026#39;s associated service account.\n  - `state` (`string`): The state of the key. Can be set to one of ACTIVE, INACTIVE. Default value: \u0026#34;ACTIVE\u0026#34; Possible values: [\u0026#34;ACTIVE\u0026#34;, \u0026#34;INACTIVE\u0026#34;] When `null`, the `state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_hmac_key.timeouts.new](#fn-storagehmackeytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service_account_email,
    project=null,
    state=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_hmac_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      project=project,
      service_account_email=service_account_email,
      state=state,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_hmac_key.newAttrs` constructs a new object with attributes and blocks configured for the `storage_hmac_key`\nTerraform resource.\n\nUnlike [google.storage_hmac_key.new](#fn-storagehmackeynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The email address of the key&#39;s associated service account.\n  - `state` (`string`): The state of the key. Can be set to one of ACTIVE, INACTIVE. Default value: &#34;ACTIVE&#34; Possible values: [&#34;ACTIVE&#34;, &#34;INACTIVE&#34;] When `null`, the `state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_hmac_key.timeouts.new](#fn-storagehmackeytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_hmac_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service_account_email,
    project=null,
    state=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    service_account_email: service_account_email,
    state: state,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.storage_hmac_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceAccountEmail':: d.fn(help='`google.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account_email` field.\n', args=[]),
  withServiceAccountEmail(resourceLabel, value): {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  '#withState':: d.fn(help='`google.string.withState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `state` field.\n', args=[]),
  withState(resourceLabel, value): {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          state: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
