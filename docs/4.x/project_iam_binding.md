---
permalink: /project_iam_binding/
---

# project_iam_binding

`project_iam_binding` represents the `google_project_iam_binding` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCondition()`](#fn-withcondition)
* [`fn withConditionMixin()`](#fn-withconditionmixin)
* [`fn withMembers()`](#fn-withmembers)
* [`fn withProject()`](#fn-withproject)
* [`fn withRole()`](#fn-withrole)
* [`obj condition`](#obj-condition)
  * [`fn new()`](#fn-conditionnew)

## Fields

### fn new

```ts
new()
```


`google.project_iam_binding.new` injects a new `google_project_iam_binding` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.project_iam_binding.new('some_id')

You can get the reference to the `id` field of the created `google.project_iam_binding` using the reference:

    $._ref.google_project_iam_binding.some_id.get('id')

This is the same as directly entering `"${ google_project_iam_binding.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `members` (`list`): 
  - `project` (`string`): 
  - `role` (`string`): 
  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_iam_binding.condition.new](#fn-projectiambindingconditionnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.project_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_binding`
Terraform resource.

Unlike [google.project_iam_binding.new](#fn-projectiambindingnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `members` (`list`): 
  - `project` (`string`): 
  - `role` (`string`): 
  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_iam_binding.condition.new](#fn-projectiambindingconditionnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_binding` resource into the root Terraform configuration.


### fn withCondition

```ts
withCondition()
```

`google.project_iam_binding.withCondition` constructs a mixin object that can be merged into the `project_iam_binding`
Terraform resource block to set or update the condition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `condition` field.


### fn withConditionMixin

```ts
withConditionMixin()
```

`google.project_iam_binding.withConditionMixin` constructs a mixin object that can be merged into the `project_iam_binding`
Terraform resource block to set or update the condition field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.project_iam_binding.withCondition](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `condition` field.


### fn withMembers

```ts
withMembers()
```

`google.project_iam_binding.withMembers` constructs a mixin object that can be merged into the `project_iam_binding`
Terraform resource block to set or update the members field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `members` field.


### fn withProject

```ts
withProject()
```

`google.project_iam_binding.withProject` constructs a mixin object that can be merged into the `project_iam_binding`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRole

```ts
withRole()
```

`google.project_iam_binding.withRole` constructs a mixin object that can be merged into the `project_iam_binding`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `role` field.


## obj condition



### fn condition.new

```ts
new()
```


`google.project_iam_binding.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`):  When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): 
  - `title` (`string`): 

**Returns**:
  - An attribute object that represents the `condition` sub block.
