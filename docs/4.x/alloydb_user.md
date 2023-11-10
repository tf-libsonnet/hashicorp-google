---
permalink: /alloydb_user/
---

# alloydb_user

`alloydb_user` represents the `google_alloydb_user` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withDatabaseRoles()`](#fn-withdatabaseroles)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserId()`](#fn-withuserid)
* [`fn withUserType()`](#fn-withusertype)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.alloydb_user.new` injects a new `google_alloydb_user` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.alloydb_user.new('some_id')

You can get the reference to the `id` field of the created `google.alloydb_user` using the reference:

    $._ref.google_alloydb_user.some_id.get('id')

This is the same as directly entering `"${ google_alloydb_user.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format
&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;
  - `database_roles` (`list`): List of database roles this database user has. When `null`, the `database_roles` field will be omitted from the resulting object.
  - `password` (`string`): Password for this database user. When `null`, the `password` field will be omitted from the resulting object.
  - `user_id` (`string`): The database role name of the user.
  - `user_type` (`string`): The type of this user. Possible values: [&#34;ALLOYDB_BUILT_IN&#34;, &#34;ALLOYDB_IAM_USER&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_user.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.alloydb_user.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_user`
Terraform resource.

Unlike [google.alloydb_user.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format
&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;
  - `database_roles` (`list`): List of database roles this database user has. When `null`, the `database_roles` field will be omitted from the resulting object.
  - `password` (`string`): Password for this database user. When `null`, the `password` field will be omitted from the resulting object.
  - `user_id` (`string`): The database role name of the user.
  - `user_type` (`string`): The type of this user. Possible values: [&#34;ALLOYDB_BUILT_IN&#34;, &#34;ALLOYDB_IAM_USER&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_user.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_user` resource into the root Terraform configuration.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withDatabaseRoles

```ts
withDatabaseRoles()
```

`google.list.withDatabaseRoles` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the database_roles field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `database_roles` field.


### fn withPassword

```ts
withPassword()
```

`google.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


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


### fn withUserId

```ts
withUserId()
```

`google.string.withUserId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user_id` field.


### fn withUserType

```ts
withUserType()
```

`google.string.withUserType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user_type` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.alloydb_user.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
