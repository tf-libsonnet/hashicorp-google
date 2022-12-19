---
permalink: /compute_target_instance/
---

# compute_target_instance

`compute_target_instance` represents the `google_compute_target_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withName()`](#fn-withname)
* [`fn withNatPolicy()`](#fn-withnatpolicy)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_target_instance.new` injects a new `google_compute_target_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_target_instance.new('some_id')

You can get the reference to the `id` field of the created `google.compute_target_instance` using the reference:

    $._ref.google_compute_target_instance.some_id.get('id')

This is the same as directly entering `"${ google_compute_target_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `instance` (`string`): The Compute instance VM handling traffic for this target instance.
Accepts the instance self-link, relative path
(e.g. &#39;projects/project/zones/zone/instances/instance&#39;) or name. If
name is given, the zone will default to the given zone or
the provider-default zone and the project will default to the
provider-level project.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `nat_policy` (`string`): NAT option controlling how IPs are NAT&#39;ed to the instance.
Currently only NO_NAT (default value) is supported. Default value: &#34;NO_NAT&#34; Possible values: [&#34;NO_NAT&#34;] When `null`, the `nat_policy` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): URL of the zone where the target instance resides. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_instance.timeouts.new](#fn-computetargetinstancetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_target_instance.newAttrs` constructs a new object with attributes and blocks configured for the `compute_target_instance`
Terraform resource.

Unlike [google.compute_target_instance.new](#fn-computetargetinstancenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `instance` (`string`): The Compute instance VM handling traffic for this target instance.
Accepts the instance self-link, relative path
(e.g. &#39;projects/project/zones/zone/instances/instance&#39;) or name. If
name is given, the zone will default to the given zone or
the provider-default zone and the project will default to the
provider-level project.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `nat_policy` (`string`): NAT option controlling how IPs are NAT&#39;ed to the instance.
Currently only NO_NAT (default value) is supported. Default value: &#34;NO_NAT&#34; Possible values: [&#34;NO_NAT&#34;] When `null`, the `nat_policy` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): URL of the zone where the target instance resides. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_instance.timeouts.new](#fn-computetargetinstancetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_target_instance` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.compute_target_instance.withDescription` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withInstance

```ts
withInstance()
```

`google.compute_target_instance.withInstance` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `instance` field.


### fn withName

```ts
withName()
```

`google.compute_target_instance.withName` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNatPolicy

```ts
withNatPolicy()
```

`google.compute_target_instance.withNatPolicy` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the nat_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `nat_policy` field.


### fn withProject

```ts
withProject()
```

`google.compute_target_instance.withProject` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_target_instance.withTimeouts` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_target_instance.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_target_instance.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withZone

```ts
withZone()
```

`google.compute_target_instance.withZone` constructs a mixin object that can be merged into the `compute_target_instance`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_target_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
