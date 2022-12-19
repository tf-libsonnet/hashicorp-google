---
permalink: /os_login_ssh_public_key/
---

# os_login_ssh_public_key

`os_login_ssh_public_key` represents the `google_os_login_ssh_public_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withExpirationTimeUsec()`](#fn-withexpirationtimeusec)
* [`fn withKey()`](#fn-withkey)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUser()`](#fn-withuser)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.os_login_ssh_public_key.new` injects a new `google_os_login_ssh_public_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.os_login_ssh_public_key.new('some_id')

You can get the reference to the `id` field of the created `google.os_login_ssh_public_key` using the reference:

    $._ref.google_os_login_ssh_public_key.some_id.get('id')

This is the same as directly entering `"${ google_os_login_ssh_public_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `expiration_time_usec` (`string`): An expiration time in microseconds since epoch. When `null`, the `expiration_time_usec` field will be omitted from the resulting object.
  - `key` (`string`): Public key text in SSH format, defined by RFC4253 section 6.6.
  - `project` (`string`): The project ID of the Google Cloud Platform project. When `null`, the `project` field will be omitted from the resulting object.
  - `user` (`string`): The user email.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_login_ssh_public_key.timeouts.new](#fn-osloginsshpublickeytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.os_login_ssh_public_key.newAttrs` constructs a new object with attributes and blocks configured for the `os_login_ssh_public_key`
Terraform resource.

Unlike [google.os_login_ssh_public_key.new](#fn-osloginsshpublickeynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `expiration_time_usec` (`string`): An expiration time in microseconds since epoch. When `null`, the `expiration_time_usec` field will be omitted from the resulting object.
  - `key` (`string`): Public key text in SSH format, defined by RFC4253 section 6.6.
  - `project` (`string`): The project ID of the Google Cloud Platform project. When `null`, the `project` field will be omitted from the resulting object.
  - `user` (`string`): The user email.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_login_ssh_public_key.timeouts.new](#fn-osloginsshpublickeytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `os_login_ssh_public_key` resource into the root Terraform configuration.


### fn withExpirationTimeUsec

```ts
withExpirationTimeUsec()
```

`google.os_login_ssh_public_key.withExpirationTimeUsec` constructs a mixin object that can be merged into the `os_login_ssh_public_key`
Terraform resource block to set or update the expiration_time_usec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `expiration_time_usec` field.


### fn withKey

```ts
withKey()
```

`google.os_login_ssh_public_key.withKey` constructs a mixin object that can be merged into the `os_login_ssh_public_key`
Terraform resource block to set or update the key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `key` field.


### fn withProject

```ts
withProject()
```

`google.os_login_ssh_public_key.withProject` constructs a mixin object that can be merged into the `os_login_ssh_public_key`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.os_login_ssh_public_key.withTimeouts` constructs a mixin object that can be merged into the `os_login_ssh_public_key`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.os_login_ssh_public_key.withTimeoutsMixin` constructs a mixin object that can be merged into the `os_login_ssh_public_key`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.os_login_ssh_public_key.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withUser

```ts
withUser()
```

`google.os_login_ssh_public_key.withUser` constructs a mixin object that can be merged into the `os_login_ssh_public_key`
Terraform resource block to set or update the user field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `user` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.os_login_ssh_public_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
