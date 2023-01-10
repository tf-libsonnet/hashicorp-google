---
permalink: /iam_workforce_pool/
---

# iam_workforce_pool

`iam_workforce_pool` represents the `google_iam_workforce_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withParent()`](#fn-withparent)
* [`fn withSessionDuration()`](#fn-withsessionduration)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkforcePoolId()`](#fn-withworkforcepoolid)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.iam_workforce_pool.new` injects a new `google_iam_workforce_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.iam_workforce_pool.new('some_id')

You can get the reference to the `id` field of the created `google.iam_workforce_pool` using the reference:

    $._ref.google_iam_workforce_pool.some_id.get('id')

This is the same as directly entering `"${ google_iam_workforce_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A user-specified description of the pool. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource.
  - `parent` (`string`): Immutable. The resource name of the parent. Format: &#39;organizations/{org-id}&#39;.
  - `session_duration` (`string`): Duration that the Google Cloud access tokens, console sign-in sessions,
and &#39;gcloud&#39; sign-in sessions from this pool are valid.  
Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
If &#39;sessionDuration&#39; is not configured, minted credentials have a default duration of one hour (3600s).
A duration in seconds with up to nine fractional digits, ending with &#39;&#39;s&#39;&#39;. Example: &#34;&#39;3.5s&#39;&#34;. When `null`, the `session_duration` field will be omitted from the resulting object.
  - `workforce_pool_id` (`string`): The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
The prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.iam_workforce_pool.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workforce_pool`
Terraform resource.

Unlike [google.iam_workforce_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A user-specified description of the pool. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource.
  - `parent` (`string`): Immutable. The resource name of the parent. Format: &#39;organizations/{org-id}&#39;.
  - `session_duration` (`string`): Duration that the Google Cloud access tokens, console sign-in sessions,
and &#39;gcloud&#39; sign-in sessions from this pool are valid.  
Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
If &#39;sessionDuration&#39; is not configured, minted credentials have a default duration of one hour (3600s).
A duration in seconds with up to nine fractional digits, ending with &#39;&#39;s&#39;&#39;. Example: &#34;&#39;3.5s&#39;&#34;. When `null`, the `session_duration` field will be omitted from the resulting object.
  - `workforce_pool_id` (`string`): The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
The prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workforce_pool` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withSessionDuration

```ts
withSessionDuration()
```

`google.string.withSessionDuration` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the session_duration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `session_duration` field.


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


### fn withWorkforcePoolId

```ts
withWorkforcePoolId()
```

`google.string.withWorkforcePoolId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the workforce_pool_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `workforce_pool_id` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.iam_workforce_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
