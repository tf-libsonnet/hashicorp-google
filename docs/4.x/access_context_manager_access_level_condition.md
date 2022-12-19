---
permalink: /access_context_manager_access_level_condition/
---

# access_context_manager_access_level_condition

`access_context_manager_access_level_condition` represents the `google_access_context_manager_access_level_condition` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAccessLevel()`](#fn-withaccesslevel)
* [`fn withDevicePolicy()`](#fn-withdevicepolicy)
* [`fn withDevicePolicyMixin()`](#fn-withdevicepolicymixin)
* [`fn withIpSubnetworks()`](#fn-withipsubnetworks)
* [`fn withMembers()`](#fn-withmembers)
* [`fn withNegate()`](#fn-withnegate)
* [`fn withRegions()`](#fn-withregions)
* [`fn withRequiredAccessLevels()`](#fn-withrequiredaccesslevels)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj device_policy`](#obj-device_policy)
  * [`fn new()`](#fn-device_policynew)
  * [`obj device_policy.os_constraints`](#obj-device_policyos_constraints)
    * [`fn new()`](#fn-device_policyos_constraintsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_access_level_condition.new` injects a new `google_access_context_manager_access_level_condition` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_access_level_condition.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_access_level_condition` using the reference:

    $._ref.google_access_context_manager_access_level_condition.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_access_level_condition.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `access_level` (`string`): The name of the Access Level to add this condition to.
  - `ip_subnetworks` (`list`): A list of CIDR block IP subnetwork specification. May be IPv4
or IPv6.
Note that for a CIDR IP address block, the specified IP address
portion must be properly truncated (i.e. all the host bits must
be zero) or the input is considered malformed. For example,
&#34;192.0.2.0/24&#34; is accepted but &#34;192.0.2.1/24&#34; is not. Similarly,
for IPv6, &#34;2001:db8::/32&#34; is accepted whereas &#34;2001:db8::1/32&#34;
is not. The originating IP of a request must be in one of the
listed subnets in order for this Condition to be true.
If empty, all IP addresses are allowed. When `null`, the `ip_subnetworks` field will be omitted from the resulting object.
  - `members` (`list`): An allowed list of members (users, service accounts).
Using groups is not supported yet.

The signed-in user originating the request must be a part of one
of the provided members. If not specified, a request may come
from any user (logged in/not logged in, not present in any
groups, etc.).
Formats: &#39;user:{emailid}&#39;, &#39;serviceAccount:{emailid}&#39; When `null`, the `members` field will be omitted from the resulting object.
  - `negate` (`bool`): Whether to negate the Condition. If true, the Condition becomes
a NAND over its non-empty fields, each field must be false for
the Condition overall to be satisfied. Defaults to false. When `null`, the `negate` field will be omitted from the resulting object.
  - `regions` (`list`): The request must originate from one of the provided
countries/regions.
Format: A valid ISO 3166-1 alpha-2 code. When `null`, the `regions` field will be omitted from the resulting object.
  - `required_access_levels` (`list`): A list of other access levels defined in the same Policy,
referenced by resource name. Referencing an AccessLevel which
does not exist is an error. All access levels listed must be
granted for the Condition to be true.
Format: accessPolicies/{policy_id}/accessLevels/{short_name} When `null`, the `required_access_levels` field will be omitted from the resulting object.
  - `device_policy` (`list[obj]`): Device specific restrictions, all restrictions must hold for
the Condition to be true. If not specified, all devices are
allowed. When `null`, the `device_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.device_policy.new](#fn-device_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_access_level_condition.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_access_level_condition`
Terraform resource.

Unlike [google.access_context_manager_access_level_condition.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `access_level` (`string`): The name of the Access Level to add this condition to.
  - `ip_subnetworks` (`list`): A list of CIDR block IP subnetwork specification. May be IPv4
or IPv6.
Note that for a CIDR IP address block, the specified IP address
portion must be properly truncated (i.e. all the host bits must
be zero) or the input is considered malformed. For example,
&#34;192.0.2.0/24&#34; is accepted but &#34;192.0.2.1/24&#34; is not. Similarly,
for IPv6, &#34;2001:db8::/32&#34; is accepted whereas &#34;2001:db8::1/32&#34;
is not. The originating IP of a request must be in one of the
listed subnets in order for this Condition to be true.
If empty, all IP addresses are allowed. When `null`, the `ip_subnetworks` field will be omitted from the resulting object.
  - `members` (`list`): An allowed list of members (users, service accounts).
Using groups is not supported yet.

The signed-in user originating the request must be a part of one
of the provided members. If not specified, a request may come
from any user (logged in/not logged in, not present in any
groups, etc.).
Formats: &#39;user:{emailid}&#39;, &#39;serviceAccount:{emailid}&#39; When `null`, the `members` field will be omitted from the resulting object.
  - `negate` (`bool`): Whether to negate the Condition. If true, the Condition becomes
a NAND over its non-empty fields, each field must be false for
the Condition overall to be satisfied. Defaults to false. When `null`, the `negate` field will be omitted from the resulting object.
  - `regions` (`list`): The request must originate from one of the provided
countries/regions.
Format: A valid ISO 3166-1 alpha-2 code. When `null`, the `regions` field will be omitted from the resulting object.
  - `required_access_levels` (`list`): A list of other access levels defined in the same Policy,
referenced by resource name. Referencing an AccessLevel which
does not exist is an error. All access levels listed must be
granted for the Condition to be true.
Format: accessPolicies/{policy_id}/accessLevels/{short_name} When `null`, the `required_access_levels` field will be omitted from the resulting object.
  - `device_policy` (`list[obj]`): Device specific restrictions, all restrictions must hold for
the Condition to be true. If not specified, all devices are
allowed. When `null`, the `device_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.device_policy.new](#fn-device_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_access_level_condition` resource into the root Terraform configuration.


### fn withAccessLevel

```ts
withAccessLevel()
```

`google.string.withAccessLevel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the access_level field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `access_level` field.


### fn withDevicePolicy

```ts
withDevicePolicy()
```

`google.list[obj].withDevicePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the device_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDevicePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `device_policy` field.


### fn withDevicePolicyMixin

```ts
withDevicePolicyMixin()
```

`google.list[obj].withDevicePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the device_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDevicePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `device_policy` field.


### fn withIpSubnetworks

```ts
withIpSubnetworks()
```

`google.list.withIpSubnetworks` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ip_subnetworks field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ip_subnetworks` field.


### fn withMembers

```ts
withMembers()
```

`google.list.withMembers` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the members field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `members` field.


### fn withNegate

```ts
withNegate()
```

`google.bool.withNegate` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the negate field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `negate` field.


### fn withRegions

```ts
withRegions()
```

`google.list.withRegions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the regions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `regions` field.


### fn withRequiredAccessLevels

```ts
withRequiredAccessLevels()
```

`google.list.withRequiredAccessLevels` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the required_access_levels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `required_access_levels` field.


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


## obj device_policy



### fn device_policy.new

```ts
new()
```


`google.access_context_manager_access_level_condition.device_policy.new` constructs a new object with attributes and blocks configured for the `device_policy`
Terraform sub block.



**Args**:
  - `allowed_device_management_levels` (`list`): A list of allowed device management levels.
An empty list allows all management levels. Possible values: [&#34;MANAGEMENT_UNSPECIFIED&#34;, &#34;NONE&#34;, &#34;BASIC&#34;, &#34;COMPLETE&#34;] When `null`, the `allowed_device_management_levels` field will be omitted from the resulting object.
  - `allowed_encryption_statuses` (`list`): A list of allowed encryptions statuses.
An empty list allows all statuses. Possible values: [&#34;ENCRYPTION_UNSPECIFIED&#34;, &#34;ENCRYPTION_UNSUPPORTED&#34;, &#34;UNENCRYPTED&#34;, &#34;ENCRYPTED&#34;] When `null`, the `allowed_encryption_statuses` field will be omitted from the resulting object.
  - `require_admin_approval` (`bool`): Whether the device needs to be approved by the customer admin. When `null`, the `require_admin_approval` field will be omitted from the resulting object.
  - `require_corp_owned` (`bool`): Whether the device needs to be corp owned. When `null`, the `require_corp_owned` field will be omitted from the resulting object.
  - `require_screen_lock` (`bool`): Whether or not screenlock is required for the DevicePolicy
to be true. Defaults to false. When `null`, the `require_screen_lock` field will be omitted from the resulting object.
  - `os_constraints` (`list[obj]`): A list of allowed OS versions.
An empty list allows all types and all versions. When `null`, the `os_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.device_policy.os_constraints.new](#fn-device_policyos_constraintsnew) constructor.

**Returns**:
  - An attribute object that represents the `device_policy` sub block.


## obj device_policy.os_constraints



### fn device_policy.os_constraints.new

```ts
new()
```


`google.access_context_manager_access_level_condition.device_policy.os_constraints.new` constructs a new object with attributes and blocks configured for the `os_constraints`
Terraform sub block.



**Args**:
  - `minimum_version` (`string`): The minimum allowed OS version. If not set, any version
of this OS satisfies the constraint.
Format: &#34;major.minor.patch&#34; such as &#34;10.5.301&#34;, &#34;9.2.1&#34;. When `null`, the `minimum_version` field will be omitted from the resulting object.
  - `os_type` (`string`): The operating system type of the device. Possible values: [&#34;OS_UNSPECIFIED&#34;, &#34;DESKTOP_MAC&#34;, &#34;DESKTOP_WINDOWS&#34;, &#34;DESKTOP_LINUX&#34;, &#34;DESKTOP_CHROME_OS&#34;, &#34;ANDROID&#34;, &#34;IOS&#34;]

**Returns**:
  - An attribute object that represents the `os_constraints` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.access_context_manager_access_level_condition.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
