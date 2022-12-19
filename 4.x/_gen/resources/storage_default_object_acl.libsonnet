local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_default_object_acl', url='', help='`storage_default_object_acl` represents the `google_storage_default_object_acl` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.storage_default_object_acl.new` injects a new `google_storage_default_object_acl` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_default_object_acl.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_default_object_acl` using the reference:\n\n    $._ref.google_storage_default_object_acl.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_default_object_acl.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): Set the `bucket` field on the resulting resource block.\n  - `role_entity` (`list`): Set the `role_entity` field on the resulting resource block. When `null`, the `role_entity` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket,
    role_entity=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_default_object_acl',
    label=resourceLabel,
    attrs=self.newAttrs(bucket=bucket, role_entity=role_entity),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_default_object_acl.newAttrs` constructs a new object with attributes and blocks configured for the `storage_default_object_acl`\nTerraform resource.\n\nUnlike [google.storage_default_object_acl.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): Set the `bucket` field on the resulting object.\n  - `role_entity` (`list`): Set the `role_entity` field on the resulting object. When `null`, the `role_entity` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_default_object_acl` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    role_entity=null
  ):: std.prune(a={
    bucket: bucket,
    role_entity: role_entity,
  }),
  '#withBucket':: d.fn(help='`google.string.withBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value): {
    resource+: {
      google_storage_default_object_acl+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withRoleEntity':: d.fn(help='`google.list.withRoleEntity` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the role_entity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `role_entity` field.\n', args=[]),
  withRoleEntity(resourceLabel, value): {
    resource+: {
      google_storage_default_object_acl+: {
        [resourceLabel]+: {
          role_entity: value,
        },
      },
    },
  },
}
