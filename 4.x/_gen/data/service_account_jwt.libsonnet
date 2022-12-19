local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_account_jwt', url='', help='`service_account_jwt` represents the `google_service_account_jwt` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.service_account_jwt.new` injects a new `data_google_service_account_jwt` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.service_account_jwt.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.service_account_jwt` using the reference:\n\n    $._ref.data_google_service_account_jwt.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_service_account_jwt.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.\n  - `expires_in` (`number`): Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds. When `null`, the `expires_in` field will be omitted from the resulting object.\n  - `payload` (`string`): A JSON-encoded JWT claims set that will be included in the signed JWT.\n  - `target_service_account` (`string`): \n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    payload,
    target_service_account,
    delegates=null,
    expires_in=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_jwt',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      delegates=delegates,
      expires_in=expires_in,
      payload=payload,
      target_service_account=target_service_account
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.service_account_jwt.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_jwt`\nTerraform data source.\n\nUnlike [google.data.service_account_jwt.new](#fn-serviceaccountjwtnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.\n  - `expires_in` (`number`): Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds. When `null`, the `expires_in` field will be omitted from the resulting object.\n  - `payload` (`string`): A JSON-encoded JWT claims set that will be included in the signed JWT.\n  - `target_service_account` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_account_jwt` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    payload,
    target_service_account,
    delegates=null,
    expires_in=null
  ):: std.prune(a={
    delegates: delegates,
    expires_in: expires_in,
    payload: payload,
    target_service_account: target_service_account,
  }),
  '#withDelegates':: d.fn(help='`google.list.withDelegates` constructs a mixin object that can be merged into the `list`\nTerraform data source block to set or update the delegates field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `delegates` field.\n', args=[]),
  withDelegates(dataSrcLabel, value): {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          delegates: value,
        },
      },
    },
  },
  '#withExpiresIn':: d.fn(help='`google.number.withExpiresIn` constructs a mixin object that can be merged into the `number`\nTerraform data source block to set or update the expires_in field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `expires_in` field.\n', args=[]),
  withExpiresIn(dataSrcLabel, value): {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          expires_in: value,
        },
      },
    },
  },
  '#withPayload':: d.fn(help='`google.string.withPayload` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the payload field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `payload` field.\n', args=[]),
  withPayload(dataSrcLabel, value): {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          payload: value,
        },
      },
    },
  },
  '#withTargetServiceAccount':: d.fn(help='`google.string.withTargetServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the target_service_account field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_service_account` field.\n', args=[]),
  withTargetServiceAccount(dataSrcLabel, value): {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          target_service_account: value,
        },
      },
    },
  },
}
