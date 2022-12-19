---
permalink: /cloud_identity_group/
---

# cloud_identity_group

`cloud_identity_group` represents the `google_cloud_identity_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withGroupKey()`](#fn-withgroupkey)
* [`fn withGroupKeyMixin()`](#fn-withgroupkeymixin)
* [`fn withInitialGroupConfig()`](#fn-withinitialgroupconfig)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj group_key`](#obj-group_key)
  * [`fn new()`](#fn-group_keynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_identity_group.new` injects a new `google_cloud_identity_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_identity_group.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_identity_group` using the reference:

    $._ref.google_cloud_identity_group.some_id.get('id')

This is the same as directly entering `"${ google_cloud_identity_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An extended description to help users determine the purpose of a Group.
Must not be longer than 4,096 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Group. When `null`, the `display_name` field will be omitted from the resulting object.
  - `initial_group_config` (`string`): The initial configuration options for creating a Group.

See the
[API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
for possible values. Default value: &#34;EMPTY&#34; Possible values: [&#34;INITIAL_GROUP_CONFIG_UNSPECIFIED&#34;, &#34;WITH_INITIAL_OWNER&#34;, &#34;EMPTY&#34;] When `null`, the `initial_group_config` field will be omitted from the resulting object.
  - `labels` (`obj`): One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.

Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.

Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.

Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.

Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  - `parent` (`string`): The resource name of the entity under which this Group resides in the
Cloud Identity resource hierarchy.

Must be of the form identitysources/{identity_source_id} for external-identity-mapped
groups or customers/{customer_id} for Google Groups.
  - `group_key` (`list[obj]`): EntityKey of the Group. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.group_key.new](#fn-cloudidentitygroupgroupkeynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.timeouts.new](#fn-cloudidentitygrouptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_identity_group.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_group`
Terraform resource.

Unlike [google.cloud_identity_group.new](#fn-cloudidentitygroupnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An extended description to help users determine the purpose of a Group.
Must not be longer than 4,096 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Group. When `null`, the `display_name` field will be omitted from the resulting object.
  - `initial_group_config` (`string`): The initial configuration options for creating a Group.

See the
[API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
for possible values. Default value: &#34;EMPTY&#34; Possible values: [&#34;INITIAL_GROUP_CONFIG_UNSPECIFIED&#34;, &#34;WITH_INITIAL_OWNER&#34;, &#34;EMPTY&#34;] When `null`, the `initial_group_config` field will be omitted from the resulting object.
  - `labels` (`obj`): One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.

Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.

Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.

Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.

Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  - `parent` (`string`): The resource name of the entity under which this Group resides in the
Cloud Identity resource hierarchy.

Must be of the form identitysources/{identity_source_id} for external-identity-mapped
groups or customers/{customer_id} for Google Groups.
  - `group_key` (`list[obj]`): EntityKey of the Group. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.group_key.new](#fn-cloudidentitygroupgroupkeynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.timeouts.new](#fn-cloudidentitygrouptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_identity_group` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.cloud_identity_group.withDescription` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.cloud_identity_group.withDisplayName` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withGroupKey

```ts
withGroupKey()
```

`google.cloud_identity_group.withGroupKey` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the group_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `group_key` field.


### fn withGroupKeyMixin

```ts
withGroupKeyMixin()
```

`google.cloud_identity_group.withGroupKeyMixin` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the group_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.cloud_identity_group.withGroupKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `group_key` field.


### fn withInitialGroupConfig

```ts
withInitialGroupConfig()
```

`google.cloud_identity_group.withInitialGroupConfig` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the initial_group_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `initial_group_config` field.


### fn withLabels

```ts
withLabels()
```

`google.cloud_identity_group.withLabels` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withParent

```ts
withParent()
```

`google.cloud_identity_group.withParent` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `parent` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.cloud_identity_group.withTimeouts` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.cloud_identity_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `cloud_identity_group`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.cloud_identity_group.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj group_key



### fn group_key.new

```ts
new()
```


`google.cloud_identity_group.group_key.new` constructs a new object with attributes and blocks configured for the `group_key`
Terraform sub block.



**Args**:
  - `namespace` (`string`): The namespace in which the entity exists.

If not specified, the EntityKey represents a Google-managed entity
such as a Google user or a Google Group.

If specified, the EntityKey represents an external-identity-mapped group.
The namespace must correspond to an identity source created in Admin Console
and must be in the form of &#39;identitysources/{identity_source_id}&#39;. When `null`, the `namespace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `group_key` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_identity_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
