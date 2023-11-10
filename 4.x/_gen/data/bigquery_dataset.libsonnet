local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_dataset', url='', help='`bigquery_dataset` represents the `google_bigquery_dataset` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.bigquery_dataset.new` injects a new `data_google_bigquery_dataset` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.bigquery_dataset.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.bigquery_dataset` using the reference:\n\n    $._ref.data_google_bigquery_dataset.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_bigquery_dataset.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    dataset_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_bigquery_dataset',
    label=dataSrcLabel,
    attrs=self.newAttrs(dataset_id=dataset_id, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.bigquery_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_dataset`\nTerraform data source.\n\nUnlike [google.data.bigquery_dataset.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `bigquery_dataset` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset_id,
    project=null
  ):: std.prune(a={
    dataset_id: dataset_id,
    project: project,
  }),
  '#withDatasetId':: d.fn(help='`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the dataset_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset_id` field.\n', args=[]),
  withDatasetId(dataSrcLabel, value): {
    data+: {
      google_bigquery_dataset+: {
        [dataSrcLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_bigquery_dataset+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
