---
permalink: /network_services_edge_cache_origin/
---

# network_services_edge_cache_origin

`network_services_edge_cache_origin` represents the `google_network_services_edge_cache_origin` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAwsV4Authentication()`](#fn-withawsv4authentication)
* [`fn withAwsV4AuthenticationMixin()`](#fn-withawsv4authenticationmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFailoverOrigin()`](#fn-withfailoverorigin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMaxAttempts()`](#fn-withmaxattempts)
* [`fn withName()`](#fn-withname)
* [`fn withOriginAddress()`](#fn-withoriginaddress)
* [`fn withOriginOverrideAction()`](#fn-withoriginoverrideaction)
* [`fn withOriginOverrideActionMixin()`](#fn-withoriginoverrideactionmixin)
* [`fn withOriginRedirect()`](#fn-withoriginredirect)
* [`fn withOriginRedirectMixin()`](#fn-withoriginredirectmixin)
* [`fn withPort()`](#fn-withport)
* [`fn withProject()`](#fn-withproject)
* [`fn withProtocol()`](#fn-withprotocol)
* [`fn withRetryConditions()`](#fn-withretryconditions)
* [`fn withTimeout()`](#fn-withtimeout)
* [`fn withTimeoutMixin()`](#fn-withtimeoutmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj aws_v4_authentication`](#obj-aws_v4_authentication)
  * [`fn new()`](#fn-aws_v4_authenticationnew)
* [`obj origin_override_action`](#obj-origin_override_action)
  * [`fn new()`](#fn-origin_override_actionnew)
  * [`obj origin_override_action.header_action`](#obj-origin_override_actionheader_action)
    * [`fn new()`](#fn-origin_override_actionheader_actionnew)
    * [`obj origin_override_action.header_action.request_headers_to_add`](#obj-origin_override_actionheader_actionrequest_headers_to_add)
      * [`fn new()`](#fn-origin_override_actionheader_actionrequest_headers_to_addnew)
  * [`obj origin_override_action.url_rewrite`](#obj-origin_override_actionurl_rewrite)
    * [`fn new()`](#fn-origin_override_actionurl_rewritenew)
* [`obj origin_redirect`](#obj-origin_redirect)
  * [`fn new()`](#fn-origin_redirectnew)
* [`obj timeout`](#obj-timeout)
  * [`fn new()`](#fn-timeoutnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_services_edge_cache_origin.new` injects a new `google_network_services_edge_cache_origin` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_services_edge_cache_origin.new('some_id')

You can get the reference to the `id` field of the created `google.network_services_edge_cache_origin` using the reference:

    $._ref.google_network_services_edge_cache_origin.some_id.get('id')

This is the same as directly entering `"${ google_network_services_edge_cache_origin.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `failover_origin` (`string`): The Origin resource to try when the current origin cannot be reached.
After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.

The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
A reference to a Topic resource. When `null`, the `failover_origin` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `max_attempts` (`number`): The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.

Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
retryConditions and failoverOrigin to control its own cache fill failures.

The total number of allowed attempts to cache fill across this and failover origins is limited to four.
The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.

The last valid, non-retried response from all origins will be returned to the client.
If no origin returns a valid response, an HTTP 502 will be returned to the client.

Defaults to 1. Must be a value greater than 0 and less than 4. When `null`, the `max_attempts` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `origin_address` (`string`): A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.

This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname

When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
If a Cloud Storage bucket is provided, it must be in the canonical &#34;gs://bucketname&#34; format. Other forms, such as &#34;storage.googleapis.com&#34;, will be rejected.
  - `port` (`number`): The port to connect to the origin on.
Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `protocol` (`string`): The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security &amp; performance.

When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server. Possible values: [&#34;HTTP2&#34;, &#34;HTTPS&#34;, &#34;HTTP&#34;] When `null`, the `protocol` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specifies one or more retry conditions for the configured origin.

If the failure mode during a connection attempt to the origin matches the configured retryCondition(s),
the origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.

The default retryCondition is &#34;CONNECT_FAILURE&#34;.

retryConditions apply to this origin, and not subsequent failoverOrigin(s),
which may specify their own retryConditions and maxAttempts.

Valid values are:

- CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.
- HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.
- GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.
- RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)
- NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.
- FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden). Possible values: [&#34;CONNECT_FAILURE&#34;, &#34;HTTP_5XX&#34;, &#34;GATEWAY_ERROR&#34;, &#34;RETRIABLE_4XX&#34;, &#34;NOT_FOUND&#34;, &#34;FORBIDDEN&#34;] When `null`, the `retry_conditions` field will be omitted from the resulting object.
  - `aws_v4_authentication` (`list[obj]`): Enable AWS Signature Version 4 origin authentication. When `null`, the `aws_v4_authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.aws_v4_authentication.new](#fn-aws_v4_authenticationnew) constructor.
  - `origin_override_action` (`list[obj]`): The override actions, including url rewrites and header
additions, for requests that use this origin. When `null`, the `origin_override_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.new](#fn-origin_override_actionnew) constructor.
  - `origin_redirect` (`list[obj]`): Follow redirects from this origin. When `null`, the `origin_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_redirect.new](#fn-origin_redirectnew) constructor.
  - `timeout` (`list[obj]`): The connection and HTTP timeout configuration for this origin. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeout.new](#fn-timeoutnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_services_edge_cache_origin.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_edge_cache_origin`
Terraform resource.

Unlike [google.network_services_edge_cache_origin.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `failover_origin` (`string`): The Origin resource to try when the current origin cannot be reached.
After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.

The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
A reference to a Topic resource. When `null`, the `failover_origin` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `max_attempts` (`number`): The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.

Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
retryConditions and failoverOrigin to control its own cache fill failures.

The total number of allowed attempts to cache fill across this and failover origins is limited to four.
The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.

The last valid, non-retried response from all origins will be returned to the client.
If no origin returns a valid response, an HTTP 502 will be returned to the client.

Defaults to 1. Must be a value greater than 0 and less than 4. When `null`, the `max_attempts` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `origin_address` (`string`): A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.

This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname

When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
If a Cloud Storage bucket is provided, it must be in the canonical &#34;gs://bucketname&#34; format. Other forms, such as &#34;storage.googleapis.com&#34;, will be rejected.
  - `port` (`number`): The port to connect to the origin on.
Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `protocol` (`string`): The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security &amp; performance.

When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server. Possible values: [&#34;HTTP2&#34;, &#34;HTTPS&#34;, &#34;HTTP&#34;] When `null`, the `protocol` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specifies one or more retry conditions for the configured origin.

If the failure mode during a connection attempt to the origin matches the configured retryCondition(s),
the origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.

The default retryCondition is &#34;CONNECT_FAILURE&#34;.

retryConditions apply to this origin, and not subsequent failoverOrigin(s),
which may specify their own retryConditions and maxAttempts.

Valid values are:

- CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.
- HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.
- GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.
- RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)
- NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.
- FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden). Possible values: [&#34;CONNECT_FAILURE&#34;, &#34;HTTP_5XX&#34;, &#34;GATEWAY_ERROR&#34;, &#34;RETRIABLE_4XX&#34;, &#34;NOT_FOUND&#34;, &#34;FORBIDDEN&#34;] When `null`, the `retry_conditions` field will be omitted from the resulting object.
  - `aws_v4_authentication` (`list[obj]`): Enable AWS Signature Version 4 origin authentication. When `null`, the `aws_v4_authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.aws_v4_authentication.new](#fn-aws_v4_authenticationnew) constructor.
  - `origin_override_action` (`list[obj]`): The override actions, including url rewrites and header
additions, for requests that use this origin. When `null`, the `origin_override_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.new](#fn-origin_override_actionnew) constructor.
  - `origin_redirect` (`list[obj]`): Follow redirects from this origin. When `null`, the `origin_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_redirect.new](#fn-origin_redirectnew) constructor.
  - `timeout` (`list[obj]`): The connection and HTTP timeout configuration for this origin. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeout.new](#fn-timeoutnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_edge_cache_origin` resource into the root Terraform configuration.


### fn withAwsV4Authentication

```ts
withAwsV4Authentication()
```

`google.list[obj].withAwsV4Authentication` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the aws_v4_authentication field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAwsV4AuthenticationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `aws_v4_authentication` field.


### fn withAwsV4AuthenticationMixin

```ts
withAwsV4AuthenticationMixin()
```

`google.list[obj].withAwsV4AuthenticationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the aws_v4_authentication field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAwsV4Authentication](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `aws_v4_authentication` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFailoverOrigin

```ts
withFailoverOrigin()
```

`google.string.withFailoverOrigin` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the failover_origin field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `failover_origin` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMaxAttempts

```ts
withMaxAttempts()
```

`google.number.withMaxAttempts` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_attempts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_attempts` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOriginAddress

```ts
withOriginAddress()
```

`google.string.withOriginAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the origin_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `origin_address` field.


### fn withOriginOverrideAction

```ts
withOriginOverrideAction()
```

`google.list[obj].withOriginOverrideAction` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the origin_override_action field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOriginOverrideActionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `origin_override_action` field.


### fn withOriginOverrideActionMixin

```ts
withOriginOverrideActionMixin()
```

`google.list[obj].withOriginOverrideActionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the origin_override_action field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOriginOverrideAction](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `origin_override_action` field.


### fn withOriginRedirect

```ts
withOriginRedirect()
```

`google.list[obj].withOriginRedirect` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the origin_redirect field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOriginRedirectMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `origin_redirect` field.


### fn withOriginRedirectMixin

```ts
withOriginRedirectMixin()
```

`google.list[obj].withOriginRedirectMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the origin_redirect field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOriginRedirect](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `origin_redirect` field.


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


### fn withProtocol

```ts
withProtocol()
```

`google.string.withProtocol` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `protocol` field.


### fn withRetryConditions

```ts
withRetryConditions()
```

`google.list.withRetryConditions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the retry_conditions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `retry_conditions` field.


### fn withTimeout

```ts
withTimeout()
```

`google.list[obj].withTimeout` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the timeout field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTimeoutMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `timeout` field.


### fn withTimeoutMixin

```ts
withTimeoutMixin()
```

`google.list[obj].withTimeoutMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the timeout field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTimeout](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `timeout` field.


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


## obj aws_v4_authentication



### fn aws_v4_authentication.new

```ts
new()
```


`google.network_services_edge_cache_origin.aws_v4_authentication.new` constructs a new object with attributes and blocks configured for the `aws_v4_authentication`
Terraform sub block.



**Args**:
  - `access_key_id` (`string`): The access key ID your origin uses to identify the key.
  - `origin_region` (`string`): The name of the AWS region that your origin is in.
  - `secret_access_key_version` (`string`): The Secret Manager secret version of the secret access key used by your origin.

This is the resource name of the secret version in the format &#39;projects/*/secrets/*/versions/*&#39; where the &#39;*&#39; values are replaced by the project, secret, and version you require.

**Returns**:
  - An attribute object that represents the `aws_v4_authentication` sub block.


## obj origin_override_action



### fn origin_override_action.new

```ts
new()
```


`google.network_services_edge_cache_origin.origin_override_action.new` constructs a new object with attributes and blocks configured for the `origin_override_action`
Terraform sub block.



**Args**:
  - `header_action` (`list[obj]`): The header actions, including adding and removing
headers, for request handled by this origin. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.header_action.new](#fn-origin_override_actionheader_actionnew) constructor.
  - `url_rewrite` (`list[obj]`): The URL rewrite configuration for request that are
handled by this origin. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.url_rewrite.new](#fn-origin_override_actionurl_rewritenew) constructor.

**Returns**:
  - An attribute object that represents the `origin_override_action` sub block.


## obj origin_override_action.header_action



### fn origin_override_action.header_action.new

```ts
new()
```


`google.network_services_edge_cache_origin.origin_override_action.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_add` (`list[obj]`): Describes a header to add.

You may add a maximum of 5 request headers. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.header_action.request_headers_to_add.new](#fn-origin_override_actionorigin_override_actionrequest_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj origin_override_action.header_action.request_headers_to_add



### fn origin_override_action.header_action.request_headers_to_add.new

```ts
new()
```


`google.network_services_edge_cache_origin.origin_override_action.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): Whether to replace all existing headers with the same name.

By default, added header values are appended
to the response or request headers with the
same field names. The added values are
separated by commas.

To overwrite existing values, set &#39;replace&#39; to &#39;true&#39;. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj origin_override_action.url_rewrite



### fn origin_override_action.url_rewrite.new

```ts
new()
```


`google.network_services_edge_cache_origin.origin_override_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected
origin, the request&#39;s host header is replaced with
contents of the hostRewrite.

This value must be between 1 and 255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_rewrite` sub block.


## obj origin_redirect



### fn origin_redirect.new

```ts
new()
```


`google.network_services_edge_cache_origin.origin_redirect.new` constructs a new object with attributes and blocks configured for the `origin_redirect`
Terraform sub block.



**Args**:
  - `redirect_conditions` (`list`): The set of redirect response codes that the CDN
follows. Values of
[RedirectConditions](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins#redirectconditions)
are accepted. When `null`, the `redirect_conditions` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `origin_redirect` sub block.


## obj timeout



### fn timeout.new

```ts
new()
```


`google.network_services_edge_cache_origin.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`
Terraform sub block.



**Args**:
  - `connect_timeout` (`string`): The maximum duration to wait for a single origin connection to be established, including DNS lookup, TLS handshake and TCP/QUIC connection establishment.

Defaults to 5 seconds. The timeout must be a value between 1s and 15s.

The connectTimeout capped by the deadline set by the request&#39;s maxAttemptsTimeout.  The last connection attempt may have a smaller connectTimeout in order to adhere to the overall maxAttemptsTimeout. When `null`, the `connect_timeout` field will be omitted from the resulting object.
  - `max_attempts_timeout` (`string`): The maximum time across all connection attempts to the origin, including failover origins, before returning an error to the client. A HTTP 504 will be returned if the timeout is reached before a response is returned.

Defaults to 15 seconds. The timeout must be a value between 1s and 30s.

If a failoverOrigin is specified, the maxAttemptsTimeout of the first configured origin sets the deadline for all connection attempts across all failoverOrigins. When `null`, the `max_attempts_timeout` field will be omitted from the resulting object.
  - `read_timeout` (`string`): The maximum duration to wait between reads of a single HTTP connection/stream.

Defaults to 15 seconds.  The timeout must be a value between 1s and 30s.

The readTimeout is capped by the responseTimeout.  All reads of the HTTP connection/stream must be completed by the deadline set by the responseTimeout.

If the response headers have already been written to the connection, the response will be truncated and logged. When `null`, the `read_timeout` field will be omitted from the resulting object.
  - `response_timeout` (`string`): The maximum duration to wait for the last byte of a response to arrive when reading from the HTTP connection/stream.

Defaults to 30 seconds. The timeout must be a value between 1s and 120s.

The responseTimeout starts after the connection has been established.

This also applies to HTTP Chunked Transfer Encoding responses, and/or when an open-ended Range request is made to the origin. Origins that take longer to write additional bytes to the response than the configured responseTimeout will result in an error being returned to the client.

If the response headers have already been written to the connection, the response will be truncated and logged. When `null`, the `response_timeout` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeout` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_services_edge_cache_origin.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
