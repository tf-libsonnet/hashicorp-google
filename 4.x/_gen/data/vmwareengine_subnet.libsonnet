local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vmwareengine_subnet', url='', help='`vmwareengine_subnet` represents the `google_vmwareengine_subnet` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.vmwareengine_subnet.new` injects a new `data_google_vmwareengine_subnet` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.vmwareengine_subnet.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.vmwareengine_subnet` using the reference:\n\n    $._ref.data_google_vmwareengine_subnet.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_vmwareengine_subnet.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `name` (`string`): The ID of the subnet. For userDefined subnets, this name should be in the format of \u0026#34;service-n\u0026#34;,\nwhere n ranges from 1 to 5.\n  - `parent` (`string`): The resource name of the private cloud to create a new subnet in.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name,
    parent,
    _meta={}
  ):: tf.withData(
    type='google_vmwareengine_subnet',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, parent=parent),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.vmwareengine_subnet.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_subnet`\nTerraform data source.\n\nUnlike [google.data.vmwareengine_subnet.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The ID of the subnet. For userDefined subnets, this name should be in the format of &#34;service-n&#34;,\nwhere n ranges from 1 to 5.\n  - `parent` (`string`): The resource name of the private cloud to create a new subnet in.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vmwareengine_subnet` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent
  ):: std.prune(a={
    name: name,
    parent: parent,
  }),
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_vmwareengine_subnet+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the parent field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(dataSrcLabel, value): {
    data+: {
      google_vmwareengine_subnet+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
}
