---
permalink: /storage_object_access_control/
---

# storage_object_access_control

`storage_object_access_control` represents the `google_storage_object_access_control` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withEntity()`](#fn-withentity)
* [`fn withObject()`](#fn-withobject)
* [`fn withRole()`](#fn-withrole)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.storage_object_access_control.new` injects a new `google_storage_object_access_control` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_object_access_control.new('some_id')

You can get the reference to the `id` field of the created `google.storage_object_access_control` using the reference:

    $._ref.google_storage_object_access_control.some_id.get('id')

This is the same as directly entering `"${ google_storage_object_access_control.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The name of the bucket.
  - `entity` (`string`): The entity holding the permission, in one of the following forms:
  * user-{{userId}}
  * user-{{email}} (such as &#34;user-liz@example.com&#34;)
  * group-{{groupId}}
  * group-{{email}} (such as &#34;group-example@googlegroups.com&#34;)
  * domain-{{domain}} (such as &#34;domain-example.com&#34;)
  * project-team-{{projectId}}
  * allUsers
  * allAuthenticatedUsers
  - `object` (`string`): The name of the object to apply the access control to.
  - `role` (`string`): The access permission for the entity. Possible values: [&#34;OWNER&#34;, &#34;READER&#34;]
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_object_access_control.timeouts.new](#fn-storageobjectaccesscontroltimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_object_access_control.newAttrs` constructs a new object with attributes and blocks configured for the `storage_object_access_control`
Terraform resource.

Unlike [google.storage_object_access_control.new](#fn-storageobjectaccesscontrolnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The name of the bucket.
  - `entity` (`string`): The entity holding the permission, in one of the following forms:
  * user-{{userId}}
  * user-{{email}} (such as &#34;user-liz@example.com&#34;)
  * group-{{groupId}}
  * group-{{email}} (such as &#34;group-example@googlegroups.com&#34;)
  * domain-{{domain}} (such as &#34;domain-example.com&#34;)
  * project-team-{{projectId}}
  * allUsers
  * allAuthenticatedUsers
  - `object` (`string`): The name of the object to apply the access control to.
  - `role` (`string`): The access permission for the entity. Possible values: [&#34;OWNER&#34;, &#34;READER&#34;]
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_object_access_control.timeouts.new](#fn-storageobjectaccesscontroltimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_object_access_control` resource into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google.storage_object_access_control.withBucket` constructs a mixin object that can be merged into the `storage_object_access_control`
Terraform resource block to set or update the bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bucket` field.


### fn withEntity

```ts
withEntity()
```

`google.storage_object_access_control.withEntity` constructs a mixin object that can be merged into the `storage_object_access_control`
Terraform resource block to set or update the entity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `entity` field.


### fn withObject

```ts
withObject()
```

`google.storage_object_access_control.withObject` constructs a mixin object that can be merged into the `storage_object_access_control`
Terraform resource block to set or update the object field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `object` field.


### fn withRole

```ts
withRole()
```

`google.storage_object_access_control.withRole` constructs a mixin object that can be merged into the `storage_object_access_control`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `role` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.storage_object_access_control.withTimeouts` constructs a mixin object that can be merged into the `storage_object_access_control`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.storage_object_access_control.withTimeoutsMixin` constructs a mixin object that can be merged into the `storage_object_access_control`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.storage_object_access_control.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.storage_object_access_control.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
