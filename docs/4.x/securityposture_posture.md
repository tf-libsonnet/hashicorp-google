---
permalink: /securityposture_posture/
---

# securityposture_posture

`securityposture_posture` represents the `google_securityposture_posture` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withParent()`](#fn-withparent)
* [`fn withPolicySets()`](#fn-withpolicysets)
* [`fn withPolicySetsMixin()`](#fn-withpolicysetsmixin)
* [`fn withPostureId()`](#fn-withpostureid)
* [`fn withState()`](#fn-withstate)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj policy_sets`](#obj-policy_sets)
  * [`fn new()`](#fn-policy_setsnew)
  * [`obj policy_sets.policies`](#obj-policy_setspolicies)
    * [`fn new()`](#fn-policy_setspoliciesnew)
    * [`obj policy_sets.policies.compliance_standards`](#obj-policy_setspoliciescompliance_standards)
      * [`fn new()`](#fn-policy_setspoliciescompliance_standardsnew)
    * [`obj policy_sets.policies.constraint`](#obj-policy_setspoliciesconstraint)
      * [`fn new()`](#fn-policy_setspoliciesconstraintnew)
      * [`obj policy_sets.policies.constraint.org_policy_constraint`](#obj-policy_setspoliciesconstraintorg_policy_constraint)
        * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraintnew)
        * [`obj policy_sets.policies.constraint.org_policy_constraint.policy_rules`](#obj-policy_setspoliciesconstraintorg_policy_constraintpolicy_rules)
          * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraintpolicy_rulesnew)
          * [`obj policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr`](#obj-policy_setspoliciesconstraintorg_policy_constraintpolicy_rulesexpr)
            * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraintpolicy_rulesexprnew)
          * [`obj policy_sets.policies.constraint.org_policy_constraint.policy_rules.values`](#obj-policy_setspoliciesconstraintorg_policy_constraintpolicy_rulesvalues)
            * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraintpolicy_rulesvaluesnew)
      * [`obj policy_sets.policies.constraint.org_policy_constraint_custom`](#obj-policy_setspoliciesconstraintorg_policy_constraint_custom)
        * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraint_customnew)
        * [`obj policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint`](#obj-policy_setspoliciesconstraintorg_policy_constraint_customcustom_constraint)
          * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraint_customcustom_constraintnew)
        * [`obj policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules`](#obj-policy_setspoliciesconstraintorg_policy_constraint_custompolicy_rules)
          * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraint_custompolicy_rulesnew)
          * [`obj policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr`](#obj-policy_setspoliciesconstraintorg_policy_constraint_custompolicy_rulesexpr)
            * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraint_custompolicy_rulesexprnew)
          * [`obj policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values`](#obj-policy_setspoliciesconstraintorg_policy_constraint_custompolicy_rulesvalues)
            * [`fn new()`](#fn-policy_setspoliciesconstraintorg_policy_constraint_custompolicy_rulesvaluesnew)
      * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_module)
        * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_modulenew)
        * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module.config`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfig)
          * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfignew)
          * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_output)
            * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputnew)
            * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputproperties)
              * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputpropertiesnew)
              * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputpropertiesvalue_expression)
                * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputpropertiesvalue_expressionnew)
          * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigpredicate)
            * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigpredicatenew)
          * [`obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigresource_selector)
            * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigresource_selectornew)
      * [`obj policy_sets.policies.constraint.security_health_analytics_module`](#obj-policy_setspoliciesconstraintsecurity_health_analytics_module)
        * [`fn new()`](#fn-policy_setspoliciesconstraintsecurity_health_analytics_modulenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.securityposture_posture.new` injects a new `google_securityposture_posture` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.securityposture_posture.new('some_id')

You can get the reference to the `id` field of the created `google.securityposture_posture` using the reference:

    $._ref.google_securityposture_posture.some_id.get('id')

This is the same as directly entering `"${ google_securityposture_posture.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the posture. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): Location of the resource, eg: global.
  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.
  - `posture_id` (`string`): Id of the posture. It is an immutable field.
  - `state` (`string`): State of the posture. Update to state field should not be triggered along with
with other field updates. Possible values: [&#34;DEPRECATED&#34;, &#34;DRAFT&#34;, &#34;ACTIVE&#34;]
  - `policy_sets` (`list[obj]`): List of policy sets for the posture. When `null`, the `policy_sets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.new](#fn-policy_setsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.securityposture_posture.newAttrs` constructs a new object with attributes and blocks configured for the `securityposture_posture`
Terraform resource.

Unlike [google.securityposture_posture.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the posture. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): Location of the resource, eg: global.
  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.
  - `posture_id` (`string`): Id of the posture. It is an immutable field.
  - `state` (`string`): State of the posture. Update to state field should not be triggered along with
with other field updates. Possible values: [&#34;DEPRECATED&#34;, &#34;DRAFT&#34;, &#34;ACTIVE&#34;]
  - `policy_sets` (`list[obj]`): List of policy sets for the posture. When `null`, the `policy_sets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.new](#fn-policy_setsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `securityposture_posture` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withPolicySets

```ts
withPolicySets()
```

`google.list[obj].withPolicySets` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the policy_sets field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPolicySetsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `policy_sets` field.


### fn withPolicySetsMixin

```ts
withPolicySetsMixin()
```

`google.list[obj].withPolicySetsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the policy_sets field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPolicySets](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `policy_sets` field.


### fn withPostureId

```ts
withPostureId()
```

`google.string.withPostureId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the posture_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `posture_id` field.


### fn withState

```ts
withState()
```

`google.string.withState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `state` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj policy_sets



### fn policy_sets.new

```ts
new()
```


`google.securityposture_posture.policy_sets.new` constructs a new object with attributes and blocks configured for the `policy_sets`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the policy set. When `null`, the `description` field will be omitted from the resulting object.
  - `policy_set_id` (`string`): ID of the policy set.
  - `policies` (`list[obj]`): List of security policy When `null`, the `policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.new](#fn-policy_setspoliciesnew) constructor.

**Returns**:
  - An attribute object that represents the `policy_sets` sub block.


## obj policy_sets.policies



### fn policy_sets.policies.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.new` constructs a new object with attributes and blocks configured for the `policies`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the policy. When `null`, the `description` field will be omitted from the resulting object.
  - `policy_id` (`string`): ID of the policy.
  - `compliance_standards` (`list[obj]`): Mapping for policy to security standards and controls. When `null`, the `compliance_standards` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.compliance_standards.new](#fn-policy_setspolicy_setscompliance_standardsnew) constructor.
  - `constraint` (`list[obj]`): Policy constraint definition.It can have the definition of one of following constraints: orgPolicyConstraint orgPolicyConstraintCustom securityHealthAnalyticsModule securityHealthAnalyticsCustomModule When `null`, the `constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.new](#fn-policy_setspolicy_setsconstraintnew) constructor.

**Returns**:
  - An attribute object that represents the `policies` sub block.


## obj policy_sets.policies.compliance_standards



### fn policy_sets.policies.compliance_standards.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.compliance_standards.new` constructs a new object with attributes and blocks configured for the `compliance_standards`
Terraform sub block.



**Args**:
  - `control` (`string`): Mapping of security controls for the policy. When `null`, the `control` field will be omitted from the resulting object.
  - `standard` (`string`): Mapping of compliance standards for the policy. When `null`, the `standard` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `compliance_standards` sub block.


## obj policy_sets.policies.constraint



### fn policy_sets.policies.constraint.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.new` constructs a new object with attributes and blocks configured for the `constraint`
Terraform sub block.



**Args**:
  - `org_policy_constraint` (`list[obj]`): Organization policy canned constraint definition. When `null`, the `org_policy_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.new](#fn-policy_setspolicy_setspoliciesorg_policy_constraintnew) constructor.
  - `org_policy_constraint_custom` (`list[obj]`): Organization policy custom constraint policy definition. When `null`, the `org_policy_constraint_custom` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.new](#fn-policy_setspolicy_setspoliciesorg_policy_constraint_customnew) constructor.
  - `security_health_analytics_custom_module` (`list[obj]`): Definition of Security Health Analytics Custom Module. When `null`, the `security_health_analytics_custom_module` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.new](#fn-policy_setspolicy_setspoliciessecurity_health_analytics_custom_modulenew) constructor.
  - `security_health_analytics_module` (`list[obj]`): Security Health Analytics built-in detector definition. When `null`, the `security_health_analytics_module` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_module.new](#fn-policy_setspolicy_setspoliciessecurity_health_analytics_modulenew) constructor.

**Returns**:
  - An attribute object that represents the `constraint` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint



### fn policy_sets.policies.constraint.org_policy_constraint.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.new` constructs a new object with attributes and blocks configured for the `org_policy_constraint`
Terraform sub block.



**Args**:
  - `canned_constraint_id` (`string`): Organization policy canned constraint Id
  - `policy_rules` (`list[obj]`): Definition of policy rules When `null`, the `policy_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.new](#fn-policy_setspolicy_setspoliciesconstraintpolicy_rulesnew) constructor.

**Returns**:
  - An attribute object that represents the `org_policy_constraint` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint.policy_rules



### fn policy_sets.policies.constraint.org_policy_constraint.policy_rules.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.new` constructs a new object with attributes and blocks configured for the `policy_rules`
Terraform sub block.



**Args**:
  - `allow_all` (`bool`): Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.
  - `deny_all` (`bool`): Setting this to true means that all values are denied. This field can be set only in policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.
  - `enforce` (`bool`): If &#39;true&#39;, then the policy is enforced. If &#39;false&#39;, then any configuration is acceptable.
This field can be set only in policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.
  - `expr` (`list[obj]`): Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
This page details the objects and attributes that are used to the build the CEL expressions for
custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraintexprnew) constructor.
  - `values` (`list[obj]`): List of values to be used for this policy rule. This field can be set only in policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.values.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraintvaluesnew) constructor.

**Returns**:
  - An attribute object that represents the `policy_rules` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr



### fn policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.expr.new` constructs a new object with attributes and blocks configured for the `expr`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `expr` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint.policy_rules.values



### fn policy_sets.policies.constraint.org_policy_constraint.policy_rules.values.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint.policy_rules.values.new` constructs a new object with attributes and blocks configured for the `values`
Terraform sub block.



**Args**:
  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.
  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `values` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint_custom



### fn policy_sets.policies.constraint.org_policy_constraint_custom.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.new` constructs a new object with attributes and blocks configured for the `org_policy_constraint_custom`
Terraform sub block.



**Args**:
  - `custom_constraint` (`list[obj]`): Organization policy custom constraint definition. When `null`, the `custom_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint.new](#fn-policy_setspolicy_setspoliciesconstraintcustom_constraintnew) constructor.
  - `policy_rules` (`list[obj]`): Definition of policy rules When `null`, the `policy_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.new](#fn-policy_setspolicy_setspoliciesconstraintpolicy_rulesnew) constructor.

**Returns**:
  - An attribute object that represents the `org_policy_constraint_custom` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint



### fn policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint.new` constructs a new object with attributes and blocks configured for the `custom_constraint`
Terraform sub block.



**Args**:
  - `action_type` (`string`): The action to take if the condition is met. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]
  - `condition` (`string`): A CEL condition that refers to a supported service resource, for example &#39;resource.management.autoUpgrade == false&#39;. For details about CEL usage, see [Common Expression Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  - `description` (`string`): A human-friendly description of the constraint to display as an error message when the policy is violated. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): A human-friendly name for the constraint. When `null`, the `display_name` field will be omitted from the resulting object.
  - `method_types` (`list`): A list of RESTful methods for which to enforce the constraint. Can be &#39;CREATE&#39;, &#39;UPDATE&#39;, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  - `name` (`string`): Immutable. The name of the custom constraint. This is unique within the organization.
  - `resource_types` (`list`): Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, &#39;container.googleapis.com/NodePool&#39;.

**Returns**:
  - An attribute object that represents the `custom_constraint` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules



### fn policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.new` constructs a new object with attributes and blocks configured for the `policy_rules`
Terraform sub block.



**Args**:
  - `allow_all` (`bool`): Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.
  - `deny_all` (`bool`): Setting this to true means that all values are denied. This field can be set only in policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.
  - `enforce` (`bool`): If &#39;true&#39;, then the policy is enforced. If &#39;false&#39;, then any configuration is acceptable.
This field can be set only in policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.
  - `expr` (`list[obj]`): Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
This page details the objects and attributes that are used to the build the CEL expressions for
custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraint_customexprnew) constructor.
  - `values` (`list[obj]`): List of values to be used for this policy rule. This field can be set only in policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values.new](#fn-policy_setspolicy_setspoliciesconstraintorg_policy_constraint_customvaluesnew) constructor.

**Returns**:
  - An attribute object that represents the `policy_rules` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr



### fn policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.expr.new` constructs a new object with attributes and blocks configured for the `expr`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `expr` sub block.


## obj policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values



### fn policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values.new` constructs a new object with attributes and blocks configured for the `values`
Terraform sub block.



**Args**:
  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.
  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `values` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.new` constructs a new object with attributes and blocks configured for the `security_health_analytics_custom_module`
Terraform sub block.



**Args**:
  - `display_name` (`string`): The display name of the Security Health Analytics custom module. This
display name becomes the finding category for all findings that are
returned by this custom module. When `null`, the `display_name` field will be omitted from the resulting object.
  - `module_enablement_state` (`string`): The state of enablement for the module at its level of the resource hierarchy. Possible values: [&#34;ENABLEMENT_STATE_UNSPECIFIED&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `module_enablement_state` field will be omitted from the resulting object.
  - `config` (`list[obj]`): Custom module details. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.new](#fn-policy_setspolicy_setspoliciesconstraintconfignew) constructor.

**Returns**:
  - An attribute object that represents the `security_health_analytics_custom_module` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module.config



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.config.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `description` (`string`): Text that describes the vulnerability or misconfiguration that the custom
module detects. When `null`, the `description` field will be omitted from the resulting object.
  - `recommendation` (`string`): An explanation of the recommended steps that security teams can take to
resolve the detected issue When `null`, the `recommendation` field will be omitted from the resulting object.
  - `severity` (`string`): The severity to assign to findings generated by the module. Possible values: [&#34;SEVERITY_UNSPECIFIED&#34;, &#34;CRITICAL&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;]
  - `custom_output` (`list[obj]`): Custom output properties. A set of optional name-value pairs that define custom source properties to
return with each finding that is generated by the custom module. The custom
source properties that are defined here are included in the finding JSON
under &#39;sourceProperties&#39;. When `null`, the `custom_output` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_modulecustom_outputnew) constructor.
  - `predicate` (`list[obj]`): The CEL expression to evaluate to produce findings.When the expression
evaluates to true against a resource, a finding is generated. When `null`, the `predicate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_modulepredicatenew) constructor.
  - `resource_selector` (`list[obj]`): The resource types that the custom module operates on. Each custom module
can specify up to 5 resource types. When `null`, the `resource_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_moduleresource_selectornew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.new` constructs a new object with attributes and blocks configured for the `custom_output`
Terraform sub block.



**Args**:
  - `properties` (`list[obj]`): A list of custom output properties to add to the finding. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigpropertiesnew) constructor.

**Returns**:
  - An attribute object that represents the `custom_output` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.new` constructs a new object with attributes and blocks configured for the `properties`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the property for the custom output.
  - `value_expression` (`list[obj]`): The CEL expression for the custom output. A resource property can be
specified to return the value of the property or a text string enclosed
in quotation marks. When `null`, the `value_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression.new](#fn-policy_setspolicy_setspoliciesconstraintsecurity_health_analytics_custom_moduleconfigcustom_outputvalue_expressionnew) constructor.

**Returns**:
  - An attribute object that represents the `properties` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression.new` constructs a new object with attributes and blocks configured for the `value_expression`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `value_expression` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate.new` constructs a new object with attributes and blocks configured for the `predicate`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `predicate` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector



### fn policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector.new` constructs a new object with attributes and blocks configured for the `resource_selector`
Terraform sub block.



**Args**:
  - `resource_types` (`list`): The resource types to run the detector on.

**Returns**:
  - An attribute object that represents the `resource_selector` sub block.


## obj policy_sets.policies.constraint.security_health_analytics_module



### fn policy_sets.policies.constraint.security_health_analytics_module.new

```ts
new()
```


`google.securityposture_posture.policy_sets.policies.constraint.security_health_analytics_module.new` constructs a new object with attributes and blocks configured for the `security_health_analytics_module`
Terraform sub block.



**Args**:
  - `module_enablement_state` (`string`): The state of enablement for the module at its level of the resource hierarchy. Possible values: [&#34;ENABLEMENT_STATE_UNSPECIFIED&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `module_enablement_state` field will be omitted from the resulting object.
  - `module_name` (`string`): The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.

**Returns**:
  - An attribute object that represents the `security_health_analytics_module` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.securityposture_posture.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
