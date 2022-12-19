local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='spanner_instance', url='', help='`spanner_instance` represents the `google_spanner_instance` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.spanner_instance.new` injects a new `data_google_spanner_instance` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.spanner_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.spanner_instance` using the reference:\n\n    $._ref.data_google_spanner_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_spanner_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `config` (`string`): The name of the instance\u0026#39;s configuration (similar but not\nquite the same as a region) which defines the geographic placement and\nreplication of your databases in this instance. It determines where your data\nis stored. Values are typically of the form \u0026#39;regional-europe-west1\u0026#39; , \u0026#39;us-central\u0026#39; etc.\nIn order to obtain a valid list please consult the\n[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances). When `null`, the `config` field will be omitted from the resulting object.\n  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be\nunique per project and between 4 and 30 characters in length. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): A unique identifier for the instance, which cannot be changed after\nthe instance is created. The name must be between 6 and 30 characters\nin length.\n\n\nIf not provided, a random string starting with \u0026#39;tf-\u0026#39; will be selected.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name,
    config=null,
    display_name=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_spanner_instance',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      config=config,
      display_name=display_name,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.spanner_instance.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_instance`\nTerraform data source.\n\nUnlike [google.data.spanner_instance.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config` (`string`): The name of the instance&#39;s configuration (similar but not\nquite the same as a region) which defines the geographic placement and\nreplication of your databases in this instance. It determines where your data\nis stored. Values are typically of the form &#39;regional-europe-west1&#39; , &#39;us-central&#39; etc.\nIn order to obtain a valid list please consult the\n[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances). When `null`, the `config` field will be omitted from the resulting object.\n  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be\nunique per project and between 4 and 30 characters in length. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): A unique identifier for the instance, which cannot be changed after\nthe instance is created. The name must be between 6 and 30 characters\nin length.\n\n\nIf not provided, a random string starting with &#39;tf-&#39; will be selected.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `spanner_instance` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    config=null,
    display_name=null,
    project=null
  ):: std.prune(a={
    config: config,
    display_name: display_name,
    name: name,
    project: project,
  }),
  '#withConfig':: d.fn(help='`google.string.withConfig` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the config field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config` field.\n', args=[]),
  withConfig(dataSrcLabel, value): {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the display_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(dataSrcLabel, value): {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
