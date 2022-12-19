local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iap_web_type_app_engine_iam_binding', url='', help='`iap_web_type_app_engine_iam_binding` represents the `google_iap_web_type_app_engine_iam_binding` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  condition:: {
    '#new':: d.fn(help='\n`google.iap_web_type_app_engine_iam_binding.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`):  When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): \n  - `title` (`string`): \n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.iap_web_type_app_engine_iam_binding.new` injects a new `google_iap_web_type_app_engine_iam_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iap_web_type_app_engine_iam_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iap_web_type_app_engine_iam_binding` using the reference:\n\n    $._ref.google_iap_web_type_app_engine_iam_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iap_web_type_app_engine_iam_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `app_id` (`string`): \n  - `members` (`list`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): \n  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iap_web_type_app_engine_iam_binding.condition.new](#fn-iapwebtypeappengineiambindingconditionnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    app_id,
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_web_type_app_engine_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_id=app_id,
      condition=condition,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iap_web_type_app_engine_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `iap_web_type_app_engine_iam_binding`\nTerraform resource.\n\nUnlike [google.iap_web_type_app_engine_iam_binding.new](#fn-iapwebtypeappengineiambindingnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_id` (`string`): \n  - `members` (`list`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): \n  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iap_web_type_app_engine_iam_binding.condition.new](#fn-iapwebtypeappengineiambindingconditionnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iap_web_type_app_engine_iam_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    app_id,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    app_id: app_id,
    condition: condition,
    members: members,
    project: project,
    role: role,
  }),
  '#withAppId':: d.fn(help='`google.iap_web_type_app_engine_iam_binding.withAppId` constructs a mixin object that can be merged into the `iap_web_type_app_engine_iam_binding`\nTerraform resource block to set or update the app_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `app_id` field.\n', args=[]),
  withAppId(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          app_id: value,
        },
      },
    },
  },
  '#withCondition':: d.fn(help='`google.iap_web_type_app_engine_iam_binding.withCondition` constructs a mixin object that can be merged into the `iap_web_type_app_engine_iam_binding`\nTerraform resource block to set or update the condition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `condition` field.\n', args=[]),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  '#withConditionMixin':: d.fn(help='`google.iap_web_type_app_engine_iam_binding.withConditionMixin` constructs a mixin object that can be merged into the `iap_web_type_app_engine_iam_binding`\nTerraform resource block to set or update the condition field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.iap_web_type_app_engine_iam_binding.withCondition](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `condition` field.\n', args=[]),
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMembers':: d.fn(help='`google.iap_web_type_app_engine_iam_binding.withMembers` constructs a mixin object that can be merged into the `iap_web_type_app_engine_iam_binding`\nTerraform resource block to set or update the members field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `members` field.\n', args=[]),
  withMembers(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.iap_web_type_app_engine_iam_binding.withProject` constructs a mixin object that can be merged into the `iap_web_type_app_engine_iam_binding`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google.iap_web_type_app_engine_iam_binding.withRole` constructs a mixin object that can be merged into the `iap_web_type_app_engine_iam_binding`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
