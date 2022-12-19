local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_registry_image', url='', help='`container_registry_image` represents the `google_container_registry_image` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.container_registry_image.new` injects a new `data_google_container_registry_image` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.container_registry_image.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.container_registry_image` using the reference:\n\n    $._ref.data_google_container_registry_image.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_container_registry_image.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `digest` (`string`):  When `null`, the `digest` field will be omitted from the resulting object.\n  - `name` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`):  When `null`, the `region` field will be omitted from the resulting object.\n  - `tag` (`string`):  When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name,
    digest=null,
    project=null,
    region=null,
    tag=null,
    _meta={}
  ):: tf.withData(
    type='google_container_registry_image',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      digest=digest,
      name=name,
      project=project,
      region=region,
      tag=tag
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.container_registry_image.newAttrs` constructs a new object with attributes and blocks configured for the `container_registry_image`\nTerraform data source.\n\nUnlike [google.data.container_registry_image.new](#fn-container_registry_imagenew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `digest` (`string`):  When `null`, the `digest` field will be omitted from the resulting object.\n  - `name` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`):  When `null`, the `region` field will be omitted from the resulting object.\n  - `tag` (`string`):  When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `container_registry_image` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    digest=null,
    project=null,
    region=null,
    tag=null
  ):: std.prune(a={
    digest: digest,
    name: name,
    project: project,
    region: region,
    tag: tag,
  }),
  '#withDigest':: d.fn(help='`google.string.withDigest` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the digest field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `digest` field.\n', args=[]),
  withDigest(dataSrcLabel, value): {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          digest: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value): {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTag':: d.fn(help='`google.string.withTag` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the tag field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tag` field.\n', args=[]),
  withTag(dataSrcLabel, value): {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          tag: value,
        },
      },
    },
  },
}
