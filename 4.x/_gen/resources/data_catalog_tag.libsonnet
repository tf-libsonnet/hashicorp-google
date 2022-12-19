local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_catalog_tag', url='', help='`data_catalog_tag` represents the `google_data_catalog_tag` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  fields:: {
    '#new':: d.fn(help='\n`google.data_catalog_tag.fields.new` constructs a new object with attributes and blocks configured for the `fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bool_value` (`bool`): Holds the value for a tag field with boolean type. When `null`, the `bool_value` field will be omitted from the resulting object.\n  - `double_value` (`number`): Holds the value for a tag field with double type. When `null`, the `double_value` field will be omitted from the resulting object.\n  - `enum_value` (`string`): The display name of the enum value. When `null`, the `enum_value` field will be omitted from the resulting object.\n  - `field_name` (`string`): Set the `field_name` field on the resulting object.\n  - `string_value` (`string`): Holds the value for a tag field with string type. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): Holds the value for a tag field with timestamp type. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fields` sub block.\n', args=[]),
    new(
      field_name,
      bool_value=null,
      double_value=null,
      enum_value=null,
      string_value=null,
      timestamp_value=null
    ):: std.prune(a={
      bool_value: bool_value,
      double_value: double_value,
      enum_value: enum_value,
      field_name: field_name,
      string_value: string_value,
      timestamp_value: timestamp_value,
    }),
  },
  '#new':: d.fn(help="\n`google.data_catalog_tag.new` injects a new `google_data_catalog_tag` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_catalog_tag.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_catalog_tag` using the reference:\n\n    $._ref.google_data_catalog_tag.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_catalog_tag.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `column` (`string`): Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an\nindividual column based on that schema.\n\nFor attaching a tag to a nested column, use \u0026#39;.\u0026#39; to separate the column names. Example:\n\u0026#39;outer_column.inner_column\u0026#39; When `null`, the `column` field will be omitted from the resulting object.\n  - `parent` (`string`): The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to\nall entries in that group. When `null`, the `parent` field will be omitted from the resulting object.\n  - `template` (`string`): The resource name of the tag template that this tag uses. Example:\nprojects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}\nThis field cannot be modified after creation.\n  - `fields` (`list[obj]`): This maps the ID of a tag field to the value of and additional information about that field.\nValid field IDs are defined by the tag\u0026#39;s template. A tag must have at least 1 field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.fields.new](#fn-fieldsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    template,
    column=null,
    fields=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_tag',
    label=resourceLabel,
    attrs=self.newAttrs(
      column=column,
      fields=fields,
      parent=parent,
      template=template,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_catalog_tag.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_tag`\nTerraform resource.\n\nUnlike [google.data_catalog_tag.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `column` (`string`): Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an\nindividual column based on that schema.\n\nFor attaching a tag to a nested column, use &#39;.&#39; to separate the column names. Example:\n&#39;outer_column.inner_column&#39; When `null`, the `column` field will be omitted from the resulting object.\n  - `parent` (`string`): The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to\nall entries in that group. When `null`, the `parent` field will be omitted from the resulting object.\n  - `template` (`string`): The resource name of the tag template that this tag uses. Example:\nprojects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}\nThis field cannot be modified after creation.\n  - `fields` (`list[obj]`): This maps the ID of a tag field to the value of and additional information about that field.\nValid field IDs are defined by the tag&#39;s template. A tag must have at least 1 field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.fields.new](#fn-fieldsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_tag` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    template,
    column=null,
    fields=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    column: column,
    fields: fields,
    parent: parent,
    template: template,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_catalog_tag.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withColumn':: d.fn(help='`google.string.withColumn` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the column field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `column` field.\n', args=[]),
  withColumn(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          column: value,
        },
      },
    },
  },
  '#withFields':: d.fn(help='`google.list[obj].withFields` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fields field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFieldsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fields` field.\n', args=[]),
  withFields(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  '#withFieldsMixin':: d.fn(help='`google.list[obj].withFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fields field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFields](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fields` field.\n', args=[]),
  withFieldsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTemplate':: d.fn(help='`google.string.withTemplate` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the template field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `template` field.\n', args=[]),
  withTemplate(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          template: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
