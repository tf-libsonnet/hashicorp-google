local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_account_access_token', url='', help='`service_account_access_token` represents the `google_service_account_access_token` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.service_account_access_token.new` injects a new `data_google_service_account_access_token` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.service_account_access_token.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.service_account_access_token` using the reference:\n\n    $._ref.data_google_service_account_access_token.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_service_account_access_token.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.\n  - `lifetime` (`string`):  When `null`, the `lifetime` field will be omitted from the resulting object.\n  - `scopes` (`list`): \n  - `target_service_account` (`string`): \n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    scopes,
    target_service_account,
    delegates=null,
    lifetime=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_access_token',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      delegates=delegates,
      lifetime=lifetime,
      scopes=scopes,
      target_service_account=target_service_account
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.service_account_access_token.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_access_token`\nTerraform data source.\n\nUnlike [google.data.service_account_access_token.new](#fn-service_account_access_tokennew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.\n  - `lifetime` (`string`):  When `null`, the `lifetime` field will be omitted from the resulting object.\n  - `scopes` (`list`): \n  - `target_service_account` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_account_access_token` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    scopes,
    target_service_account,
    delegates=null,
    lifetime=null
  ):: std.prune(a={
    delegates: delegates,
    lifetime: lifetime,
    scopes: scopes,
    target_service_account: target_service_account,
  }),
  '#withDelegates':: d.fn(help='`google.list.withDelegates` constructs a mixin object that can be merged into the `list`\nTerraform data source block to set or update the delegates field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `delegates` field.\n', args=[]),
  withDelegates(dataSrcLabel, value): {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          delegates: value,
        },
      },
    },
  },
  '#withLifetime':: d.fn(help='`google.string.withLifetime` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the lifetime field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `lifetime` field.\n', args=[]),
  withLifetime(dataSrcLabel, value): {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  '#withScopes':: d.fn(help='`google.list.withScopes` constructs a mixin object that can be merged into the `list`\nTerraform data source block to set or update the scopes field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `scopes` field.\n', args=[]),
  withScopes(dataSrcLabel, value): {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          scopes: value,
        },
      },
    },
  },
  '#withTargetServiceAccount':: d.fn(help='`google.string.withTargetServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the target_service_account field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_service_account` field.\n', args=[]),
  withTargetServiceAccount(dataSrcLabel, value): {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          target_service_account: value,
        },
      },
    },
  },
}
