local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='tags_tag_key', url='', help='`tags_tag_key` represents the `google_tags_tag_key` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.tags_tag_key.new` injects a new `data_google_tags_tag_key` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.tags_tag_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.tags_tag_key` using the reference:\n\n    $._ref.data_google_tags_tag_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_tags_tag_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `parent` (`string`): \n  - `short_name` (`string`): \n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    parent,
    short_name,
    _meta={}
  ):: tf.withData(
    type='google_tags_tag_key',
    label=dataSrcLabel,
    attrs=self.newAttrs(parent=parent, short_name=short_name),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.tags_tag_key.newAttrs` constructs a new object with attributes and blocks configured for the `tags_tag_key`\nTerraform data source.\n\nUnlike [google.data.tags_tag_key.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `parent` (`string`): \n  - `short_name` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `tags_tag_key` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    short_name
  ):: std.prune(a={
    parent: parent,
    short_name: short_name,
  }),
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the parent field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(dataSrcLabel, value): {
    data+: {
      google_tags_tag_key+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withShortName':: d.fn(help='`google.string.withShortName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the short_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `short_name` field.\n', args=[]),
  withShortName(dataSrcLabel, value): {
    data+: {
      google_tags_tag_key+: {
        [dataSrcLabel]+: {
          short_name: value,
        },
      },
    },
  },
}
