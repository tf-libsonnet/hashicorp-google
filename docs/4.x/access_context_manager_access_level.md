---
permalink: /access_context_manager_access_level/
---

# access_context_manager_access_level

`access_context_manager_access_level` represents the `google_access_context_manager_access_level` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBasic()`](#fn-withbasic)
* [`fn withBasicMixin()`](#fn-withbasicmixin)
* [`fn withCustom()`](#fn-withcustom)
* [`fn withCustomMixin()`](#fn-withcustommixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTitle()`](#fn-withtitle)
* [`obj basic`](#obj-basic)
  * [`fn new()`](#fn-basicnew)
  * [`obj basic.conditions`](#obj-basicconditions)
    * [`fn new()`](#fn-basicconditionsnew)
    * [`obj basic.conditions.device_policy`](#obj-basicconditionsdevice_policy)
      * [`fn new()`](#fn-basicconditionsdevice_policynew)
      * [`obj basic.conditions.device_policy.os_constraints`](#obj-basicconditionsdevice_policyos_constraints)
        * [`fn new()`](#fn-basicconditionsdevice_policyos_constraintsnew)
    * [`obj basic.conditions.vpc_network_sources`](#obj-basicconditionsvpc_network_sources)
      * [`fn new()`](#fn-basicconditionsvpc_network_sourcesnew)
      * [`obj basic.conditions.vpc_network_sources.vpc_subnetwork`](#obj-basicconditionsvpc_network_sourcesvpc_subnetwork)
        * [`fn new()`](#fn-basicconditionsvpc_network_sourcesvpc_subnetworknew)
* [`obj custom`](#obj-custom)
  * [`fn new()`](#fn-customnew)
  * [`obj custom.expr`](#obj-customexpr)
    * [`fn new()`](#fn-customexprnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_access_level.new` injects a new `google_access_context_manager_access_level` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_access_level.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_access_level` using the reference:

    $._ref.google_access_context_manager_access_level.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_access_level.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the AccessLevel and its use. Does not affect behavior. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Resource name for the Access Level. The short_name component must begin
with a letter and only include alphanumeric and &#39;_&#39;.
Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  - `parent` (`string`): The AccessPolicy this AccessLevel lives in.
Format: accessPolicies/{policy_id}
  - `title` (`string`): Human readable title. Must be unique within the Policy.
  - `basic` (`list[obj]`): A set of predefined conditions for the access level and a combining function. When `null`, the `basic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.new](#fn-basicnew) constructor.
  - `custom` (`list[obj]`): Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
See CEL spec at: https://github.com/google/cel-spec. When `null`, the `custom` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.custom.new](#fn-customnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_access_level.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_access_level`
Terraform resource.

Unlike [google.access_context_manager_access_level.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the AccessLevel and its use. Does not affect behavior. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Resource name for the Access Level. The short_name component must begin
with a letter and only include alphanumeric and &#39;_&#39;.
Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  - `parent` (`string`): The AccessPolicy this AccessLevel lives in.
Format: accessPolicies/{policy_id}
  - `title` (`string`): Human readable title. Must be unique within the Policy.
  - `basic` (`list[obj]`): A set of predefined conditions for the access level and a combining function. When `null`, the `basic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.new](#fn-basicnew) constructor.
  - `custom` (`list[obj]`): Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
See CEL spec at: https://github.com/google/cel-spec. When `null`, the `custom` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.custom.new](#fn-customnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_access_level` resource into the root Terraform configuration.


### fn withBasic

```ts
withBasic()
```

`google.list[obj].withBasic` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBasicMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic` field.


### fn withBasicMixin

```ts
withBasicMixin()
```

`google.list[obj].withBasicMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBasic](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic` field.


### fn withCustom

```ts
withCustom()
```

`google.list[obj].withCustom` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the custom field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCustomMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `custom` field.


### fn withCustomMixin

```ts
withCustomMixin()
```

`google.list[obj].withCustomMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the custom field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCustom](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `custom` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withTitle

```ts
withTitle()
```

`google.string.withTitle` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the title field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `title` field.


## obj basic



### fn basic.new

```ts
new()
```


`google.access_context_manager_access_level.basic.new` constructs a new object with attributes and blocks configured for the `basic`
Terraform sub block.



**Args**:
  - `combining_function` (`string`): How the conditions list should be combined to determine if a request
is granted this AccessLevel. If AND is used, each Condition in
conditions must be satisfied for the AccessLevel to be applied. If
OR is used, at least one Condition in conditions must be satisfied
for the AccessLevel to be applied. Default value: &#34;AND&#34; Possible values: [&#34;AND&#34;, &#34;OR&#34;] When `null`, the `combining_function` field will be omitted from the resulting object.
  - `conditions` (`list[obj]`): A set of requirements for the AccessLevel to be granted. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.conditions.new](#fn-basicconditionsnew) constructor.

**Returns**:
  - An attribute object that represents the `basic` sub block.


## obj basic.conditions



### fn basic.conditions.new

```ts
new()
```


`google.access_context_manager_access_level.basic.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`
Terraform sub block.



**Args**:
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
allowed. When `null`, the `device_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.conditions.device_policy.new](#fn-basicbasicdevice_policynew) constructor.
  - `vpc_network_sources` (`list[obj]`): The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with &#39;ip_subnetworks&#39;. When `null`, the `vpc_network_sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.conditions.vpc_network_sources.new](#fn-basicbasicvpc_network_sourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `conditions` sub block.


## obj basic.conditions.device_policy



### fn basic.conditions.device_policy.new

```ts
new()
```


`google.access_context_manager_access_level.basic.conditions.device_policy.new` constructs a new object with attributes and blocks configured for the `device_policy`
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
An empty list allows all types and all versions. When `null`, the `os_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.conditions.device_policy.os_constraints.new](#fn-basicbasicconditionsos_constraintsnew) constructor.

**Returns**:
  - An attribute object that represents the `device_policy` sub block.


## obj basic.conditions.device_policy.os_constraints



### fn basic.conditions.device_policy.os_constraints.new

```ts
new()
```


`google.access_context_manager_access_level.basic.conditions.device_policy.os_constraints.new` constructs a new object with attributes and blocks configured for the `os_constraints`
Terraform sub block.



**Args**:
  - `minimum_version` (`string`): The minimum allowed OS version. If not set, any version
of this OS satisfies the constraint.
Format: &#34;major.minor.patch&#34; such as &#34;10.5.301&#34;, &#34;9.2.1&#34;. When `null`, the `minimum_version` field will be omitted from the resulting object.
  - `os_type` (`string`): The operating system type of the device. Possible values: [&#34;OS_UNSPECIFIED&#34;, &#34;DESKTOP_MAC&#34;, &#34;DESKTOP_WINDOWS&#34;, &#34;DESKTOP_LINUX&#34;, &#34;DESKTOP_CHROME_OS&#34;, &#34;ANDROID&#34;, &#34;IOS&#34;]
  - `require_verified_chrome_os` (`bool`): If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access. When `null`, the `require_verified_chrome_os` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `os_constraints` sub block.


## obj basic.conditions.vpc_network_sources



### fn basic.conditions.vpc_network_sources.new

```ts
new()
```


`google.access_context_manager_access_level.basic.conditions.vpc_network_sources.new` constructs a new object with attributes and blocks configured for the `vpc_network_sources`
Terraform sub block.



**Args**:
  - `vpc_subnetwork` (`list[obj]`): Sub networks within a VPC network. When `null`, the `vpc_subnetwork` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.basic.conditions.vpc_network_sources.vpc_subnetwork.new](#fn-basicbasicconditionsvpc_subnetworknew) constructor.

**Returns**:
  - An attribute object that represents the `vpc_network_sources` sub block.


## obj basic.conditions.vpc_network_sources.vpc_subnetwork



### fn basic.conditions.vpc_network_sources.vpc_subnetwork.new

```ts
new()
```


`google.access_context_manager_access_level.basic.conditions.vpc_network_sources.vpc_subnetwork.new` constructs a new object with attributes and blocks configured for the `vpc_subnetwork`
Terraform sub block.



**Args**:
  - `network` (`string`): Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires &#39;compute.network.get&#39; permission to be granted to caller.
  - `vpc_ip_subnetworks` (`list`): CIDR block IP subnetwork specification. Must be IPv4. When `null`, the `vpc_ip_subnetworks` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_subnetwork` sub block.


## obj custom



### fn custom.new

```ts
new()
```


`google.access_context_manager_access_level.custom.new` constructs a new object with attributes and blocks configured for the `custom`
Terraform sub block.



**Args**:
  - `expr` (`list[obj]`): Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
This page details the objects and attributes that are used to the build the CEL expressions for
custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level.custom.expr.new](#fn-customexprnew) constructor.

**Returns**:
  - An attribute object that represents the `custom` sub block.


## obj custom.expr



### fn custom.expr.new

```ts
new()
```


`google.access_context_manager_access_level.custom.expr.new` constructs a new object with attributes and blocks configured for the `expr`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `expr` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.access_context_manager_access_level.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
