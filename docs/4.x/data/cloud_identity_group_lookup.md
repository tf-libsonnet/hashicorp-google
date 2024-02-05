---
permalink: /data/cloud_identity_group_lookup/
---

# data.cloud_identity_group_lookup

`cloud_identity_group_lookup` represents the `google_cloud_identity_group_lookup` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withGroupKey()`](#fn-withgroupkey)
* [`fn withGroupKeyMixin()`](#fn-withgroupkeymixin)
* [`obj group_key`](#obj-group_key)
  * [`fn new()`](#fn-group_keynew)

## Fields

### fn new

```ts
new()
```


`google.data.cloud_identity_group_lookup.new` injects a new `data_google_cloud_identity_group_lookup` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.cloud_identity_group_lookup.new('some_id')

You can get the reference to the `id` field of the created `google.data.cloud_identity_group_lookup` using the reference:

    $._ref.data_google_cloud_identity_group_lookup.some_id.get('id')

This is the same as directly entering `"${ data_google_cloud_identity_group_lookup.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `group_key` (`list[obj]`): The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.
An entity can represent either a group with an optional namespace or a user without a namespace.
The combination of id and namespace must be unique; however, the same id can be used with different namespaces. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.cloud_identity_group_lookup.group_key.new](#fn-group_keynew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.cloud_identity_group_lookup.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_group_lookup`
Terraform data source.

Unlike [google.data.cloud_identity_group_lookup.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `group_key` (`list[obj]`): The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.
An entity can represent either a group with an optional namespace or a user without a namespace.
The combination of id and namespace must be unique; however, the same id can be used with different namespaces. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.cloud_identity_group_lookup.group_key.new](#fn-group_keynew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloud_identity_group_lookup` data source into the root Terraform configuration.


### fn withGroupKey

```ts
withGroupKey()
```

`google.list[obj].withGroupKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the group_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGroupKeyMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `group_key` field.


### fn withGroupKeyMixin

```ts
withGroupKeyMixin()
```

`google.list[obj].withGroupKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the group_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGroupKey](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `group_key` field.


## obj group_key



### fn group_key.new

```ts
new()
```


`google.cloud_identity_group_lookup.group_key.new` constructs a new object with attributes and blocks configured for the `group_key`
Terraform sub block.



**Args**:
  - `namespace` (`string`): The namespace in which the entity exists. If not specified, the EntityKey represents a Google-managed entity such as a Google user or a Google Group.
If specified, the EntityKey represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of identitysources/{identity_source}. When `null`, the `namespace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `group_key` sub block.
