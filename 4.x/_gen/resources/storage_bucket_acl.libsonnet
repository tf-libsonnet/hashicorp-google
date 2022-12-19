local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_bucket_acl', url='', help='`storage_bucket_acl` represents the `google_storage_bucket_acl` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.storage_bucket_acl.new` injects a new `google_storage_bucket_acl` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_bucket_acl.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_bucket_acl` using the reference:\n\n    $._ref.google_storage_bucket_acl.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_bucket_acl.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): The name of the bucket it applies to.\n  - `default_acl` (`string`): Configure this ACL to be the default ACL. When `null`, the `default_acl` field will be omitted from the resulting object.\n  - `predefined_acl` (`string`): The canned GCS ACL to apply. Must be set if role_entity is not. When `null`, the `predefined_acl` field will be omitted from the resulting object.\n  - `role_entity` (`list`): List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not. When `null`, the `role_entity` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket,
    default_acl=null,
    predefined_acl=null,
    role_entity=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_acl',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      default_acl=default_acl,
      predefined_acl=predefined_acl,
      role_entity=role_entity
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_bucket_acl.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket_acl`\nTerraform resource.\n\nUnlike [google.storage_bucket_acl.new](#fn-storagebucketaclnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): The name of the bucket it applies to.\n  - `default_acl` (`string`): Configure this ACL to be the default ACL. When `null`, the `default_acl` field will be omitted from the resulting object.\n  - `predefined_acl` (`string`): The canned GCS ACL to apply. Must be set if role_entity is not. When `null`, the `predefined_acl` field will be omitted from the resulting object.\n  - `role_entity` (`list`): List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not. When `null`, the `role_entity` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_bucket_acl` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    default_acl=null,
    predefined_acl=null,
    role_entity=null
  ):: std.prune(a={
    bucket: bucket,
    default_acl: default_acl,
    predefined_acl: predefined_acl,
    role_entity: role_entity,
  }),
  '#withBucket':: d.fn(help='`google.storage_bucket_acl.withBucket` constructs a mixin object that can be merged into the `storage_bucket_acl`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withDefaultAcl':: d.fn(help='`google.storage_bucket_acl.withDefaultAcl` constructs a mixin object that can be merged into the `storage_bucket_acl`\nTerraform resource block to set or update the default_acl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `default_acl` field.\n', args=[]),
  withDefaultAcl(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          default_acl: value,
        },
      },
    },
  },
  '#withPredefinedAcl':: d.fn(help='`google.storage_bucket_acl.withPredefinedAcl` constructs a mixin object that can be merged into the `storage_bucket_acl`\nTerraform resource block to set or update the predefined_acl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `predefined_acl` field.\n', args=[]),
  withPredefinedAcl(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          predefined_acl: value,
        },
      },
    },
  },
  '#withRoleEntity':: d.fn(help='`google.storage_bucket_acl.withRoleEntity` constructs a mixin object that can be merged into the `storage_bucket_acl`\nTerraform resource block to set or update the role_entity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `role_entity` field.\n', args=[]),
  withRoleEntity(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          role_entity: value,
        },
      },
    },
  },
}
