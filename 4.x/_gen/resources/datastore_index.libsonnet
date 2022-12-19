local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='datastore_index', url='', help='`datastore_index` represents the `google_datastore_index` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.datastore_index.new` injects a new `google_datastore_index` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.datastore_index.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.datastore_index` using the reference:\n\n    $._ref.google_datastore_index.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_datastore_index.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `ancestor` (`string`): Policy for including ancestors in the index. Default value: \u0026#34;NONE\u0026#34; Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;ALL_ANCESTORS\u0026#34;] When `null`, the `ancestor` field will be omitted from the resulting object.\n  - `kind` (`string`): The entity kind which the index applies to.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `properties` (`list[obj]`): An ordered list of properties to index on. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.properties.new](#fn-datastore_indexpropertiesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.timeouts.new](#fn-datastore_indextimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    kind,
    ancestor=null,
    project=null,
    properties=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_datastore_index',
    label=resourceLabel,
    attrs=self.newAttrs(
      ancestor=ancestor,
      kind=kind,
      project=project,
      properties=properties,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.datastore_index.newAttrs` constructs a new object with attributes and blocks configured for the `datastore_index`\nTerraform resource.\n\nUnlike [google.datastore_index.new](#fn-datastore_indexnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `ancestor` (`string`): Policy for including ancestors in the index. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ALL_ANCESTORS&#34;] When `null`, the `ancestor` field will be omitted from the resulting object.\n  - `kind` (`string`): The entity kind which the index applies to.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `properties` (`list[obj]`): An ordered list of properties to index on. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.properties.new](#fn-datastore_indexpropertiesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.timeouts.new](#fn-datastore_indextimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastore_index` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    kind,
    ancestor=null,
    project=null,
    properties=null,
    timeouts=null
  ):: std.prune(a={
    ancestor: ancestor,
    kind: kind,
    project: project,
    properties: properties,
    timeouts: timeouts,
  }),
  properties:: {
    '#new':: d.fn(help='\n`google.datastore_index.properties.new` constructs a new object with attributes and blocks configured for the `properties`\nTerraform sub block.\n\n\n\n**Args**:\n  - `direction` (`string`): The direction the index should optimize for sorting. Possible values: [&#34;ASCENDING&#34;, &#34;DESCENDING&#34;]\n  - `name` (`string`): The property name to index.\n\n**Returns**:\n  - An attribute object that represents the `properties` sub block.\n', args=[]),
    new(
      direction,
      name
    ):: std.prune(a={
      direction: direction,
      name: name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.datastore_index.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAncestor':: d.fn(help='`google.string.withAncestor` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ancestor field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ancestor` field.\n', args=[]),
  withAncestor(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          ancestor: value,
        },
      },
    },
  },
  '#withKind':: d.fn(help='`google.string.withKind` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kind field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kind` field.\n', args=[]),
  withKind(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          kind: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProperties':: d.fn(help='`google.list[obj].withProperties` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the properties field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPropertiesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `properties` field.\n', args=[]),
  withProperties(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          properties: value,
        },
      },
    },
  },
  '#withPropertiesMixin':: d.fn(help='`google.list[obj].withPropertiesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the properties field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withProperties](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `properties` field.\n', args=[]),
  withPropertiesMixin(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          properties+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
