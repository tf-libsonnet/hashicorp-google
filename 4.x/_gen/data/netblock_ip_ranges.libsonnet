local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='netblock_ip_ranges', url='', help='`netblock_ip_ranges` represents the `google_netblock_ip_ranges` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.netblock_ip_ranges.new` injects a new `data_google_netblock_ip_ranges` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.netblock_ip_ranges.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.netblock_ip_ranges` using the reference:\n\n    $._ref.data_google_netblock_ip_ranges.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_netblock_ip_ranges.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `range_type` (`string`): Set the `range_type` field on the resulting data source block. When `null`, the `range_type` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    range_type=null,
    _meta={}
  ):: tf.withData(
    type='google_netblock_ip_ranges',
    label=dataSrcLabel,
    attrs=self.newAttrs(range_type=range_type),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.netblock_ip_ranges.newAttrs` constructs a new object with attributes and blocks configured for the `netblock_ip_ranges`\nTerraform data source.\n\nUnlike [google.data.netblock_ip_ranges.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `range_type` (`string`): Set the `range_type` field on the resulting object. When `null`, the `range_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `netblock_ip_ranges` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    range_type=null
  ):: std.prune(a={
    range_type: range_type,
  }),
  '#withRangeType':: d.fn(help='`google.string.withRangeType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the range_type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `range_type` field.\n', args=[]),
  withRangeType(dataSrcLabel, value): {
    data+: {
      google_netblock_ip_ranges+: {
        [dataSrcLabel]+: {
          range_type: value,
        },
      },
    },
  },
}
