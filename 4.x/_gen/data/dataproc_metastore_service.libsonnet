local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataproc_metastore_service', url='', help='`dataproc_metastore_service` represents the `google_dataproc_metastore_service` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.dataproc_metastore_service.new` injects a new `data_google_dataproc_metastore_service` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.dataproc_metastore_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.dataproc_metastore_service` using the reference:\n\n    $._ref.data_google_dataproc_metastore_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_dataproc_metastore_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location where the metastore service should reside.\nThe default value is \u0026#39;global\u0026#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 63 characters.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    location,
    service_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dataproc_metastore_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project, service_id=service_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.dataproc_metastore_service.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_metastore_service`\nTerraform data source.\n\nUnlike [google.data.dataproc_metastore_service.new](#fn-dataprocmetastoreservicenew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location where the metastore service should reside.\nThe default value is &#39;global&#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 63 characters.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dataproc_metastore_service` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    service_id,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
    service_id: service_id,
  }),
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_dataproc_metastore_service+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_dataproc_metastore_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceId':: d.fn(help='`google.string.withServiceId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the service_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_id` field.\n', args=[]),
  withServiceId(dataSrcLabel, value): {
    data+: {
      google_dataproc_metastore_service+: {
        [dataSrcLabel]+: {
          service_id: value,
        },
      },
    },
  },
}
