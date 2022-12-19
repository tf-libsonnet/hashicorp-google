---
permalink: /scc_source_iam_member/
---

# scc_source_iam_member

`scc_source_iam_member` represents the `google_scc_source_iam_member` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCondition()`](#fn-withcondition)
* [`fn withConditionMixin()`](#fn-withconditionmixin)
* [`fn withMember()`](#fn-withmember)
* [`fn withOrganization()`](#fn-withorganization)
* [`fn withRole()`](#fn-withrole)
* [`fn withSource()`](#fn-withsource)
* [`obj condition`](#obj-condition)
  * [`fn new()`](#fn-conditionnew)

## Fields

### fn new

```ts
new()
```


`google.scc_source_iam_member.new` injects a new `google_scc_source_iam_member` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.scc_source_iam_member.new('some_id')

You can get the reference to the `id` field of the created `google.scc_source_iam_member` using the reference:

    $._ref.google_scc_source_iam_member.some_id.get('id')

This is the same as directly entering `"${ google_scc_source_iam_member.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `member` (`string`): Set the `member` field on the resulting resource block.
  - `organization` (`string`): Set the `organization` field on the resulting resource block.
  - `role` (`string`): Set the `role` field on the resulting resource block.
  - `source` (`string`): Set the `source` field on the resulting resource block.
  - `condition` (`list[obj]`): Set the `condition` field on the resulting resource block. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_source_iam_member.condition.new](#fn-conditionnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.scc_source_iam_member.newAttrs` constructs a new object with attributes and blocks configured for the `scc_source_iam_member`
Terraform resource.

Unlike [google.scc_source_iam_member.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `member` (`string`): Set the `member` field on the resulting object.
  - `organization` (`string`): Set the `organization` field on the resulting object.
  - `role` (`string`): Set the `role` field on the resulting object.
  - `source` (`string`): Set the `source` field on the resulting object.
  - `condition` (`list[obj]`): Set the `condition` field on the resulting object. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_source_iam_member.condition.new](#fn-conditionnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_source_iam_member` resource into the root Terraform configuration.


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


### fn withMember

```ts
withMember()
```

`google.string.withMember` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the member field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `member` field.


### fn withOrganization

```ts
withOrganization()
```

`google.string.withOrganization` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the organization field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organization` field.


### fn withRole

```ts
withRole()
```

`google.string.withRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role` field.


### fn withSource

```ts
withSource()
```

`google.string.withSource` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source` field.


## obj condition



### fn condition.new

```ts
new()
```


`google.scc_source_iam_member.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Set the `description` field on the resulting object. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Set the `expression` field on the resulting object.
  - `title` (`string`): Set the `title` field on the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.
