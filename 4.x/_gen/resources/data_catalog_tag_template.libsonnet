local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_catalog_tag_template', url='', help='`data_catalog_tag_template` represents the `google_data_catalog_tag_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  fields:: {
    '#new':: d.fn(help='\n`google.data_catalog_tag_template.fields.new` constructs a new object with attributes and blocks configured for the `fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A description for this field. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name for this field. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `field_id` (`string`): \n  - `is_required` (`bool`): Whether this is a required field. Defaults to false. When `null`, the `is_required` field will be omitted from the resulting object.\n  - `order` (`number`): The order of this field with respect to other fields in this tag template.\nA higher value indicates a more important field. The value can be negative.\nMultiple fields can have the same order, and field orders within a tag do not have to be sequential. When `null`, the `order` field will be omitted from the resulting object.\n  - `type` (`list[obj]`): The type of value this tag field can contain. When `null`, the `type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.type.new](#fn-typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fields` sub block.\n', args=[]),
    new(
      field_id,
      description=null,
      display_name=null,
      is_required=null,
      order=null,
      type=null
    ):: std.prune(a={
      description: description,
      display_name: display_name,
      field_id: field_id,
      is_required: is_required,
      order: order,
      type: type,
    }),
    type:: {
      enum_type:: {
        allowed_values:: {
          '#new':: d.fn(help='\n`google.data_catalog_tag_template.fields.type.enum_type.allowed_values.new` constructs a new object with attributes and blocks configured for the `allowed_values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `display_name` (`string`): The display name of the enum value.\n\n**Returns**:\n  - An attribute object that represents the `allowed_values` sub block.\n', args=[]),
          new(
            display_name
          ):: std.prune(a={
            display_name: display_name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_catalog_tag_template.fields.type.enum_type.new` constructs a new object with attributes and blocks configured for the `enum_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_values` (`list[obj]`): The set of allowed values for this enum. The display names of the\nvalues must be case-insensitively unique within this set. Currently,\nenum values can only be added to the list of allowed values. Deletion\nand renaming of enum values are not supported.\nCan have up to 500 allowed values. When `null`, the `allowed_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.type.enum_type.allowed_values.new](#fn-fieldstypeallowed_valuesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `enum_type` sub block.\n', args=[]),
        new(
          allowed_values=null
        ):: std.prune(a={
          allowed_values: allowed_values,
        }),
      },
      '#new':: d.fn(help='\n`google.data_catalog_tag_template.fields.type.new` constructs a new object with attributes and blocks configured for the `type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `primitive_type` (`string`): Represents primitive types - string, bool etc.\n Exactly one of &#39;primitive_type&#39; or &#39;enum_type&#39; must be set Possible values: [&#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;BOOL&#34;, &#34;TIMESTAMP&#34;] When `null`, the `primitive_type` field will be omitted from the resulting object.\n  - `enum_type` (`list[obj]`): Represents an enum type.\n Exactly one of &#39;primitive_type&#39; or &#39;enum_type&#39; must be set When `null`, the `enum_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.type.enum_type.new](#fn-fieldsenum_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `type` sub block.\n', args=[]),
      new(
        enum_type=null,
        primitive_type=null
      ):: std.prune(a={
        enum_type: enum_type,
        primitive_type: primitive_type,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.data_catalog_tag_template.new` injects a new `google_data_catalog_tag_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_catalog_tag_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_catalog_tag_template` using the reference:\n\n    $._ref.google_data_catalog_tag_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_catalog_tag_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The display name for this template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `force_delete` (`bool`): This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template. When `null`, the `force_delete` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Template location region. When `null`, the `region` field will be omitted from the resulting object.\n  - `tag_template_id` (`string`): The id of the tag template to create.\n  - `fields` (`list[obj]`): Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.new](#fn-fieldsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    tag_template_id,
    display_name=null,
    fields=null,
    force_delete=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_tag_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      fields=fields,
      force_delete=force_delete,
      project=project,
      region=region,
      tag_template_id=tag_template_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_catalog_tag_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_tag_template`\nTerraform resource.\n\nUnlike [google.data_catalog_tag_template.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The display name for this template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `force_delete` (`bool`): This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template. When `null`, the `force_delete` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Template location region. When `null`, the `region` field will be omitted from the resulting object.\n  - `tag_template_id` (`string`): The id of the tag template to create.\n  - `fields` (`list[obj]`): Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.new](#fn-fieldsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_tag_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    tag_template_id,
    display_name=null,
    fields=null,
    force_delete=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    fields: fields,
    force_delete: force_delete,
    project: project,
    region: region,
    tag_template_id: tag_template_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_catalog_tag_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withFields':: d.fn(help='`google.list[obj].withFields` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fields field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFieldsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fields` field.\n', args=[]),
  withFields(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  '#withFieldsMixin':: d.fn(help='`google.list[obj].withFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fields field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFields](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fields` field.\n', args=[]),
  withFieldsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForceDelete':: d.fn(help='`google.bool.withForceDelete` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_delete field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_delete` field.\n', args=[]),
  withForceDelete(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          force_delete: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTagTemplateId':: d.fn(help='`google.string.withTagTemplateId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tag_template_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tag_template_id` field.\n', args=[]),
  withTagTemplateId(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          tag_template_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
