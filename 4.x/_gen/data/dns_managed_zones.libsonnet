local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_managed_zones', url='', help='`dns_managed_zones` represents the `google_dns_managed_zones` Terraform data source.\n\nProvides access to all zones for a given project within Google Cloud DNS\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  managed_zones:: {
    '#new':: d.fn(help='\n`google.dns_managed_zones.managed_zones.new` constructs a new object with attributes and blocks configured for the `managed_zones`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `managed_zones` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  '#new':: d.fn(help="\n`google.data.dns_managed_zones.new` injects a new `data_google_dns_managed_zones` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.dns_managed_zones.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.dns_managed_zones` using the reference:\n\n    $._ref.data_google_dns_managed_zones.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_dns_managed_zones.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.\n  - `managed_zones` (`list[obj]`): The list of managed zones in the given project. When `null`, the `managed_zones` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_managed_zones.managed_zones.new](#fn-managed_zonesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    managed_zones=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dns_managed_zones',
    label=dataSrcLabel,
    attrs=self.newAttrs(managed_zones=managed_zones, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.dns_managed_zones.newAttrs` constructs a new object with attributes and blocks configured for the `dns_managed_zones`\nTerraform data source.\n\nUnlike [google.data.dns_managed_zones.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.\n  - `managed_zones` (`list[obj]`): The list of managed zones in the given project. When `null`, the `managed_zones` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_managed_zones.managed_zones.new](#fn-managed_zonesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dns_managed_zones` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    managed_zones=null,
    project=null
  ):: std.prune(a={
    managed_zones: managed_zones,
    project: project,
  }),
  '#withManagedZones':: d.fn(help='`google.list[obj].withManagedZones` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the managed_zones field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagedZonesMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed_zones` field.\n', args=[]),
  withManagedZones(dataSrcLabel, value): {
    data+: {
      google_dns_managed_zones+: {
        [dataSrcLabel]+: {
          managed_zones: value,
        },
      },
    },
  },
  '#withManagedZonesMixin':: d.fn(help='`google.list[obj].withManagedZonesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the managed_zones field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManagedZones](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed_zones` field.\n', args=[]),
  withManagedZonesMixin(dataSrcLabel, value): {
    data+: {
      google_dns_managed_zones+: {
        [dataSrcLabel]+: {
          managed_zones+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_dns_managed_zones+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
