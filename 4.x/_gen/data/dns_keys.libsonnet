local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_keys', url='', help='`dns_keys` represents the `google_dns_keys` Terraform data source.\n\nGet the DNSKEY and DS records of DNSSEC-signed managed zones\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  key_signing_keys:: {
    digests:: {
      '#new':: d.fn(help='\n`google.dns_keys.key_signing_keys.digests.new` constructs a new object with attributes and blocks configured for the `digests`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `digests` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    '#new':: d.fn(help='\n`google.dns_keys.key_signing_keys.new` constructs a new object with attributes and blocks configured for the `key_signing_keys`\nTerraform sub block.\n\n\n\n**Args**:\n  - `digests` (`list[obj]`): A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. When `null`, the `digests` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_keys.key_signing_keys.digests.new](#fn-key_signing_keysdigestsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `key_signing_keys` sub block.\n', args=[]),
    new(
      digests=null
    ):: std.prune(a={
      digests: digests,
    }),
  },
  '#new':: d.fn(help="\n`google.data.dns_keys.new` injects a new `data_google_dns_keys` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.dns_keys.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.dns_keys` using the reference:\n\n    $._ref.data_google_dns_keys.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_dns_keys.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `managed_zone` (`string`): The Name of the zone.\n  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.\n  - `key_signing_keys` (`list[obj]`): A list of Key-signing key (KSK) records. When `null`, the `key_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.key_signing_keys.new](#fn-key_signing_keysnew) constructor.\n  - `zone_signing_keys` (`list[obj]`): A list of Zone-signing key (ZSK) records. When `null`, the `zone_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.zone_signing_keys.new](#fn-zone_signing_keysnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    managed_zone,
    key_signing_keys=null,
    project=null,
    zone_signing_keys=null,
    _meta={}
  ):: tf.withData(
    type='google_dns_keys',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      key_signing_keys=key_signing_keys,
      managed_zone=managed_zone,
      project=project,
      zone_signing_keys=zone_signing_keys
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.dns_keys.newAttrs` constructs a new object with attributes and blocks configured for the `dns_keys`\nTerraform data source.\n\nUnlike [google.data.dns_keys.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `managed_zone` (`string`): The Name of the zone.\n  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.\n  - `key_signing_keys` (`list[obj]`): A list of Key-signing key (KSK) records. When `null`, the `key_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.key_signing_keys.new](#fn-key_signing_keysnew) constructor.\n  - `zone_signing_keys` (`list[obj]`): A list of Zone-signing key (ZSK) records. When `null`, the `zone_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.zone_signing_keys.new](#fn-zone_signing_keysnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dns_keys` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    managed_zone,
    key_signing_keys=null,
    project=null,
    zone_signing_keys=null
  ):: std.prune(a={
    key_signing_keys: key_signing_keys,
    managed_zone: managed_zone,
    project: project,
    zone_signing_keys: zone_signing_keys,
  }),
  '#withKeySigningKeys':: d.fn(help='`google.list[obj].withKeySigningKeys` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the key_signing_keys field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withKeySigningKeysMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `key_signing_keys` field.\n', args=[]),
  withKeySigningKeys(dataSrcLabel, value): {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          key_signing_keys: value,
        },
      },
    },
  },
  '#withKeySigningKeysMixin':: d.fn(help='`google.list[obj].withKeySigningKeysMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the key_signing_keys field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withKeySigningKeys](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `key_signing_keys` field.\n', args=[]),
  withKeySigningKeysMixin(dataSrcLabel, value): {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          key_signing_keys+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
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
  '#withZoneSigningKeys':: d.fn(help='`google.list[obj].withZoneSigningKeys` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the zone_signing_keys field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withZoneSigningKeysMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `zone_signing_keys` field.\n', args=[]),
  withZoneSigningKeys(dataSrcLabel, value): {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          zone_signing_keys: value,
        },
      },
    },
  },
  '#withZoneSigningKeysMixin':: d.fn(help='`google.list[obj].withZoneSigningKeysMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the zone_signing_keys field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withZoneSigningKeys](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `zone_signing_keys` field.\n', args=[]),
  withZoneSigningKeysMixin(dataSrcLabel, value): {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          zone_signing_keys+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  zone_signing_keys:: {
    digests:: {
      '#new':: d.fn(help='\n`google.dns_keys.zone_signing_keys.digests.new` constructs a new object with attributes and blocks configured for the `digests`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `digests` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    '#new':: d.fn(help='\n`google.dns_keys.zone_signing_keys.new` constructs a new object with attributes and blocks configured for the `zone_signing_keys`\nTerraform sub block.\n\n\n\n**Args**:\n  - `digests` (`list[obj]`): A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. When `null`, the `digests` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_keys.zone_signing_keys.digests.new](#fn-zone_signing_keysdigestsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `zone_signing_keys` sub block.\n', args=[]),
    new(
      digests=null
    ):: std.prune(a={
      digests: digests,
    }),
  },
}
