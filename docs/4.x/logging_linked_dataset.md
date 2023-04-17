---
permalink: /logging_linked_dataset/
---

# logging_linked_dataset

`logging_linked_dataset` represents the `google_logging_linked_dataset` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigqueryDataset()`](#fn-withbigquerydataset)
* [`fn withBigqueryDatasetMixin()`](#fn-withbigquerydatasetmixin)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLinkId()`](#fn-withlinkid)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj bigquery_dataset`](#obj-bigquery_dataset)
  * [`fn new()`](#fn-bigquery_datasetnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.logging_linked_dataset.new` injects a new `google_logging_linked_dataset` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.logging_linked_dataset.new('some_id')

You can get the reference to the `id` field of the created `google.logging_linked_dataset` using the reference:

    $._ref.google_logging_linked_dataset.some_id.get('id')

This is the same as directly entering `"${ google_logging_linked_dataset.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The bucket to which the linked dataset is attached.
  - `description` (`string`): Describes this link. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `link_id` (`string`): The id of the linked dataset.
  - `location` (`string`): The location of the linked dataset. When `null`, the `location` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the linked dataset. When `null`, the `parent` field will be omitted from the resulting object.
  - `bigquery_dataset` (`list[obj]`): The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
with it, in the same project as the LogBucket it&#39;s linked to. This dataset will also have BigQuery
Views corresponding to the LogViews in the bucket. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.bigquery_dataset.new](#fn-bigquery_datasetnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.logging_linked_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `logging_linked_dataset`
Terraform resource.

Unlike [google.logging_linked_dataset.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The bucket to which the linked dataset is attached.
  - `description` (`string`): Describes this link. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `link_id` (`string`): The id of the linked dataset.
  - `location` (`string`): The location of the linked dataset. When `null`, the `location` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the linked dataset. When `null`, the `parent` field will be omitted from the resulting object.
  - `bigquery_dataset` (`list[obj]`): The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
with it, in the same project as the LogBucket it&#39;s linked to. This dataset will also have BigQuery
Views corresponding to the LogViews in the bucket. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.bigquery_dataset.new](#fn-bigquery_datasetnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_linked_dataset` resource into the root Terraform configuration.


### fn withBigqueryDataset

```ts
withBigqueryDataset()
```

`google.list[obj].withBigqueryDataset` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigquery_dataset field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBigqueryDatasetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigquery_dataset` field.


### fn withBigqueryDatasetMixin

```ts
withBigqueryDatasetMixin()
```

`google.list[obj].withBigqueryDatasetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigquery_dataset field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBigqueryDataset](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigquery_dataset` field.


### fn withBucket

```ts
withBucket()
```

`google.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLinkId

```ts
withLinkId()
```

`google.string.withLinkId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the link_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `link_id` field.


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


## obj bigquery_dataset



### fn bigquery_dataset.new

```ts
new()
```


`google.logging_linked_dataset.bigquery_dataset.new` constructs a new object with attributes and blocks configured for the `bigquery_dataset`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `bigquery_dataset` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.logging_linked_dataset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
