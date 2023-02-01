local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_access_boundary_policy', url='', help='`iam_access_boundary_policy` represents the `google_iam_access_boundary_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.iam_access_boundary_policy.new` injects a new `google_iam_access_boundary_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iam_access_boundary_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iam_access_boundary_policy` using the reference:\n\n    $._ref.google_iam_access_boundary_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iam_access_boundary_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the policy.\n  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.\n  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent,
    display_name=null,
    rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_access_boundary_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      name=name,
      parent=parent,
      rules=rules,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iam_access_boundary_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_access_boundary_policy`\nTerraform resource.\n\nUnlike [google.iam_access_boundary_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the policy.\n  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.\n  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_access_boundary_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent,
    display_name=null,
    rules=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    name: name,
    parent: parent,
    rules: rules,
    timeouts: timeouts,
  }),
  rules:: {
    access_boundary_rule:: {
      availability_condition:: {
        '#new':: d.fn(help='\n`google.iam_access_boundary_policy.rules.access_boundary_rule.availability_condition.new` constructs a new object with attributes and blocks configured for the `availability_condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression. This is a longer text which describes the expression,\ne.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting,\ne.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose.\nThis can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `availability_condition` sub block.\n', args=[]),
        new(
          expression,
          description=null,
          location=null,
          title=null
        ):: std.prune(a={
          description: description,
          expression: expression,
          location: location,
          title: title,
        }),
      },
      '#new':: d.fn(help='\n`google.iam_access_boundary_policy.rules.access_boundary_rule.new` constructs a new object with attributes and blocks configured for the `access_boundary_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `available_permissions` (`list`): A list of permissions that may be allowed for use on the specified resource. When `null`, the `available_permissions` field will be omitted from the resulting object.\n  - `available_resource` (`string`): The full resource name of a Google Cloud resource entity. When `null`, the `available_resource` field will be omitted from the resulting object.\n  - `availability_condition` (`list[obj]`): The availability condition further constrains the access allowed by the access boundary rule. When `null`, the `availability_condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.access_boundary_rule.availability_condition.new](#fn-rulesrulesavailability_conditionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `access_boundary_rule` sub block.\n', args=[]),
      new(
        availability_condition=null,
        available_permissions=null,
        available_resource=null
      ):: std.prune(a={
        availability_condition: availability_condition,
        available_permissions: available_permissions,
        available_resource: available_resource,
      }),
    },
    '#new':: d.fn(help='\n`google.iam_access_boundary_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): The description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `access_boundary_rule` (`list[obj]`): An access boundary rule in an IAM policy. When `null`, the `access_boundary_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.access_boundary_rule.new](#fn-rulesaccess_boundary_rulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      access_boundary_rule=null,
      description=null
    ):: std.prune(a={
      access_boundary_rule: access_boundary_rule,
      description: description,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.iam_access_boundary_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_iam_access_boundary_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
