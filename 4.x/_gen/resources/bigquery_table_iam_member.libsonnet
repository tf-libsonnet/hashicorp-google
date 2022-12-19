local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_table_iam_member', url='', help='`bigquery_table_iam_member` represents the `google_bigquery_table_iam_member` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  condition:: {
    '#new':: d.fn(help='\n`google.bigquery_table_iam_member.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`):  When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): \n  - `title` (`string`): \n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_table_iam_member.new` injects a new `google_bigquery_table_iam_member` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_table_iam_member.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_table_iam_member` using the reference:\n\n    $._ref.google_bigquery_table_iam_member.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_table_iam_member.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset_id` (`string`): \n  - `member` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): \n  - `table_id` (`string`): \n  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table_iam_member.condition.new](#fn-conditionnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset_id,
    member,
    role,
    table_id,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_table_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      dataset_id=dataset_id,
      member=member,
      project=project,
      role=role,
      table_id=table_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_table_iam_member.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_table_iam_member`\nTerraform resource.\n\nUnlike [google.bigquery_table_iam_member.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset_id` (`string`): \n  - `member` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): \n  - `table_id` (`string`): \n  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table_iam_member.condition.new](#fn-conditionnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_table_iam_member` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset_id,
    member,
    role,
    table_id,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    dataset_id: dataset_id,
    member: member,
    project: project,
    role: role,
    table_id: table_id,
  }),
  '#withCondition':: d.fn(help='`google.list[obj].withCondition` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the condition field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConditionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `condition` field.\n', args=[]),
  withCondition(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  '#withConditionMixin':: d.fn(help='`google.list[obj].withConditionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the condition field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCondition](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `condition` field.\n', args=[]),
  withConditionMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatasetId':: d.fn(help='`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset_id` field.\n', args=[]),
  withDatasetId(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  '#withMember':: d.fn(help='`google.string.withMember` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the member field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `member` field.\n', args=[]),
  withMember(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  '#withTableId':: d.fn(help='`google.string.withTableId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the table_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `table_id` field.\n', args=[]),
  withTableId(resourceLabel, value): {
    resource+: {
      google_bigquery_table_iam_member+: {
        [resourceLabel]+: {
          table_id: value,
        },
      },
    },
  },
}
