---
permalink: /data_catalog_entry_group_iam_member/
---

# data_catalog_entry_group_iam_member

`data_catalog_entry_group_iam_member` represents the `google_data_catalog_entry_group_iam_member` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCondition()`](#fn-withcondition)
* [`fn withConditionMixin()`](#fn-withconditionmixin)
* [`fn withEntryGroup()`](#fn-withentrygroup)
* [`fn withMember()`](#fn-withmember)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRole()`](#fn-withrole)
* [`obj condition`](#obj-condition)
  * [`fn new()`](#fn-conditionnew)

## Fields

### fn new

```ts
new()
```


`google.data_catalog_entry_group_iam_member.new` injects a new `google_data_catalog_entry_group_iam_member` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_catalog_entry_group_iam_member.new('some_id')

You can get the reference to the `id` field of the created `google.data_catalog_entry_group_iam_member` using the reference:

    $._ref.google_data_catalog_entry_group_iam_member.some_id.get('id')

This is the same as directly entering `"${ google_data_catalog_entry_group_iam_member.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `entry_group` (`string`): 
  - `member` (`string`): 
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`):  When `null`, the `region` field will be omitted from the resulting object.
  - `role` (`string`): 
  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry_group_iam_member.condition.new](#fn-datacatalogentrygroupiammemberconditionnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_catalog_entry_group_iam_member.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_entry_group_iam_member`
Terraform resource.

Unlike [google.data_catalog_entry_group_iam_member.new](#fn-datacatalogentrygroupiammembernew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `entry_group` (`string`): 
  - `member` (`string`): 
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`):  When `null`, the `region` field will be omitted from the resulting object.
  - `role` (`string`): 
  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry_group_iam_member.condition.new](#fn-datacatalogentrygroupiammemberconditionnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_entry_group_iam_member` resource into the root Terraform configuration.


### fn withCondition

```ts
withCondition()
```

`google.data_catalog_entry_group_iam_member.withCondition` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the condition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `condition` field.


### fn withConditionMixin

```ts
withConditionMixin()
```

`google.data_catalog_entry_group_iam_member.withConditionMixin` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the condition field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.data_catalog_entry_group_iam_member.withCondition](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `condition` field.


### fn withEntryGroup

```ts
withEntryGroup()
```

`google.data_catalog_entry_group_iam_member.withEntryGroup` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the entry_group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `entry_group` field.


### fn withMember

```ts
withMember()
```

`google.data_catalog_entry_group_iam_member.withMember` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the member field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `member` field.


### fn withProject

```ts
withProject()
```

`google.data_catalog_entry_group_iam_member.withProject` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.data_catalog_entry_group_iam_member.withRegion` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withRole

```ts
withRole()
```

`google.data_catalog_entry_group_iam_member.withRole` constructs a mixin object that can be merged into the `data_catalog_entry_group_iam_member`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `role` field.


## obj condition



### fn condition.new

```ts
new()
```


`google.data_catalog_entry_group_iam_member.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`):  When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): 
  - `title` (`string`): 

**Returns**:
  - An attribute object that represents the `condition` sub block.
