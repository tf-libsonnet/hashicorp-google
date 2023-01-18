local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_service', url='', help='`project_service` represents the `google_project_service` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.project_service.new` injects a new `data_google_project_service` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.project_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.project_service` using the reference:\n\n    $._ref.data_google_project_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_project_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): Set the `service` field on the resulting data source block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    service,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_project_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, service=service),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.project_service.newAttrs` constructs a new object with attributes and blocks configured for the `project_service`\nTerraform data source.\n\nUnlike [google.data.project_service.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): Set the `service` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `project_service` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service,
    project=null
  ):: std.prune(a={
    project: project,
    service: service,
  }),
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_project_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the service field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(dataSrcLabel, value): {
    data+: {
      google_project_service+: {
        [dataSrcLabel]+: {
          service: value,
        },
      },
    },
  },
}
