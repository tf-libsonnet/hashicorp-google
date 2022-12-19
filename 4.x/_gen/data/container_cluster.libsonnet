local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_cluster', url='', help='`container_cluster` represents the `google_container_cluster` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.container_cluster.new` injects a new `data_google_container_cluster` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.container_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.container_cluster` using the reference:\n\n    $._ref.data_google_container_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_container_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the cluster, unique within the project and location.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    name,
    location=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_container_cluster',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, name=name, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.container_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_cluster`\nTerraform data source.\n\nUnlike [google.data.container_cluster.new](#fn-containerclusternew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the cluster, unique within the project and location.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `container_cluster` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
  }),
  '#withLocation':: d.fn(help='`google.container_cluster.withLocation` constructs a mixin object that can be merged into the `container_cluster`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_container_cluster+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.container_cluster.withName` constructs a mixin object that can be merged into the `container_cluster`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value):: {
    data+: {
      google_container_cluster+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.container_cluster.withProject` constructs a mixin object that can be merged into the `container_cluster`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_container_cluster+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
