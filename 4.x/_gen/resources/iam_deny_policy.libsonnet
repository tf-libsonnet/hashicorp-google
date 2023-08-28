local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_deny_policy', url='', help='`iam_deny_policy` represents the `google_iam_deny_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.iam_deny_policy.new` injects a new `google_iam_deny_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iam_deny_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iam_deny_policy` using the reference:\n\n    $._ref.google_iam_deny_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iam_deny_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the policy.\n  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.\n  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent,
    display_name=null,
    rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_deny_policy',
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
  '#newAttrs':: d.fn(help='\n`google.iam_deny_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_deny_policy`\nTerraform resource.\n\nUnlike [google.iam_deny_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the policy.\n  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.\n  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.new](#fn-rulesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_deny_policy` resource into the root Terraform configuration.\n', args=[]),
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
    deny_rule:: {
      denial_condition:: {
        '#new':: d.fn(help='\n`google.iam_deny_policy.rules.deny_rule.denial_condition.new` constructs a new object with attributes and blocks configured for the `denial_condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression. This is a longer text which describes the expression,\ne.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting,\ne.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose.\nThis can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `denial_condition` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.iam_deny_policy.rules.deny_rule.new` constructs a new object with attributes and blocks configured for the `deny_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `denied_permissions` (`list`): The permissions that are explicitly denied by this rule. Each permission uses the format &#39;{service-fqdn}/{resource}.{verb}&#39;,\nwhere &#39;{service-fqdn}&#39; is the fully qualified domain name for the service. For example, &#39;iam.googleapis.com/roles.list&#39;. When `null`, the `denied_permissions` field will be omitted from the resulting object.\n  - `denied_principals` (`list`): The identities that are prevented from using one or more permissions on Google Cloud resources. When `null`, the `denied_principals` field will be omitted from the resulting object.\n  - `exception_permissions` (`list`): Specifies the permissions that this rule excludes from the set of denied permissions given by deniedPermissions.\nIf a permission appears in deniedPermissions and in exceptionPermissions then it will not be denied.\nThe excluded permissions can be specified using the same syntax as deniedPermissions. When `null`, the `exception_permissions` field will be omitted from the resulting object.\n  - `exception_principals` (`list`): The identities that are excluded from the deny rule, even if they are listed in the deniedPrincipals.\nFor example, you could add a Google group to the deniedPrincipals, then exclude specific users who belong to that group. When `null`, the `exception_principals` field will be omitted from the resulting object.\n  - `denial_condition` (`list[obj]`): User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. When `null`, the `denial_condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.deny_rule.denial_condition.new](#fn-rulesrulesdenial_conditionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deny_rule` sub block.\n', args=[]),
      new(
        denial_condition=null,
        denied_permissions=null,
        denied_principals=null,
        exception_permissions=null,
        exception_principals=null
      ):: std.prune(a={
        denial_condition: denial_condition,
        denied_permissions: denied_permissions,
        denied_principals: denied_principals,
        exception_permissions: exception_permissions,
        exception_principals: exception_principals,
      }),
    },
    '#new':: d.fn(help='\n`google.iam_deny_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): The description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `deny_rule` (`list[obj]`): A deny rule in an IAM deny policy. When `null`, the `deny_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.deny_rule.new](#fn-rulesdeny_rulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      deny_rule=null,
      description=null
    ):: std.prune(a={
      deny_rule: deny_rule,
      description: description,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.iam_deny_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
