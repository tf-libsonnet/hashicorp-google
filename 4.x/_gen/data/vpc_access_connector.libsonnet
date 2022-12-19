local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vpc_access_connector', url='', help='`vpc_access_connector` represents the `google_vpc_access_connector` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.vpc_access_connector.new` injects a new `data_google_vpc_access_connector` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.vpc_access_connector.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.vpc_access_connector` using the reference:\n\n    $._ref.data_google_vpc_access_connector.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_vpc_access_connector.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `name` (`string`): The name of the resource (Max 25 characters).\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the VPC Access connector resides. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_vpc_access_connector',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project, region=region),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.vpc_access_connector.newAttrs` constructs a new object with attributes and blocks configured for the `vpc_access_connector`\nTerraform data source.\n\nUnlike [google.data.vpc_access_connector.new](#fn-vpcaccessconnectornew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The name of the resource (Max 25 characters).\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the VPC Access connector resides. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vpc_access_connector` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    project=null,
    region=null
  ):: std.prune(a={
    name: name,
    project: project,
    region: region,
  }),
  '#withName':: d.fn(help='`google.vpc_access_connector.withName` constructs a mixin object that can be merged into the `vpc_access_connector`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value):: {
    data+: {
      google_vpc_access_connector+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.vpc_access_connector.withProject` constructs a mixin object that can be merged into the `vpc_access_connector`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_vpc_access_connector+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.vpc_access_connector.withRegion` constructs a mixin object that can be merged into the `vpc_access_connector`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_vpc_access_connector+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}
