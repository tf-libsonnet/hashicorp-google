local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_keys', url='', help='`dns_keys` represents the `google_dns_keys` Terraform data source.\n\nGet the DNSKEY and DS records of DNSSEC-signed managed zones\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.dns_keys.new` injects a new `data_google_dns_keys` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.dns_keys.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.dns_keys` using the reference:\n\n    $._ref.data_google_dns_keys.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_dns_keys.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `managed_zone` (`string`): The Name of the zone.\n  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    managed_zone,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dns_keys',
    label=dataSrcLabel,
    attrs=self.newAttrs(managed_zone=managed_zone, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.dns_keys.newAttrs` constructs a new object with attributes and blocks configured for the `dns_keys`\nTerraform data source.\n\nUnlike [google.data.dns_keys.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `managed_zone` (`string`): The Name of the zone.\n  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dns_keys` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    managed_zone,
    project=null
  ):: std.prune(a={
    managed_zone: managed_zone,
    project: project,
  }),
  '#withManagedZone':: d.fn(help='`google.string.withManagedZone` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the managed_zone field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `managed_zone` field.\n', args=[]),
  withManagedZone(dataSrcLabel, value): {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          managed_zone: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
