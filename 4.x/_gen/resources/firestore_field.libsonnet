local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='firestore_field', url='', help='`firestore_field` represents the `google_firestore_field` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  index_config:: {
    indexes:: {
      '#new':: d.fn(help='\n`google.firestore_field.index_config.indexes.new` constructs a new object with attributes and blocks configured for the `indexes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `array_config` (`string`): Indicates that this field supports operations on arrayValues. Only one of &#39;order&#39; and &#39;arrayConfig&#39; can\nbe specified. Possible values: [&#34;CONTAINS&#34;] When `null`, the `array_config` field will be omitted from the resulting object.\n  - `order` (`string`): Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=, !=.\nOnly one of &#39;order&#39; and &#39;arrayConfig&#39; can be specified. Possible values: [&#34;ASCENDING&#34;, &#34;DESCENDING&#34;] When `null`, the `order` field will be omitted from the resulting object.\n  - `query_scope` (`string`): The scope at which a query is run. Collection scoped queries require you specify\nthe collection at query time. Collection group scope allows queries across all\ncollections with the same id. Default value: &#34;COLLECTION&#34; Possible values: [&#34;COLLECTION&#34;, &#34;COLLECTION_GROUP&#34;] When `null`, the `query_scope` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `indexes` sub block.\n', args=[]),
      new(
        array_config=null,
        order=null,
        query_scope=null
      ):: std.prune(a={
        array_config: array_config,
        order: order,
        query_scope: query_scope,
      }),
    },
    '#new':: d.fn(help='\n`google.firestore_field.index_config.new` constructs a new object with attributes and blocks configured for the `index_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `indexes` (`list[obj]`): The indexes to configure on the field. Order or array contains must be specified. When `null`, the `indexes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.index_config.indexes.new](#fn-index_configindexesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `index_config` sub block.\n', args=[]),
    new(
      indexes=null
    ):: std.prune(a={
      indexes: indexes,
    }),
  },
  '#new':: d.fn(help="\n`google.firestore_field.new` injects a new `google_firestore_field` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.firestore_field.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.firestore_field` using the reference:\n\n    $._ref.google_firestore_field.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_firestore_field.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `collection` (`string`): The id of the collection group to configure.\n  - `database` (`string`): The Firestore database id. Defaults to \u0026#39;\u0026#34;(default)\u0026#34;\u0026#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `field` (`string`): The id of the field to configure.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `index_config` (`list[obj]`): The single field index configuration for this field.\nCreating an index configuration for this field will override any inherited configuration with the\nindexes specified. Configuring the index configuration with an empty block disables all indexes on\nthe field. When `null`, the `index_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.index_config.new](#fn-index_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.timeouts.new](#fn-timeoutsnew) constructor.\n  - `ttl_config` (`list[obj]`): The TTL configuration for this Field. If set to an empty block (i.e. \u0026#39;ttl_config {}\u0026#39;), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource). When `null`, the `ttl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.ttl_config.new](#fn-ttl_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    collection,
    field,
    database=null,
    index_config=null,
    project=null,
    timeouts=null,
    ttl_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_field',
    label=resourceLabel,
    attrs=self.newAttrs(
      collection=collection,
      database=database,
      field=field,
      index_config=index_config,
      project=project,
      timeouts=timeouts,
      ttl_config=ttl_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.firestore_field.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_field`\nTerraform resource.\n\nUnlike [google.firestore_field.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `collection` (`string`): The id of the collection group to configure.\n  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `field` (`string`): The id of the field to configure.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `index_config` (`list[obj]`): The single field index configuration for this field.\nCreating an index configuration for this field will override any inherited configuration with the\nindexes specified. Configuring the index configuration with an empty block disables all indexes on\nthe field. When `null`, the `index_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.index_config.new](#fn-index_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.timeouts.new](#fn-timeoutsnew) constructor.\n  - `ttl_config` (`list[obj]`): The TTL configuration for this Field. If set to an empty block (i.e. &#39;ttl_config {}&#39;), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource). When `null`, the `ttl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.ttl_config.new](#fn-ttl_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_field` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    collection,
    field,
    database=null,
    index_config=null,
    project=null,
    timeouts=null,
    ttl_config=null
  ):: std.prune(a={
    collection: collection,
    database: database,
    field: field,
    index_config: index_config,
    project: project,
    timeouts: timeouts,
    ttl_config: ttl_config,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.firestore_field.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  ttl_config:: {
    '#new':: d.fn(help='\n`google.firestore_field.ttl_config.new` constructs a new object with attributes and blocks configured for the `ttl_config`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `ttl_config` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  '#withCollection':: d.fn(help='`google.string.withCollection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the collection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `collection` field.\n', args=[]),
  withCollection(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          collection: value,
        },
      },
    },
  },
  '#withDatabase':: d.fn(help='`google.string.withDatabase` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database` field.\n', args=[]),
  withDatabase(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  '#withField':: d.fn(help='`google.string.withField` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the field field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `field` field.\n', args=[]),
  withField(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          field: value,
        },
      },
    },
  },
  '#withIndexConfig':: d.fn(help='`google.list[obj].withIndexConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the index_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIndexConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `index_config` field.\n', args=[]),
  withIndexConfig(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          index_config: value,
        },
      },
    },
  },
  '#withIndexConfigMixin':: d.fn(help='`google.list[obj].withIndexConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the index_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIndexConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `index_config` field.\n', args=[]),
  withIndexConfigMixin(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          index_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTtlConfig':: d.fn(help='`google.list[obj].withTtlConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ttl_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTtlConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ttl_config` field.\n', args=[]),
  withTtlConfig(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          ttl_config: value,
        },
      },
    },
  },
  '#withTtlConfigMixin':: d.fn(help='`google.list[obj].withTtlConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ttl_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTtlConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ttl_config` field.\n', args=[]),
  withTtlConfigMixin(resourceLabel, value): {
    resource+: {
      google_firestore_field+: {
        [resourceLabel]+: {
          ttl_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
