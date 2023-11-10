---
permalink: /identity_platform_config/
---

# identity_platform_config

`identity_platform_config` represents the `google_identity_platform_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthorizedDomains()`](#fn-withauthorizeddomains)
* [`fn withAutodeleteAnonymousUsers()`](#fn-withautodeleteanonymoususers)
* [`fn withBlockingFunctions()`](#fn-withblockingfunctions)
* [`fn withBlockingFunctionsMixin()`](#fn-withblockingfunctionsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withQuota()`](#fn-withquota)
* [`fn withQuotaMixin()`](#fn-withquotamixin)
* [`fn withSignIn()`](#fn-withsignin)
* [`fn withSignInMixin()`](#fn-withsigninmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj blocking_functions`](#obj-blocking_functions)
  * [`fn new()`](#fn-blocking_functionsnew)
  * [`obj blocking_functions.forward_inbound_credentials`](#obj-blocking_functionsforward_inbound_credentials)
    * [`fn new()`](#fn-blocking_functionsforward_inbound_credentialsnew)
  * [`obj blocking_functions.triggers`](#obj-blocking_functionstriggers)
    * [`fn new()`](#fn-blocking_functionstriggersnew)
* [`obj quota`](#obj-quota)
  * [`fn new()`](#fn-quotanew)
  * [`obj quota.sign_up_quota_config`](#obj-quotasign_up_quota_config)
    * [`fn new()`](#fn-quotasign_up_quota_confignew)
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


`google.identity_platform_config.new` injects a new `google_identity_platform_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.identity_platform_config.new('some_id')

You can get the reference to the `id` field of the created `google.identity_platform_config` using the reference:

    $._ref.google_identity_platform_config.some_id.get('id')

This is the same as directly entering `"${ google_identity_platform_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `authorized_domains` (`list`): List of domains authorized for OAuth redirects. When `null`, the `authorized_domains` field will be omitted from the resulting object.
  - `autodelete_anonymous_users` (`bool`): Whether anonymous users will be auto-deleted after a period of 30 days When `null`, the `autodelete_anonymous_users` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `blocking_functions` (`list[obj]`): Configuration related to blocking functions. When `null`, the `blocking_functions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.new](#fn-blocking_functionsnew) constructor.
  - `quota` (`list[obj]`): Configuration related to quotas. When `null`, the `quota` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.quota.new](#fn-quotanew) constructor.
  - `sign_in` (`list[obj]`): Configuration related to local sign in methods. When `null`, the `sign_in` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.sign_in.new](#fn-sign_innew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.identity_platform_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_config`
Terraform resource.

Unlike [google.identity_platform_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `authorized_domains` (`list`): List of domains authorized for OAuth redirects. When `null`, the `authorized_domains` field will be omitted from the resulting object.
  - `autodelete_anonymous_users` (`bool`): Whether anonymous users will be auto-deleted after a period of 30 days When `null`, the `autodelete_anonymous_users` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `blocking_functions` (`list[obj]`): Configuration related to blocking functions. When `null`, the `blocking_functions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.new](#fn-blocking_functionsnew) constructor.
  - `quota` (`list[obj]`): Configuration related to quotas. When `null`, the `quota` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.quota.new](#fn-quotanew) constructor.
  - `sign_in` (`list[obj]`): Configuration related to local sign in methods. When `null`, the `sign_in` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.sign_in.new](#fn-sign_innew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_config` resource into the root Terraform configuration.


### fn withAuthorizedDomains

```ts
withAuthorizedDomains()
```

`google.list.withAuthorizedDomains` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the authorized_domains field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `authorized_domains` field.


### fn withAutodeleteAnonymousUsers

```ts
withAutodeleteAnonymousUsers()
```

`google.bool.withAutodeleteAnonymousUsers` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the autodelete_anonymous_users field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `autodelete_anonymous_users` field.


### fn withBlockingFunctions

```ts
withBlockingFunctions()
```

`google.list[obj].withBlockingFunctions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the blocking_functions field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBlockingFunctionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `blocking_functions` field.


### fn withBlockingFunctionsMixin

```ts
withBlockingFunctionsMixin()
```

`google.list[obj].withBlockingFunctionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the blocking_functions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBlockingFunctions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `blocking_functions` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withQuota

```ts
withQuota()
```

`google.list[obj].withQuota` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the quota field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withQuotaMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `quota` field.


### fn withQuotaMixin

```ts
withQuotaMixin()
```

`google.list[obj].withQuotaMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the quota field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withQuota](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `quota` field.


### fn withSignIn

```ts
withSignIn()
```

`google.list[obj].withSignIn` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sign_in field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSignInMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sign_in` field.


### fn withSignInMixin

```ts
withSignInMixin()
```

`google.list[obj].withSignInMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sign_in field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSignIn](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sign_in` field.


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


## obj blocking_functions



### fn blocking_functions.new

```ts
new()
```


`google.identity_platform_config.blocking_functions.new` constructs a new object with attributes and blocks configured for the `blocking_functions`
Terraform sub block.



**Args**:
  - `forward_inbound_credentials` (`list[obj]`): The user credentials to include in the JWT payload that is sent to the registered Blocking Functions. When `null`, the `forward_inbound_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.forward_inbound_credentials.new](#fn-blocking_functionsforward_inbound_credentialsnew) constructor.
  - `triggers` (`list[obj]`): Map of Trigger to event type. Key should be one of the supported event types: &#34;beforeCreate&#34;, &#34;beforeSignIn&#34;. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.triggers.new](#fn-blocking_functionstriggersnew) constructor.

**Returns**:
  - An attribute object that represents the `blocking_functions` sub block.


## obj blocking_functions.forward_inbound_credentials



### fn blocking_functions.forward_inbound_credentials.new

```ts
new()
```


`google.identity_platform_config.blocking_functions.forward_inbound_credentials.new` constructs a new object with attributes and blocks configured for the `forward_inbound_credentials`
Terraform sub block.



**Args**:
  - `access_token` (`bool`): Whether to pass the user&#39;s OAuth identity provider&#39;s access token. When `null`, the `access_token` field will be omitted from the resulting object.
  - `id_token` (`bool`): Whether to pass the user&#39;s OIDC identity provider&#39;s ID token. When `null`, the `id_token` field will be omitted from the resulting object.
  - `refresh_token` (`bool`): Whether to pass the user&#39;s OAuth identity provider&#39;s refresh token. When `null`, the `refresh_token` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `forward_inbound_credentials` sub block.


## obj blocking_functions.triggers



### fn blocking_functions.triggers.new

```ts
new()
```


`google.identity_platform_config.blocking_functions.triggers.new` constructs a new object with attributes and blocks configured for the `triggers`
Terraform sub block.



**Args**:
  - `event_type` (`string`): Set the `event_type` field on the resulting object.
  - `function_uri` (`string`): HTTP URI trigger for the Cloud Function.

**Returns**:
  - An attribute object that represents the `triggers` sub block.


## obj quota



### fn quota.new

```ts
new()
```


`google.identity_platform_config.quota.new` constructs a new object with attributes and blocks configured for the `quota`
Terraform sub block.



**Args**:
  - `sign_up_quota_config` (`list[obj]`): Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. When `null`, the `sign_up_quota_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.quota.sign_up_quota_config.new](#fn-quotasign_up_quota_confignew) constructor.

**Returns**:
  - An attribute object that represents the `quota` sub block.


## obj quota.sign_up_quota_config



### fn quota.sign_up_quota_config.new

```ts
new()
```


`google.identity_platform_config.quota.sign_up_quota_config.new` constructs a new object with attributes and blocks configured for the `sign_up_quota_config`
Terraform sub block.



**Args**:
  - `quota` (`number`): A sign up APIs quota that customers can override temporarily. When `null`, the `quota` field will be omitted from the resulting object.
  - `quota_duration` (`string`): How long this quota will be active for. It is measurred in seconds, e.g., Example: &#34;9.615s&#34;. When `null`, the `quota_duration` field will be omitted from the resulting object.
  - `start_time` (`string`): When this quota will take affect. When `null`, the `start_time` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sign_up_quota_config` sub block.


## obj sign_in



### fn sign_in.new

```ts
new()
```


`google.identity_platform_config.sign_in.new` constructs a new object with attributes and blocks configured for the `sign_in`
Terraform sub block.



**Args**:
  - `allow_duplicate_emails` (`bool`): Whether to allow more than one account to have the same email. When `null`, the `allow_duplicate_emails` field will be omitted from the resulting object.
  - `anonymous` (`list[obj]`): Configuration options related to authenticating an anonymous user. When `null`, the `anonymous` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.sign_in.anonymous.new](#fn-sign_inanonymousnew) constructor.
  - `email` (`list[obj]`): Configuration options related to authenticating a user by their email address. When `null`, the `email` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.sign_in.email.new](#fn-sign_inemailnew) constructor.
  - `phone_number` (`list[obj]`): Configuration options related to authenticated a user by their phone number. When `null`, the `phone_number` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.sign_in.phone_number.new](#fn-sign_inphone_numbernew) constructor.

**Returns**:
  - An attribute object that represents the `sign_in` sub block.


## obj sign_in.anonymous



### fn sign_in.anonymous.new

```ts
new()
```


`google.identity_platform_config.sign_in.anonymous.new` constructs a new object with attributes and blocks configured for the `anonymous`
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


`google.identity_platform_config.sign_in.email.new` constructs a new object with attributes and blocks configured for the `email`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether email auth is enabled for the project or not.
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


`google.identity_platform_config.sign_in.phone_number.new` constructs a new object with attributes and blocks configured for the `phone_number`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether phone number auth is enabled for the project or not.
  - `test_phone_numbers` (`obj`): A map of &lt;test phone number, fake code&gt; that can be used for phone auth testing. When `null`, the `test_phone_numbers` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `phone_number` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.identity_platform_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
