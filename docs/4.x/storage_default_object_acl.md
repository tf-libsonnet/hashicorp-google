---
permalink: /storage_default_object_acl/
---

# storage_default_object_acl

`storage_default_object_acl` represents the `google_storage_default_object_acl` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withRoleEntity()`](#fn-withroleentity)

## Fields

### fn new

```ts
new()
```


`google.storage_default_object_acl.new` injects a new `google_storage_default_object_acl` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_default_object_acl.new('some_id')

You can get the reference to the `id` field of the created `google.storage_default_object_acl` using the reference:

    $._ref.google_storage_default_object_acl.some_id.get('id')

This is the same as directly entering `"${ google_storage_default_object_acl.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket` (`string`): Set the `bucket` field on the resulting resource block.
  - `role_entity` (`list`): Set the `role_entity` field on the resulting resource block. When `null`, the `role_entity` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_default_object_acl.newAttrs` constructs a new object with attributes and blocks configured for the `storage_default_object_acl`
Terraform resource.

Unlike [google.storage_default_object_acl.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): Set the `bucket` field on the resulting object.
  - `role_entity` (`list`): Set the `role_entity` field on the resulting object. When `null`, the `role_entity` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_default_object_acl` resource into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withRoleEntity

```ts
withRoleEntity()
```

`google.list.withRoleEntity` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the role_entity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `role_entity` field.
