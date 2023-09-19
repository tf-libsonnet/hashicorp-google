---
permalink: /iam_deny_policy/
---

# iam_deny_policy

`iam_deny_policy` represents the `google_iam_deny_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withRules()`](#fn-withrules)
* [`fn withRulesMixin()`](#fn-withrulesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj rules`](#obj-rules)
  * [`fn new()`](#fn-rulesnew)
  * [`obj rules.deny_rule`](#obj-rulesdeny_rule)
    * [`fn new()`](#fn-rulesdeny_rulenew)
    * [`obj rules.deny_rule.denial_condition`](#obj-rulesdeny_ruledenial_condition)
      * [`fn new()`](#fn-rulesdeny_ruledenial_conditionnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.iam_deny_policy.new` injects a new `google_iam_deny_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.iam_deny_policy.new('some_id')

You can get the reference to the `id` field of the created `google.iam_deny_policy` using the reference:

    $._ref.google_iam_deny_policy.some_id.get('id')

This is the same as directly entering `"${ google_iam_deny_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The name of the policy.
  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.
  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.iam_deny_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_deny_policy`
Terraform resource.

Unlike [google.iam_deny_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The name of the policy.
  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.
  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_deny_policy` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


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


### fn withRules

```ts
withRules()
```

`google.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rules field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRulesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rules` field.


### fn withRulesMixin

```ts
withRulesMixin()
```

`google.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rules field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRules](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rules` field.


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


## obj rules



### fn rules.new

```ts
new()
```


`google.iam_deny_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `description` (`string`): The description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `deny_rule` (`list[obj]`): A deny rule in an IAM deny policy. When `null`, the `deny_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.deny_rule.new](#fn-rulesdeny_rulenew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.deny_rule



### fn rules.deny_rule.new

```ts
new()
```


`google.iam_deny_policy.rules.deny_rule.new` constructs a new object with attributes and blocks configured for the `deny_rule`
Terraform sub block.



**Args**:
  - `denied_permissions` (`list`): The permissions that are explicitly denied by this rule. Each permission uses the format &#39;{service-fqdn}/{resource}.{verb}&#39;,
where &#39;{service-fqdn}&#39; is the fully qualified domain name for the service. For example, &#39;iam.googleapis.com/roles.list&#39;. When `null`, the `denied_permissions` field will be omitted from the resulting object.
  - `denied_principals` (`list`): The identities that are prevented from using one or more permissions on Google Cloud resources. When `null`, the `denied_principals` field will be omitted from the resulting object.
  - `exception_permissions` (`list`): Specifies the permissions that this rule excludes from the set of denied permissions given by deniedPermissions.
If a permission appears in deniedPermissions and in exceptionPermissions then it will not be denied.
The excluded permissions can be specified using the same syntax as deniedPermissions. When `null`, the `exception_permissions` field will be omitted from the resulting object.
  - `exception_principals` (`list`): The identities that are excluded from the deny rule, even if they are listed in the deniedPrincipals.
For example, you could add a Google group to the deniedPrincipals, then exclude specific users who belong to that group. When `null`, the `exception_principals` field will be omitted from the resulting object.
  - `denial_condition` (`list[obj]`): User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. When `null`, the `denial_condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_deny_policy.rules.deny_rule.denial_condition.new](#fn-rulesrulesdenial_conditionnew) constructor.

**Returns**:
  - An attribute object that represents the `deny_rule` sub block.


## obj rules.deny_rule.denial_condition



### fn rules.deny_rule.denial_condition.new

```ts
new()
```


`google.iam_deny_policy.rules.deny_rule.denial_condition.new` constructs a new object with attributes and blocks configured for the `denial_condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression. This is a longer text which describes the expression,
e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting,
e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose.
This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `denial_condition` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.iam_deny_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
