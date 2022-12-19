local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_instance_template', url='', help='`compute_instance_template` represents the `google_compute_instance_template` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.compute_instance_template.new` injects a new `data_google_compute_instance_template` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.compute_instance_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.compute_instance_template` using the reference:\n\n    $._ref.data_google_compute_instance_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_compute_instance_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `filter` (`string`):  When `null`, the `filter` field will be omitted from the resulting object.\n  - `most_recent` (`bool`):  When `null`, the `most_recent` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    filter=null,
    most_recent=null,
    name=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_instance_template',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      filter=filter,
      most_recent=most_recent,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.compute_instance_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_template`\nTerraform data source.\n\nUnlike [google.data.compute_instance_template.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `filter` (`string`):  When `null`, the `filter` field will be omitted from the resulting object.\n  - `most_recent` (`bool`):  When `null`, the `most_recent` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_instance_template` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    filter=null,
    most_recent=null,
    name=null,
    project=null
  ):: std.prune(a={
    filter: filter,
    most_recent: most_recent,
    name: name,
    project: project,
  }),
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the filter field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(dataSrcLabel, value): {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withMostRecent':: d.fn(help='`google.bool.withMostRecent` constructs a mixin object that can be merged into the `bool`\nTerraform data source block to set or update the most_recent field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `most_recent` field.\n', args=[]),
  withMostRecent(dataSrcLabel, value): {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          most_recent: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
