local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_identity_group_memberships', url='', help='`cloud_identity_group_memberships` represents the `google_cloud_identity_group_memberships` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.cloud_identity_group_memberships.new` injects a new `data_google_cloud_identity_group_memberships` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.cloud_identity_group_memberships.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.cloud_identity_group_memberships` using the reference:\n\n    $._ref.data_google_cloud_identity_group_memberships.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_cloud_identity_group_memberships.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `group` (`string`): The name of the Group to get memberships from.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    group,
    _meta={}
  ):: tf.withData(
    type='google_cloud_identity_group_memberships',
    label=dataSrcLabel,
    attrs=self.newAttrs(group=group),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.cloud_identity_group_memberships.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_group_memberships`\nTerraform data source.\n\nUnlike [google.data.cloud_identity_group_memberships.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `group` (`string`): The name of the Group to get memberships from.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloud_identity_group_memberships` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    group
  ):: std.prune(a={
    group: group,
  }),
  '#withGroup':: d.fn(help='`google.string.withGroup` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the group field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `group` field.\n', args=[]),
  withGroup(dataSrcLabel, value): {
    data+: {
      google_cloud_identity_group_memberships+: {
        [dataSrcLabel]+: {
          group: value,
        },
      },
    },
  },
}
