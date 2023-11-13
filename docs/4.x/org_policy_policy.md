---
permalink: /org_policy_policy/
---

# org_policy_policy

`org_policy_policy` represents the `google_org_policy_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDryRunSpec()`](#fn-withdryrunspec)
* [`fn withDryRunSpecMixin()`](#fn-withdryrunspecmixin)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withSpec()`](#fn-withspec)
* [`fn withSpecMixin()`](#fn-withspecmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj dry_run_spec`](#obj-dry_run_spec)
  * [`fn new()`](#fn-dry_run_specnew)
  * [`obj dry_run_spec.rules`](#obj-dry_run_specrules)
    * [`fn new()`](#fn-dry_run_specrulesnew)
    * [`obj dry_run_spec.rules.condition`](#obj-dry_run_specrulescondition)
      * [`fn new()`](#fn-dry_run_specrulesconditionnew)
    * [`obj dry_run_spec.rules.values`](#obj-dry_run_specrulesvalues)
      * [`fn new()`](#fn-dry_run_specrulesvaluesnew)
* [`obj spec`](#obj-spec)
  * [`fn new()`](#fn-specnew)
  * [`obj spec.rules`](#obj-specrules)
    * [`fn new()`](#fn-specrulesnew)
    * [`obj spec.rules.condition`](#obj-specrulescondition)
      * [`fn new()`](#fn-specrulesconditionnew)
    * [`obj spec.rules.values`](#obj-specrulesvalues)
      * [`fn new()`](#fn-specrulesvaluesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.org_policy_policy.new` injects a new `google_org_policy_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.org_policy_policy.new('some_id')

You can get the reference to the `id` field of the created `google.org_policy_policy` using the reference:

    $._ref.google_org_policy_policy.some_id.get('id')

This is the same as directly entering `"${ google_org_policy_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, &#34;projects/123/policies/compute.disableSerialPortAccess&#34;. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  - `parent` (`string`): The parent of the resource.
  - `dry_run_spec` (`list[obj]`): Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it&#39;s enforced. When `null`, the `dry_run_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.dry_run_spec.new](#fn-dry_run_specnew) constructor.
  - `spec` (`list[obj]`): Basic information about the Organization Policy. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.org_policy_policy.newAttrs` constructs a new object with attributes and blocks configured for the `org_policy_policy`
Terraform resource.

Unlike [google.org_policy_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, &#34;projects/123/policies/compute.disableSerialPortAccess&#34;. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  - `parent` (`string`): The parent of the resource.
  - `dry_run_spec` (`list[obj]`): Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it&#39;s enforced. When `null`, the `dry_run_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.dry_run_spec.new](#fn-dry_run_specnew) constructor.
  - `spec` (`list[obj]`): Basic information about the Organization Policy. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `org_policy_policy` resource into the root Terraform configuration.


### fn withDryRunSpec

```ts
withDryRunSpec()
```

`google.list[obj].withDryRunSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dry_run_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDryRunSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dry_run_spec` field.


### fn withDryRunSpecMixin

```ts
withDryRunSpecMixin()
```

`google.list[obj].withDryRunSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dry_run_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDryRunSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dry_run_spec` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withSpec

```ts
withSpec()
```

`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


### fn withSpecMixin

```ts
withSpecMixin()
```

`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


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


## obj dry_run_spec



### fn dry_run_spec.new

```ts
new()
```


`google.org_policy_policy.dry_run_spec.new` constructs a new object with attributes and blocks configured for the `dry_run_spec`
Terraform sub block.



**Args**:
  - `inherit_from_parent` (`bool`): Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints. When `null`, the `inherit_from_parent` field will be omitted from the resulting object.
  - `reset` (`bool`): Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false. When `null`, the `reset` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.dry_run_spec.rules.new](#fn-dry_run_specrulesnew) constructor.

**Returns**:
  - An attribute object that represents the `dry_run_spec` sub block.


## obj dry_run_spec.rules



### fn dry_run_spec.rules.new

```ts
new()
```


`google.org_policy_policy.dry_run_spec.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `allow_all` (`string`): Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.
  - `deny_all` (`string`): Setting this to true means that all values are denied. This field can be set only in policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.
  - `enforce` (`string`): If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This field can be set only in policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.
  - `condition` (`list[obj]`): A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr&#39; must include from 1 to 10 subexpressions, joined by the &#34;||&#34; or &#34;&amp;&amp;&#34; operators. Each subexpression must be of the form &#34;resource.matchTag(&#39;/tag_key_short_name, &#39;tag_value_short_name&#39;)&#34;. or &#34;resource.matchTagId(&#39;tagKeys/key_id&#39;, &#39;tagValues/value_id&#39;)&#34;. where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: &#34;resource.matchTag(&#39;123456789/environment, &#39;prod&#39;)&#34;. or &#34;resource.matchTagId(&#39;tagKeys/123&#39;, &#39;tagValues/456&#39;)&#34;. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.dry_run_spec.rules.condition.new](#fn-dry_run_specdry_run_specconditionnew) constructor.
  - `values` (`list[obj]`): List of values to be used for this policy rule. This field can be set only in policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.dry_run_spec.rules.values.new](#fn-dry_run_specdry_run_specvaluesnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj dry_run_spec.rules.condition



### fn dry_run_spec.rules.condition.new

```ts
new()
```


`google.org_policy_policy.dry_run_spec.rules.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. When `null`, the `expression` field will be omitted from the resulting object.
  - `location` (`string`): Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.


## obj dry_run_spec.rules.values



### fn dry_run_spec.rules.values.new

```ts
new()
```


`google.org_policy_policy.dry_run_spec.rules.values.new` constructs a new object with attributes and blocks configured for the `values`
Terraform sub block.



**Args**:
  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.
  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `values` sub block.


## obj spec



### fn spec.new

```ts
new()
```


`google.org_policy_policy.spec.new` constructs a new object with attributes and blocks configured for the `spec`
Terraform sub block.



**Args**:
  - `inherit_from_parent` (`bool`): Determines the inheritance behavior for this `Policy`. If `inherit_from_parent` is true, PolicyRules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this Policy becomes the new root for evaluation. This field can be set only for Policies which configure list constraints. When `null`, the `inherit_from_parent` field will be omitted from the resulting object.
  - `reset` (`bool`): Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false. When `null`, the `reset` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Up to 10 PolicyRules are allowed. In Policies for boolean constraints, the following requirements apply: - There must be one and only one PolicyRule where condition is unset. - BooleanPolicyRules with conditions must set `enforced` to the opposite of the PolicyRule without a condition. - During policy evaluation, PolicyRules with conditions that are true for a target resource take precedence. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.rules.new](#fn-specrulesnew) constructor.

**Returns**:
  - An attribute object that represents the `spec` sub block.


## obj spec.rules



### fn spec.rules.new

```ts
new()
```


`google.org_policy_policy.spec.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `allow_all` (`string`): Setting this to true means that all values are allowed. This field can be set only in Policies for list constraints. When `null`, the `allow_all` field will be omitted from the resulting object.
  - `deny_all` (`string`): Setting this to true means that all values are denied. This field can be set only in Policies for list constraints. When `null`, the `deny_all` field will be omitted from the resulting object.
  - `enforce` (`string`): If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints. When `null`, the `enforce` field will be omitted from the resulting object.
  - `condition` (`list[obj]`): A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr&#39; must include from 1 to 10 subexpressions, joined by the &#34;||&#34; or &#34;&amp;&amp;&#34; operators. Each subexpression must be of the form &#34;resource.matchTag(&#39;/tag_key_short_name, &#39;tag_value_short_name&#39;)&#34;. or &#34;resource.matchTagId(&#39;tagKeys/key_id&#39;, &#39;tagValues/value_id&#39;)&#34;. where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: &#34;resource.matchTag(&#39;123456789/environment, &#39;prod&#39;)&#34;. or &#34;resource.matchTagId(&#39;tagKeys/123&#39;, &#39;tagValues/456&#39;)&#34;. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.rules.condition.new](#fn-specspecconditionnew) constructor.
  - `values` (`list[obj]`): List of values to be used for this PolicyRule. This field can be set only in Policies for list constraints. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_policy.spec.rules.values.new](#fn-specspecvaluesnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj spec.rules.condition



### fn spec.rules.condition.new

```ts
new()
```


`google.org_policy_policy.spec.rules.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. When `null`, the `expression` field will be omitted from the resulting object.
  - `location` (`string`): Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.


## obj spec.rules.values



### fn spec.rules.values.new

```ts
new()
```


`google.org_policy_policy.spec.rules.values.new` constructs a new object with attributes and blocks configured for the `values`
Terraform sub block.



**Args**:
  - `allowed_values` (`list`): List of values allowed at this resource. When `null`, the `allowed_values` field will be omitted from the resulting object.
  - `denied_values` (`list`): List of values denied at this resource. When `null`, the `denied_values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `values` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.org_policy_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
