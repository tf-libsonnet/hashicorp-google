---
permalink: /cloud_identity_group_membership/
---

# cloud_identity_group_membership

`cloud_identity_group_membership` represents the `google_cloud_identity_group_membership` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withGroup()`](#fn-withgroup)
* [`fn withPreferredMemberKey()`](#fn-withpreferredmemberkey)
* [`fn withPreferredMemberKeyMixin()`](#fn-withpreferredmemberkeymixin)
* [`fn withRoles()`](#fn-withroles)
* [`fn withRolesMixin()`](#fn-withrolesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj preferred_member_key`](#obj-preferred_member_key)
  * [`fn new()`](#fn-preferred_member_keynew)
* [`obj roles`](#obj-roles)
  * [`fn new()`](#fn-rolesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_identity_group_membership.new` injects a new `google_cloud_identity_group_membership` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_identity_group_membership.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_identity_group_membership` using the reference:

    $._ref.google_cloud_identity_group_membership.some_id.get('id')

This is the same as directly entering `"${ google_cloud_identity_group_membership.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `group` (`string`): The name of the Group to create this membership in.
  - `preferred_member_key` (`list[obj]`): EntityKey of the member. When `null`, the `preferred_member_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group_membership.preferred_member_key.new](#fn-cloud_identity_group_membershippreferred_member_keynew) constructor.
  - `roles` (`list[obj]`): The MembershipRoles that apply to the Membership.
Must not contain duplicate MembershipRoles with the same name. When `null`, the `roles` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group_membership.roles.new](#fn-cloud_identity_group_membershiprolesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group_membership.timeouts.new](#fn-cloud_identity_group_membershiptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_identity_group_membership.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_group_membership`
Terraform resource.

Unlike [google.cloud_identity_group_membership.new](#fn-cloud_identity_group_membershipnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `group` (`string`): The name of the Group to create this membership in.
  - `preferred_member_key` (`list[obj]`): EntityKey of the member. When `null`, the `preferred_member_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group_membership.preferred_member_key.new](#fn-cloud_identity_group_membershippreferred_member_keynew) constructor.
  - `roles` (`list[obj]`): The MembershipRoles that apply to the Membership.
Must not contain duplicate MembershipRoles with the same name. When `null`, the `roles` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group_membership.roles.new](#fn-cloud_identity_group_membershiprolesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group_membership.timeouts.new](#fn-cloud_identity_group_membershiptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_identity_group_membership` resource into the root Terraform configuration.


### fn withGroup

```ts
withGroup()
```

`google.string.withGroup` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `group` field.


### fn withPreferredMemberKey

```ts
withPreferredMemberKey()
```

`google.list[obj].withPreferredMemberKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the preferred_member_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPreferredMemberKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `preferred_member_key` field.


### fn withPreferredMemberKeyMixin

```ts
withPreferredMemberKeyMixin()
```

`google.list[obj].withPreferredMemberKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the preferred_member_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPreferredMemberKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `preferred_member_key` field.


### fn withRoles

```ts
withRoles()
```

`google.list[obj].withRoles` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the roles field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRolesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `roles` field.


### fn withRolesMixin

```ts
withRolesMixin()
```

`google.list[obj].withRolesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the roles field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRoles](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `roles` field.


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


## obj preferred_member_key



### fn preferred_member_key.new

```ts
new()
```


`google.cloud_identity_group_membership.preferred_member_key.new` constructs a new object with attributes and blocks configured for the `preferred_member_key`
Terraform sub block.



**Args**:
  - `namespace` (`string`): The namespace in which the entity exists.

If not specified, the EntityKey represents a Google-managed entity
such as a Google user or a Google Group.

If specified, the EntityKey represents an external-identity-mapped group.
The namespace must correspond to an identity source created in Admin Console
and must be in the form of &#39;identitysources/{identity_source_id}&#39;. When `null`, the `namespace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `preferred_member_key` sub block.


## obj roles



### fn roles.new

```ts
new()
```


`google.cloud_identity_group_membership.roles.new` constructs a new object with attributes and blocks configured for the `roles`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER. Possible values: [&#34;OWNER&#34;, &#34;MANAGER&#34;, &#34;MEMBER&#34;]

**Returns**:
  - An attribute object that represents the `roles` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_identity_group_membership.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
