---
permalink: /sql_user/
---

# sql_user

`sql_user` represents the `google_sql_user` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withHost()`](#fn-withhost)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withName()`](#fn-withname)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withPasswordPolicy()`](#fn-withpasswordpolicy)
* [`fn withPasswordPolicyMixin()`](#fn-withpasswordpolicymixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj password_policy`](#obj-password_policy)
  * [`fn new()`](#fn-password_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.sql_user.new` injects a new `google_sql_user` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.sql_user.new('some_id')

You can get the reference to the `id` field of the created `google.sql_user` using the reference:

    $._ref.google_sql_user.some_id.get('id')

This is the same as directly entering `"${ google_sql_user.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `deletion_policy` (`string`): The deletion policy for the user. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they
				have been granted SQL roles. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `host` (`string`): The host the user can connect from. This is only supported for MySQL instances. Don&#39;t set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created. When `null`, the `host` field will be omitted from the resulting object.
  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.
  - `name` (`string`): The name of the user. Changing this forces a new resource to be created.
  - `password` (`string`): The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to
                either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT. When `null`, the `password` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The user type. It determines the method to authenticate the user during login.
                The default is the database&#39;s built-in user type. Flags include &#34;BUILT_IN&#34;, &#34;CLOUD_IAM_USER&#34;, or &#34;CLOUD_IAM_SERVICE_ACCOUNT&#34;. When `null`, the `type` field will be omitted from the resulting object.
  - `password_policy` (`list[obj]`): Set the `password_policy` field on the resulting resource block. When `null`, the `password_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.password_policy.new](#fn-password_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.sql_user.newAttrs` constructs a new object with attributes and blocks configured for the `sql_user`
Terraform resource.

Unlike [google.sql_user.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deletion_policy` (`string`): The deletion policy for the user. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they
				have been granted SQL roles. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `host` (`string`): The host the user can connect from. This is only supported for MySQL instances. Don&#39;t set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created. When `null`, the `host` field will be omitted from the resulting object.
  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.
  - `name` (`string`): The name of the user. Changing this forces a new resource to be created.
  - `password` (`string`): The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to
                either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT. When `null`, the `password` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The user type. It determines the method to authenticate the user during login.
                The default is the database&#39;s built-in user type. Flags include &#34;BUILT_IN&#34;, &#34;CLOUD_IAM_USER&#34;, or &#34;CLOUD_IAM_SERVICE_ACCOUNT&#34;. When `null`, the `type` field will be omitted from the resulting object.
  - `password_policy` (`list[obj]`): Set the `password_policy` field on the resulting object. When `null`, the `password_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.password_policy.new](#fn-password_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_user` resource into the root Terraform configuration.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


### fn withHost

```ts
withHost()
```

`google.string.withHost` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the host field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `host` field.


### fn withInstance

```ts
withInstance()
```

`google.string.withInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPassword

```ts
withPassword()
```

`google.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


### fn withPasswordPolicy

```ts
withPasswordPolicy()
```

`google.list[obj].withPasswordPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the password_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPasswordPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `password_policy` field.


### fn withPasswordPolicyMixin

```ts
withPasswordPolicyMixin()
```

`google.list[obj].withPasswordPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the password_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPasswordPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `password_policy` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj password_policy



### fn password_policy.new

```ts
new()
```


`google.sql_user.password_policy.new` constructs a new object with attributes and blocks configured for the `password_policy`
Terraform sub block.



**Args**:
  - `allowed_failed_attempts` (`number`): Number of failed attempts allowed before the user get locked. When `null`, the `allowed_failed_attempts` field will be omitted from the resulting object.
  - `enable_failed_attempts_check` (`bool`): If true, the check that will lock user after too many failed login attempts will be enabled. When `null`, the `enable_failed_attempts_check` field will be omitted from the resulting object.
  - `enable_password_verification` (`bool`): If true, the user must specify the current password before changing the password. This flag is supported only for MySQL. When `null`, the `enable_password_verification` field will be omitted from the resulting object.
  - `password_expiration_duration` (`string`): Password expiration duration with one week grace period. When `null`, the `password_expiration_duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `password_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.sql_user.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
