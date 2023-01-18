local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_attached_install_manifest', url='', help='`container_attached_install_manifest` represents the `google_container_attached_install_manifest` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.container_attached_install_manifest.new` injects a new `data_google_container_attached_install_manifest` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.container_attached_install_manifest.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.container_attached_install_manifest` using the reference:\n\n    $._ref.data_google_container_attached_install_manifest.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_container_attached_install_manifest.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): Set the `cluster_id` field on the resulting data source block.\n  - `location` (`string`): Set the `location` field on the resulting data source block.\n  - `platform_version` (`string`): Set the `platform_version` field on the resulting data source block.\n  - `project` (`string`): Set the `project` field on the resulting data source block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    cluster_id,
    location,
    platform_version,
    project,
    _meta={}
  ):: tf.withData(
    type='google_container_attached_install_manifest',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      location=location,
      platform_version=platform_version,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.container_attached_install_manifest.newAttrs` constructs a new object with attributes and blocks configured for the `container_attached_install_manifest`\nTerraform data source.\n\nUnlike [google.data.container_attached_install_manifest.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): Set the `cluster_id` field on the resulting object.\n  - `location` (`string`): Set the `location` field on the resulting object.\n  - `platform_version` (`string`): Set the `platform_version` field on the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `container_attached_install_manifest` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    location,
    platform_version,
    project
  ):: std.prune(a={
    cluster_id: cluster_id,
    location: location,
    platform_version: platform_version,
    project: project,
  }),
  '#withClusterId':: d.fn(help='`google.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(dataSrcLabel, value): {
    data+: {
      google_container_attached_install_manifest+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_container_attached_install_manifest+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPlatformVersion':: d.fn(help='`google.string.withPlatformVersion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the platform_version field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `platform_version` field.\n', args=[]),
  withPlatformVersion(dataSrcLabel, value): {
    data+: {
      google_container_attached_install_manifest+: {
        [dataSrcLabel]+: {
          platform_version: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_container_attached_install_manifest+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
