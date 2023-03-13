---
permalink: /access_context_manager_authorized_orgs_desc/
---

# access_context_manager_authorized_orgs_desc

`access_context_manager_authorized_orgs_desc` represents the `google_access_context_manager_authorized_orgs_desc` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAssetType()`](#fn-withassettype)
* [`fn withAuthorizationDirection()`](#fn-withauthorizationdirection)
* [`fn withAuthorizationType()`](#fn-withauthorizationtype)
* [`fn withName()`](#fn-withname)
* [`fn withOrgs()`](#fn-withorgs)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_authorized_orgs_desc.new` injects a new `google_access_context_manager_authorized_orgs_desc` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_authorized_orgs_desc.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_authorized_orgs_desc` using the reference:

    $._ref.google_access_context_manager_authorized_orgs_desc.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_authorized_orgs_desc.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `asset_type` (`string`): The type of entities that need to use the authorization relationship during
evaluation, such as a device. Valid values are &#34;ASSET_TYPE_DEVICE&#34; and
&#34;ASSET_TYPE_CREDENTIAL_STRENGTH&#34;. Possible values: [&#34;ASSET_TYPE_DEVICE&#34;, &#34;ASSET_TYPE_CREDENTIAL_STRENGTH&#34;] When `null`, the `asset_type` field will be omitted from the resulting object.
  - `authorization_direction` (`string`): The direction of the authorization relationship between this organization
and the organizations listed in the &#34;orgs&#34; field. The valid values for this
field include the following:

AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
in the organizations listed in the &#39;orgs&#39; field.

AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the &#39;orgs&#39;
field to evaluate the traffic in this organization.

For the authorization relationship to take effect, all of the organizations
must authorize and specify the appropriate relationship direction. For
example, if organization A authorized organization B and C to evaluate its
traffic, by specifying &#34;AUTHORIZATION_DIRECTION_TO&#34; as the authorization
direction, organizations B and C must specify
&#34;AUTHORIZATION_DIRECTION_FROM&#34; as the authorization direction in their
&#34;AuthorizedOrgsDesc&#34; resource. Possible values: [&#34;AUTHORIZATION_DIRECTION_TO&#34;, &#34;AUTHORIZATION_DIRECTION_FROM&#34;] When `null`, the `authorization_direction` field will be omitted from the resulting object.
  - `authorization_type` (`string`): A granular control type for authorization levels. Valid value is &#34;AUTHORIZATION_TYPE_TRUST&#34;. Possible values: [&#34;AUTHORIZATION_TYPE_TRUST&#34;] When `null`, the `authorization_type` field will be omitted from the resulting object.
  - `name` (`string`): Resource name for the &#39;AuthorizedOrgsDesc&#39;. Format:
&#39;accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}&#39;.
The &#39;authorized_orgs_desc&#39; component must begin with a letter, followed by
alphanumeric characters or &#39;_&#39;.
After you create an &#39;AuthorizedOrgsDesc&#39;, you cannot change its &#39;name&#39;.
  - `orgs` (`list`): The list of organization ids in this AuthorizedOrgsDesc.
Format: &#39;organizations/&lt;org_number&gt;&#39;
Example: &#39;organizations/123456&#39; When `null`, the `orgs` field will be omitted from the resulting object.
  - `parent` (`string`): Required. Resource name for the access policy which owns this &#39;AuthorizedOrgsDesc&#39;.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_authorized_orgs_desc.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_authorized_orgs_desc.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_authorized_orgs_desc`
Terraform resource.

Unlike [google.access_context_manager_authorized_orgs_desc.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `asset_type` (`string`): The type of entities that need to use the authorization relationship during
evaluation, such as a device. Valid values are &#34;ASSET_TYPE_DEVICE&#34; and
&#34;ASSET_TYPE_CREDENTIAL_STRENGTH&#34;. Possible values: [&#34;ASSET_TYPE_DEVICE&#34;, &#34;ASSET_TYPE_CREDENTIAL_STRENGTH&#34;] When `null`, the `asset_type` field will be omitted from the resulting object.
  - `authorization_direction` (`string`): The direction of the authorization relationship between this organization
and the organizations listed in the &#34;orgs&#34; field. The valid values for this
field include the following:

AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
in the organizations listed in the &#39;orgs&#39; field.

AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the &#39;orgs&#39;
field to evaluate the traffic in this organization.

For the authorization relationship to take effect, all of the organizations
must authorize and specify the appropriate relationship direction. For
example, if organization A authorized organization B and C to evaluate its
traffic, by specifying &#34;AUTHORIZATION_DIRECTION_TO&#34; as the authorization
direction, organizations B and C must specify
&#34;AUTHORIZATION_DIRECTION_FROM&#34; as the authorization direction in their
&#34;AuthorizedOrgsDesc&#34; resource. Possible values: [&#34;AUTHORIZATION_DIRECTION_TO&#34;, &#34;AUTHORIZATION_DIRECTION_FROM&#34;] When `null`, the `authorization_direction` field will be omitted from the resulting object.
  - `authorization_type` (`string`): A granular control type for authorization levels. Valid value is &#34;AUTHORIZATION_TYPE_TRUST&#34;. Possible values: [&#34;AUTHORIZATION_TYPE_TRUST&#34;] When `null`, the `authorization_type` field will be omitted from the resulting object.
  - `name` (`string`): Resource name for the &#39;AuthorizedOrgsDesc&#39;. Format:
&#39;accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}&#39;.
The &#39;authorized_orgs_desc&#39; component must begin with a letter, followed by
alphanumeric characters or &#39;_&#39;.
After you create an &#39;AuthorizedOrgsDesc&#39;, you cannot change its &#39;name&#39;.
  - `orgs` (`list`): The list of organization ids in this AuthorizedOrgsDesc.
Format: &#39;organizations/&lt;org_number&gt;&#39;
Example: &#39;organizations/123456&#39; When `null`, the `orgs` field will be omitted from the resulting object.
  - `parent` (`string`): Required. Resource name for the access policy which owns this &#39;AuthorizedOrgsDesc&#39;.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_authorized_orgs_desc.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_authorized_orgs_desc` resource into the root Terraform configuration.


### fn withAssetType

```ts
withAssetType()
```

`google.string.withAssetType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the asset_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `asset_type` field.


### fn withAuthorizationDirection

```ts
withAuthorizationDirection()
```

`google.string.withAuthorizationDirection` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorization_direction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorization_direction` field.


### fn withAuthorizationType

```ts
withAuthorizationType()
```

`google.string.withAuthorizationType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorization_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorization_type` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOrgs

```ts
withOrgs()
```

`google.list.withOrgs` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the orgs field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `orgs` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


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


`google.access_context_manager_authorized_orgs_desc.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
