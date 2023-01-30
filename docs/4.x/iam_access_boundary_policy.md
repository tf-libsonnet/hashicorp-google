---
permalink: /iam_access_boundary_policy/
---

# iam_access_boundary_policy

`iam_access_boundary_policy` represents the `google_iam_access_boundary_policy` Terraform resource.



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
  * [`obj rules.access_boundary_rule`](#obj-rulesaccess_boundary_rule)
    * [`fn new()`](#fn-rulesaccess_boundary_rulenew)
    * [`obj rules.access_boundary_rule.availability_condition`](#obj-rulesaccess_boundary_ruleavailability_condition)
      * [`fn new()`](#fn-rulesaccess_boundary_ruleavailability_conditionnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.iam_access_boundary_policy.new` injects a new `google_iam_access_boundary_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.iam_access_boundary_policy.new('some_id')

You can get the reference to the `id` field of the created `google.iam_access_boundary_policy` using the reference:

    $._ref.google_iam_access_boundary_policy.some_id.get('id')

This is the same as directly entering `"${ google_iam_access_boundary_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The name of the policy.
  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.
  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.iam_access_boundary_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_access_boundary_policy`
Terraform resource.

Unlike [google.iam_access_boundary_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The display name of the rule. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The name of the policy.
  - `parent` (`string`): The attachment point is identified by its URL-encoded full resource name.
  - `rules` (`list[obj]`): Rules to be applied. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_access_boundary_policy` resource into the root Terraform configuration.


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


`google.iam_access_boundary_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `description` (`string`): The description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `access_boundary_rule` (`list[obj]`): An access boundary rule in an IAM policy. When `null`, the `access_boundary_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.access_boundary_rule.new](#fn-rulesaccess_boundary_rulenew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.access_boundary_rule



### fn rules.access_boundary_rule.new

```ts
new()
```


`google.iam_access_boundary_policy.rules.access_boundary_rule.new` constructs a new object with attributes and blocks configured for the `access_boundary_rule`
Terraform sub block.



**Args**:
  - `available_permissions` (`list`): A list of permissions that may be allowed for use on the specified resource. When `null`, the `available_permissions` field will be omitted from the resulting object.
  - `available_resource` (`string`): The full resource name of a Google Cloud resource entity. When `null`, the `available_resource` field will be omitted from the resulting object.
  - `availability_condition` (`list[obj]`): The availability condition further constrains the access allowed by the access boundary rule. When `null`, the `availability_condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_access_boundary_policy.rules.access_boundary_rule.availability_condition.new](#fn-rulesrulesavailability_conditionnew) constructor.

**Returns**:
  - An attribute object that represents the `access_boundary_rule` sub block.


## obj rules.access_boundary_rule.availability_condition



### fn rules.access_boundary_rule.availability_condition.new

```ts
new()
```


`google.iam_access_boundary_policy.rules.access_boundary_rule.availability_condition.new` constructs a new object with attributes and blocks configured for the `availability_condition`
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
  - An attribute object that represents the `availability_condition` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.iam_access_boundary_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
