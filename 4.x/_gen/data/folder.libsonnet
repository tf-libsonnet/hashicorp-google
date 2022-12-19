local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='folder', url='', help='`folder` represents the `google_folder` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.folder.new` injects a new `data_google_folder` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.folder.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.folder` using the reference:\n\n    $._ref.data_google_folder.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_folder.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `folder` (`string`): \n  - `lookup_organization` (`bool`):  When `null`, the `lookup_organization` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    folder,
    lookup_organization=null,
    _meta={}
  ):: tf.withData(
    type='google_folder',
    label=dataSrcLabel,
    attrs=self.newAttrs(folder=folder, lookup_organization=lookup_organization),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.folder.newAttrs` constructs a new object with attributes and blocks configured for the `folder`\nTerraform data source.\n\nUnlike [google.data.folder.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `folder` (`string`): \n  - `lookup_organization` (`bool`):  When `null`, the `lookup_organization` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `folder` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    folder,
    lookup_organization=null
  ):: std.prune(a={
    folder: folder,
    lookup_organization: lookup_organization,
  }),
  '#withFolder':: d.fn(help='`google.string.withFolder` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the folder field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `folder` field.\n', args=[]),
  withFolder(dataSrcLabel, value): {
    data+: {
      google_folder+: {
        [dataSrcLabel]+: {
          folder: value,
        },
      },
    },
  },
  '#withLookupOrganization':: d.fn(help='`google.bool.withLookupOrganization` constructs a mixin object that can be merged into the `bool`\nTerraform data source block to set or update the lookup_organization field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `lookup_organization` field.\n', args=[]),
  withLookupOrganization(dataSrcLabel, value): {
    data+: {
      google_folder+: {
        [dataSrcLabel]+: {
          lookup_organization: value,
        },
      },
    },
  },
}
