---
permalink: /endpoints_service_iam_binding/
---

# endpoints_service_iam_binding

`endpoints_service_iam_binding` represents the `google_endpoints_service_iam_binding` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCondition()`](#fn-withcondition)
* [`fn withConditionMixin()`](#fn-withconditionmixin)
* [`fn withMembers()`](#fn-withmembers)
* [`fn withRole()`](#fn-withrole)
* [`fn withServiceName()`](#fn-withservicename)
* [`obj condition`](#obj-condition)
  * [`fn new()`](#fn-conditionnew)

## Fields

### fn new

```ts
new()
```


`google.endpoints_service_iam_binding.new` injects a new `google_endpoints_service_iam_binding` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.endpoints_service_iam_binding.new('some_id')

You can get the reference to the `id` field of the created `google.endpoints_service_iam_binding` using the reference:

    $._ref.google_endpoints_service_iam_binding.some_id.get('id')

This is the same as directly entering `"${ google_endpoints_service_iam_binding.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `members` (`list`): Set the `members` field on the resulting resource block.
  - `role` (`string`): Set the `role` field on the resulting resource block.
  - `service_name` (`string`): Set the `service_name` field on the resulting resource block.
  - `condition` (`list[obj]`): Set the `condition` field on the resulting resource block. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.endpoints_service_iam_binding.condition.new](#fn-conditionnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.endpoints_service_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `endpoints_service_iam_binding`
Terraform resource.

Unlike [google.endpoints_service_iam_binding.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `members` (`list`): Set the `members` field on the resulting object.
  - `role` (`string`): Set the `role` field on the resulting object.
  - `service_name` (`string`): Set the `service_name` field on the resulting object.
  - `condition` (`list[obj]`): Set the `condition` field on the resulting object. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.endpoints_service_iam_binding.condition.new](#fn-conditionnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `endpoints_service_iam_binding` resource into the root Terraform configuration.


### fn withCondition

```ts
withCondition()
```

`google.list[obj].withCondition` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the condition field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConditionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `condition` field.


### fn withConditionMixin

```ts
withConditionMixin()
```

`google.list[obj].withConditionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the condition field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCondition](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `condition` field.


### fn withMembers

```ts
withMembers()
```

`google.list.withMembers` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the members field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `members` field.


### fn withRole

```ts
withRole()
```

`google.string.withRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role` field.


### fn withServiceName

```ts
withServiceName()
```

`google.string.withServiceName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_name` field.


## obj condition



### fn condition.new

```ts
new()
```


`google.endpoints_service_iam_binding.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Set the `description` field on the resulting object. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Set the `expression` field on the resulting object.
  - `title` (`string`): Set the `title` field on the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.
