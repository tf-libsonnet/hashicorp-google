local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_catalog_entry', url='', help='`data_catalog_entry` represents the `google_data_catalog_entry` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  gcs_fileset_spec:: {
    '#new':: d.fn(help='\n`google.data_catalog_entry.gcs_fileset_spec.new` constructs a new object with attributes and blocks configured for the `gcs_fileset_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `file_patterns` (`list`): Patterns to identify a set of files in Google Cloud Storage.\nSee [Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)\nfor more information. Note that bucket wildcards are currently not supported. Examples of valid filePatterns:\n\n* gs://bucket_name/dir/*: matches all files within bucket_name/dir directory.\n* gs://bucket_name/dir/**: matches all files in bucket_name/dir spanning all subdirectories.\n* gs://bucket_name/file*: matches files prefixed by file in bucket_name\n* gs://bucket_name/??.txt: matches files with two characters followed by .txt in bucket_name\n* gs://bucket_name/[aeiou].txt: matches files that contain a single vowel character followed by .txt in bucket_name\n* gs://bucket_name/[a-m].txt: matches files that contain a, b, ... or m followed by .txt in bucket_name\n* gs://bucket_name/a/*/b: matches all files in bucket_name that match a/*/b pattern, such as a/c/b, a/d/b\n* gs://another_bucket/a.txt: matches gs://another_bucket/a.txt\n\n**Returns**:\n  - An attribute object that represents the `gcs_fileset_spec` sub block.\n', args=[]),
    new(
      file_patterns
    ):: std.prune(a={
      file_patterns: file_patterns,
    }),
  },
  '#new':: d.fn(help="\n`google.data_catalog_entry.new` injects a new `google_data_catalog_entry` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_catalog_entry.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_catalog_entry` using the reference:\n\n    $._ref.google_data_catalog_entry.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_catalog_entry.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Entry description, which can consist of several sentences or paragraphs that describe entry contents. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display information such as title and description. A short name to identify the entry,\nfor example, \u0026#34;Analytics Data - Jan 2011\u0026#34;. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `entry_group` (`string`): The name of the entry group this entry is in.\n  - `entry_id` (`string`): The id of the entry to create.\n  - `linked_resource` (`string`): The resource this metadata entry refers to.\nFor Google Cloud Platform resources, linkedResource is the full name of the resource.\nFor example, the linkedResource for a table resource from BigQuery is:\n//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId\nOutput only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,\nthis field is optional and defaults to an empty string. When `null`, the `linked_resource` field will be omitted from the resulting object.\n  - `schema` (`string`): Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema\nattached to it. See\nhttps://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema\nfor what fields this schema can contain. When `null`, the `schema` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the entry. Only used for Entries with types in the EntryType enum.\nCurrently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [\u0026#34;FILESET\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `user_specified_system` (`string`): This field indicates the entry\u0026#39;s source system that Data Catalog does not integrate with.\nuserSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,\nand underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_system` field will be omitted from the resulting object.\n  - `user_specified_type` (`string`): Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.\nWhen creating an entry, users should check the enum values first, if nothing matches the entry\nto be created, then provide a custom value, for example \u0026#34;my_special_type\u0026#34;.\nuserSpecifiedType strings must begin with a letter or underscore and can only contain letters,\nnumbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_type` field will be omitted from the resulting object.\n  - `gcs_fileset_spec` (`list[obj]`): Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET. When `null`, the `gcs_fileset_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.gcs_fileset_spec.new](#fn-gcs_fileset_specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    entry_group,
    entry_id,
    description=null,
    display_name=null,
    gcs_fileset_spec=null,
    linked_resource=null,
    schema=null,
    timeouts=null,
    type=null,
    user_specified_system=null,
    user_specified_type=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_entry',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      entry_group=entry_group,
      entry_id=entry_id,
      gcs_fileset_spec=gcs_fileset_spec,
      linked_resource=linked_resource,
      schema=schema,
      timeouts=timeouts,
      type=type,
      user_specified_system=user_specified_system,
      user_specified_type=user_specified_type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_catalog_entry.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_entry`\nTerraform resource.\n\nUnlike [google.data_catalog_entry.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Entry description, which can consist of several sentences or paragraphs that describe entry contents. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display information such as title and description. A short name to identify the entry,\nfor example, &#34;Analytics Data - Jan 2011&#34;. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `entry_group` (`string`): The name of the entry group this entry is in.\n  - `entry_id` (`string`): The id of the entry to create.\n  - `linked_resource` (`string`): The resource this metadata entry refers to.\nFor Google Cloud Platform resources, linkedResource is the full name of the resource.\nFor example, the linkedResource for a table resource from BigQuery is:\n//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId\nOutput only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,\nthis field is optional and defaults to an empty string. When `null`, the `linked_resource` field will be omitted from the resulting object.\n  - `schema` (`string`): Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema\nattached to it. See\nhttps://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema\nfor what fields this schema can contain. When `null`, the `schema` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the entry. Only used for Entries with types in the EntryType enum.\nCurrently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [&#34;FILESET&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `user_specified_system` (`string`): This field indicates the entry&#39;s source system that Data Catalog does not integrate with.\nuserSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,\nand underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_system` field will be omitted from the resulting object.\n  - `user_specified_type` (`string`): Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.\nWhen creating an entry, users should check the enum values first, if nothing matches the entry\nto be created, then provide a custom value, for example &#34;my_special_type&#34;.\nuserSpecifiedType strings must begin with a letter or underscore and can only contain letters,\nnumbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_type` field will be omitted from the resulting object.\n  - `gcs_fileset_spec` (`list[obj]`): Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET. When `null`, the `gcs_fileset_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.gcs_fileset_spec.new](#fn-gcs_fileset_specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_entry` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    entry_group,
    entry_id,
    description=null,
    display_name=null,
    gcs_fileset_spec=null,
    linked_resource=null,
    schema=null,
    timeouts=null,
    type=null,
    user_specified_system=null,
    user_specified_type=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    entry_group: entry_group,
    entry_id: entry_id,
    gcs_fileset_spec: gcs_fileset_spec,
    linked_resource: linked_resource,
    schema: schema,
    timeouts: timeouts,
    type: type,
    user_specified_system: user_specified_system,
    user_specified_type: user_specified_type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_catalog_entry.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEntryGroup':: d.fn(help='`google.string.withEntryGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the entry_group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `entry_group` field.\n', args=[]),
  withEntryGroup(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          entry_group: value,
        },
      },
    },
  },
  '#withEntryId':: d.fn(help='`google.string.withEntryId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the entry_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `entry_id` field.\n', args=[]),
  withEntryId(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          entry_id: value,
        },
      },
    },
  },
  '#withGcsFilesetSpec':: d.fn(help='`google.list[obj].withGcsFilesetSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gcs_fileset_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGcsFilesetSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gcs_fileset_spec` field.\n', args=[]),
  withGcsFilesetSpec(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          gcs_fileset_spec: value,
        },
      },
    },
  },
  '#withGcsFilesetSpecMixin':: d.fn(help='`google.list[obj].withGcsFilesetSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gcs_fileset_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGcsFilesetSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gcs_fileset_spec` field.\n', args=[]),
  withGcsFilesetSpecMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          gcs_fileset_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLinkedResource':: d.fn(help='`google.string.withLinkedResource` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the linked_resource field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `linked_resource` field.\n', args=[]),
  withLinkedResource(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          linked_resource: value,
        },
      },
    },
  },
  '#withSchema':: d.fn(help='`google.string.withSchema` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the schema field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `schema` field.\n', args=[]),
  withSchema(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          schema: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withUserSpecifiedSystem':: d.fn(help='`google.string.withUserSpecifiedSystem` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user_specified_system field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user_specified_system` field.\n', args=[]),
  withUserSpecifiedSystem(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          user_specified_system: value,
        },
      },
    },
  },
  '#withUserSpecifiedType':: d.fn(help='`google.string.withUserSpecifiedType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user_specified_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user_specified_type` field.\n', args=[]),
  withUserSpecifiedType(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          user_specified_type: value,
        },
      },
    },
  },
}
