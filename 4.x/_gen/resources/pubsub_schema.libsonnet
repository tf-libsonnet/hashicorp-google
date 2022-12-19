local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='pubsub_schema', url='', help='`pubsub_schema` represents the `google_pubsub_schema` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.pubsub_schema.new` injects a new `google_pubsub_schema` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.pubsub_schema.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.pubsub_schema` using the reference:\n\n    $._ref.google_pubsub_schema.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_pubsub_schema.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `definition` (`string`): The definition of the schema.\nThis should contain a string representing the full definition of the schema\nthat is a valid schema definition of the type specified in type. When `null`, the `definition` field will be omitted from the resulting object.\n  - `name` (`string`): The ID to use for the schema, which will become the final component of the schema\u0026#39;s resource name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the schema definition Default value: \u0026#34;TYPE_UNSPECIFIED\u0026#34; Possible values: [\u0026#34;TYPE_UNSPECIFIED\u0026#34;, \u0026#34;PROTOCOL_BUFFER\u0026#34;, \u0026#34;AVRO\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_schema.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    definition=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_schema',
    label=resourceLabel,
    attrs=self.newAttrs(
      definition=definition,
      name=name,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.pubsub_schema.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_schema`\nTerraform resource.\n\nUnlike [google.pubsub_schema.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `definition` (`string`): The definition of the schema.\nThis should contain a string representing the full definition of the schema\nthat is a valid schema definition of the type specified in type. When `null`, the `definition` field will be omitted from the resulting object.\n  - `name` (`string`): The ID to use for the schema, which will become the final component of the schema&#39;s resource name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the schema definition Default value: &#34;TYPE_UNSPECIFIED&#34; Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;PROTOCOL_BUFFER&#34;, &#34;AVRO&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_schema.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_schema` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    definition=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    definition: definition,
    name: name,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.pubsub_schema.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDefinition':: d.fn(help='`google.string.withDefinition` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the definition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `definition` field.\n', args=[]),
  withDefinition(resourceLabel, value): {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          definition: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
