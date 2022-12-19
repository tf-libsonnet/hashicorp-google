local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_bucket_access_control', url='', help='`storage_bucket_access_control` represents the `google_storage_bucket_access_control` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.storage_bucket_access_control.new` injects a new `google_storage_bucket_access_control` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_bucket_access_control.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_bucket_access_control` using the reference:\n\n    $._ref.google_storage_bucket_access_control.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_bucket_access_control.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): The name of the bucket.\n  - `entity` (`string`): The entity holding the permission, in one of the following forms:\n  user-userId\n  user-email\n  group-groupId\n  group-email\n  domain-domain\n  project-team-projectId\n  allUsers\n  allAuthenticatedUsers\nExamples:\n  The user liz@example.com would be user-liz@example.com.\n  The group example@googlegroups.com would be\n  group-example@googlegroups.com.\n  To refer to all members of the Google Apps for Business domain\n  example.com, the entity would be domain-example.com.\n  - `role` (`string`): The access permission for the entity. Possible values: [\u0026#34;OWNER\u0026#34;, \u0026#34;READER\u0026#34;, \u0026#34;WRITER\u0026#34;] When `null`, the `role` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_access_control.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket,
    entity,
    role=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_access_control',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      entity=entity,
      role=role,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_bucket_access_control.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket_access_control`\nTerraform resource.\n\nUnlike [google.storage_bucket_access_control.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): The name of the bucket.\n  - `entity` (`string`): The entity holding the permission, in one of the following forms:\n  user-userId\n  user-email\n  group-groupId\n  group-email\n  domain-domain\n  project-team-projectId\n  allUsers\n  allAuthenticatedUsers\nExamples:\n  The user liz@example.com would be user-liz@example.com.\n  The group example@googlegroups.com would be\n  group-example@googlegroups.com.\n  To refer to all members of the Google Apps for Business domain\n  example.com, the entity would be domain-example.com.\n  - `role` (`string`): The access permission for the entity. Possible values: [&#34;OWNER&#34;, &#34;READER&#34;, &#34;WRITER&#34;] When `null`, the `role` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_access_control.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_bucket_access_control` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    entity,
    role=null,
    timeouts=null
  ):: std.prune(a={
    bucket: bucket,
    entity: entity,
    role: role,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.storage_bucket_access_control.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBucket':: d.fn(help='`google.string.withBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value): {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withEntity':: d.fn(help='`google.string.withEntity` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the entity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `entity` field.\n', args=[]),
  withEntity(resourceLabel, value): {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          entity: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
