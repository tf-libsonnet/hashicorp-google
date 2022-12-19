local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iap_client', url='', help='`iap_client` represents the `google_iap_client` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.iap_client.new` injects a new `data_google_iap_client` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.iap_client.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.iap_client` using the reference:\n\n    $._ref.data_google_iap_client.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_iap_client.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `brand` (`string`): Identifier of the brand to which this client\nis attached to. The format is\n\u0026#39;projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}\u0026#39;.\n  - `client_id` (`string`): Output only. Unique identifier of the OAuth client.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    brand,
    client_id,
    _meta={}
  ):: tf.withData(
    type='google_iap_client',
    label=dataSrcLabel,
    attrs=self.newAttrs(brand=brand, client_id=client_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.iap_client.newAttrs` constructs a new object with attributes and blocks configured for the `iap_client`\nTerraform data source.\n\nUnlike [google.data.iap_client.new](#fn-iapclientnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `brand` (`string`): Identifier of the brand to which this client\nis attached to. The format is\n&#39;projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}&#39;.\n  - `client_id` (`string`): Output only. Unique identifier of the OAuth client.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iap_client` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    brand,
    client_id
  ):: std.prune(a={
    brand: brand,
    client_id: client_id,
  }),
  '#withBrand':: d.fn(help='`google.iap_client.withBrand` constructs a mixin object that can be merged into the `iap_client`\nTerraform data source block to set or update the brand field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `brand` field.\n', args=[]),
  withBrand(dataSrcLabel, value):: {
    data+: {
      google_iap_client+: {
        [dataSrcLabel]+: {
          brand: value,
        },
      },
    },
  },
  '#withClientId':: d.fn(help='`google.iap_client.withClientId` constructs a mixin object that can be merged into the `iap_client`\nTerraform data source block to set or update the client_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `client_id` field.\n', args=[]),
  withClientId(dataSrcLabel, value):: {
    data+: {
      google_iap_client+: {
        [dataSrcLabel]+: {
          client_id: value,
        },
      },
    },
  },
}
