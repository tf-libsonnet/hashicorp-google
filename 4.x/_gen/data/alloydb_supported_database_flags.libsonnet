local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_supported_database_flags', url='', help='`alloydb_supported_database_flags` represents the `google_alloydb_supported_database_flags` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.alloydb_supported_database_flags.new` injects a new `data_google_alloydb_supported_database_flags` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.alloydb_supported_database_flags.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.alloydb_supported_database_flags` using the reference:\n\n    $._ref.data_google_alloydb_supported_database_flags.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_alloydb_supported_database_flags.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `location` (`string`): The canonical id for the location. For example: \u0026#34;us-east1\u0026#34;.\n  - `project` (`string`): Project ID of the project. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    location,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_alloydb_supported_database_flags',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.alloydb_supported_database_flags.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_supported_database_flags`\nTerraform data source.\n\nUnlike [google.data.alloydb_supported_database_flags.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The canonical id for the location. For example: &#34;us-east1&#34;.\n  - `project` (`string`): Project ID of the project. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `alloydb_supported_database_flags` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
  }),
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_alloydb_supported_database_flags+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_alloydb_supported_database_flags+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
