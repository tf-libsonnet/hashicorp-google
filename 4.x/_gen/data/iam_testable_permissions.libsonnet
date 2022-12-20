local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_testable_permissions', url='', help='`iam_testable_permissions` represents the `google_iam_testable_permissions` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.iam_testable_permissions.new` injects a new `data_google_iam_testable_permissions` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.iam_testable_permissions.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.iam_testable_permissions` using the reference:\n\n    $._ref.data_google_iam_testable_permissions.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_iam_testable_permissions.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `custom_support_level` (`string`):  When `null`, the `custom_support_level` field will be omitted from the resulting object.\n  - `full_resource_name` (`string`): \n  - `stages` (`list`):  When `null`, the `stages` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    full_resource_name,
    custom_support_level=null,
    stages=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_testable_permissions',
    label=dataSrcLabel,
    attrs=self.newAttrs(custom_support_level=custom_support_level, full_resource_name=full_resource_name, stages=stages),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.iam_testable_permissions.newAttrs` constructs a new object with attributes and blocks configured for the `iam_testable_permissions`\nTerraform data source.\n\nUnlike [google.data.iam_testable_permissions.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `custom_support_level` (`string`):  When `null`, the `custom_support_level` field will be omitted from the resulting object.\n  - `full_resource_name` (`string`): \n  - `stages` (`list`):  When `null`, the `stages` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iam_testable_permissions` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    full_resource_name,
    custom_support_level=null,
    stages=null
  ):: std.prune(a={
    custom_support_level: custom_support_level,
    full_resource_name: full_resource_name,
    stages: stages,
  }),
  '#withCustomSupportLevel':: d.fn(help='`google.string.withCustomSupportLevel` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the custom_support_level field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `custom_support_level` field.\n', args=[]),
  withCustomSupportLevel(dataSrcLabel, value): {
    data+: {
      google_iam_testable_permissions+: {
        [dataSrcLabel]+: {
          custom_support_level: value,
        },
      },
    },
  },
  '#withFullResourceName':: d.fn(help='`google.string.withFullResourceName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the full_resource_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `full_resource_name` field.\n', args=[]),
  withFullResourceName(dataSrcLabel, value): {
    data+: {
      google_iam_testable_permissions+: {
        [dataSrcLabel]+: {
          full_resource_name: value,
        },
      },
    },
  },
  '#withStages':: d.fn(help='`google.list.withStages` constructs a mixin object that can be merged into the `list`\nTerraform data source block to set or update the stages field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `stages` field.\n', args=[]),
  withStages(dataSrcLabel, value): {
    data+: {
      google_iam_testable_permissions+: {
        [dataSrcLabel]+: {
          stages: value,
        },
      },
    },
  },
}
