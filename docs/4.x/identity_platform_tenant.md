---
permalink: /identity_platform_tenant/
---

# identity_platform_tenant

`identity_platform_tenant` represents the `google_identity_platform_tenant` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAllowPasswordSignup()`](#fn-withallowpasswordsignup)
* [`fn withDisableAuth()`](#fn-withdisableauth)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableEmailLinkSignin()`](#fn-withenableemaillinksignin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.identity_platform_tenant.new` injects a new `google_identity_platform_tenant` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.identity_platform_tenant.new('some_id')

You can get the reference to the `id` field of the created `google.identity_platform_tenant` using the reference:

    $._ref.google_identity_platform_tenant.some_id.get('id')

This is the same as directly entering `"${ google_identity_platform_tenant.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `allow_password_signup` (`bool`): Whether to allow email/password user authentication. When `null`, the `allow_password_signup` field will be omitted from the resulting object.
  - `disable_auth` (`bool`): Whether authentication is disabled for the tenant. If true, the users under
the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
are not able to manage its users. When `null`, the `disable_auth` field will be omitted from the resulting object.
  - `display_name` (`string`): Human friendly display name of the tenant.
  - `enable_email_link_signin` (`bool`): Whether to enable email link user authentication. When `null`, the `enable_email_link_signin` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant.timeouts.new](#fn-identity_platform_tenanttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.identity_platform_tenant.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_tenant`
Terraform resource.

Unlike [google.identity_platform_tenant.new](#fn-identity_platform_tenantnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `allow_password_signup` (`bool`): Whether to allow email/password user authentication. When `null`, the `allow_password_signup` field will be omitted from the resulting object.
  - `disable_auth` (`bool`): Whether authentication is disabled for the tenant. If true, the users under
the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
are not able to manage its users. When `null`, the `disable_auth` field will be omitted from the resulting object.
  - `display_name` (`string`): Human friendly display name of the tenant.
  - `enable_email_link_signin` (`bool`): Whether to enable email link user authentication. When `null`, the `enable_email_link_signin` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant.timeouts.new](#fn-identity_platform_tenanttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_tenant` resource into the root Terraform configuration.


### fn withAllowPasswordSignup

```ts
withAllowPasswordSignup()
```

`google.bool.withAllowPasswordSignup` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the allow_password_signup field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `allow_password_signup` field.


### fn withDisableAuth

```ts
withDisableAuth()
```

`google.bool.withDisableAuth` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_auth field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_auth` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnableEmailLinkSignin

```ts
withEnableEmailLinkSignin()
```

`google.bool.withEnableEmailLinkSignin` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_email_link_signin field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_email_link_signin` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.identity_platform_tenant.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
