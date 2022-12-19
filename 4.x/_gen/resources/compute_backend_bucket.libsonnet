local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_backend_bucket', url='', help='`compute_backend_bucket` represents the `google_compute_backend_bucket` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  cdn_policy:: {
    bypass_cache_on_request_headers:: {
      '#new':: d.fn(help='\n`google.compute_backend_bucket.cdn_policy.bypass_cache_on_request_headers.new` constructs a new object with attributes and blocks configured for the `bypass_cache_on_request_headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The header field name to match on when bypassing cache. Values are case-insensitive. When `null`, the `header_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `bypass_cache_on_request_headers` sub block.\n', args=[]),
      new(
        header_name=null
      ):: std.prune(a={
        header_name: header_name,
      }),
    },
    cache_key_policy:: {
      '#new':: d.fn(help='\n`google.compute_backend_bucket.cdn_policy.cache_key_policy.new` constructs a new object with attributes and blocks configured for the `cache_key_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `include_http_headers` (`list`): Allows HTTP request headers (by name) to be used in the\ncache key. When `null`, the `include_http_headers` field will be omitted from the resulting object.\n  - `query_string_whitelist` (`list`): Names of query string parameters to include in cache keys.\nDefault parameters are always included. &#39;&amp;&#39; and &#39;=&#39; will\nbe percent encoded and not treated as delimiters. When `null`, the `query_string_whitelist` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cache_key_policy` sub block.\n', args=[]),
      new(
        include_http_headers=null,
        query_string_whitelist=null
      ):: std.prune(a={
        include_http_headers: include_http_headers,
        query_string_whitelist: query_string_whitelist,
      }),
    },
    negative_caching_policy:: {
      '#new':: d.fn(help='\n`google.compute_backend_bucket.cdn_policy.negative_caching_policy.new` constructs a new object with attributes and blocks configured for the `negative_caching_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `code` (`number`): The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501\ncan be specified as values, and you cannot specify a status code more than once. When `null`, the `code` field will be omitted from the resulting object.\n  - `ttl` (`number`): The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s\n(30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL. When `null`, the `ttl` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `negative_caching_policy` sub block.\n', args=[]),
      new(
        code=null,
        ttl=null
      ):: std.prune(a={
        code: code,
        ttl: ttl,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_backend_bucket.cdn_policy.new` constructs a new object with attributes and blocks configured for the `cdn_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cache_mode` (`string`): Specifies the cache setting for all responses from this backend.\nThe possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [&#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, &#34;CACHE_ALL_STATIC&#34;] When `null`, the `cache_mode` field will be omitted from the resulting object.\n  - `client_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `client_ttl` field will be omitted from the resulting object.\n  - `default_ttl` (`number`): Specifies the default TTL for cached content served by this origin for responses\nthat do not have an existing valid TTL (max-age or s-max-age). When `null`, the `default_ttl` field will be omitted from the resulting object.\n  - `max_ttl` (`number`): Specifies the maximum allowed TTL for cached content served by this origin. When `null`, the `max_ttl` field will be omitted from the resulting object.\n  - `negative_caching` (`bool`): Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. When `null`, the `negative_caching` field will be omitted from the resulting object.\n  - `request_coalescing` (`bool`): If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin. When `null`, the `request_coalescing` field will be omitted from the resulting object.\n  - `serve_while_stale` (`number`): Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. When `null`, the `serve_while_stale` field will be omitted from the resulting object.\n  - `signed_url_cache_max_age_sec` (`number`): Maximum number of seconds the response to a signed URL request will\nbe considered fresh. After this time period,\nthe response will be revalidated before being served.\nWhen serving responses to signed URL requests,\nCloud CDN will internally behave as though\nall responses from this backend had a &#34;Cache-Control: public,\nmax-age=[TTL]&#34; header, regardless of any existing Cache-Control\nheader. The actual headers served in responses will not be altered. When `null`, the `signed_url_cache_max_age_sec` field will be omitted from the resulting object.\n  - `bypass_cache_on_request_headers` (`list[obj]`): Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings. When `null`, the `bypass_cache_on_request_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.bypass_cache_on_request_headers.new](#fn-bypass_cache_on_request_headersnew) constructor.\n  - `cache_key_policy` (`list[obj]`): The CacheKeyPolicy for this CdnPolicy. When `null`, the `cache_key_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.cache_key_policy.new](#fn-cache_key_policynew) constructor.\n  - `negative_caching_policy` (`list[obj]`): Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.\nOmitting the policy and leaving negativeCaching enabled will use Cloud CDN&#39;s default cache TTLs. When `null`, the `negative_caching_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.negative_caching_policy.new](#fn-negative_caching_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cdn_policy` sub block.\n', args=[]),
    new(
      bypass_cache_on_request_headers=null,
      cache_key_policy=null,
      cache_mode=null,
      client_ttl=null,
      default_ttl=null,
      max_ttl=null,
      negative_caching=null,
      negative_caching_policy=null,
      request_coalescing=null,
      serve_while_stale=null,
      signed_url_cache_max_age_sec=null
    ):: std.prune(a={
      bypass_cache_on_request_headers: bypass_cache_on_request_headers,
      cache_key_policy: cache_key_policy,
      cache_mode: cache_mode,
      client_ttl: client_ttl,
      default_ttl: default_ttl,
      max_ttl: max_ttl,
      negative_caching: negative_caching,
      negative_caching_policy: negative_caching_policy,
      request_coalescing: request_coalescing,
      serve_while_stale: serve_while_stale,
      signed_url_cache_max_age_sec: signed_url_cache_max_age_sec,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_backend_bucket.new` injects a new `google_compute_backend_bucket` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_backend_bucket.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_backend_bucket` using the reference:\n\n    $._ref.google_compute_backend_bucket.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_backend_bucket.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): Cloud Storage bucket name.\n  - `compression_mode` (`string`): Compress text responses using Brotli or gzip compression, based on the client\u0026#39;s Accept-Encoding header. Possible values: [\u0026#34;AUTOMATIC\u0026#34;, \u0026#34;DISABLED\u0026#34;] When `null`, the `compression_mode` field will be omitted from the resulting object.\n  - `custom_response_headers` (`list`): Headers that the HTTP/S load balancer should add to proxied responses. When `null`, the `custom_response_headers` field will be omitted from the resulting object.\n  - `description` (`string`): An optional textual description of the resource; provided by the\nclient when the resource is created. When `null`, the `description` field will be omitted from the resulting object.\n  - `edge_security_policy` (`string`): The security policy associated with this backend bucket. When `null`, the `edge_security_policy` field will be omitted from the resulting object.\n  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this BackendBucket. When `null`, the `enable_cdn` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this Backend Bucket. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.new](#fn-cdn_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket_name,
    name,
    cdn_policy=null,
    compression_mode=null,
    custom_response_headers=null,
    description=null,
    edge_security_policy=null,
    enable_cdn=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_backend_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      cdn_policy=cdn_policy,
      compression_mode=compression_mode,
      custom_response_headers=custom_response_headers,
      description=description,
      edge_security_policy=edge_security_policy,
      enable_cdn=enable_cdn,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_backend_bucket.newAttrs` constructs a new object with attributes and blocks configured for the `compute_backend_bucket`\nTerraform resource.\n\nUnlike [google.compute_backend_bucket.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): Cloud Storage bucket name.\n  - `compression_mode` (`string`): Compress text responses using Brotli or gzip compression, based on the client&#39;s Accept-Encoding header. Possible values: [&#34;AUTOMATIC&#34;, &#34;DISABLED&#34;] When `null`, the `compression_mode` field will be omitted from the resulting object.\n  - `custom_response_headers` (`list`): Headers that the HTTP/S load balancer should add to proxied responses. When `null`, the `custom_response_headers` field will be omitted from the resulting object.\n  - `description` (`string`): An optional textual description of the resource; provided by the\nclient when the resource is created. When `null`, the `description` field will be omitted from the resulting object.\n  - `edge_security_policy` (`string`): The security policy associated with this backend bucket. When `null`, the `edge_security_policy` field will be omitted from the resulting object.\n  - `enable_cdn` (`bool`): If true, enable Cloud CDN for this BackendBucket. When `null`, the `enable_cdn` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `cdn_policy` (`list[obj]`): Cloud CDN configuration for this Backend Bucket. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.cdn_policy.new](#fn-cdn_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_bucket.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_backend_bucket` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    name,
    cdn_policy=null,
    compression_mode=null,
    custom_response_headers=null,
    description=null,
    edge_security_policy=null,
    enable_cdn=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    cdn_policy: cdn_policy,
    compression_mode: compression_mode,
    custom_response_headers: custom_response_headers,
    description: description,
    edge_security_policy: edge_security_policy,
    enable_cdn: enable_cdn,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_backend_bucket.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withBucketName':: d.fn(help='`google.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withCdnPolicy':: d.fn(help='`google.list[obj].withCdnPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cdn_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCdnPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cdn_policy` field.\n', args=[]),
  withCdnPolicy(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          cdn_policy: value,
        },
      },
    },
  },
  '#withCdnPolicyMixin':: d.fn(help='`google.list[obj].withCdnPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cdn_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCdnPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cdn_policy` field.\n', args=[]),
  withCdnPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          cdn_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCompressionMode':: d.fn(help='`google.string.withCompressionMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the compression_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `compression_mode` field.\n', args=[]),
  withCompressionMode(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          compression_mode: value,
        },
      },
    },
  },
  '#withCustomResponseHeaders':: d.fn(help='`google.list.withCustomResponseHeaders` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the custom_response_headers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `custom_response_headers` field.\n', args=[]),
  withCustomResponseHeaders(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          custom_response_headers: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEdgeSecurityPolicy':: d.fn(help='`google.string.withEdgeSecurityPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the edge_security_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `edge_security_policy` field.\n', args=[]),
  withEdgeSecurityPolicy(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          edge_security_policy: value,
        },
      },
    },
  },
  '#withEnableCdn':: d.fn(help='`google.bool.withEnableCdn` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_cdn field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_cdn` field.\n', args=[]),
  withEnableCdn(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          enable_cdn: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
