local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_workload_identity_pool', url='', help='`iam_workload_identity_pool` represents the `google_iam_workload_identity_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.iam_workload_identity_pool.new` injects a new `google_iam_workload_identity_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iam_workload_identity_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iam_workload_identity_pool` using the reference:\n\n    $._ref.google_iam_workload_identity_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iam_workload_identity_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the pool. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use\nexisting tokens to access resources. If the pool is re-enabled, existing tokens grant\naccess again. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A display name for the pool. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `workload_identity_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name. This\nvalue should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n\u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool.timeouts.new](#fn-iam_workload_identity_pooltimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    workload_identity_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workload_identity_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      display_name=display_name,
      project=project,
      timeouts=timeouts,
      workload_identity_pool_id=workload_identity_pool_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iam_workload_identity_pool.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workload_identity_pool`\nTerraform resource.\n\nUnlike [google.iam_workload_identity_pool.new](#fn-iam_workload_identity_poolnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the pool. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use\nexisting tokens to access resources. If the pool is re-enabled, existing tokens grant\naccess again. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A display name for the pool. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `workload_identity_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name. This\nvalue should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n&#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool.timeouts.new](#fn-iam_workload_identity_pooltimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workload_identity_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    workload_identity_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    display_name: display_name,
    project: project,
    timeouts: timeouts,
    workload_identity_pool_id: workload_identity_pool_id,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.iam_workload_identity_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkloadIdentityPoolId':: d.fn(help='`google.string.withWorkloadIdentityPoolId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workload_identity_pool_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workload_identity_pool_id` field.\n', args=[]),
  withWorkloadIdentityPoolId(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
}
