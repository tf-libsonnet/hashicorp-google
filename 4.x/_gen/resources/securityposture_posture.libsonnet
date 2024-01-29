local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='securityposture_posture', url='', help='`securityposture_posture` represents the `google_securityposture_posture` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.securityposture_posture.new` injects a new `google_securityposture_posture` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.securityposture_posture.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.securityposture_posture` using the reference:\n\n    $._ref.google_securityposture_posture.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_securityposture_posture.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of the posture. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the resource, eg: global.\n  - `parent` (`string`): The parent of the resource, an organization. Format should be \u0026#39;organizations/{organization_id}\u0026#39;.\n  - `posture_id` (`string`): Id of the posture. It is an immutable field.\n  - `state` (`string`): State of the posture. Update to state field should not be triggered along with\nwith other field updates. Possible values: [\u0026#34;DEPRECATED\u0026#34;, \u0026#34;DRAFT\u0026#34;, \u0026#34;ACTIVE\u0026#34;]\n  - `policy_sets` (`list[obj]`): List of policy sets for the posture. When `null`, the `policy_sets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.new](#fn-policy_setsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    parent,
    posture_id,
    state,
    description=null,
    policy_sets=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_securityposture_posture',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      location=location,
      parent=parent,
      policy_sets=policy_sets,
      posture_id=posture_id,
      state=state,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.securityposture_posture.newAttrs` constructs a new object with attributes and blocks configured for the `securityposture_posture`\nTerraform resource.\n\nUnlike [google.securityposture_posture.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of the posture. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the resource, eg: global.\n  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.\n  - `posture_id` (`string`): Id of the posture. It is an immutable field.\n  - `state` (`string`): State of the posture. Update to state field should not be triggered along with\nwith other field updates. Possible values: [&#34;DEPRECATED&#34;, &#34;DRAFT&#34;, &#34;ACTIVE&#34;]\n  - `policy_sets` (`list[obj]`): List of policy sets for the posture. When `null`, the `policy_sets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.new](#fn-policy_setsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `securityposture_posture` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    parent,
    posture_id,
    state,
    description=null,
    policy_sets=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    location: location,
    parent: parent,
    policy_sets: policy_sets,
    posture_id: posture_id,
    state: state,
    timeouts: timeouts,
  }),
  policy_sets:: {
    '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.new` constructs a new object with attributes and blocks configured for the `policy_sets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the policy set. When `null`, the `description` field will be omitted from the resulting object.\n  - `policy_set_id` (`string`): ID of the policy set.\n  - `policies` (`list[obj]`): List of security policy When `null`, the `policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.new](#fn-policy_setspoliciesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_sets` sub block.\n', args=[]),
    new(
      policy_set_id,
      description=null,
      policies=null
    ):: std.prune(a={
      description: description,
      policies: policies,
      policy_set_id: policy_set_id,
    }),
    policies:: {
      compliance_standards:: {
        '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.compliance_standards.new` constructs a new object with attributes and blocks configured for the `compliance_standards`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control` (`string`): Mapping of security controls for the policy. When `null`, the `control` field will be omitted from the resulting object.\n  - `standard` (`string`): Mapping of compliance standards for the policy. When `null`, the `standard` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `compliance_standards` sub block.\n', args=[]),
        new(
          control=null,
          standard=null
        ):: std.prune(a={
          control: control,
          standard: standard,
        }),
      },
      constraint:: {
        '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.new` constructs a new object with attributes and blocks configured for the `constraint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `org_policy_constraint` (`list[obj]`): Organization policy canned constraint definition. When `null`, the `org_policy_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.new](#fn-policy_setspolicy_setspoliciesorg_policy_constraintnew) constructor.\n  - `org_policy_constraint_custom` (`list[obj]`): Organization policy custom constraint policy definition. When `null`, the `org_policy_constraint_custom` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.new](#fn-policy_setspolicy_setspoliciesorg_policy_constraint_customnew) constructor.\n  - `security_health_analytics_custom_module` (`list[obj]`): Definition of Security Health Analytics Custom Module. When `null`, the `security_health_analytics_custom_module` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.new](#fn-policy_setspolicy_setspoliciessecurity_health_analytics_custom_modulenew) constructor.\n  - `security_health_analytics_module` (`list[obj]`): Security Health Analytics built-in detector definition. When `null`, the `security_health_analytics_module` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_module.new](#fn-policy_setspolicy_setspoliciessecurity_health_analytics_modulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `constraint` sub block.\n', args=[]),
        new(
          org_policy_constraint=null,
          org_policy_constraint_custom=null,
          security_health_analytics_custom_module=null,
          security_health_analytics_module=null
        ):: std.prune(a={
          org_policy_constraint: org_policy_constraint,
          org_policy_constraint_custom: org_policy_constraint_custom,
          security_health_analytics_custom_module: security_health_analytics_custom_module,
          security_health_analytics_module: security_health_analytics_module,
        }),
        org_policy_constraint:: {
          '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.new` constructs a new object with attributes and blocks configured for the `org_policy_constraint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `canned_constraint_id` (`string`): Organization policy canned constraint Id\n  - `policy_rules` (`list[obj]`): Definition of policy rules When `null`, the `policy_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.new](#fn-policy_setspolicy_setspoliciesconstraintpolicy_rulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `org_policy_constraint` sub block.\n', args=[]),
          new(
            canned_constraint_id,
            policy_rules=null
          ):: std.prune(a={
            canned_constraint_id: canned_constraint_id,
            policy_rules: policy_rules,
          }),
          policy_rules:: {
            expr:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr.new` constructs a new object with attributes and blocks configured for the `expr`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `expr` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.new` constructs a new object with attributes and blocks configured for the `policy_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_all` (`bool`): Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.\n  - `deny_all` (`bool`): Setting this to true means that all values are denied. This field can be set only in policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.\n  - `enforce` (`bool`): If &#39;true&#39;, then the policy is enforced. If &#39;false&#39;, then any configuration is acceptable.\nThis field can be set only in policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.\n  - `expr` (`list[obj]`): Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.\nThis page details the objects and attributes that are used to the build the CEL expressions for\ncustom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraintexprnew) constructor.\n  - `values` (`list[obj]`): List of values to be used for this policy rule. This field can be set only in policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.values.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraintvaluesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_rules` sub block.\n', args=[]),
            new(
              allow_all=null,
              deny_all=null,
              enforce=null,
              expr=null,
              values=null
            ):: std.prune(a={
              allow_all: allow_all,
              deny_all: deny_all,
              enforce: enforce,
              expr: expr,
              values: values,
            }),
            values:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.values.new` constructs a new object with attributes and blocks configured for the `values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.\n  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `values` sub block.\n', args=[]),
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
        org_policy_constraint_custom:: {
          custom_constraint:: {
            '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint.new` constructs a new object with attributes and blocks configured for the `custom_constraint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action_type` (`string`): The action to take if the condition is met. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]\n  - `condition` (`string`): A CEL condition that refers to a supported service resource, for example &#39;resource.management.autoUpgrade == false&#39;. For details about CEL usage, see [Common Expression Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).\n  - `description` (`string`): A human-friendly description of the constraint to display as an error message when the policy is violated. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A human-friendly name for the constraint. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `method_types` (`list`): A list of RESTful methods for which to enforce the constraint. Can be &#39;CREATE&#39;, &#39;UPDATE&#39;, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).\n  - `name` (`string`): Immutable. The name of the custom constraint. This is unique within the organization.\n  - `resource_types` (`list`): Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, &#39;container.googleapis.com/NodePool&#39;.\n\n**Returns**:\n  - An attribute object that represents the `custom_constraint` sub block.\n', args=[]),
            new(
              action_type,
              condition,
              method_types,
              name,
              resource_types,
              description=null,
              display_name=null
            ):: std.prune(a={
              action_type: action_type,
              condition: condition,
              description: description,
              display_name: display_name,
              method_types: method_types,
              name: name,
              resource_types: resource_types,
            }),
          },
          '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.new` constructs a new object with attributes and blocks configured for the `org_policy_constraint_custom`\nTerraform sub block.\n\n\n\n**Args**:\n  - `custom_constraint` (`list[obj]`): Organization policy custom constraint definition. When `null`, the `custom_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint.new](#fn-policy_setspolicy_setspoliciesconstraintcustom_constraintnew) constructor.\n  - `policy_rules` (`list[obj]`): Definition of policy rules When `null`, the `policy_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.new](#fn-policy_setspolicy_setspoliciesconstraintpolicy_rulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `org_policy_constraint_custom` sub block.\n', args=[]),
          new(
            custom_constraint=null,
            policy_rules=null
          ):: std.prune(a={
            custom_constraint: custom_constraint,
            policy_rules: policy_rules,
          }),
          policy_rules:: {
            expr:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr.new` constructs a new object with attributes and blocks configured for the `expr`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `expr` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.new` constructs a new object with attributes and blocks configured for the `policy_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_all` (`bool`): Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.\n  - `deny_all` (`bool`): Setting this to true means that all values are denied. This field can be set only in policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.\n  - `enforce` (`bool`): If &#39;true&#39;, then the policy is enforced. If &#39;false&#39;, then any configuration is acceptable.\nThis field can be set only in policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.\n  - `expr` (`list[obj]`): Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.\nThis page details the objects and attributes that are used to the build the CEL expressions for\ncustom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraint_customexprnew) constructor.\n  - `values` (`list[obj]`): List of values to be used for this policy rule. This field can be set only in policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraint_customvaluesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_rules` sub block.\n', args=[]),
            new(
              allow_all=null,
              deny_all=null,
              enforce=null,
              expr=null,
              values=null
            ):: std.prune(a={
              allow_all: allow_all,
              deny_all: deny_all,
              enforce: enforce,
              expr: expr,
              values: values,
            }),
            values:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values.new` constructs a new object with attributes and blocks configured for the `values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.\n  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `values` sub block.\n', args=[]),
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
        security_health_analytics_custom_module:: {
          config:: {
            custom_output:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.new` constructs a new object with attributes and blocks configured for the `custom_output`\nTerraform sub block.\n\n\n\n**Args**:\n  - `properties` (`list[obj]`): A list of custom output properties to add to the finding. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigpropertiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_output` sub block.\n', args=[]),
              new(
                properties=null
              ):: std.prune(a={
                properties: properties,
              }),
              properties:: {
                '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.new` constructs a new object with attributes and blocks configured for the `properties`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the property for the custom output.\n  - `value_expression` (`list[obj]`): The CEL expression for the custom output. A resource property can be\nspecified to return the value of the property or a text string enclosed\nin quotation marks. When `null`, the `value_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputvalue_expressionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `properties` sub block.\n', args=[]),
                new(
                  name,
                  value_expression=null
                ):: std.prune(a={
                  name: name,
                  value_expression: value_expression,
                }),
                value_expression:: {
                  '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression.new` constructs a new object with attributes and blocks configured for the `value_expression`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `value_expression` sub block.\n', args=[]),
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
              },
            },
            '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Text that describes the vulnerability or misconfiguration that the custom\nmodule detects. When `null`, the `description` field will be omitted from the resulting object.\n  - `recommendation` (`string`): An explanation of the recommended steps that security teams can take to\nresolve the detected issue When `null`, the `recommendation` field will be omitted from the resulting object.\n  - `severity` (`string`): The severity to assign to findings generated by the module. Possible values: [&#34;SEVERITY_UNSPECIFIED&#34;, &#34;CRITICAL&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;]\n  - `custom_output` (`list[obj]`): Custom output properties. A set of optional name-value pairs that define custom source properties to\nreturn with each finding that is generated by the custom module. The custom\nsource properties that are defined here are included in the finding JSON\nunder &#39;sourceProperties&#39;. When `null`, the `custom_output` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_modulecustom_outputnew) constructor.\n  - `predicate` (`list[obj]`): The CEL expression to evaluate to produce findings.When the expression\nevaluates to true against a resource, a finding is generated. When `null`, the `predicate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_modulepredicatenew) constructor.\n  - `resource_selector` (`list[obj]`): The resource types that the custom module operates on. Each custom module\ncan specify up to 5 resource types. When `null`, the `resource_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_moduleresource_selectornew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
            new(
              severity,
              custom_output=null,
              description=null,
              predicate=null,
              recommendation=null,
              resource_selector=null
            ):: std.prune(a={
              custom_output: custom_output,
              description: description,
              predicate: predicate,
              recommendation: recommendation,
              resource_selector: resource_selector,
              severity: severity,
            }),
            predicate:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate.new` constructs a new object with attributes and blocks configured for the `predicate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `predicate` sub block.\n', args=[]),
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
            resource_selector:: {
              '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector.new` constructs a new object with attributes and blocks configured for the `resource_selector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_types` (`list`): The resource types to run the detector on.\n\n**Returns**:\n  - An attribute object that represents the `resource_selector` sub block.\n', args=[]),
              new(
                resource_types
              ):: std.prune(a={
                resource_types: resource_types,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.new` constructs a new object with attributes and blocks configured for the `security_health_analytics_custom_module`\nTerraform sub block.\n\n\n\n**Args**:\n  - `display_name` (`string`): The display name of the Security Health Analytics custom module. This\ndisplay name becomes the finding category for all findings that are\nreturned by this custom module. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `module_enablement_state` (`string`): The state of enablement for the module at its level of the resource hierarchy. Possible values: [&#34;ENABLEMENT_STATE_UNSPECIFIED&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `module_enablement_state` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): Custom module details. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.new](#fn-policy_setspolicy_setspoliciesconstraintconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `security_health_analytics_custom_module` sub block.\n', args=[]),
          new(
            config=null,
            display_name=null,
            module_enablement_state=null
          ):: std.prune(a={
            config: config,
            display_name: display_name,
            module_enablement_state: module_enablement_state,
          }),
        },
        security_health_analytics_module:: {
          '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_module.new` constructs a new object with attributes and blocks configured for the `security_health_analytics_module`\nTerraform sub block.\n\n\n\n**Args**:\n  - `module_enablement_state` (`string`): The state of enablement for the module at its level of the resource hierarchy. Possible values: [&#34;ENABLEMENT_STATE_UNSPECIFIED&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `module_enablement_state` field will be omitted from the resulting object.\n  - `module_name` (`string`): The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.\n\n**Returns**:\n  - An attribute object that represents the `security_health_analytics_module` sub block.\n', args=[]),
          new(
            module_name,
            module_enablement_state=null
          ):: std.prune(a={
            module_enablement_state: module_enablement_state,
            module_name: module_name,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.securityposture_posture.policy_sets.policies.new` constructs a new object with attributes and blocks configured for the `policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the policy. When `null`, the `description` field will be omitted from the resulting object.\n  - `policy_id` (`string`): ID of the policy.\n  - `compliance_standards` (`list[obj]`): Mapping for policy to security standards and controls. When `null`, the `compliance_standards` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.compliance_standards.new](#fn-policy_setspolicy_setscompliance_standardsnew) constructor.\n  - `constraint` (`list[obj]`): Policy constraint definition.It can have the definition of one of following constraints: orgPolicyConstraint orgPolicyConstraintCustom securityHealthAnalyticsModule securityHealthAnalyticsCustomModule When `null`, the `constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.new](#fn-policy_setspolicy_setsconstraintnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policies` sub block.\n', args=[]),
      new(
        policy_id,
        compliance_standards=null,
        constraint=null,
        description=null
      ):: std.prune(a={
        compliance_standards: compliance_standards,
        constraint: constraint,
        description: description,
        policy_id: policy_id,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.securityposture_posture.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_securityposture_posture+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withPolicySets':: d.fn(help='`google.list[obj].withPolicySets` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the policy_sets field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPolicySetsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `policy_sets` field.\n', args=[]),
  withPolicySets(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          policy_sets: value,
        },
      },
    },
  },
  '#withPolicySetsMixin':: d.fn(help='`google.list[obj].withPolicySetsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the policy_sets field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPolicySets](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `policy_sets` field.\n', args=[]),
  withPolicySetsMixin(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          policy_sets+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPostureId':: d.fn(help='`google.string.withPostureId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the posture_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `posture_id` field.\n', args=[]),
  withPostureId(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          posture_id: value,
        },
      },
    },
  },
  '#withState':: d.fn(help='`google.string.withState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `state` field.\n', args=[]),
  withState(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          state: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_securityposture_posture+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
