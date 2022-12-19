---
permalink: /identity_platform_project_default_config/
---

# identity_platform_project_default_config

`identity_platform_project_default_config` represents the `google_identity_platform_project_default_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withProject()`](#fn-withproject)
* [`fn withSignIn()`](#fn-withsignin)
* [`fn withSignInMixin()`](#fn-withsigninmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj sign_in`](#obj-sign_in)
  * [`fn new()`](#fn-sign_innew)
  * [`obj sign_in.anonymous`](#obj-sign_inanonymous)
    * [`fn new()`](#fn-sign_inanonymousnew)
  * [`obj sign_in.email`](#obj-sign_inemail)
    * [`fn new()`](#fn-sign_inemailnew)
  * [`obj sign_in.phone_number`](#obj-sign_inphone_number)
    * [`fn new()`](#fn-sign_inphone_numbernew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.identity_platform_project_default_config.new` injects a new `google_identity_platform_project_default_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.identity_platform_project_default_config.new('some_id')

You can get the reference to the `id` field of the created `google.identity_platform_project_default_config` using the reference:

    $._ref.google_identity_platform_project_default_config.some_id.get('id')

This is the same as directly entering `"${ google_identity_platform_project_default_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `sign_in` (`list[obj]`): Configuration related to local sign in methods. When `null`, the `sign_in` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.new](#fn-identityplatformprojectdefaultconfigsigninnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.timeouts.new](#fn-identityplatformprojectdefaultconfigtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.identity_platform_project_default_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_project_default_config`
Terraform resource.

Unlike [google.identity_platform_project_default_config.new](#fn-identityplatformprojectdefaultconfignew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `sign_in` (`list[obj]`): Configuration related to local sign in methods. When `null`, the `sign_in` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.new](#fn-identityplatformprojectdefaultconfigsigninnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.timeouts.new](#fn-identityplatformprojectdefaultconfigtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_project_default_config` resource into the root Terraform configuration.


### fn withProject

```ts
withProject()
```

`google.identity_platform_project_default_config.withProject` constructs a mixin object that can be merged into the `identity_platform_project_default_config`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withSignIn

```ts
withSignIn()
```

`google.identity_platform_project_default_config.withSignIn` constructs a mixin object that can be merged into the `identity_platform_project_default_config`
Terraform resource block to set or update the sign_in field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `sign_in` field.


### fn withSignInMixin

```ts
withSignInMixin()
```

`google.identity_platform_project_default_config.withSignInMixin` constructs a mixin object that can be merged into the `identity_platform_project_default_config`
Terraform resource block to set or update the sign_in field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.identity_platform_project_default_config.withSignIn](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `sign_in` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.identity_platform_project_default_config.withTimeouts` constructs a mixin object that can be merged into the `identity_platform_project_default_config`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.identity_platform_project_default_config.withTimeoutsMixin` constructs a mixin object that can be merged into the `identity_platform_project_default_config`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.identity_platform_project_default_config.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj sign_in



### fn sign_in.new

```ts
new()
```


`google.identity_platform_project_default_config.sign_in.new` constructs a new object with attributes and blocks configured for the `sign_in`
Terraform sub block.



**Args**:
  - `allow_duplicate_emails` (`bool`): Whether to allow more than one account to have the same email. When `null`, the `allow_duplicate_emails` field will be omitted from the resulting object.
  - `anonymous` (`list[obj]`): Configuration options related to authenticating an anonymous user. When `null`, the `anonymous` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.anonymous.new](#fn-signinanonymousnew) constructor.
  - `email` (`list[obj]`): Configuration options related to authenticating a user by their email address. When `null`, the `email` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.email.new](#fn-signinemailnew) constructor.
  - `phone_number` (`list[obj]`): Configuration options related to authenticated a user by their phone number. When `null`, the `phone_number` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.phone_number.new](#fn-signinphonenumbernew) constructor.

**Returns**:
  - An attribute object that represents the `sign_in` sub block.


## obj sign_in.anonymous



### fn sign_in.anonymous.new

```ts
new()
```


`google.identity_platform_project_default_config.sign_in.anonymous.new` constructs a new object with attributes and blocks configured for the `anonymous`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether anonymous user auth is enabled for the project or not.

**Returns**:
  - An attribute object that represents the `anonymous` sub block.


## obj sign_in.email



### fn sign_in.email.new

```ts
new()
```


`google.identity_platform_project_default_config.sign_in.email.new` constructs a new object with attributes and blocks configured for the `email`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether email auth is enabled for the project or not. When `null`, the `enabled` field will be omitted from the resulting object.
  - `password_required` (`bool`): Whether a password is required for email auth or not. If true, both an email and 
password must be provided to sign in. If false, a user may sign in via either 
email/password or email link. When `null`, the `password_required` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `email` sub block.


## obj sign_in.phone_number



### fn sign_in.phone_number.new

```ts
new()
```


`google.identity_platform_project_default_config.sign_in.phone_number.new` constructs a new object with attributes and blocks configured for the `phone_number`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether phone number auth is enabled for the project or not. When `null`, the `enabled` field will be omitted from the resulting object.
  - `test_phone_numbers` (`obj`): A map of &lt;test phone number, fake code&gt; that can be used for phone auth testing. When `null`, the `test_phone_numbers` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `phone_number` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.identity_platform_project_default_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
