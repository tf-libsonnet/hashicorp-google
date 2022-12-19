local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_services_edge_cache_origin', url='', help='`network_services_edge_cache_origin` represents the `google_network_services_edge_cache_origin` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  aws_v4_authentication:: {
    '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.aws_v4_authentication.new` constructs a new object with attributes and blocks configured for the `aws_v4_authentication`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_key_id` (`string`): The access key ID your origin uses to identify the key.\n  - `origin_region` (`string`): The name of the AWS region that your origin is in.\n  - `secret_access_key_version` (`string`): The Secret Manager secret version of the secret access key used by your origin.\n\nThis is the resource name of the secret version in the format &#39;projects/*/secrets/*/versions/*&#39; where the &#39;*&#39; values are replaced by the project, secret, and version you require.\n\n**Returns**:\n  - An attribute object that represents the `aws_v4_authentication` sub block.\n', args=[]),
    new(
      access_key_id,
      origin_region,
      secret_access_key_version
    ):: std.prune(a={
      access_key_id: access_key_id,
      origin_region: origin_region,
      secret_access_key_version: secret_access_key_version,
    }),
  },
  '#new':: d.fn(help="\n`google.network_services_edge_cache_origin.new` injects a new `google_network_services_edge_cache_origin` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_services_edge_cache_origin.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_services_edge_cache_origin` using the reference:\n\n    $._ref.google_network_services_edge_cache_origin.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_services_edge_cache_origin.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `failover_origin` (`string`): The Origin resource to try when the current origin cannot be reached.\nAfter maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.\n\nThe value of timeout.maxAttemptsTimeout dictates the timeout across all origins.\nA reference to a Topic resource. When `null`, the `failover_origin` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `max_attempts` (`number`): The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.\n\nOnce maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,\nretryConditions and failoverOrigin to control its own cache fill failures.\n\nThe total number of allowed attempts to cache fill across this and failover origins is limited to four.\nThe total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.\n\nThe last valid, non-retried response from all origins will be returned to the client.\nIf no origin returns a valid response, an HTTP 502 will be returned to the client.\n\nDefaults to 1. Must be a value greater than 0 and less than 4. When `null`, the `max_attempts` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `origin_address` (`string`): A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.\n\nThis address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname\n\nWhen providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.\nIf a Cloud Storage bucket is provided, it must be in the canonical \u0026#34;gs://bucketname\u0026#34; format. Other forms, such as \u0026#34;storage.googleapis.com\u0026#34;, will be rejected.\n  - `port` (`number`): The port to connect to the origin on.\nDefaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `protocol` (`string`): The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security \u0026amp; performance.\n\nWhen using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server. Possible values: [\u0026#34;HTTP2\u0026#34;, \u0026#34;HTTPS\u0026#34;, \u0026#34;HTTP\u0026#34;] When `null`, the `protocol` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specifies one or more retry conditions for the configured origin.\n\nIf the failure mode during a connection attempt to the origin matches the configured retryCondition(s),\nthe origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.\n\nThe default retryCondition is \u0026#34;CONNECT_FAILURE\u0026#34;.\n\nretryConditions apply to this origin, and not subsequent failoverOrigin(s),\nwhich may specify their own retryConditions and maxAttempts.\n\nValid values are:\n\n- CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.\n- HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.\n- GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.\n- RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)\n- NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.\n- FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden). Possible values: [\u0026#34;CONNECT_FAILURE\u0026#34;, \u0026#34;HTTP_5XX\u0026#34;, \u0026#34;GATEWAY_ERROR\u0026#34;, \u0026#34;RETRIABLE_4XX\u0026#34;, \u0026#34;NOT_FOUND\u0026#34;, \u0026#34;FORBIDDEN\u0026#34;] When `null`, the `retry_conditions` field will be omitted from the resulting object.\n  - `aws_v4_authentication` (`list[obj]`): Enable AWS Signature Version 4 origin authentication. When `null`, the `aws_v4_authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.aws_v4_authentication.new](#fn-networkservicesedgecacheoriginawsv4authenticationnew) constructor.\n  - `origin_override_action` (`list[obj]`): The override actions, including url rewrites and header\nadditions, for requests that use this origin. When `null`, the `origin_override_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.new](#fn-networkservicesedgecacheoriginoriginoverrideactionnew) constructor.\n  - `origin_redirect` (`list[obj]`): Follow redirects from this origin. When `null`, the `origin_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_redirect.new](#fn-networkservicesedgecacheoriginoriginredirectnew) constructor.\n  - `timeout` (`list[obj]`): The connection and HTTP timeout configuration for this origin. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeout.new](#fn-networkservicesedgecacheorigintimeoutnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeouts.new](#fn-networkservicesedgecacheorigintimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    origin_address,
    aws_v4_authentication=null,
    description=null,
    failover_origin=null,
    labels=null,
    max_attempts=null,
    origin_override_action=null,
    origin_redirect=null,
    port=null,
    project=null,
    protocol=null,
    retry_conditions=null,
    timeout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_edge_cache_origin',
    label=resourceLabel,
    attrs=self.newAttrs(
      aws_v4_authentication=aws_v4_authentication,
      description=description,
      failover_origin=failover_origin,
      labels=labels,
      max_attempts=max_attempts,
      name=name,
      origin_address=origin_address,
      origin_override_action=origin_override_action,
      origin_redirect=origin_redirect,
      port=port,
      project=project,
      protocol=protocol,
      retry_conditions=retry_conditions,
      timeout=timeout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_services_edge_cache_origin.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_edge_cache_origin`\nTerraform resource.\n\nUnlike [google.network_services_edge_cache_origin.new](#fn-networkservicesedgecacheoriginnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `failover_origin` (`string`): The Origin resource to try when the current origin cannot be reached.\nAfter maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.\n\nThe value of timeout.maxAttemptsTimeout dictates the timeout across all origins.\nA reference to a Topic resource. When `null`, the `failover_origin` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `max_attempts` (`number`): The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.\n\nOnce maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,\nretryConditions and failoverOrigin to control its own cache fill failures.\n\nThe total number of allowed attempts to cache fill across this and failover origins is limited to four.\nThe total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.\n\nThe last valid, non-retried response from all origins will be returned to the client.\nIf no origin returns a valid response, an HTTP 502 will be returned to the client.\n\nDefaults to 1. Must be a value greater than 0 and less than 4. When `null`, the `max_attempts` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `origin_address` (`string`): A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.\n\nThis address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname\n\nWhen providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.\nIf a Cloud Storage bucket is provided, it must be in the canonical &#34;gs://bucketname&#34; format. Other forms, such as &#34;storage.googleapis.com&#34;, will be rejected.\n  - `port` (`number`): The port to connect to the origin on.\nDefaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `protocol` (`string`): The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security &amp; performance.\n\nWhen using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server. Possible values: [&#34;HTTP2&#34;, &#34;HTTPS&#34;, &#34;HTTP&#34;] When `null`, the `protocol` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specifies one or more retry conditions for the configured origin.\n\nIf the failure mode during a connection attempt to the origin matches the configured retryCondition(s),\nthe origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.\n\nThe default retryCondition is &#34;CONNECT_FAILURE&#34;.\n\nretryConditions apply to this origin, and not subsequent failoverOrigin(s),\nwhich may specify their own retryConditions and maxAttempts.\n\nValid values are:\n\n- CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.\n- HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.\n- GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.\n- RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)\n- NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.\n- FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden). Possible values: [&#34;CONNECT_FAILURE&#34;, &#34;HTTP_5XX&#34;, &#34;GATEWAY_ERROR&#34;, &#34;RETRIABLE_4XX&#34;, &#34;NOT_FOUND&#34;, &#34;FORBIDDEN&#34;] When `null`, the `retry_conditions` field will be omitted from the resulting object.\n  - `aws_v4_authentication` (`list[obj]`): Enable AWS Signature Version 4 origin authentication. When `null`, the `aws_v4_authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.aws_v4_authentication.new](#fn-networkservicesedgecacheoriginawsv4authenticationnew) constructor.\n  - `origin_override_action` (`list[obj]`): The override actions, including url rewrites and header\nadditions, for requests that use this origin. When `null`, the `origin_override_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.new](#fn-networkservicesedgecacheoriginoriginoverrideactionnew) constructor.\n  - `origin_redirect` (`list[obj]`): Follow redirects from this origin. When `null`, the `origin_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_redirect.new](#fn-networkservicesedgecacheoriginoriginredirectnew) constructor.\n  - `timeout` (`list[obj]`): The connection and HTTP timeout configuration for this origin. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeout.new](#fn-networkservicesedgecacheorigintimeoutnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.timeouts.new](#fn-networkservicesedgecacheorigintimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_edge_cache_origin` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    origin_address,
    aws_v4_authentication=null,
    description=null,
    failover_origin=null,
    labels=null,
    max_attempts=null,
    origin_override_action=null,
    origin_redirect=null,
    port=null,
    project=null,
    protocol=null,
    retry_conditions=null,
    timeout=null,
    timeouts=null
  ):: std.prune(a={
    aws_v4_authentication: aws_v4_authentication,
    description: description,
    failover_origin: failover_origin,
    labels: labels,
    max_attempts: max_attempts,
    name: name,
    origin_address: origin_address,
    origin_override_action: origin_override_action,
    origin_redirect: origin_redirect,
    port: port,
    project: project,
    protocol: protocol,
    retry_conditions: retry_conditions,
    timeout: timeout,
    timeouts: timeouts,
  }),
  origin_override_action:: {
    header_action:: {
      '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.origin_override_action.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_add` (`list[obj]`): Describes a header to add.\n\nYou may add a maximum of 5 request headers. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.header_action.request_headers_to_add.new](#fn-headeractionrequestheaderstoaddnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
      new(
        request_headers_to_add=null
      ):: std.prune(a={
        request_headers_to_add: request_headers_to_add,
      }),
      request_headers_to_add:: {
        '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.origin_override_action.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): Whether to replace all existing headers with the same name.\n\nBy default, added header values are appended\nto the response or request headers with the\nsame field names. The added values are\nseparated by commas.\n\nTo overwrite existing values, set &#39;replace&#39; to &#39;true&#39;. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
        new(
          header_name,
          header_value,
          replace=null
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
          replace: replace,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.origin_override_action.new` constructs a new object with attributes and blocks configured for the `origin_override_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_action` (`list[obj]`): The header actions, including adding and removing\nheaders, for request handled by this origin. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.header_action.new](#fn-originoverrideactionheaderactionnew) constructor.\n  - `url_rewrite` (`list[obj]`): The URL rewrite configuration for request that are\nhandled by this origin. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_origin.origin_override_action.url_rewrite.new](#fn-originoverrideactionurlrewritenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `origin_override_action` sub block.\n', args=[]),
    new(
      header_action=null,
      url_rewrite=null
    ):: std.prune(a={
      header_action: header_action,
      url_rewrite: url_rewrite,
    }),
    url_rewrite:: {
      '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.origin_override_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected\norigin, the request&#39;s host header is replaced with\ncontents of the hostRewrite.\n\nThis value must be between 1 and 255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
      new(
        host_rewrite=null
      ):: std.prune(a={
        host_rewrite: host_rewrite,
      }),
    },
  },
  origin_redirect:: {
    '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.origin_redirect.new` constructs a new object with attributes and blocks configured for the `origin_redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `redirect_conditions` (`list`): The set of redirect response codes that the CDN\nfollows. Values of\n[RedirectConditions](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins#redirectconditions)\nare accepted. When `null`, the `redirect_conditions` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `origin_redirect` sub block.\n', args=[]),
    new(
      redirect_conditions=null
    ):: std.prune(a={
      redirect_conditions: redirect_conditions,
    }),
  },
  timeout:: {
    '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `connect_timeout` (`string`): The maximum duration to wait for a single origin connection to be established, including DNS lookup, TLS handshake and TCP/QUIC connection establishment.\n\nDefaults to 5 seconds. The timeout must be a value between 1s and 15s.\n\nThe connectTimeout capped by the deadline set by the request&#39;s maxAttemptsTimeout.  The last connection attempt may have a smaller connectTimeout in order to adhere to the overall maxAttemptsTimeout. When `null`, the `connect_timeout` field will be omitted from the resulting object.\n  - `max_attempts_timeout` (`string`): The maximum time across all connection attempts to the origin, including failover origins, before returning an error to the client. A HTTP 504 will be returned if the timeout is reached before a response is returned.\n\nDefaults to 15 seconds. The timeout must be a value between 1s and 30s.\n\nIf a failoverOrigin is specified, the maxAttemptsTimeout of the first configured origin sets the deadline for all connection attempts across all failoverOrigins. When `null`, the `max_attempts_timeout` field will be omitted from the resulting object.\n  - `read_timeout` (`string`): The maximum duration to wait between reads of a single HTTP connection/stream.\n\nDefaults to 15 seconds.  The timeout must be a value between 1s and 30s.\n\nThe readTimeout is capped by the responseTimeout.  All reads of the HTTP connection/stream must be completed by the deadline set by the responseTimeout.\n\nIf the response headers have already been written to the connection, the response will be truncated and logged. When `null`, the `read_timeout` field will be omitted from the resulting object.\n  - `response_timeout` (`string`): The maximum duration to wait for the last byte of a response to arrive when reading from the HTTP connection/stream.\n\nDefaults to 30 seconds. The timeout must be a value between 1s and 120s.\n\nThe responseTimeout starts after the connection has been established.\n\nThis also applies to HTTP Chunked Transfer Encoding responses, and/or when an open-ended Range request is made to the origin. Origins that take longer to write additional bytes to the response than the configured responseTimeout will result in an error being returned to the client.\n\nIf the response headers have already been written to the connection, the response will be truncated and logged. When `null`, the `response_timeout` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeout` sub block.\n', args=[]),
    new(
      connect_timeout=null,
      max_attempts_timeout=null,
      read_timeout=null,
      response_timeout=null
    ):: std.prune(a={
      connect_timeout: connect_timeout,
      max_attempts_timeout: max_attempts_timeout,
      read_timeout: read_timeout,
      response_timeout: response_timeout,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_services_edge_cache_origin.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAwsV4Authentication':: d.fn(help='`google.list[obj].withAwsV4Authentication` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the aws_v4_authentication field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAwsV4AuthenticationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `aws_v4_authentication` field.\n', args=[]),
  withAwsV4Authentication(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          aws_v4_authentication: value,
        },
      },
    },
  },
  '#withAwsV4AuthenticationMixin':: d.fn(help='`google.list[obj].withAwsV4AuthenticationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the aws_v4_authentication field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAwsV4Authentication](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `aws_v4_authentication` field.\n', args=[]),
  withAwsV4AuthenticationMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          aws_v4_authentication+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFailoverOrigin':: d.fn(help='`google.string.withFailoverOrigin` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the failover_origin field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `failover_origin` field.\n', args=[]),
  withFailoverOrigin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          failover_origin: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMaxAttempts':: d.fn(help='`google.number.withMaxAttempts` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_attempts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_attempts` field.\n', args=[]),
  withMaxAttempts(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          max_attempts: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOriginAddress':: d.fn(help='`google.string.withOriginAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the origin_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `origin_address` field.\n', args=[]),
  withOriginAddress(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_address: value,
        },
      },
    },
  },
  '#withOriginOverrideAction':: d.fn(help='`google.list[obj].withOriginOverrideAction` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the origin_override_action field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOriginOverrideActionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `origin_override_action` field.\n', args=[]),
  withOriginOverrideAction(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_override_action: value,
        },
      },
    },
  },
  '#withOriginOverrideActionMixin':: d.fn(help='`google.list[obj].withOriginOverrideActionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the origin_override_action field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOriginOverrideAction](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `origin_override_action` field.\n', args=[]),
  withOriginOverrideActionMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_override_action+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOriginRedirect':: d.fn(help='`google.list[obj].withOriginRedirect` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the origin_redirect field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOriginRedirectMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `origin_redirect` field.\n', args=[]),
  withOriginRedirect(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_redirect: value,
        },
      },
    },
  },
  '#withOriginRedirectMixin':: d.fn(help='`google.list[obj].withOriginRedirectMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the origin_redirect field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOriginRedirect](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `origin_redirect` field.\n', args=[]),
  withOriginRedirectMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_redirect+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProtocol':: d.fn(help='`google.string.withProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `protocol` field.\n', args=[]),
  withProtocol(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  '#withRetryConditions':: d.fn(help='`google.list.withRetryConditions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the retry_conditions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `retry_conditions` field.\n', args=[]),
  withRetryConditions(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          retry_conditions: value,
        },
      },
    },
  },
  '#withTimeout':: d.fn(help='`google.list[obj].withTimeout` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the timeout field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTimeoutMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `timeout` field.\n', args=[]),
  withTimeout(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  '#withTimeoutMixin':: d.fn(help='`google.list[obj].withTimeoutMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the timeout field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTimeout](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `timeout` field.\n', args=[]),
  withTimeoutMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeout+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
