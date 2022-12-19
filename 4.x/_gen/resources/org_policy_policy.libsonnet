local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='org_policy_policy', url='', help='`org_policy_policy` represents the `google_org_policy_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.org_policy_policy.new` injects a new `google_org_policy_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.org_policy_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.org_policy_policy` using the reference:\n\n    $._ref.google_org_policy_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_org_policy_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, \u0026#34;projects/123/policies/compute.disableSerialPortAccess\u0026#34;. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.\n  - `parent` (`string`): The parent of the resource.\n  - `spec` (`list[obj]`): Basic information about the Organization Policy. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_org_policy_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      parent=parent,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.org_policy_policy.newAttrs` constructs a new object with attributes and blocks configured for the `org_policy_policy`\nTerraform resource.\n\nUnlike [google.org_policy_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, &#34;projects/123/policies/compute.disableSerialPortAccess&#34;. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.\n  - `parent` (`string`): The parent of the resource.\n  - `spec` (`list[obj]`): Basic information about the Organization Policy. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `org_policy_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    parent: parent,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    '#new':: d.fn(help='\n`google.org_policy_policy.spec.new` constructs a new object with attributes and blocks configured for the `spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `inherit_from_parent` (`bool`): Determines the inheritance behavior for this `Policy`. If `inherit_from_parent` is true, PolicyRules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this Policy becomes the new root for evaluation. This field can be set only for Policies which configure list constraints. When `null`, the `inherit_from_parent` field will be omitted from the resulting object.\n  - `reset` (`bool`): Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false. When `null`, the `reset` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): Up to 10 PolicyRules are allowed. In Policies for boolean constraints, the following requirements apply: - There must be one and only one PolicyRule where condition is unset. - BooleanPolicyRules with conditions must set `enforced` to the opposite of the PolicyRule without a condition. - During policy evaluation, PolicyRules with conditions that are true for a target resource take precedence. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.rules.new](#fn-org_policy_policyrulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spec` sub block.\n', args=[]),
    new(
      inherit_from_parent=null,
      reset=null,
      rules=null
    ):: std.prune(a={
      inherit_from_parent: inherit_from_parent,
      reset: reset,
      rules: rules,
    }),
    rules:: {
      condition:: {
        '#new':: d.fn(help='\n`google.org_policy_policy.spec.rules.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. When `null`, the `expression` field will be omitted from the resulting object.\n  - `location` (`string`): Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
        new(
          description=null,
          expression=null,
          location=null,
          title=null
        ):: std.prune(a={
          description: description,
          expression: expression,
          location: location,
          title: title,
        }),
      },
      '#new':: d.fn(help='\n`google.org_policy_policy.spec.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_all` (`string`): Setting this to true means that all values are allowed. This field can be set only in Policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.\n  - `deny_all` (`string`): Setting this to true means that all values are denied. This field can be set only in Policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.\n  - `enforce` (`string`): If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.\n  - `condition` (`list[obj]`): A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr&#39; must include from 1 to 10 subexpressions, joined by the &#34;||&#34; or &#34;&amp;&amp;&#34; operators. Each subexpression must be of the form &#34;resource.matchTag(&#39;/tag_key_short_name, &#39;tag_value_short_name&#39;)&#34;. or &#34;resource.matchTagId(&#39;tagKeys/key_id&#39;, &#39;tagValues/value_id&#39;)&#34;. where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: &#34;resource.matchTag(&#39;123456789/environment, &#39;prod&#39;)&#34;. or &#34;resource.matchTagId(&#39;tagKeys/123&#39;, &#39;tagValues/456&#39;)&#34;. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.rules.condition.new](#fn-org_policy_policyspecconditionnew) constructor.\n  - `values` (`list[obj]`): List of values to be used for this PolicyRule. This field can be set only in Policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.rules.values.new](#fn-org_policy_policyspecvaluesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
      new(
        allow_all=null,
        condition=null,
        deny_all=null,
        enforce=null,
        values=null
      ):: std.prune(a={
        allow_all: allow_all,
        condition: condition,
        deny_all: deny_all,
        enforce: enforce,
        values: values,
      }),
      values:: {
        '#new':: d.fn(help='\n`google.org_policy_policy.spec.rules.values.new` constructs a new object with attributes and blocks configured for the `values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.\n  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `values` sub block.\n', args=[]),
        new(
          allowed_values=null,
          denied_values=null
        ):: std.prune(a={
          allowed_values: allowed_values,
          denied_values: denied_values,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.org_policy_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withSpec':: d.fn(help='`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpec(resourceLabel, value): {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  '#withSpecMixin':: d.fn(help='`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpecMixin(resourceLabel, value): {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
