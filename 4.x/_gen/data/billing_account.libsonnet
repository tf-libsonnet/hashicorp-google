local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='billing_account', url='', help='`billing_account` represents the `google_billing_account` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.billing_account.new` injects a new `data_google_billing_account` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.billing_account.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.billing_account` using the reference:\n\n    $._ref.data_google_billing_account.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_billing_account.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `billing_account` (`string`): Set the `billing_account` field on the resulting data source block. When `null`, the `billing_account` field will be omitted from the resulting object.\n  - `display_name` (`string`): Set the `display_name` field on the resulting data source block. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `open` (`bool`): Set the `open` field on the resulting data source block. When `null`, the `open` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    billing_account=null,
    display_name=null,
    open=null,
    _meta={}
  ):: tf.withData(
    type='google_billing_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(billing_account=billing_account, display_name=display_name, open=open),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.billing_account.newAttrs` constructs a new object with attributes and blocks configured for the `billing_account`\nTerraform data source.\n\nUnlike [google.data.billing_account.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `billing_account` (`string`): Set the `billing_account` field on the resulting object. When `null`, the `billing_account` field will be omitted from the resulting object.\n  - `display_name` (`string`): Set the `display_name` field on the resulting object. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `open` (`bool`): Set the `open` field on the resulting object. When `null`, the `open` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `billing_account` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    billing_account=null,
    display_name=null,
    open=null
  ):: std.prune(a={
    billing_account: billing_account,
    display_name: display_name,
    open: open,
  }),
  '#withBillingAccount':: d.fn(help='`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the billing_account field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_account` field.\n', args=[]),
  withBillingAccount(dataSrcLabel, value): {
    data+: {
      google_billing_account+: {
        [dataSrcLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the display_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(dataSrcLabel, value): {
    data+: {
      google_billing_account+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withOpen':: d.fn(help='`google.bool.withOpen` constructs a mixin object that can be merged into the `bool`\nTerraform data source block to set or update the open field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `open` field.\n', args=[]),
  withOpen(dataSrcLabel, value): {
    data+: {
      google_billing_account+: {
        [dataSrcLabel]+: {
          open: value,
        },
      },
    },
  },
}
