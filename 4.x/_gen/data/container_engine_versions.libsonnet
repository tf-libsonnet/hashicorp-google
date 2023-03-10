local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_engine_versions', url='', help='`container_engine_versions` represents the `google_container_engine_versions` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.container_engine_versions.new` injects a new `data_google_container_engine_versions` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.container_engine_versions.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.container_engine_versions` using the reference:\n\n    $._ref.data_google_container_engine_versions.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_container_engine_versions.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `location` (`string`): Set the `location` field on the resulting data source block. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n  - `version_prefix` (`string`): Set the `version_prefix` field on the resulting data source block. When `null`, the `version_prefix` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    location=null,
    project=null,
    version_prefix=null,
    _meta={}
  ):: tf.withData(
    type='google_container_engine_versions',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project, version_prefix=version_prefix),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.container_engine_versions.newAttrs` constructs a new object with attributes and blocks configured for the `container_engine_versions`\nTerraform data source.\n\nUnlike [google.data.container_engine_versions.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): Set the `location` field on the resulting object. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `version_prefix` (`string`): Set the `version_prefix` field on the resulting object. When `null`, the `version_prefix` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `container_engine_versions` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location=null,
    project=null,
    version_prefix=null
  ):: std.prune(a={
    location: location,
    project: project,
    version_prefix: version_prefix,
  }),
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_container_engine_versions+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_container_engine_versions+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withVersionPrefix':: d.fn(help='`google.string.withVersionPrefix` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the version_prefix field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_prefix` field.\n', args=[]),
  withVersionPrefix(dataSrcLabel, value): {
    data+: {
      google_container_engine_versions+: {
        [dataSrcLabel]+: {
          version_prefix: value,
        },
      },
    },
  },
}
