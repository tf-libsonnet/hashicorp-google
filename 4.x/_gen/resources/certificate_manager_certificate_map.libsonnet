local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='certificate_manager_certificate_map', url='', help='`certificate_manager_certificate_map` represents the `google_certificate_manager_certificate_map` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.certificate_manager_certificate_map.new` injects a new `google_certificate_manager_certificate_map` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.certificate_manager_certificate_map.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.certificate_manager_certificate_map` using the reference:\n\n    $._ref.google_certificate_manager_certificate_map.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_certificate_manager_certificate_map.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of labels associated with a Certificate Map resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the Certificate Map. Certificate Map names must be unique\nglobally and match the pattern \u0026#39;projects/*/locations/*/certificateMaps/*\u0026#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_map.timeouts.new](#fn-certificatemanagercertificatemaptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_certificate_map',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.certificate_manager_certificate_map.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate_map`\nTerraform resource.\n\nUnlike [google.certificate_manager_certificate_map.new](#fn-certificatemanagercertificatemapnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of labels associated with a Certificate Map resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the Certificate Map. Certificate Map names must be unique\nglobally and match the pattern &#39;projects/*/locations/*/certificateMaps/*&#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_map.timeouts.new](#fn-certificatemanagercertificatemaptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate_map` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.certificate_manager_certificate_map.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.certificate_manager_certificate_map.withDescription` constructs a mixin object that can be merged into the `certificate_manager_certificate_map`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.certificate_manager_certificate_map.withLabels` constructs a mixin object that can be merged into the `certificate_manager_certificate_map`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.certificate_manager_certificate_map.withName` constructs a mixin object that can be merged into the `certificate_manager_certificate_map`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.certificate_manager_certificate_map.withProject` constructs a mixin object that can be merged into the `certificate_manager_certificate_map`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.certificate_manager_certificate_map.withTimeouts` constructs a mixin object that can be merged into the `certificate_manager_certificate_map`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.certificate_manager_certificate_map.withTimeoutsMixin` constructs a mixin object that can be merged into the `certificate_manager_certificate_map`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.certificate_manager_certificate_map.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
