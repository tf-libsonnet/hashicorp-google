local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='firestore_document', url='', help='`firestore_document` represents the `google_firestore_document` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.firestore_document.new` injects a new `google_firestore_document` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.firestore_document.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.firestore_document` using the reference:\n\n    $._ref.google_firestore_document.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_firestore_document.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `collection` (`string`): The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.\n  - `database` (`string`): The Firestore database id. Defaults to \u0026#39;\u0026#34;(default)\u0026#34;\u0026#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `document_id` (`string`): The client-assigned document ID to use for this document during creation.\n  - `fields` (`string`): The document\u0026#39;s [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_document.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    collection,
    document_id,
    fields,
    database=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_document',
    label=resourceLabel,
    attrs=self.newAttrs(
      collection=collection,
      database=database,
      document_id=document_id,
      fields=fields,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.firestore_document.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_document`\nTerraform resource.\n\nUnlike [google.firestore_document.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `collection` (`string`): The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.\n  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `document_id` (`string`): The client-assigned document ID to use for this document during creation.\n  - `fields` (`string`): The document&#39;s [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_document.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_document` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    collection,
    document_id,
    fields,
    database=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    collection: collection,
    database: database,
    document_id: document_id,
    fields: fields,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.firestore_document.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCollection':: d.fn(help='`google.string.withCollection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the collection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `collection` field.\n', args=[]),
  withCollection(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          collection: value,
        },
      },
    },
  },
  '#withDatabase':: d.fn(help='`google.string.withDatabase` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database` field.\n', args=[]),
  withDatabase(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  '#withDocumentId':: d.fn(help='`google.string.withDocumentId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the document_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `document_id` field.\n', args=[]),
  withDocumentId(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          document_id: value,
        },
      },
    },
  },
  '#withFields':: d.fn(help='`google.string.withFields` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the fields field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `fields` field.\n', args=[]),
  withFields(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
