local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_account_key', url='', help='`service_account_key` represents the `google_service_account_key` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.service_account_key.new` injects a new `data_google_service_account_key` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.service_account_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.service_account_key` using the reference:\n\n    $._ref.data_google_service_account_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_service_account_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `name` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `public_key_type` (`string`):  When `null`, the `public_key_type` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name,
    project=null,
    public_key_type=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_key',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project, public_key_type=public_key_type),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.service_account_key.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_key`\nTerraform data source.\n\nUnlike [google.data.service_account_key.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `public_key_type` (`string`):  When `null`, the `public_key_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_account_key` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    project=null,
    public_key_type=null
  ):: std.prune(a={
    name: name,
    project: project,
    public_key_type: public_key_type,
  }),
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_service_account_key+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_service_account_key+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublicKeyType':: d.fn(help='`google.string.withPublicKeyType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the public_key_type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `public_key_type` field.\n', args=[]),
  withPublicKeyType(dataSrcLabel, value): {
    data+: {
      google_service_account_key+: {
        [dataSrcLabel]+: {
          public_key_type: value,
        },
      },
    },
  },
}
