---
permalink: /access_context_manager_gcp_user_access_binding/
---

# access_context_manager_gcp_user_access_binding

`access_context_manager_gcp_user_access_binding` represents the `google_access_context_manager_gcp_user_access_binding` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAccessLevels()`](#fn-withaccesslevels)
* [`fn withGroupKey()`](#fn-withgroupkey)
* [`fn withOrganizationId()`](#fn-withorganizationid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_gcp_user_access_binding.new` injects a new `google_access_context_manager_gcp_user_access_binding` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_gcp_user_access_binding.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_gcp_user_access_binding` using the reference:

    $._ref.google_access_context_manager_gcp_user_access_binding.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_gcp_user_access_binding.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `access_levels` (`list`): Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: &#34;accessPolicies/9522/accessLevels/device_trusted&#34;
  - `group_key` (`string`): Required. Immutable. Google Group id whose members are subject to this binding&#39;s restrictions. See &#34;id&#34; in the G Suite Directory API&#39;s Groups resource. If a group&#39;s email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: &#34;01d520gv4vjcrht&#34;
  - `organization_id` (`string`): Required. ID of the parent organization.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_gcp_user_access_binding.timeouts.new](#fn-accesscontextmanagergcpuseraccessbindingtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_gcp_user_access_binding.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_gcp_user_access_binding`
Terraform resource.

Unlike [google.access_context_manager_gcp_user_access_binding.new](#fn-accesscontextmanagergcpuseraccessbindingnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `access_levels` (`list`): Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: &#34;accessPolicies/9522/accessLevels/device_trusted&#34;
  - `group_key` (`string`): Required. Immutable. Google Group id whose members are subject to this binding&#39;s restrictions. See &#34;id&#34; in the G Suite Directory API&#39;s Groups resource. If a group&#39;s email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: &#34;01d520gv4vjcrht&#34;
  - `organization_id` (`string`): Required. ID of the parent organization.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_gcp_user_access_binding.timeouts.new](#fn-accesscontextmanagergcpuseraccessbindingtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_gcp_user_access_binding` resource into the root Terraform configuration.


### fn withAccessLevels

```ts
withAccessLevels()
```

`google.list.withAccessLevels` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the access_levels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `access_levels` field.


### fn withGroupKey

```ts
withGroupKey()
```

`google.string.withGroupKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the group_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `group_key` field.


### fn withOrganizationId

```ts
withOrganizationId()
```

`google.string.withOrganizationId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the organization_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organization_id` field.


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


`google.access_context_manager_gcp_user_access_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
