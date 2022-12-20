local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_transfer_project_service_account', url='', help='`storage_transfer_project_service_account` represents the `google_storage_transfer_project_service_account` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.storage_transfer_project_service_account.new` injects a new `data_google_storage_transfer_project_service_account` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.storage_transfer_project_service_account.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.storage_transfer_project_service_account` using the reference:\n\n    $._ref.data_google_storage_transfer_project_service_account.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_storage_transfer_project_service_account.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_transfer_project_service_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.storage_transfer_project_service_account.newAttrs` constructs a new object with attributes and blocks configured for the `storage_transfer_project_service_account`\nTerraform data source.\n\nUnlike [google.data.storage_transfer_project_service_account.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `storage_transfer_project_service_account` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project=null
  ):: std.prune(a={
    project: project,
  }),
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_storage_transfer_project_service_account+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
