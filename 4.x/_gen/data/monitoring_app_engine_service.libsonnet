local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_app_engine_service', url='', help='`monitoring_app_engine_service` represents the `google_monitoring_app_engine_service` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.monitoring_app_engine_service.new` injects a new `data_google_monitoring_app_engine_service` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.monitoring_app_engine_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.monitoring_app_engine_service` using the reference:\n\n    $._ref.data_google_monitoring_app_engine_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_monitoring_app_engine_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `module_id` (`string`): The ID of the App Engine module underlying this service. \nCorresponds to the \u0026#39;moduleId\u0026#39; resource label for a \u0026#39;gae_app\u0026#39;\nmonitored resource(see https://cloud.google.com/monitoring/api/resources#tag_gae_app)\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    module_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_app_engine_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(module_id=module_id, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.monitoring_app_engine_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_app_engine_service`\nTerraform data source.\n\nUnlike [google.data.monitoring_app_engine_service.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `module_id` (`string`): The ID of the App Engine module underlying this service. \nCorresponds to the &#39;moduleId&#39; resource label for a &#39;gae_app&#39;\nmonitored resource(see https://cloud.google.com/monitoring/api/resources#tag_gae_app)\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_app_engine_service` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    module_id,
    project=null
  ):: std.prune(a={
    module_id: module_id,
    project: project,
  }),
  '#withModuleId':: d.fn(help='`google.string.withModuleId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the module_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `module_id` field.\n', args=[]),
  withModuleId(dataSrcLabel, value): {
    data+: {
      google_monitoring_app_engine_service+: {
        [dataSrcLabel]+: {
          module_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_monitoring_app_engine_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
