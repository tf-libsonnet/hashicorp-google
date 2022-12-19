local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataplex_lake', url='', help='`dataplex_lake` represents the `google_dataplex_lake` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metastore:: {
    '#new':: d.fn(help='\n`google.dataplex_lake.metastore.new` constructs a new object with attributes and blocks configured for the `metastore`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: `projects/{project_id}/locations/{location_id}/services/{service_id}` When `null`, the `service` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metastore` sub block.\n', args=[]),
    new(
      service=null
    ):: std.prune(a={
      service: service,
    }),
  },
  '#new':: d.fn(help="\n`google.dataplex_lake.new` injects a new `google_dataplex_lake` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataplex_lake.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataplex_lake` using the reference:\n\n    $._ref.google_dataplex_lake.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataplex_lake.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Optional. Description of the lake. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. User-defined labels for the lake. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of the lake.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `metastore` (`list[obj]`): Optional. Settings to manage lake and Dataproc Metastore service instance association. When `null`, the `metastore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.metastore.new](#fn-dataplexlakemetastorenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.timeouts.new](#fn-dataplexlaketimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    description=null,
    display_name=null,
    labels=null,
    metastore=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataplex_lake',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      labels=labels,
      location=location,
      metastore=metastore,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataplex_lake.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_lake`\nTerraform resource.\n\nUnlike [google.dataplex_lake.new](#fn-dataplexlakenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Optional. Description of the lake. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. User-defined labels for the lake. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of the lake.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `metastore` (`list[obj]`): Optional. Settings to manage lake and Dataproc Metastore service instance association. When `null`, the `metastore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.metastore.new](#fn-dataplexlakemetastorenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.timeouts.new](#fn-dataplexlaketimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_lake` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    description=null,
    display_name=null,
    labels=null,
    metastore=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    labels: labels,
    location: location,
    metastore: metastore,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataplex_lake.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withDescription':: d.fn(help='`google.dataplex_lake.withDescription` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.dataplex_lake.withDisplayName` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.dataplex_lake.withLabels` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.dataplex_lake.withLocation` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMetastore':: d.fn(help='`google.dataplex_lake.withMetastore` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the metastore field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `metastore` field.\n', args=[]),
  withMetastore(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          metastore: value,
        },
      },
    },
  },
  '#withMetastoreMixin':: d.fn(help='`google.dataplex_lake.withMetastoreMixin` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the metastore field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dataplex_lake.withMetastore](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `metastore` field.\n', args=[]),
  withMetastoreMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          metastore+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.dataplex_lake.withName` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.dataplex_lake.withProject` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.dataplex_lake.withTimeouts` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.dataplex_lake.withTimeoutsMixin` constructs a mixin object that can be merged into the `dataplex_lake`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.dataplex_lake.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
