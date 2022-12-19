local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='firestore_index', url='', help='`firestore_index` represents the `google_firestore_index` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  fields:: {
    '#new':: d.fn(help='\n`google.firestore_index.fields.new` constructs a new object with attributes and blocks configured for the `fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `array_config` (`string`): Indicates that this field supports operations on arrayValues. Only one of &#39;order&#39; and &#39;arrayConfig&#39; can\nbe specified. Possible values: [&#34;CONTAINS&#34;] When `null`, the `array_config` field will be omitted from the resulting object.\n  - `field_path` (`string`): Name of the field. When `null`, the `field_path` field will be omitted from the resulting object.\n  - `order` (`string`): Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=.\nOnly one of &#39;order&#39; and &#39;arrayConfig&#39; can be specified. Possible values: [&#34;ASCENDING&#34;, &#34;DESCENDING&#34;] When `null`, the `order` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fields` sub block.\n', args=[]),
    new(
      array_config=null,
      field_path=null,
      order=null
    ):: std.prune(a={
      array_config: array_config,
      field_path: field_path,
      order: order,
    }),
  },
  '#new':: d.fn(help="\n`google.firestore_index.new` injects a new `google_firestore_index` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.firestore_index.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.firestore_index` using the reference:\n\n    $._ref.google_firestore_index.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_firestore_index.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `collection` (`string`): The collection being indexed.\n  - `database` (`string`): The Firestore database id. Defaults to \u0026#39;\u0026#34;(default)\u0026#34;\u0026#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `query_scope` (`string`): The scope at which a query is run. Default value: \u0026#34;COLLECTION\u0026#34; Possible values: [\u0026#34;COLLECTION\u0026#34;, \u0026#34;COLLECTION_GROUP\u0026#34;] When `null`, the `query_scope` field will be omitted from the resulting object.\n  - `fields` (`list[obj]`): The fields supported by this index. The last field entry is always for\nthe field path \u0026#39;__name__\u0026#39;. If, on creation, \u0026#39;__name__\u0026#39; was not\nspecified as the last field, it will be added automatically with the\nsame direction as that of the last field defined. If the final field\nin a composite index is not directional, the \u0026#39;__name__\u0026#39; will be\nordered \u0026#39;\u0026#34;ASCENDING\u0026#34;\u0026#39; (unless explicitly specified otherwise). When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.fields.new](#fn-firestoreindexfieldsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.timeouts.new](#fn-firestoreindextimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    collection,
    database=null,
    fields=null,
    project=null,
    query_scope=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_index',
    label=resourceLabel,
    attrs=self.newAttrs(
      collection=collection,
      database=database,
      fields=fields,
      project=project,
      query_scope=query_scope,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.firestore_index.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_index`\nTerraform resource.\n\nUnlike [google.firestore_index.new](#fn-firestoreindexnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `collection` (`string`): The collection being indexed.\n  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `query_scope` (`string`): The scope at which a query is run. Default value: &#34;COLLECTION&#34; Possible values: [&#34;COLLECTION&#34;, &#34;COLLECTION_GROUP&#34;] When `null`, the `query_scope` field will be omitted from the resulting object.\n  - `fields` (`list[obj]`): The fields supported by this index. The last field entry is always for\nthe field path &#39;__name__&#39;. If, on creation, &#39;__name__&#39; was not\nspecified as the last field, it will be added automatically with the\nsame direction as that of the last field defined. If the final field\nin a composite index is not directional, the &#39;__name__&#39; will be\nordered &#39;&#34;ASCENDING&#34;&#39; (unless explicitly specified otherwise). When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.fields.new](#fn-firestoreindexfieldsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.timeouts.new](#fn-firestoreindextimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_index` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    collection,
    database=null,
    fields=null,
    project=null,
    query_scope=null,
    timeouts=null
  ):: std.prune(a={
    collection: collection,
    database: database,
    fields: fields,
    project: project,
    query_scope: query_scope,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.firestore_index.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCollection':: d.fn(help='`google.string.withCollection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the collection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `collection` field.\n', args=[]),
  withCollection(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          collection: value,
        },
      },
    },
  },
  '#withDatabase':: d.fn(help='`google.string.withDatabase` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database` field.\n', args=[]),
  withDatabase(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  '#withFields':: d.fn(help='`google.list[obj].withFields` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fields field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFieldsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fields` field.\n', args=[]),
  withFields(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  '#withFieldsMixin':: d.fn(help='`google.list[obj].withFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fields field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFields](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fields` field.\n', args=[]),
  withFieldsMixin(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withQueryScope':: d.fn(help='`google.string.withQueryScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the query_scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `query_scope` field.\n', args=[]),
  withQueryScope(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          query_scope: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
