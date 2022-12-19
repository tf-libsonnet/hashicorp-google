---
permalink: /data/cloud_identity_groups/
---

# data.cloud_identity_groups

`cloud_identity_groups` represents the `google_cloud_identity_groups` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withParent()`](#fn-withparent)

## Fields

### fn new

```ts
new()
```


`google.data.cloud_identity_groups.new` injects a new `data_google_cloud_identity_groups` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.cloud_identity_groups.new('some_id')

You can get the reference to the `id` field of the created `google.data.cloud_identity_groups` using the reference:

    $._ref.data_google_cloud_identity_groups.some_id.get('id')

This is the same as directly entering `"${ data_google_cloud_identity_groups.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `parent` (`string`): The resource name of the entity under which this Group resides in the
Cloud Identity resource hierarchy.

Must be of the form identitysources/{identity_source_id} for external-identity-mapped
groups or customers/{customer_id} for Google Groups.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.cloud_identity_groups.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_groups`
Terraform data source.

Unlike [google.data.cloud_identity_groups.new](#fn-cloudidentitygroupsnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `parent` (`string`): The resource name of the entity under which this Group resides in the
Cloud Identity resource hierarchy.

Must be of the form identitysources/{identity_source_id} for external-identity-mapped
groups or customers/{customer_id} for Google Groups.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloud_identity_groups` data source into the root Terraform configuration.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the parent field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.
