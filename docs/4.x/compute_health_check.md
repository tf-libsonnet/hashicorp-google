---
permalink: /compute_health_check/
---

# compute_health_check

`compute_health_check` represents the `google_compute_health_check` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCheckIntervalSec()`](#fn-withcheckintervalsec)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGrpcHealthCheck()`](#fn-withgrpchealthcheck)
* [`fn withGrpcHealthCheckMixin()`](#fn-withgrpchealthcheckmixin)
* [`fn withHealthyThreshold()`](#fn-withhealthythreshold)
* [`fn withHttp2HealthCheck()`](#fn-withhttp2healthcheck)
* [`fn withHttp2HealthCheckMixin()`](#fn-withhttp2healthcheckmixin)
* [`fn withHttpHealthCheck()`](#fn-withhttphealthcheck)
* [`fn withHttpHealthCheckMixin()`](#fn-withhttphealthcheckmixin)
* [`fn withHttpsHealthCheck()`](#fn-withhttpshealthcheck)
* [`fn withHttpsHealthCheckMixin()`](#fn-withhttpshealthcheckmixin)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSslHealthCheck()`](#fn-withsslhealthcheck)
* [`fn withSslHealthCheckMixin()`](#fn-withsslhealthcheckmixin)
* [`fn withTcpHealthCheck()`](#fn-withtcphealthcheck)
* [`fn withTcpHealthCheckMixin()`](#fn-withtcphealthcheckmixin)
* [`fn withTimeoutSec()`](#fn-withtimeoutsec)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUnhealthyThreshold()`](#fn-withunhealthythreshold)
* [`obj grpc_health_check`](#obj-grpc_health_check)
  * [`fn new()`](#fn-grpc_health_checknew)
* [`obj http2_health_check`](#obj-http2_health_check)
  * [`fn new()`](#fn-http2_health_checknew)
* [`obj http_health_check`](#obj-http_health_check)
  * [`fn new()`](#fn-http_health_checknew)
* [`obj https_health_check`](#obj-https_health_check)
  * [`fn new()`](#fn-https_health_checknew)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj ssl_health_check`](#obj-ssl_health_check)
  * [`fn new()`](#fn-ssl_health_checknew)
* [`obj tcp_health_check`](#obj-tcp_health_check)
  * [`fn new()`](#fn-tcp_health_checknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_health_check.new` injects a new `google_compute_health_check` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_health_check.new('some_id')

You can get the reference to the `id` field of the created `google.compute_health_check` using the reference:

    $._ref.google_compute_health_check.some_id.get('id')

This is the same as directly entering `"${ google_compute_health_check.some_id.id }"` as the value.

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
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.
  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.
  - `grpc_health_check` (`list[obj]`): A nested object resource When `null`, the `grpc_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.grpc_health_check.new](#fn-compute_health_checkgrpc_health_checknew) constructor.
  - `http2_health_check` (`list[obj]`): A nested object resource When `null`, the `http2_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.http2_health_check.new](#fn-compute_health_checkhttp2_health_checknew) constructor.
  - `http_health_check` (`list[obj]`): A nested object resource When `null`, the `http_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.http_health_check.new](#fn-compute_health_checkhttp_health_checknew) constructor.
  - `https_health_check` (`list[obj]`): A nested object resource When `null`, the `https_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.https_health_check.new](#fn-compute_health_checkhttps_health_checknew) constructor.
  - `log_config` (`list[obj]`): Configure logging on this health check. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.log_config.new](#fn-compute_health_checklog_confignew) constructor.
  - `ssl_health_check` (`list[obj]`): A nested object resource When `null`, the `ssl_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.ssl_health_check.new](#fn-compute_health_checkssl_health_checknew) constructor.
  - `tcp_health_check` (`list[obj]`): A nested object resource When `null`, the `tcp_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.tcp_health_check.new](#fn-compute_health_checktcp_health_checknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.timeouts.new](#fn-compute_health_checktimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_health_check.newAttrs` constructs a new object with attributes and blocks configured for the `compute_health_check`
Terraform resource.

Unlike [google.compute_health_check.new](#fn-compute_health_checknew), this function will not inject the `resource`
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
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.
  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.
  - `grpc_health_check` (`list[obj]`): A nested object resource When `null`, the `grpc_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.grpc_health_check.new](#fn-compute_health_checkgrpc_health_checknew) constructor.
  - `http2_health_check` (`list[obj]`): A nested object resource When `null`, the `http2_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.http2_health_check.new](#fn-compute_health_checkhttp2_health_checknew) constructor.
  - `http_health_check` (`list[obj]`): A nested object resource When `null`, the `http_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.http_health_check.new](#fn-compute_health_checkhttp_health_checknew) constructor.
  - `https_health_check` (`list[obj]`): A nested object resource When `null`, the `https_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.https_health_check.new](#fn-compute_health_checkhttps_health_checknew) constructor.
  - `log_config` (`list[obj]`): Configure logging on this health check. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.log_config.new](#fn-compute_health_checklog_confignew) constructor.
  - `ssl_health_check` (`list[obj]`): A nested object resource When `null`, the `ssl_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.ssl_health_check.new](#fn-compute_health_checkssl_health_checknew) constructor.
  - `tcp_health_check` (`list[obj]`): A nested object resource When `null`, the `tcp_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.tcp_health_check.new](#fn-compute_health_checktcp_health_checknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_health_check.timeouts.new](#fn-compute_health_checktimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_health_check` resource into the root Terraform configuration.


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


### fn withGrpcHealthCheck

```ts
withGrpcHealthCheck()
```

`google.list[obj].withGrpcHealthCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the grpc_health_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGrpcHealthCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `grpc_health_check` field.


### fn withGrpcHealthCheckMixin

```ts
withGrpcHealthCheckMixin()
```

`google.list[obj].withGrpcHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the grpc_health_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGrpcHealthCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `grpc_health_check` field.


### fn withHealthyThreshold

```ts
withHealthyThreshold()
```

`google.number.withHealthyThreshold` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the healthy_threshold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `healthy_threshold` field.


### fn withHttp2HealthCheck

```ts
withHttp2HealthCheck()
```

`google.list[obj].withHttp2HealthCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http2_health_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHttp2HealthCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http2_health_check` field.


### fn withHttp2HealthCheckMixin

```ts
withHttp2HealthCheckMixin()
```

`google.list[obj].withHttp2HealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http2_health_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHttp2HealthCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http2_health_check` field.


### fn withHttpHealthCheck

```ts
withHttpHealthCheck()
```

`google.list[obj].withHttpHealthCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http_health_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHttpHealthCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http_health_check` field.


### fn withHttpHealthCheckMixin

```ts
withHttpHealthCheckMixin()
```

`google.list[obj].withHttpHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http_health_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHttpHealthCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http_health_check` field.


### fn withHttpsHealthCheck

```ts
withHttpsHealthCheck()
```

`google.list[obj].withHttpsHealthCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the https_health_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHttpsHealthCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `https_health_check` field.


### fn withHttpsHealthCheckMixin

```ts
withHttpsHealthCheckMixin()
```

`google.list[obj].withHttpsHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the https_health_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHttpsHealthCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `https_health_check` field.


### fn withLogConfig

```ts
withLogConfig()
```

`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the log_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `log_config` field.


### fn withLogConfigMixin

```ts
withLogConfigMixin()
```

`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `log_config` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSslHealthCheck

```ts
withSslHealthCheck()
```

`google.list[obj].withSslHealthCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ssl_health_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSslHealthCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ssl_health_check` field.


### fn withSslHealthCheckMixin

```ts
withSslHealthCheckMixin()
```

`google.list[obj].withSslHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ssl_health_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSslHealthCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ssl_health_check` field.


### fn withTcpHealthCheck

```ts
withTcpHealthCheck()
```

`google.list[obj].withTcpHealthCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the tcp_health_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTcpHealthCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `tcp_health_check` field.


### fn withTcpHealthCheckMixin

```ts
withTcpHealthCheckMixin()
```

`google.list[obj].withTcpHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the tcp_health_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTcpHealthCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `tcp_health_check` field.


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


## obj grpc_health_check



### fn grpc_health_check.new

```ts
new()
```


`google.compute_health_check.grpc_health_check.new` constructs a new object with attributes and blocks configured for the `grpc_health_check`
Terraform sub block.



**Args**:
  - `grpc_service_name` (`string`): The gRPC service name for the health check.
The value of grpcServiceName has the following meanings by convention:
  - Empty serviceName means the overall status of all services at the backend.
  - Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.
The grpcServiceName can only be ASCII. When `null`, the `grpc_service_name` field will be omitted from the resulting object.
  - `port` (`number`): The port number for the health check request.
Must be specified if portName and portSpecification are not set
or if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535. When `null`, the `port` field will be omitted from the resulting object.
  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.
  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the
following values:

  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.

  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.

  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, gRPC health check follows behavior specified in &#39;port&#39; and
&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `grpc_health_check` sub block.


## obj http2_health_check



### fn http2_health_check.new

```ts
new()
```


`google.compute_health_check.http2_health_check.new` constructs a new object with attributes and blocks configured for the `http2_health_check`
Terraform sub block.



**Args**:
  - `host` (`string`): The value of the host header in the HTTP2 health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.
  - `port` (`number`): The TCP port number for the HTTP2 health check request.
The default value is 443. When `null`, the `port` field will be omitted from the resulting object.
  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.
  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the
following values:

  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.

  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.

  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, HTTP2 health check follows behavior specified in &#39;port&#39; and
&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.
  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the
backend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.
  - `request_path` (`string`): The request path of the HTTP2 health check request.
The default value is /. When `null`, the `request_path` field will be omitted from the resulting object.
  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. When `null`, the `response` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `http2_health_check` sub block.


## obj http_health_check



### fn http_health_check.new

```ts
new()
```


`google.compute_health_check.http_health_check.new` constructs a new object with attributes and blocks configured for the `http_health_check`
Terraform sub block.



**Args**:
  - `host` (`string`): The value of the host header in the HTTP health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.
  - `port` (`number`): The TCP port number for the HTTP health check request.
The default value is 80. When `null`, the `port` field will be omitted from the resulting object.
  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.
  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the
following values:

  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.

  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.

  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, HTTP health check follows behavior specified in &#39;port&#39; and
&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.
  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the
backend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.
  - `request_path` (`string`): The request path of the HTTP health check request.
The default value is /. When `null`, the `request_path` field will be omitted from the resulting object.
  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. When `null`, the `response` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `http_health_check` sub block.


## obj https_health_check



### fn https_health_check.new

```ts
new()
```


`google.compute_health_check.https_health_check.new` constructs a new object with attributes and blocks configured for the `https_health_check`
Terraform sub block.



**Args**:
  - `host` (`string`): The value of the host header in the HTTPS health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.
  - `port` (`number`): The TCP port number for the HTTPS health check request.
The default value is 443. When `null`, the `port` field will be omitted from the resulting object.
  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.
  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the
following values:

  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.

  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.

  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, HTTPS health check follows behavior specified in &#39;port&#39; and
&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.
  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the
backend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.
  - `request_path` (`string`): The request path of the HTTPS health check request.
The default value is /. When `null`, the `request_path` field will be omitted from the resulting object.
  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. When `null`, the `response` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `https_health_check` sub block.


## obj log_config



### fn log_config.new

```ts
new()
```


`google.compute_health_check.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `enable` (`bool`): Indicates whether or not to export logs. This is false by default,
which means no health check logging will be done. When `null`, the `enable` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj ssl_health_check



### fn ssl_health_check.new

```ts
new()
```


`google.compute_health_check.ssl_health_check.new` constructs a new object with attributes and blocks configured for the `ssl_health_check`
Terraform sub block.



**Args**:
  - `port` (`number`): The TCP port number for the SSL health check request.
The default value is 443. When `null`, the `port` field will be omitted from the resulting object.
  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.
  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the
following values:

  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.

  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.

  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, SSL health check follows behavior specified in &#39;port&#39; and
&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.
  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the
backend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.
  - `request` (`string`): The application data to send once the SSL connection has been
established (default value is empty). If both request and response are
empty, the connection establishment alone will indicate health. The request
data can only be ASCII. When `null`, the `request` field will be omitted from the resulting object.
  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. When `null`, the `response` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ssl_health_check` sub block.


## obj tcp_health_check



### fn tcp_health_check.new

```ts
new()
```


`google.compute_health_check.tcp_health_check.new` constructs a new object with attributes and blocks configured for the `tcp_health_check`
Terraform sub block.



**Args**:
  - `port` (`number`): The TCP port number for the TCP health check request.
The default value is 443. When `null`, the `port` field will be omitted from the resulting object.
  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.
  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the
following values:

  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.

  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.

  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, TCP health check follows behavior specified in &#39;port&#39; and
&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.
  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the
backend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.
  - `request` (`string`): The application data to send once the TCP connection has been
established (default value is empty). If both request and response are
empty, the connection establishment alone will indicate health. The request
data can only be ASCII. When `null`, the `request` field will be omitted from the resulting object.
  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. When `null`, the `response` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `tcp_health_check` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_health_check.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
