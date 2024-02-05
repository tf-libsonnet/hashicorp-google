local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_machine_types', url='', help='`compute_machine_types` represents the `google_compute_machine_types` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.compute_machine_types.new` injects a new `data_google_compute_machine_types` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.compute_machine_types.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.compute_machine_types` using the reference:\n\n    $._ref.data_google_compute_machine_types.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_compute_machine_types.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `filter` (`string`): Set the `filter` field on the resulting data source block. When `null`, the `filter` field will be omitted from the resulting object.\n  - `project` (`string`): Project ID for this request. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): The name of the zone for this request. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    filter=null,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_machine_types',
    label=dataSrcLabel,
    attrs=self.newAttrs(filter=filter, project=project, zone=zone),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.compute_machine_types.newAttrs` constructs a new object with attributes and blocks configured for the `compute_machine_types`\nTerraform data source.\n\nUnlike [google.data.compute_machine_types.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `filter` (`string`): Set the `filter` field on the resulting object. When `null`, the `filter` field will be omitted from the resulting object.\n  - `project` (`string`): Project ID for this request. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): The name of the zone for this request. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_machine_types` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    filter=null,
    project=null,
    zone=null
  ):: std.prune(a={
    filter: filter,
    project: project,
    zone: zone,
  }),
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the filter field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(dataSrcLabel, value): {
    data+: {
      google_compute_machine_types+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_compute_machine_types+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the zone field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(dataSrcLabel, value): {
    data+: {
      google_compute_machine_types+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
