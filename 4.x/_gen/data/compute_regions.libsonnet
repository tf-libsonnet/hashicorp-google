local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_regions', url='', help='`compute_regions` represents the `google_compute_regions` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.compute_regions.new` injects a new `data_google_compute_regions` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.compute_regions.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.compute_regions` using the reference:\n\n    $._ref.data_google_compute_regions.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_compute_regions.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n  - `status` (`string`): Set the `status` field on the resulting data source block. When `null`, the `status` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    project=null,
    status=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_regions',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, status=status),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.compute_regions.newAttrs` constructs a new object with attributes and blocks configured for the `compute_regions`\nTerraform data source.\n\nUnlike [google.data.compute_regions.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `status` (`string`): Set the `status` field on the resulting object. When `null`, the `status` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_regions` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project=null,
    status=null
  ):: std.prune(a={
    project: project,
    status: status,
  }),
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_compute_regions+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withStatus':: d.fn(help='`google.string.withStatus` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the status field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `status` field.\n', args=[]),
  withStatus(dataSrcLabel, value): {
    data+: {
      google_compute_regions+: {
        [dataSrcLabel]+: {
          status: value,
        },
      },
    },
  },
}
