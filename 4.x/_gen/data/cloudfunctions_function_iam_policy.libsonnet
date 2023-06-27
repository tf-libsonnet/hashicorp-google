local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudfunctions_function_iam_policy', url='', help='`cloudfunctions_function_iam_policy` represents the `google_cloudfunctions_function_iam_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.cloudfunctions_function_iam_policy.new` injects a new `data_google_cloudfunctions_function_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.cloudfunctions_function_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.cloudfunctions_function_iam_policy` using the reference:\n\n    $._ref.data_google_cloudfunctions_function_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_cloudfunctions_function_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `cloud_function` (`string`): Set the `cloud_function` field on the resulting data source block.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Set the `region` field on the resulting data source block. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    cloud_function,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_cloudfunctions_function_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(cloud_function=cloud_function, project=project, region=region),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.cloudfunctions_function_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `cloudfunctions_function_iam_policy`\nTerraform data source.\n\nUnlike [google.data.cloudfunctions_function_iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cloud_function` (`string`): Set the `cloud_function` field on the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Set the `region` field on the resulting object. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloudfunctions_function_iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cloud_function,
    project=null,
    region=null
  ):: std.prune(a={
    cloud_function: cloud_function,
    project: project,
    region: region,
  }),
  '#withCloudFunction':: d.fn(help='`google.string.withCloudFunction` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the cloud_function field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cloud_function` field.\n', args=[]),
  withCloudFunction(dataSrcLabel, value): {
    data+: {
      google_cloudfunctions_function_iam_policy+: {
        [dataSrcLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_cloudfunctions_function_iam_policy+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value): {
    data+: {
      google_cloudfunctions_function_iam_policy+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}