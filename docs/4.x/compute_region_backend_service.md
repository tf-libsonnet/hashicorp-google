---
permalink: /compute_region_backend_service/
---

# compute_region_backend_service

`compute_region_backend_service` represents the `google_compute_region_backend_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAffinityCookieTtlSec()`](#fn-withaffinitycookiettlsec)
* [`fn withBackend()`](#fn-withbackend)
* [`fn withBackendMixin()`](#fn-withbackendmixin)
* [`fn withCdnPolicy()`](#fn-withcdnpolicy)
* [`fn withCdnPolicyMixin()`](#fn-withcdnpolicymixin)
* [`fn withCircuitBreakers()`](#fn-withcircuitbreakers)
* [`fn withCircuitBreakersMixin()`](#fn-withcircuitbreakersmixin)
* [`fn withConnectionDrainingTimeoutSec()`](#fn-withconnectiondrainingtimeoutsec)
* [`fn withConsistentHash()`](#fn-withconsistenthash)
* [`fn withConsistentHashMixin()`](#fn-withconsistenthashmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnableCdn()`](#fn-withenablecdn)
* [`fn withFailoverPolicy()`](#fn-withfailoverpolicy)
* [`fn withFailoverPolicyMixin()`](#fn-withfailoverpolicymixin)
* [`fn withHealthChecks()`](#fn-withhealthchecks)
* [`fn withIap()`](#fn-withiap)
* [`fn withIapMixin()`](#fn-withiapmixin)
* [`fn withLoadBalancingScheme()`](#fn-withloadbalancingscheme)
* [`fn withLocalityLbPolicy()`](#fn-withlocalitylbpolicy)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withOutlierDetection()`](#fn-withoutlierdetection)
* [`fn withOutlierDetectionMixin()`](#fn-withoutlierdetectionmixin)
* [`fn withPortName()`](#fn-withportname)
* [`fn withProject()`](#fn-withproject)
* [`fn withProtocol()`](#fn-withprotocol)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSessionAffinity()`](#fn-withsessionaffinity)
* [`fn withTimeoutSec()`](#fn-withtimeoutsec)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj backend`](#obj-backend)
  * [`fn new()`](#fn-backendnew)
* [`obj cdn_policy`](#obj-cdn_policy)
  * [`fn new()`](#fn-cdn_policynew)
  * [`obj cdn_policy.cache_key_policy`](#obj-cdn_policycache_key_policy)
    * [`fn new()`](#fn-cdn_policycache_key_policynew)
  * [`obj cdn_policy.negative_caching_policy`](#obj-cdn_policynegative_caching_policy)
    * [`fn new()`](#fn-cdn_policynegative_caching_policynew)
* [`obj circuit_breakers`](#obj-circuit_breakers)
  * [`fn new()`](#fn-circuit_breakersnew)
* [`obj consistent_hash`](#obj-consistent_hash)
  * [`fn new()`](#fn-consistent_hashnew)
  * [`obj consistent_hash.http_cookie`](#obj-consistent_hashhttp_cookie)
    * [`fn new()`](#fn-consistent_hashhttp_cookienew)
    * [`obj consistent_hash.http_cookie.ttl`](#obj-consistent_hashhttp_cookiettl)
      * [`fn new()`](#fn-consistent_hashhttp_cookiettlnew)
* [`obj failover_policy`](#obj-failover_policy)
  * [`fn new()`](#fn-failover_policynew)
* [`obj iap`](#obj-iap)
  * [`fn new()`](#fn-iapnew)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj outlier_detection`](#obj-outlier_detection)
  * [`fn new()`](#fn-outlier_detectionnew)
  * [`obj outlier_detection.base_ejection_time`](#obj-outlier_detectionbase_ejection_time)
    * [`fn new()`](#fn-outlier_detectionbase_ejection_timenew)
  * [`obj outlier_detection.interval`](#obj-outlier_detectioninterval)
    * [`fn new()`](#fn-outlier_detectionintervalnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_region_backend_service.new` injects a new `google_compute_region_backend_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_region_backend_service.new('some_id')

You can get the reference to the `id` field of the created `google.compute_region_backend_service` using the reference:

    $._ref.google_compute_region_backend_service.some_id.get('id')

This is the same as directly entering `"${ google_compute_region_backend_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `affinity_cookie_ttl_sec` (`number`): Lifetime of cookies in seconds if session_affinity is
GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
only until the end of the browser session (or equivalent). The
maximum allowed value for TTL is one day.

When the load balancing scheme is INTERNAL, this field is not used. When `null`, the `affinity_cookie_ttl_sec` field will be omitted from the resulting object.
  - `connection_draining_timeout_sec` (`number`): Time for which instance will be drained (not accept new
connections, but still work to finish started). When `null`, the `connection_draining_timeout_sec` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this RegionBackendService. When `null`, the `enable_cdn` field will be omitted from the resulting object.
  - `health_checks` (`list`): The set of URLs to HealthCheck resources for health checking
this RegionBackendService. Currently at most one health
check can be specified.

A health check must be specified unless the backend service uses an internet
or serverless NEG as a backend. When `null`, the `health_checks` field will be omitted from the resulting object.
  - `load_balancing_scheme` (`string`): Indicates what kind of load balancing this regional backend service
will be used for. A backend service created for one type of load
balancing cannot be used with the other(s). For more information, refer to
[Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service). Default value: &#34;INTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;EXTERNAL_MANAGED&#34;, &#34;INTERNAL&#34;, &#34;INTERNAL_MANAGED&#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.
  - `locality_lb_policy` (`string`): The load balancing algorithm used within the scope of the locality.
The possible values are:

* &#39;ROUND_ROBIN&#39;: This is a simple policy in which each healthy backend
                 is selected in round robin order.

* &#39;LEAST_REQUEST&#39;: An O(1) algorithm which selects two random healthy
                   hosts and picks the host which has fewer active requests.

* &#39;RING_HASH&#39;: The ring/modulo hash load balancer implements consistent
               hashing to backends. The algorithm has the property that the
               addition/removal of a host from a set of N hosts only affects
               1/N of the requests.

* &#39;RANDOM&#39;: The load balancer selects a random healthy host.

* &#39;ORIGINAL_DESTINATION&#39;: Backend host is selected based on the client
                          connection metadata, i.e., connections are opened
                          to the same address as the destination address of
                          the incoming connection before the connection
                          was redirected to the load balancer.

* &#39;MAGLEV&#39;: used as a drop in replacement for the ring hash load balancer.
            Maglev is not as stable as ring hash but has faster table lookup
            build times and host selection times. For more information about
            Maglev, refer to https://ai.google/research/pubs/pub44824


This field is applicable to either:

* A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2,
  and loadBalancingScheme set to INTERNAL_MANAGED.
* A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.


If session_affinity is not NONE, and this field is not set to MAGLEV or RING_HASH,
session affinity settings will not take effect.

Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
field set to true. Possible values: [&#34;ROUND_ROBIN&#34;, &#34;LEAST_REQUEST&#34;, &#34;RING_HASH&#34;, &#34;RANDOM&#34;, &#34;ORIGINAL_DESTINATION&#34;, &#34;MAGLEV&#34;] When `null`, the `locality_lb_policy` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The URL of the network to which this backend service belongs.
This field can only be specified when the load balancing scheme is set to INTERNAL. When `null`, the `network` field will be omitted from the resulting object.
  - `port_name` (`string`): A named port on a backend instance group representing the port for
communication to the backend VMs in that group. Required when the
loadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED
and the backends are instance groups. The named port must be defined on each
backend instance group. This parameter has no meaning if the backends are NEGs. API sets a
default of &#34;http&#34; if not given.
Must be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing). When `null`, the `port_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `protocol` (`string`): The protocol this RegionBackendService uses to communicate with backends.
The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer
types and may result in errors if used with the GA API. Possible values: [&#34;HTTP&#34;, &#34;HTTPS&#34;, &#34;HTTP2&#34;, &#34;SSL&#34;, &#34;TCP&#34;, &#34;UDP&#34;, &#34;GRPC&#34;, &#34;UNSPECIFIED&#34;] When `null`, the `protocol` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created backend service should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `session_affinity` (`string`): Type of session affinity to use. The default is NONE. Session affinity is
not applicable if the protocol is UDP. Possible values: [&#34;NONE&#34;, &#34;CLIENT_IP&#34;, &#34;CLIENT_IP_PORT_PROTO&#34;, &#34;CLIENT_IP_PROTO&#34;, &#34;GENERATED_COOKIE&#34;, &#34;HEADER_FIELD&#34;, &#34;HTTP_COOKIE&#34;, &#34;CLIENT_IP_NO_DESTINATION&#34;] When `null`, the `session_affinity` field will be omitted from the resulting object.
  - `timeout_sec` (`number`): How many seconds to wait for the backend before considering it a
failed request. Default is 30 seconds. Valid range is [1, 86400]. When `null`, the `timeout_sec` field will be omitted from the resulting object.
  - `backend` (`list[obj]`): The set of backends that serve this RegionBackendService. When `null`, the `backend` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.backend.new](#fn-backendnew) constructor.
  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this BackendService. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.cdn_policy.new](#fn-cdn_policynew) constructor.
  - `circuit_breakers` (`list[obj]`): Settings controlling the volume of connections to a backend service. This field
is applicable only when the &#39;load_balancing_scheme&#39; is set to INTERNAL_MANAGED
and the &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `circuit_breakers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.circuit_breakers.new](#fn-circuit_breakersnew) constructor.
  - `consistent_hash` (`list[obj]`): Consistent Hash-based load balancing can be used to provide soft session
affinity based on HTTP headers, cookies or other properties. This load balancing
policy is applicable only for HTTP connections. The affinity to a particular
destination host will be lost when one or more hosts are added/removed from the
destination service. This field specifies parameters that control consistent
hashing.
This field only applies when all of the following are true -
  * &#39;load_balancing_scheme&#39; is set to INTERNAL_MANAGED
  * &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2
  * &#39;locality_lb_policy&#39; is set to MAGLEV or RING_HASH When `null`, the `consistent_hash` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.consistent_hash.new](#fn-consistent_hashnew) constructor.
  - `failover_policy` (`list[obj]`): Policy for failovers. When `null`, the `failover_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.failover_policy.new](#fn-failover_policynew) constructor.
  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.iap.new](#fn-iapnew) constructor.
  - `log_config` (`list[obj]`): This field denotes the logging options for the load balancer traffic served by this backend service.
If logging is enabled, logs will be exported to Stackdriver. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.log_config.new](#fn-log_confignew) constructor.
  - `outlier_detection` (`list[obj]`): Settings controlling eviction of unhealthy hosts from the load balancing pool.
This field is applicable only when the &#39;load_balancing_scheme&#39; is set
to INTERNAL_MANAGED and the &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `outlier_detection` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.outlier_detection.new](#fn-outlier_detectionnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_region_backend_service.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_backend_service`
Terraform resource.

Unlike [google.compute_region_backend_service.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `affinity_cookie_ttl_sec` (`number`): Lifetime of cookies in seconds if session_affinity is
GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
only until the end of the browser session (or equivalent). The
maximum allowed value for TTL is one day.

When the load balancing scheme is INTERNAL, this field is not used. When `null`, the `affinity_cookie_ttl_sec` field will be omitted from the resulting object.
  - `connection_draining_timeout_sec` (`number`): Time for which instance will be drained (not accept new
connections, but still work to finish started). When `null`, the `connection_draining_timeout_sec` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this RegionBackendService. When `null`, the `enable_cdn` field will be omitted from the resulting object.
  - `health_checks` (`list`): The set of URLs to HealthCheck resources for health checking
this RegionBackendService. Currently at most one health
check can be specified.

A health check must be specified unless the backend service uses an internet
or serverless NEG as a backend. When `null`, the `health_checks` field will be omitted from the resulting object.
  - `load_balancing_scheme` (`string`): Indicates what kind of load balancing this regional backend service
will be used for. A backend service created for one type of load
balancing cannot be used with the other(s). For more information, refer to
[Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service). Default value: &#34;INTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;EXTERNAL_MANAGED&#34;, &#34;INTERNAL&#34;, &#34;INTERNAL_MANAGED&#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.
  - `locality_lb_policy` (`string`): The load balancing algorithm used within the scope of the locality.
The possible values are:

* &#39;ROUND_ROBIN&#39;: This is a simple policy in which each healthy backend
                 is selected in round robin order.

* &#39;LEAST_REQUEST&#39;: An O(1) algorithm which selects two random healthy
                   hosts and picks the host which has fewer active requests.

* &#39;RING_HASH&#39;: The ring/modulo hash load balancer implements consistent
               hashing to backends. The algorithm has the property that the
               addition/removal of a host from a set of N hosts only affects
               1/N of the requests.

* &#39;RANDOM&#39;: The load balancer selects a random healthy host.

* &#39;ORIGINAL_DESTINATION&#39;: Backend host is selected based on the client
                          connection metadata, i.e., connections are opened
                          to the same address as the destination address of
                          the incoming connection before the connection
                          was redirected to the load balancer.

* &#39;MAGLEV&#39;: used as a drop in replacement for the ring hash load balancer.
            Maglev is not as stable as ring hash but has faster table lookup
            build times and host selection times. For more information about
            Maglev, refer to https://ai.google/research/pubs/pub44824


This field is applicable to either:

* A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2,
  and loadBalancingScheme set to INTERNAL_MANAGED.
* A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.


If session_affinity is not NONE, and this field is not set to MAGLEV or RING_HASH,
session affinity settings will not take effect.

Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
field set to true. Possible values: [&#34;ROUND_ROBIN&#34;, &#34;LEAST_REQUEST&#34;, &#34;RING_HASH&#34;, &#34;RANDOM&#34;, &#34;ORIGINAL_DESTINATION&#34;, &#34;MAGLEV&#34;] When `null`, the `locality_lb_policy` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The URL of the network to which this backend service belongs.
This field can only be specified when the load balancing scheme is set to INTERNAL. When `null`, the `network` field will be omitted from the resulting object.
  - `port_name` (`string`): A named port on a backend instance group representing the port for
communication to the backend VMs in that group. Required when the
loadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED
and the backends are instance groups. The named port must be defined on each
backend instance group. This parameter has no meaning if the backends are NEGs. API sets a
default of &#34;http&#34; if not given.
Must be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing). When `null`, the `port_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `protocol` (`string`): The protocol this RegionBackendService uses to communicate with backends.
The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer
types and may result in errors if used with the GA API. Possible values: [&#34;HTTP&#34;, &#34;HTTPS&#34;, &#34;HTTP2&#34;, &#34;SSL&#34;, &#34;TCP&#34;, &#34;UDP&#34;, &#34;GRPC&#34;, &#34;UNSPECIFIED&#34;] When `null`, the `protocol` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created backend service should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `session_affinity` (`string`): Type of session affinity to use. The default is NONE. Session affinity is
not applicable if the protocol is UDP. Possible values: [&#34;NONE&#34;, &#34;CLIENT_IP&#34;, &#34;CLIENT_IP_PORT_PROTO&#34;, &#34;CLIENT_IP_PROTO&#34;, &#34;GENERATED_COOKIE&#34;, &#34;HEADER_FIELD&#34;, &#34;HTTP_COOKIE&#34;, &#34;CLIENT_IP_NO_DESTINATION&#34;] When `null`, the `session_affinity` field will be omitted from the resulting object.
  - `timeout_sec` (`number`): How many seconds to wait for the backend before considering it a
failed request. Default is 30 seconds. Valid range is [1, 86400]. When `null`, the `timeout_sec` field will be omitted from the resulting object.
  - `backend` (`list[obj]`): The set of backends that serve this RegionBackendService. When `null`, the `backend` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.backend.new](#fn-backendnew) constructor.
  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this BackendService. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.cdn_policy.new](#fn-cdn_policynew) constructor.
  - `circuit_breakers` (`list[obj]`): Settings controlling the volume of connections to a backend service. This field
is applicable only when the &#39;load_balancing_scheme&#39; is set to INTERNAL_MANAGED
and the &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `circuit_breakers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.circuit_breakers.new](#fn-circuit_breakersnew) constructor.
  - `consistent_hash` (`list[obj]`): Consistent Hash-based load balancing can be used to provide soft session
affinity based on HTTP headers, cookies or other properties. This load balancing
policy is applicable only for HTTP connections. The affinity to a particular
destination host will be lost when one or more hosts are added/removed from the
destination service. This field specifies parameters that control consistent
hashing.
This field only applies when all of the following are true -
  * &#39;load_balancing_scheme&#39; is set to INTERNAL_MANAGED
  * &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2
  * &#39;locality_lb_policy&#39; is set to MAGLEV or RING_HASH When `null`, the `consistent_hash` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.consistent_hash.new](#fn-consistent_hashnew) constructor.
  - `failover_policy` (`list[obj]`): Policy for failovers. When `null`, the `failover_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.failover_policy.new](#fn-failover_policynew) constructor.
  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.iap.new](#fn-iapnew) constructor.
  - `log_config` (`list[obj]`): This field denotes the logging options for the load balancer traffic served by this backend service.
If logging is enabled, logs will be exported to Stackdriver. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.log_config.new](#fn-log_confignew) constructor.
  - `outlier_detection` (`list[obj]`): Settings controlling eviction of unhealthy hosts from the load balancing pool.
This field is applicable only when the &#39;load_balancing_scheme&#39; is set
to INTERNAL_MANAGED and the &#39;protocol&#39; is set to HTTP, HTTPS, or HTTP2. When `null`, the `outlier_detection` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.outlier_detection.new](#fn-outlier_detectionnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_backend_service` resource into the root Terraform configuration.


### fn withAffinityCookieTtlSec

```ts
withAffinityCookieTtlSec()
```

`google.number.withAffinityCookieTtlSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the affinity_cookie_ttl_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `affinity_cookie_ttl_sec` field.


### fn withBackend

```ts
withBackend()
```

`google.list[obj].withBackend` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backend field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBackendMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backend` field.


### fn withBackendMixin

```ts
withBackendMixin()
```

`google.list[obj].withBackendMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backend field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBackend](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backend` field.


### fn withCdnPolicy

```ts
withCdnPolicy()
```

`google.list[obj].withCdnPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cdn_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCdnPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cdn_policy` field.


### fn withCdnPolicyMixin

```ts
withCdnPolicyMixin()
```

`google.list[obj].withCdnPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cdn_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCdnPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cdn_policy` field.


### fn withCircuitBreakers

```ts
withCircuitBreakers()
```

`google.list[obj].withCircuitBreakers` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the circuit_breakers field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCircuitBreakersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `circuit_breakers` field.


### fn withCircuitBreakersMixin

```ts
withCircuitBreakersMixin()
```

`google.list[obj].withCircuitBreakersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the circuit_breakers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCircuitBreakers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `circuit_breakers` field.


### fn withConnectionDrainingTimeoutSec

```ts
withConnectionDrainingTimeoutSec()
```

`google.number.withConnectionDrainingTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the connection_draining_timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `connection_draining_timeout_sec` field.


### fn withConsistentHash

```ts
withConsistentHash()
```

`google.list[obj].withConsistentHash` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the consistent_hash field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConsistentHashMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `consistent_hash` field.


### fn withConsistentHashMixin

```ts
withConsistentHashMixin()
```

`google.list[obj].withConsistentHashMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the consistent_hash field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConsistentHash](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `consistent_hash` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnableCdn

```ts
withEnableCdn()
```

`google.bool.withEnableCdn` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_cdn field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_cdn` field.


### fn withFailoverPolicy

```ts
withFailoverPolicy()
```

`google.list[obj].withFailoverPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the failover_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFailoverPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `failover_policy` field.


### fn withFailoverPolicyMixin

```ts
withFailoverPolicyMixin()
```

`google.list[obj].withFailoverPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the failover_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFailoverPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `failover_policy` field.


### fn withHealthChecks

```ts
withHealthChecks()
```

`google.list.withHealthChecks` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the health_checks field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `health_checks` field.


### fn withIap

```ts
withIap()
```

`google.list[obj].withIap` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the iap field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIapMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `iap` field.


### fn withIapMixin

```ts
withIapMixin()
```

`google.list[obj].withIapMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the iap field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIap](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `iap` field.


### fn withLoadBalancingScheme

```ts
withLoadBalancingScheme()
```

`google.string.withLoadBalancingScheme` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the load_balancing_scheme field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `load_balancing_scheme` field.


### fn withLocalityLbPolicy

```ts
withLocalityLbPolicy()
```

`google.string.withLocalityLbPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the locality_lb_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `locality_lb_policy` field.


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


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withOutlierDetection

```ts
withOutlierDetection()
```

`google.list[obj].withOutlierDetection` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the outlier_detection field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOutlierDetectionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `outlier_detection` field.


### fn withOutlierDetectionMixin

```ts
withOutlierDetectionMixin()
```

`google.list[obj].withOutlierDetectionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the outlier_detection field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOutlierDetection](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `outlier_detection` field.


### fn withPortName

```ts
withPortName()
```

`google.string.withPortName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the port_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `port_name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withProtocol

```ts
withProtocol()
```

`google.string.withProtocol` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `protocol` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withSessionAffinity

```ts
withSessionAffinity()
```

`google.string.withSessionAffinity` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the session_affinity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `session_affinity` field.


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


## obj backend



### fn backend.new

```ts
new()
```


`google.compute_region_backend_service.backend.new` constructs a new object with attributes and blocks configured for the `backend`
Terraform sub block.



**Args**:
  - `balancing_mode` (`string`): Specifies the balancing mode for this backend.

See the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
for an explanation of load balancing modes. Default value: &#34;CONNECTION&#34; Possible values: [&#34;UTILIZATION&#34;, &#34;RATE&#34;, &#34;CONNECTION&#34;] When `null`, the `balancing_mode` field will be omitted from the resulting object.
  - `capacity_scaler` (`number`): A multiplier applied to the group&#39;s maximum servicing capacity
(based on UTILIZATION, RATE or CONNECTION).

~&gt;**NOTE**: This field cannot be set for
INTERNAL region backend services (default loadBalancingScheme),
but is required for non-INTERNAL backend service. The total
capacity_scaler for all backends must be non-zero.

A setting of 0 means the group is completely drained, offering
0% of its available Capacity. Valid range is [0.0,1.0]. When `null`, the `capacity_scaler` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource.
Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `failover` (`bool`): This field designates whether this is a failover backend. More
than one failover backend can be configured for a given RegionBackendService. When `null`, the `failover` field will be omitted from the resulting object.
  - `group` (`string`): The fully-qualified URL of an Instance Group or Network Endpoint
Group resource. In case of instance group this defines the list
of instances that serve traffic. Member virtual machine
instances from each instance group must live in the same zone as
the instance group itself. No two backends in a backend service
are allowed to use same Instance Group resource.

For Network Endpoint Groups this defines list of endpoints. All
endpoints of Network Endpoint Group must be hosted on instances
located in the same zone as the Network Endpoint Group.

Backend services cannot mix Instance Group and
Network Endpoint Group backends.

When the &#39;load_balancing_scheme&#39; is INTERNAL, only instance groups
are supported.

Note that you must specify an Instance Group or Network Endpoint
Group resource using the fully-qualified URL, rather than a
partial URL.
  - `max_connections` (`number`): The max number of simultaneous connections for the group. Can
be used with either CONNECTION or UTILIZATION balancing modes.
Cannot be set for INTERNAL backend services.

For CONNECTION mode, either maxConnections or one
of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
as appropriate for group type, must be set. When `null`, the `max_connections` field will be omitted from the resulting object.
  - `max_connections_per_endpoint` (`number`): The max number of simultaneous connections that a single backend
network endpoint can handle. Cannot be set
for INTERNAL backend services.

This is used to calculate the capacity of the group. Can be
used in either CONNECTION or UTILIZATION balancing modes. For
CONNECTION mode, either maxConnections or
maxConnectionsPerEndpoint must be set. When `null`, the `max_connections_per_endpoint` field will be omitted from the resulting object.
  - `max_connections_per_instance` (`number`): The max number of simultaneous connections that a single
backend instance can handle. Cannot be set for INTERNAL backend
services.

This is used to calculate the capacity of the group.
Can be used in either CONNECTION or UTILIZATION balancing modes.
For CONNECTION mode, either maxConnections or
maxConnectionsPerInstance must be set. When `null`, the `max_connections_per_instance` field will be omitted from the resulting object.
  - `max_rate` (`number`): The max requests per second (RPS) of the group. Cannot be set
for INTERNAL backend services.

Can be used with either RATE or UTILIZATION balancing modes,
but required if RATE mode. Either maxRate or one
of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
group type, must be set. When `null`, the `max_rate` field will be omitted from the resulting object.
  - `max_rate_per_endpoint` (`number`): The max requests per second (RPS) that a single backend network
endpoint can handle. This is used to calculate the capacity of
the group. Can be used in either balancing mode. For RATE mode,
either maxRate or maxRatePerEndpoint must be set. Cannot be set
for INTERNAL backend services. When `null`, the `max_rate_per_endpoint` field will be omitted from the resulting object.
  - `max_rate_per_instance` (`number`): The max requests per second (RPS) that a single backend
instance can handle. This is used to calculate the capacity of
the group. Can be used in either balancing mode. For RATE mode,
either maxRate or maxRatePerInstance must be set. Cannot be set
for INTERNAL backend services. When `null`, the `max_rate_per_instance` field will be omitted from the resulting object.
  - `max_utilization` (`number`): Used when balancingMode is UTILIZATION. This ratio defines the
CPU utilization target for the group. Valid range is [0.0, 1.0].
Cannot be set for INTERNAL backend services. When `null`, the `max_utilization` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `backend` sub block.


## obj cdn_policy



### fn cdn_policy.new

```ts
new()
```


`google.compute_region_backend_service.cdn_policy.new` constructs a new object with attributes and blocks configured for the `cdn_policy`
Terraform sub block.



**Args**:
  - `cache_mode` (`string`): Specifies the cache setting for all responses from this backend.
The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [&#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, &#34;CACHE_ALL_STATIC&#34;] When `null`, the `cache_mode` field will be omitted from the resulting object.
  - `client_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `client_ttl` field will be omitted from the resulting object.
  - `default_ttl` (`number`): Specifies the default TTL for cached content served by this origin for responses
that do not have an existing valid TTL (max-age or s-max-age). When `null`, the `default_ttl` field will be omitted from the resulting object.
  - `max_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `max_ttl` field will be omitted from the resulting object.
  - `negative_caching` (`bool`): Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. When `null`, the `negative_caching` field will be omitted from the resulting object.
  - `serve_while_stale` (`number`): Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. When `null`, the `serve_while_stale` field will be omitted from the resulting object.
  - `signed_url_cache_max_age_sec` (`number`): Maximum number of seconds the response to a signed URL request
will be considered fresh, defaults to 1hr (3600s). After this
time period, the response will be revalidated before
being served.

When serving responses to signed URL requests, Cloud CDN will
internally behave as though all responses from this backend had a
&#34;Cache-Control: public, max-age=[TTL]&#34; header, regardless of any
existing Cache-Control header. The actual headers served in
responses will not be altered. When `null`, the `signed_url_cache_max_age_sec` field will be omitted from the resulting object.
  - `cache_key_policy` (`list[obj]`): The CacheKeyPolicy for this CdnPolicy. When `null`, the `cache_key_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.cdn_policy.cache_key_policy.new](#fn-cache_key_policynew) constructor.
  - `negative_caching_policy` (`list[obj]`): Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
Omitting the policy and leaving negativeCaching enabled will use Cloud CDN&#39;s default cache TTLs. When `null`, the `negative_caching_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.cdn_policy.negative_caching_policy.new](#fn-negative_caching_policynew) constructor.

**Returns**:
  - An attribute object that represents the `cdn_policy` sub block.


## obj cdn_policy.cache_key_policy



### fn cdn_policy.cache_key_policy.new

```ts
new()
```


`google.compute_region_backend_service.cdn_policy.cache_key_policy.new` constructs a new object with attributes and blocks configured for the `cache_key_policy`
Terraform sub block.



**Args**:
  - `include_host` (`bool`): If true requests to different hosts will be cached separately. When `null`, the `include_host` field will be omitted from the resulting object.
  - `include_named_cookies` (`list`): Names of cookies to include in cache keys. When `null`, the `include_named_cookies` field will be omitted from the resulting object.
  - `include_protocol` (`bool`): If true, http and https requests will be cached separately. When `null`, the `include_protocol` field will be omitted from the resulting object.
  - `include_query_string` (`bool`): If true, include query string parameters in the cache key
according to query_string_whitelist and
query_string_blacklist. If neither is set, the entire query
string will be included.

If false, the query string will be excluded from the cache
key entirely. When `null`, the `include_query_string` field will be omitted from the resulting object.
  - `query_string_blacklist` (`list`): Names of query string parameters to exclude in cache keys.

All other parameters will be included. Either specify
query_string_whitelist or query_string_blacklist, not both.
&#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as
delimiters. When `null`, the `query_string_blacklist` field will be omitted from the resulting object.
  - `query_string_whitelist` (`list`): Names of query string parameters to include in cache keys.

All other parameters will be excluded. Either specify
query_string_whitelist or query_string_blacklist, not both.
&#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as
delimiters. When `null`, the `query_string_whitelist` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cache_key_policy` sub block.


## obj cdn_policy.negative_caching_policy



### fn cdn_policy.negative_caching_policy.new

```ts
new()
```


`google.compute_region_backend_service.cdn_policy.negative_caching_policy.new` constructs a new object with attributes and blocks configured for the `negative_caching_policy`
Terraform sub block.



**Args**:
  - `code` (`number`): The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
can be specified as values, and you cannot specify a status code more than once. When `null`, the `code` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `negative_caching_policy` sub block.


## obj circuit_breakers



### fn circuit_breakers.new

```ts
new()
```


`google.compute_region_backend_service.circuit_breakers.new` constructs a new object with attributes and blocks configured for the `circuit_breakers`
Terraform sub block.



**Args**:
  - `max_connections` (`number`): The maximum number of connections to the backend cluster.
Defaults to 1024. When `null`, the `max_connections` field will be omitted from the resulting object.
  - `max_pending_requests` (`number`): The maximum number of pending requests to the backend cluster.
Defaults to 1024. When `null`, the `max_pending_requests` field will be omitted from the resulting object.
  - `max_requests` (`number`): The maximum number of parallel requests to the backend cluster.
Defaults to 1024. When `null`, the `max_requests` field will be omitted from the resulting object.
  - `max_requests_per_connection` (`number`): Maximum requests for a single backend connection. This parameter
is respected by both the HTTP/1.1 and HTTP/2 implementations. If
not specified, there is no limit. Setting this parameter to 1
will effectively disable keep alive. When `null`, the `max_requests_per_connection` field will be omitted from the resulting object.
  - `max_retries` (`number`): The maximum number of parallel retries to the backend cluster.
Defaults to 3. When `null`, the `max_retries` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `circuit_breakers` sub block.


## obj consistent_hash



### fn consistent_hash.new

```ts
new()
```


`google.compute_region_backend_service.consistent_hash.new` constructs a new object with attributes and blocks configured for the `consistent_hash`
Terraform sub block.



**Args**:
  - `http_header_name` (`string`): The hash based on the value of the specified header field.
This field is applicable if the sessionAffinity is set to HEADER_FIELD. When `null`, the `http_header_name` field will be omitted from the resulting object.
  - `minimum_ring_size` (`number`): The minimum number of virtual nodes to use for the hash ring.
Larger ring sizes result in more granular load
distributions. If the number of hosts in the load balancing pool
is larger than the ring size, each host will be assigned a single
virtual node.
Defaults to 1024. When `null`, the `minimum_ring_size` field will be omitted from the resulting object.
  - `http_cookie` (`list[obj]`): Hash is based on HTTP Cookie. This field describes a HTTP cookie
that will be used as the hash key for the consistent hash load
balancer. If the cookie is not present, it will be generated.
This field is applicable if the sessionAffinity is set to HTTP_COOKIE. When `null`, the `http_cookie` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.consistent_hash.http_cookie.new](#fn-http_cookienew) constructor.

**Returns**:
  - An attribute object that represents the `consistent_hash` sub block.


## obj consistent_hash.http_cookie



### fn consistent_hash.http_cookie.new

```ts
new()
```


`google.compute_region_backend_service.consistent_hash.http_cookie.new` constructs a new object with attributes and blocks configured for the `http_cookie`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the cookie. When `null`, the `name` field will be omitted from the resulting object.
  - `path` (`string`): Path to set for the cookie. When `null`, the `path` field will be omitted from the resulting object.
  - `ttl` (`list[obj]`): Lifetime of the cookie. When `null`, the `ttl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.consistent_hash.http_cookie.ttl.new](#fn-consistent_hashttlnew) constructor.

**Returns**:
  - An attribute object that represents the `http_cookie` sub block.


## obj consistent_hash.http_cookie.ttl



### fn consistent_hash.http_cookie.ttl.new

```ts
new()
```


`google.compute_region_backend_service.consistent_hash.http_cookie.ttl.new` constructs a new object with attributes and blocks configured for the `ttl`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond
resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must
be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Span of time at a resolution of a second.
Must be from 0 to 315,576,000,000 inclusive.

**Returns**:
  - An attribute object that represents the `ttl` sub block.


## obj failover_policy



### fn failover_policy.new

```ts
new()
```


`google.compute_region_backend_service.failover_policy.new` constructs a new object with attributes and blocks configured for the `failover_policy`
Terraform sub block.



**Args**:
  - `disable_connection_drain_on_failover` (`bool`): On failover or failback, this field indicates whether connection drain
will be honored. Setting this to true has the following effect: connections
to the old active pool are not drained. Connections to the new active pool
use the timeout of 10 min (currently fixed). Setting to false has the
following effect: both old and new connections will have a drain timeout
of 10 min.
This can be set to true only if the protocol is TCP.
The default is false. When `null`, the `disable_connection_drain_on_failover` field will be omitted from the resulting object.
  - `drop_traffic_if_unhealthy` (`bool`): This option is used only when no healthy VMs are detected in the primary
and backup instance groups. When set to true, traffic is dropped. When
set to false, new connections are sent across all VMs in the primary group.
The default is false. When `null`, the `drop_traffic_if_unhealthy` field will be omitted from the resulting object.
  - `failover_ratio` (`number`): The value of the field must be in [0, 1]. If the ratio of the healthy
VMs in the primary backend is at or below this number, traffic arriving
at the load-balanced IP will be directed to the failover backend.
In case where &#39;failoverRatio&#39; is not set or all the VMs in the backup
backend are unhealthy, the traffic will be directed back to the primary
backend in the &#34;force&#34; mode, where traffic will be spread to the healthy
VMs with the best effort, or to all VMs when no VM is healthy.
This field is only used with l4 load balancing. When `null`, the `failover_ratio` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `failover_policy` sub block.


## obj iap



### fn iap.new

```ts
new()
```


`google.compute_region_backend_service.iap.new` constructs a new object with attributes and blocks configured for the `iap`
Terraform sub block.



**Args**:
  - `oauth2_client_id` (`string`): OAuth2 Client ID for IAP
  - `oauth2_client_secret` (`string`): OAuth2 Client Secret for IAP

**Returns**:
  - An attribute object that represents the `iap` sub block.


## obj log_config



### fn log_config.new

```ts
new()
```


`google.compute_region_backend_service.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `enable` (`bool`): Whether to enable logging for the load balancer traffic served by this backend service. When `null`, the `enable` field will be omitted from the resulting object.
  - `sample_rate` (`number`): This field can only be specified if logging is enabled for this backend service. The value of
the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
The default value is 1.0. When `null`, the `sample_rate` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj outlier_detection



### fn outlier_detection.new

```ts
new()
```


`google.compute_region_backend_service.outlier_detection.new` constructs a new object with attributes and blocks configured for the `outlier_detection`
Terraform sub block.



**Args**:
  - `consecutive_errors` (`number`): Number of errors before a host is ejected from the connection pool. When the
backend host is accessed over HTTP, a 5xx return code qualifies as an error.
Defaults to 5. When `null`, the `consecutive_errors` field will be omitted from the resulting object.
  - `consecutive_gateway_failure` (`number`): The number of consecutive gateway failures (502, 503, 504 status or connection
errors that are mapped to one of those status codes) before a consecutive
gateway failure ejection occurs. Defaults to 5. When `null`, the `consecutive_gateway_failure` field will be omitted from the resulting object.
  - `enforcing_consecutive_errors` (`number`): The percentage chance that a host will be actually ejected when an outlier
status is detected through consecutive 5xx. This setting can be used to disable
ejection or to ramp it up slowly. Defaults to 100. When `null`, the `enforcing_consecutive_errors` field will be omitted from the resulting object.
  - `enforcing_consecutive_gateway_failure` (`number`): The percentage chance that a host will be actually ejected when an outlier
status is detected through consecutive gateway failures. This setting can be
used to disable ejection or to ramp it up slowly. Defaults to 0. When `null`, the `enforcing_consecutive_gateway_failure` field will be omitted from the resulting object.
  - `enforcing_success_rate` (`number`): The percentage chance that a host will be actually ejected when an outlier
status is detected through success rate statistics. This setting can be used to
disable ejection or to ramp it up slowly. Defaults to 100. When `null`, the `enforcing_success_rate` field will be omitted from the resulting object.
  - `max_ejection_percent` (`number`): Maximum percentage of hosts in the load balancing pool for the backend service
that can be ejected. Defaults to 10%. When `null`, the `max_ejection_percent` field will be omitted from the resulting object.
  - `success_rate_minimum_hosts` (`number`): The number of hosts in a cluster that must have enough request volume to detect
success rate outliers. If the number of hosts is less than this setting, outlier
detection via success rate statistics is not performed for any host in the
cluster. Defaults to 5. When `null`, the `success_rate_minimum_hosts` field will be omitted from the resulting object.
  - `success_rate_request_volume` (`number`): The minimum number of total requests that must be collected in one interval (as
defined by the interval duration above) to include this host in success rate
based outlier detection. If the volume is lower than this setting, outlier
detection via success rate statistics is not performed for that host. Defaults
to 100. When `null`, the `success_rate_request_volume` field will be omitted from the resulting object.
  - `success_rate_stdev_factor` (`number`): This factor is used to determine the ejection threshold for success rate outlier
ejection. The ejection threshold is the difference between the mean success
rate, and the product of this factor and the standard deviation of the mean
success rate: mean - (stdev * success_rate_stdev_factor). This factor is divided
by a thousand to get a double. That is, if the desired factor is 1.9, the
runtime value should be 1900. Defaults to 1900. When `null`, the `success_rate_stdev_factor` field will be omitted from the resulting object.
  - `base_ejection_time` (`list[obj]`): The base time that a host is ejected for. The real time is equal to the base
time multiplied by the number of times the host has been ejected. Defaults to
30000ms or 30s. When `null`, the `base_ejection_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.outlier_detection.base_ejection_time.new](#fn-base_ejection_timenew) constructor.
  - `interval` (`list[obj]`): Time interval between ejection sweep analysis. This can result in both new
ejections as well as hosts being returned to service. Defaults to 10 seconds. When `null`, the `interval` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_backend_service.outlier_detection.interval.new](#fn-intervalnew) constructor.

**Returns**:
  - An attribute object that represents the `outlier_detection` sub block.


## obj outlier_detection.base_ejection_time



### fn outlier_detection.base_ejection_time.new

```ts
new()
```


`google.compute_region_backend_service.outlier_detection.base_ejection_time.new` constructs a new object with attributes and blocks configured for the `base_ejection_time`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `base_ejection_time` sub block.


## obj outlier_detection.interval



### fn outlier_detection.interval.new

```ts
new()
```


`google.compute_region_backend_service.outlier_detection.interval.new` constructs a new object with attributes and blocks configured for the `interval`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `interval` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_region_backend_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
