local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_account_key', url='', help='`service_account_key` represents the `google_service_account_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.service_account_key.new` injects a new `google_service_account_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.service_account_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.service_account_key` using the reference:\n\n    $._ref.google_service_account_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_service_account_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `keepers` (`obj`): Arbitrary map of values that, when changed, will trigger recreation of resource. When `null`, the `keepers` field will be omitted from the resulting object.\n  - `key_algorithm` (`string`): The algorithm used to generate the key, used only on create. KEY_ALG_RSA_2048 is the default algorithm. Valid values are: \u0026#34;KEY_ALG_RSA_1024\u0026#34;, \u0026#34;KEY_ALG_RSA_2048\u0026#34;. When `null`, the `key_algorithm` field will be omitted from the resulting object.\n  - `private_key_type` (`string`):  When `null`, the `private_key_type` field will be omitted from the resulting object.\n  - `public_key_data` (`string`): A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is a base64 encoded X509_PEM. When `null`, the `public_key_data` field will be omitted from the resulting object.\n  - `public_key_type` (`string`):  When `null`, the `public_key_type` field will be omitted from the resulting object.\n  - `service_account_id` (`string`): The ID of the parent service account of the key. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the provider\u0026#39;s configuration.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service_account_id,
    keepers=null,
    key_algorithm=null,
    private_key_type=null,
    public_key_data=null,
    public_key_type=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_account_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      keepers=keepers,
      key_algorithm=key_algorithm,
      private_key_type=private_key_type,
      public_key_data=public_key_data,
      public_key_type=public_key_type,
      service_account_id=service_account_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.service_account_key.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_key`\nTerraform resource.\n\nUnlike [google.service_account_key.new](#fn-serviceaccountkeynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `keepers` (`obj`): Arbitrary map of values that, when changed, will trigger recreation of resource. When `null`, the `keepers` field will be omitted from the resulting object.\n  - `key_algorithm` (`string`): The algorithm used to generate the key, used only on create. KEY_ALG_RSA_2048 is the default algorithm. Valid values are: &#34;KEY_ALG_RSA_1024&#34;, &#34;KEY_ALG_RSA_2048&#34;. When `null`, the `key_algorithm` field will be omitted from the resulting object.\n  - `private_key_type` (`string`):  When `null`, the `private_key_type` field will be omitted from the resulting object.\n  - `public_key_data` (`string`): A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is a base64 encoded X509_PEM. When `null`, the `public_key_data` field will be omitted from the resulting object.\n  - `public_key_type` (`string`):  When `null`, the `public_key_type` field will be omitted from the resulting object.\n  - `service_account_id` (`string`): The ID of the parent service account of the key. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the provider&#39;s configuration.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_account_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service_account_id,
    keepers=null,
    key_algorithm=null,
    private_key_type=null,
    public_key_data=null,
    public_key_type=null
  ):: std.prune(a={
    keepers: keepers,
    key_algorithm: key_algorithm,
    private_key_type: private_key_type,
    public_key_data: public_key_data,
    public_key_type: public_key_type,
    service_account_id: service_account_id,
  }),
  '#withKeepers':: d.fn(help='`google.obj.withKeepers` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the keepers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `keepers` field.\n', args=[]),
  withKeepers(resourceLabel, value): {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          keepers: value,
        },
      },
    },
  },
  '#withKeyAlgorithm':: d.fn(help='`google.string.withKeyAlgorithm` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key_algorithm field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key_algorithm` field.\n', args=[]),
  withKeyAlgorithm(resourceLabel, value): {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          key_algorithm: value,
        },
      },
    },
  },
  '#withPrivateKeyType':: d.fn(help='`google.string.withPrivateKeyType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the private_key_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `private_key_type` field.\n', args=[]),
  withPrivateKeyType(resourceLabel, value): {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          private_key_type: value,
        },
      },
    },
  },
  '#withPublicKeyData':: d.fn(help='`google.string.withPublicKeyData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the public_key_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `public_key_data` field.\n', args=[]),
  withPublicKeyData(resourceLabel, value): {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          public_key_data: value,
        },
      },
    },
  },
  '#withPublicKeyType':: d.fn(help='`google.string.withPublicKeyType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the public_key_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `public_key_type` field.\n', args=[]),
  withPublicKeyType(resourceLabel, value): {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          public_key_type: value,
        },
      },
    },
  },
  '#withServiceAccountId':: d.fn(help='`google.string.withServiceAccountId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account_id` field.\n', args=[]),
  withServiceAccountId(resourceLabel, value): {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          service_account_id: value,
        },
      },
    },
  },
}
