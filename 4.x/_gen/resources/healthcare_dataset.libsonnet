local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='healthcare_dataset', url='', help='`healthcare_dataset` represents the `google_healthcare_dataset` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.healthcare_dataset.new` injects a new `google_healthcare_dataset` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.healthcare_dataset.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.healthcare_dataset` using the reference:\n\n    $._ref.google_healthcare_dataset.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_healthcare_dataset.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location for the Dataset.\n  - `name` (`string`): The resource name for the Dataset.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The default timezone used by this dataset. Must be a either a valid IANA time zone name such as\n\u0026#34;America/New_York\u0026#34; or empty, which defaults to UTC. This is used for parsing times in resources\n(e.g., HL7 messages) where no explicit timezone is specified. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_dataset.timeouts.new](#fn-healthcaredatasettimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    project=null,
    time_zone=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dataset',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      name=name,
      project=project,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.healthcare_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_dataset`\nTerraform resource.\n\nUnlike [google.healthcare_dataset.new](#fn-healthcaredatasetnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location for the Dataset.\n  - `name` (`string`): The resource name for the Dataset.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The default timezone used by this dataset. Must be a either a valid IANA time zone name such as\n&#34;America/New_York&#34; or empty, which defaults to UTC. This is used for parsing times in resources\n(e.g., HL7 messages) where no explicit timezone is specified. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_dataset.timeouts.new](#fn-healthcaredatasettimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_dataset` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    project=null,
    time_zone=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.healthcare_dataset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google.string.withTimeZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value): {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
