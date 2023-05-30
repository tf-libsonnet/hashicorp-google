local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataplex_zone_iam_policy', url='', help='`dataplex_zone_iam_policy` represents the `google_dataplex_zone_iam_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.dataplex_zone_iam_policy.new` injects a new `data_google_dataplex_zone_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.dataplex_zone_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.dataplex_zone_iam_policy` using the reference:\n\n    $._ref.data_google_dataplex_zone_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_dataplex_zone_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `dataplex_zone` (`string`): Set the `dataplex_zone` field on the resulting data source block.\n  - `lake` (`string`): Set the `lake` field on the resulting data source block.\n  - `location` (`string`): Set the `location` field on the resulting data source block. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    dataplex_zone,
    lake,
    location=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dataplex_zone_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      dataplex_zone=dataplex_zone,
      lake=lake,
      location=location,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.dataplex_zone_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_zone_iam_policy`\nTerraform data source.\n\nUnlike [google.data.dataplex_zone_iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataplex_zone` (`string`): Set the `dataplex_zone` field on the resulting object.\n  - `lake` (`string`): Set the `lake` field on the resulting object.\n  - `location` (`string`): Set the `location` field on the resulting object. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dataplex_zone_iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataplex_zone,
    lake,
    location=null,
    project=null
  ):: std.prune(a={
    dataplex_zone: dataplex_zone,
    lake: lake,
    location: location,
    project: project,
  }),
  '#withDataplexZone':: d.fn(help='`google.string.withDataplexZone` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the dataplex_zone field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataplex_zone` field.\n', args=[]),
  withDataplexZone(dataSrcLabel, value): {
    data+: {
      google_dataplex_zone_iam_policy+: {
        [dataSrcLabel]+: {
          dataplex_zone: value,
        },
      },
    },
  },
  '#withLake':: d.fn(help='`google.string.withLake` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the lake field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `lake` field.\n', args=[]),
  withLake(dataSrcLabel, value): {
    data+: {
      google_dataplex_zone_iam_policy+: {
        [dataSrcLabel]+: {
          lake: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_dataplex_zone_iam_policy+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_dataplex_zone_iam_policy+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
