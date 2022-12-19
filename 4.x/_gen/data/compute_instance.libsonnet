local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_instance', url='', help='`compute_instance` represents the `google_compute_instance` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.compute_instance.new` injects a new `data_google_compute_instance` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.compute_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.compute_instance` using the reference:\n\n    $._ref.data_google_compute_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_compute_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `name` (`string`): The name of the instance. One of name or self_link must be provided. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `self_link` (`string`): The URI of the created resource. When `null`, the `self_link` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name=null,
    project=null,
    self_link=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_instance',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      self_link=self_link,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.compute_instance.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance`\nTerraform data source.\n\nUnlike [google.data.compute_instance.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The name of the instance. One of name or self_link must be provided. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `self_link` (`string`): The URI of the created resource. When `null`, the `self_link` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_instance` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name=null,
    project=null,
    self_link=null,
    zone=null
  ):: std.prune(a={
    name: name,
    project: project,
    self_link: self_link,
    zone: zone,
  }),
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSelfLink':: d.fn(help='`google.string.withSelfLink` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the self_link field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `self_link` field.\n', args=[]),
  withSelfLink(dataSrcLabel, value): {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          self_link: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the zone field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(dataSrcLabel, value): {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
