local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_identity_group_lookup', url='', help='`cloud_identity_group_lookup` represents the `google_cloud_identity_group_lookup` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  group_key:: {
    '#new':: d.fn(help='\n`google.cloud_identity_group_lookup.group_key.new` constructs a new object with attributes and blocks configured for the `group_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`string`): The namespace in which the entity exists. If not specified, the EntityKey represents a Google-managed entity such as a Google user or a Google Group.\nIf specified, the EntityKey represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of identitysources/{identity_source}. When `null`, the `namespace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `group_key` sub block.\n', args=[]),
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  '#new':: d.fn(help="\n`google.data.cloud_identity_group_lookup.new` injects a new `data_google_cloud_identity_group_lookup` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.cloud_identity_group_lookup.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.cloud_identity_group_lookup` using the reference:\n\n    $._ref.data_google_cloud_identity_group_lookup.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_cloud_identity_group_lookup.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `group_key` (`list[obj]`): The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.\nAn entity can represent either a group with an optional namespace or a user without a namespace.\nThe combination of id and namespace must be unique; however, the same id can be used with different namespaces. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.cloud_identity_group_lookup.group_key.new](#fn-group_keynew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    group_key=null,
    _meta={}
  ):: tf.withData(
    type='google_cloud_identity_group_lookup',
    label=dataSrcLabel,
    attrs=self.newAttrs(group_key=group_key),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.cloud_identity_group_lookup.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_group_lookup`\nTerraform data source.\n\nUnlike [google.data.cloud_identity_group_lookup.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `group_key` (`list[obj]`): The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.\nAn entity can represent either a group with an optional namespace or a user without a namespace.\nThe combination of id and namespace must be unique; however, the same id can be used with different namespaces. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.cloud_identity_group_lookup.group_key.new](#fn-group_keynew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloud_identity_group_lookup` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    group_key=null
  ):: std.prune(a={
    group_key: group_key,
  }),
  '#withGroupKey':: d.fn(help='`google.list[obj].withGroupKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the group_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGroupKeyMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `group_key` field.\n', args=[]),
  withGroupKey(dataSrcLabel, value): {
    data+: {
      google_cloud_identity_group_lookup+: {
        [dataSrcLabel]+: {
          group_key: value,
        },
      },
    },
  },
  '#withGroupKeyMixin':: d.fn(help='`google.list[obj].withGroupKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the group_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGroupKey](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `group_key` field.\n', args=[]),
  withGroupKeyMixin(dataSrcLabel, value): {
    data+: {
      google_cloud_identity_group_lookup+: {
        [dataSrcLabel]+: {
          group_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
