---
permalink: /compute_backend_bucket/
---

# compute_backend_bucket

`compute_backend_bucket` represents the `google_compute_backend_bucket` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucketName()`](#fn-withbucketname)
* [`fn withCdnPolicy()`](#fn-withcdnpolicy)
* [`fn withCdnPolicyMixin()`](#fn-withcdnpolicymixin)
* [`fn withCompressionMode()`](#fn-withcompressionmode)
* [`fn withCustomResponseHeaders()`](#fn-withcustomresponseheaders)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEdgeSecurityPolicy()`](#fn-withedgesecuritypolicy)
* [`fn withEnableCdn()`](#fn-withenablecdn)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj cdn_policy`](#obj-cdn_policy)
  * [`fn new()`](#fn-cdn_policynew)
  * [`obj cdn_policy.bypass_cache_on_request_headers`](#obj-cdn_policybypass_cache_on_request_headers)
    * [`fn new()`](#fn-cdn_policybypass_cache_on_request_headersnew)
  * [`obj cdn_policy.cache_key_policy`](#obj-cdn_policycache_key_policy)
    * [`fn new()`](#fn-cdn_policycache_key_policynew)
  * [`obj cdn_policy.negative_caching_policy`](#obj-cdn_policynegative_caching_policy)
    * [`fn new()`](#fn-cdn_policynegative_caching_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_backend_bucket.new` injects a new `google_compute_backend_bucket` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_backend_bucket.new('some_id')

You can get the reference to the `id` field of the created `google.compute_backend_bucket` using the reference:

    $._ref.google_compute_backend_bucket.some_id.get('id')

This is the same as directly entering `"${ google_compute_backend_bucket.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket_name` (`string`): Cloud Storage bucket name.
  - `compression_mode` (`string`): Compress text responses using Brotli or gzip compression, based on the client&#39;s Accept-Encoding header. Possible values: [&#34;AUTOMATIC&#34;, &#34;DISABLED&#34;] When `null`, the `compression_mode` field will be omitted from the resulting object.
  - `custom_response_headers` (`list`): Headers that the HTTP/S load balancer should add to proxied responses. When `null`, the `custom_response_headers` field will be omitted from the resulting object.
  - `description` (`string`): An optional textual description of the resource; provided by the
client when the resource is created. When `null`, the `description` field will be omitted from the resulting object.
  - `edge_security_policy` (`string`): The security policy associated with this backend bucket. When `null`, the `edge_security_policy` field will be omitted from the resulting object.
  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this BackendBucket. When `null`, the `enable_cdn` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this Backend Bucket. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.new](#fn-cdn_policynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_backend_bucket.newAttrs` constructs a new object with attributes and blocks configured for the `compute_backend_bucket`
Terraform resource.

Unlike [google.compute_backend_bucket.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket_name` (`string`): Cloud Storage bucket name.
  - `compression_mode` (`string`): Compress text responses using Brotli or gzip compression, based on the client&#39;s Accept-Encoding header. Possible values: [&#34;AUTOMATIC&#34;, &#34;DISABLED&#34;] When `null`, the `compression_mode` field will be omitted from the resulting object.
  - `custom_response_headers` (`list`): Headers that the HTTP/S load balancer should add to proxied responses. When `null`, the `custom_response_headers` field will be omitted from the resulting object.
  - `description` (`string`): An optional textual description of the resource; provided by the
client when the resource is created. When `null`, the `description` field will be omitted from the resulting object.
  - `edge_security_policy` (`string`): The security policy associated with this backend bucket. When `null`, the `edge_security_policy` field will be omitted from the resulting object.
  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this BackendBucket. When `null`, the `enable_cdn` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this Backend Bucket. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.new](#fn-cdn_policynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_backend_bucket` resource into the root Terraform configuration.


### fn withBucketName

```ts
withBucketName()
```

`google.string.withBucketName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket_name` field.


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


### fn withCompressionMode

```ts
withCompressionMode()
```

`google.string.withCompressionMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the compression_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `compression_mode` field.


### fn withCustomResponseHeaders

```ts
withCustomResponseHeaders()
```

`google.list.withCustomResponseHeaders` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the custom_response_headers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `custom_response_headers` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEdgeSecurityPolicy

```ts
withEdgeSecurityPolicy()
```

`google.string.withEdgeSecurityPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the edge_security_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `edge_security_policy` field.


### fn withEnableCdn

```ts
withEnableCdn()
```

`google.bool.withEnableCdn` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_cdn field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_cdn` field.


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


## obj cdn_policy



### fn cdn_policy.new

```ts
new()
```


`google.compute_backend_bucket.cdn_policy.new` constructs a new object with attributes and blocks configured for the `cdn_policy`
Terraform sub block.



**Args**:
  - `cache_mode` (`string`): Specifies the cache setting for all responses from this backend.
The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [&#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, &#34;CACHE_ALL_STATIC&#34;] When `null`, the `cache_mode` field will be omitted from the resulting object.
  - `client_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `client_ttl` field will be omitted from the resulting object.
  - `default_ttl` (`number`): Specifies the default TTL for cached content served by this origin for responses
that do not have an existing valid TTL (max-age or s-max-age). When `null`, the `default_ttl` field will be omitted from the resulting object.
  - `max_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `max_ttl` field will be omitted from the resulting object.
  - `negative_caching` (`bool`): Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. When `null`, the `negative_caching` field will be omitted from the resulting object.
  - `request_coalescing` (`bool`): If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin. When `null`, the `request_coalescing` field will be omitted from the resulting object.
  - `serve_while_stale` (`number`): Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. When `null`, the `serve_while_stale` field will be omitted from the resulting object.
  - `signed_url_cache_max_age_sec` (`number`): Maximum number of seconds the response to a signed URL request will
be considered fresh. After this time period,
the response will be revalidated before being served.
When serving responses to signed URL requests,
Cloud CDN will internally behave as though
all responses from this backend had a &#34;Cache-Control: public,
max-age=[TTL]&#34; header, regardless of any existing Cache-Control
header. The actual headers served in responses will not be altered. When `null`, the `signed_url_cache_max_age_sec` field will be omitted from the resulting object.
  - `bypass_cache_on_request_headers` (`list[obj]`): Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings. When `null`, the `bypass_cache_on_request_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.bypass_cache_on_request_headers.new](#fn-compute_backend_bucketbypass_cache_on_request_headersnew) constructor.
  - `cache_key_policy` (`list[obj]`): The CacheKeyPolicy for this CdnPolicy. When `null`, the `cache_key_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.cache_key_policy.new](#fn-compute_backend_bucketcache_key_policynew) constructor.
  - `negative_caching_policy` (`list[obj]`): Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
Omitting the policy and leaving negativeCaching enabled will use Cloud CDN&#39;s default cache TTLs. When `null`, the `negative_caching_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.negative_caching_policy.new](#fn-compute_backend_bucketnegative_caching_policynew) constructor.

**Returns**:
  - An attribute object that represents the `cdn_policy` sub block.


## obj cdn_policy.bypass_cache_on_request_headers



### fn cdn_policy.bypass_cache_on_request_headers.new

```ts
new()
```


`google.compute_backend_bucket.cdn_policy.bypass_cache_on_request_headers.new` constructs a new object with attributes and blocks configured for the `bypass_cache_on_request_headers`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The header field name to match on when bypassing cache. Values are case-insensitive. When `null`, the `header_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `bypass_cache_on_request_headers` sub block.


## obj cdn_policy.cache_key_policy



### fn cdn_policy.cache_key_policy.new

```ts
new()
```


`google.compute_backend_bucket.cdn_policy.cache_key_policy.new` constructs a new object with attributes and blocks configured for the `cache_key_policy`
Terraform sub block.



**Args**:
  - `include_http_headers` (`list`): Allows HTTP request headers (by name) to be used in the
cache key. When `null`, the `include_http_headers` field will be omitted from the resulting object.
  - `query_string_whitelist` (`list`): Names of query string parameters to include in cache keys.
Default parameters are always included. &#39;&amp;&#39; and &#39;=&#39; will
be percent encoded and not treated as delimiters. When `null`, the `query_string_whitelist` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cache_key_policy` sub block.


## obj cdn_policy.negative_caching_policy



### fn cdn_policy.negative_caching_policy.new

```ts
new()
```


`google.compute_backend_bucket.cdn_policy.negative_caching_policy.new` constructs a new object with attributes and blocks configured for the `negative_caching_policy`
Terraform sub block.



**Args**:
  - `code` (`number`): The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
can be specified as values, and you cannot specify a status code more than once. When `null`, the `code` field will be omitted from the resulting object.
  - `ttl` (`number`): The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
(30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL. When `null`, the `ttl` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `negative_caching_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_backend_bucket.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
