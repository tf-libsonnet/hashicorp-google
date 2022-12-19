---
permalink: /compute_http_health_check/
---

# compute_http_health_check

`compute_http_health_check` represents the `google_compute_http_health_check` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCheckIntervalSec()`](#fn-withcheckintervalsec)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withHealthyThreshold()`](#fn-withhealthythreshold)
* [`fn withHost()`](#fn-withhost)
* [`fn withName()`](#fn-withname)
* [`fn withPort()`](#fn-withport)
* [`fn withProject()`](#fn-withproject)
* [`fn withRequestPath()`](#fn-withrequestpath)
* [`fn withTimeoutSec()`](#fn-withtimeoutsec)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUnhealthyThreshold()`](#fn-withunhealthythreshold)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_http_health_check.new` injects a new `google_compute_http_health_check` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_http_health_check.new('some_id')

You can get the reference to the `id` field of the created `google.compute_http_health_check` using the reference:

    $._ref.google_compute_http_health_check.some_id.get('id')

This is the same as directly entering `"${ google_compute_http_health_check.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `check_interval_sec` (`number`): How often (in seconds) to send a health check. The default value is 5
seconds. When `null`, the `check_interval_sec` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `healthy_threshold` (`number`): A so-far unhealthy instance will be marked healthy after this many
consecutive successes. The default value is 2. When `null`, the `healthy_threshold` field will be omitted from the resulting object.
  - `host` (`string`): The value of the host header in the HTTP health check request. If
left empty (default value), the public IP on behalf of which this
health check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `port` (`number`): The TCP port number for the HTTP health check request.
The default value is 80. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `request_path` (`string`): The request path of the HTTP health check request.
The default value is /. When `null`, the `request_path` field will be omitted from the resulting object.
  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.
  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_http_health_check.timeouts.new](#fn-compute_http_health_checktimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_http_health_check.newAttrs` constructs a new object with attributes and blocks configured for the `compute_http_health_check`
Terraform resource.

Unlike [google.compute_http_health_check.new](#fn-compute_http_health_checknew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `check_interval_sec` (`number`): How often (in seconds) to send a health check. The default value is 5
seconds. When `null`, the `check_interval_sec` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `healthy_threshold` (`number`): A so-far unhealthy instance will be marked healthy after this many
consecutive successes. The default value is 2. When `null`, the `healthy_threshold` field will be omitted from the resulting object.
  - `host` (`string`): The value of the host header in the HTTP health check request. If
left empty (default value), the public IP on behalf of which this
health check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `port` (`number`): The TCP port number for the HTTP health check request.
The default value is 80. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `request_path` (`string`): The request path of the HTTP health check request.
The default value is /. When `null`, the `request_path` field will be omitted from the resulting object.
  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.
  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_http_health_check.timeouts.new](#fn-compute_http_health_checktimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_http_health_check` resource into the root Terraform configuration.


### fn withCheckIntervalSec

```ts
withCheckIntervalSec()
```

`google.number.withCheckIntervalSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the check_interval_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `check_interval_sec` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withHealthyThreshold

```ts
withHealthyThreshold()
```

`google.number.withHealthyThreshold` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the healthy_threshold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `healthy_threshold` field.


### fn withHost

```ts
withHost()
```

`google.string.withHost` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the host field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `host` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPort

```ts
withPort()
```

`google.number.withPort` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `port` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRequestPath

```ts
withRequestPath()
```

`google.string.withRequestPath` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the request_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `request_path` field.


### fn withTimeoutSec

```ts
withTimeoutSec()
```

`google.number.withTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `timeout_sec` field.


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


### fn withUnhealthyThreshold

```ts
withUnhealthyThreshold()
```

`google.number.withUnhealthyThreshold` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the unhealthy_threshold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `unhealthy_threshold` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_http_health_check.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
