local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_url_map', url='', help='`compute_url_map` represents the `google_compute_url_map` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  default_route_action:: {
    cors_policy:: {
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials.\nThis translates to the Access-Control-Allow-Credentials header. When `null`, the `allow_credentials` field will be omitted from the resulting object.\n  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.\n  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.\n  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For regular expression grammar\nplease see en.cppreference.com/w/cpp/regex/ecmascript\nAn origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.\n  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests.\nAn origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origins` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.\n  - `max_age` (`number`): Specifies how long results of a preflight request can be cached in seconds.\nThis translates to the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cors_policy` sub block.\n', args=[]),
      new(
        allow_credentials=null,
        allow_headers=null,
        allow_methods=null,
        allow_origin_regexes=null,
        allow_origins=null,
        disabled=null,
        expose_headers=null,
        max_age=null
      ):: std.prune(a={
        allow_credentials: allow_credentials,
        allow_headers: allow_headers,
        allow_methods: allow_methods,
        allow_origin_regexes: allow_origin_regexes,
        allow_origins: allow_origins,
        disabled: disabled,
        expose_headers: expose_headers,
        max_age: max_age,
      }),
    },
    fault_injection_policy:: {
      abort:: {
        '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_status` (`number`): The HTTP status code used to abort the request.\nThe value must be between 200 and 599 inclusive. When `null`, the `http_status` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.\nThe value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `abort` sub block.\n', args=[]),
        new(
          http_status=null,
          percentage=null
        ):: std.prune(a={
          http_status: http_status,
          percentage: percentage,
        }),
      },
      delay:: {
        fixed_delay:: {
          '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are\nrepresented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.\nNote: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fixed_delay` sub block.\n', args=[]),
          new(
            nanos=null,
            seconds=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
        '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.\nThe value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.\n  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.delay.fixed_delay.new](#fn-delayfixed_delaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `delay` sub block.\n', args=[]),
        new(
          fixed_delay=null,
          percentage=null
        ):: std.prune(a={
          fixed_delay: fixed_delay,
          percentage: percentage,
        }),
      },
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault injection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.abort.new](#fn-fault_injection_policyabortnew) constructor.\n  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault injection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.delay.new](#fn-fault_injection_policydelaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fault_injection_policy` sub block.\n', args=[]),
      new(
        abort=null,
        delay=null
      ):: std.prune(a={
        abort: abort,
        delay: delay,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.new` constructs a new object with attributes and blocks configured for the `default_route_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see\n[W3C Recommendation for Cross Origin Resource Sharing](https://www.w3.org/TR/cors/) When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.cors_policy.new](#fn-default_route_actioncors_policynew) constructor.\n  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.\nAs part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a\npercentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted\nby the Loadbalancer for a percentage of requests.\n\ntimeout and retryPolicy will be ignored by clients that are configured with a faultInjectionPolicy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.new](#fn-default_route_actionfault_injection_policynew) constructor.\n  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are shadowed to a separate mirrored backend service.\nLoadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service,\nthe host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.request_mirror_policy.new](#fn-default_route_actionrequest_mirror_policynew) constructor.\n  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.retry_policy.new](#fn-default_route_actionretry_policynew) constructor.\n  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time the request has been\nfully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.\n\nIf not specified, will use the largest timeout among all backend services associated with the route. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.timeout.new](#fn-default_route_actiontimeoutnew) constructor.\n  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to the matched service. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.url_rewrite.new](#fn-default_route_actionurl_rewritenew) constructor.\n  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match occurs.\nThe weights determine the fraction of traffic that flows to their corresponding backend service.\nIf all traffic needs to go to a single backend service, there must be one weightedBackendService\nwith weight set to a non 0 number.\n\nOnce a backendService is identified and before forwarding the request to the backend service,\nadvanced routing actions like Url rewrites and header transformations are applied depending on\nadditional settings specified in this HttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.new](#fn-default_route_actionweighted_backend_servicesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `default_route_action` sub block.\n', args=[]),
    new(
      cors_policy=null,
      fault_injection_policy=null,
      request_mirror_policy=null,
      retry_policy=null,
      timeout=null,
      url_rewrite=null,
      weighted_backend_services=null
    ):: std.prune(a={
      cors_policy: cors_policy,
      fault_injection_policy: fault_injection_policy,
      request_mirror_policy: request_mirror_policy,
      retry_policy: retry_policy,
      timeout: timeout,
      url_rewrite: url_rewrite,
      weighted_backend_services: weighted_backend_services,
    }),
    request_mirror_policy:: {
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The full or partial URL to the BackendService resource being mirrored to.\n\n**Returns**:\n  - An attribute object that represents the `request_mirror_policy` sub block.\n', args=[]),
      new(
        backend_service
      ):: std.prune(a={
        backend_service: backend_service,
      }),
    },
    retry_policy:: {
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0. If not specified, defaults to 1. When `null`, the `num_retries` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specfies one or more conditions when this retry rule applies. Valid values are:\n\n* 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code,\n  or if the backend service does not respond at all, example: disconnects, reset, read timeout,\n* connection failure, and refused streams.\n* gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.\n* connect-failure: Loadbalancer will retry on failures connecting to backend services,\n  for example due to connection timeouts.\n* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.\n  Currently the only retriable error supported is 409.\n* refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code.\n  This reset type indicates that it is safe to retry.\n* cancelled: Loadbalancer will retry if the gRPC status code in the response header is set to cancelled\n* deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded\n* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted\n* unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.\n  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt.\n\nIf not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,\nwill use the largest timeout among all backend services associated with the route. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.retry_policy.per_try_timeout.new](#fn-retry_policyper_try_timeoutnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
      new(
        num_retries=null,
        per_try_timeout=null,
        retry_conditions=null
      ):: std.prune(a={
        num_retries: num_retries,
        per_try_timeout: per_try_timeout,
        retry_conditions: retry_conditions,
      }),
      per_try_timeout:: {
        '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are\nrepresented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.\nNote: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `per_try_timeout` sub block.\n', args=[]),
        new(
          nanos=null,
          seconds=null
        ):: std.prune(a={
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
    timeout:: {
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are represented\nwith a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.\nNote: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeout` sub block.\n', args=[]),
      new(
        nanos=null,
        seconds=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    url_rewrite:: {
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host header is replaced\nwith contents of hostRewrite.\n\nThe value must be between 1 and 255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching portion of the\nrequest&#39;s path is replaced by pathPrefixRewrite.\n\nThe value must be between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
      new(
        host_rewrite=null,
        path_prefix_rewrite=null
      ):: std.prune(a={
        host_rewrite: host_rewrite,
        path_prefix_rewrite: path_prefix_rewrite,
      }),
    },
    weighted_backend_services:: {
      header_action:: {
        '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request prior to\nforwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response prior to sending the\nresponse back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
        new(
          request_headers_to_add=null,
          request_headers_to_remove=null,
          response_headers_to_add=null,
          response_headers_to_remove=null
        ):: std.prune(a={
          request_headers_to_add: request_headers_to_add,
          request_headers_to_remove: request_headers_to_remove,
          response_headers_to_add: response_headers_to_add,
          response_headers_to_remove: response_headers_to_remove,
        }),
        request_headers_to_add:: {
          '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.\n  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.\nIf true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
          new(
            header_name=null,
            header_value=null,
            replace=null
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
        response_headers_to_add:: {
          '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.\n  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.\nIf true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
          new(
            header_name=null,
            header_value=null,
            replace=null
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.compute_url_map.default_route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The full or partial URL to the default BackendService resource. Before forwarding the\nrequest to backendService, the loadbalancer applies any relevant headerActions\nspecified as part of this backendServiceWeight. When `null`, the `backend_service` field will be omitted from the resulting object.\n  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as\nweight / (sum of all weightedBackendService weights in routeAction) .\n\nThe selection of a backend service is determined only for new traffic. Once a user&#39;s request\nhas been directed to a backendService, subsequent requests will be sent to the same backendService\nas determined by the BackendService&#39;s session affinity policy.\n\nThe value must be between 0 and 1000 When `null`, the `weight` field will be omitted from the resulting object.\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService.\n\nheaderAction specified here take effect before headerAction in the enclosing\nHttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.header_action.new](#fn-weighted_backend_servicesheader_actionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weighted_backend_services` sub block.\n', args=[]),
      new(
        backend_service=null,
        header_action=null,
        weight=null
      ):: std.prune(a={
        backend_service: backend_service,
        header_action: header_action,
        weight: weight,
      }),
    },
  },
  default_url_redirect:: {
    '#new':: d.fn(help='\n`google.compute_url_map.default_url_redirect.new` constructs a new object with attributes and blocks configured for the `default_url_redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was\nsupplied in the request. The value must be between 1 and 255 characters. When `null`, the `host_redirect` field will be omitted from the resulting object.\n  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set to\nfalse, the URL scheme of the redirected request will remain the same as that of the\nrequest. This must only be set for UrlMaps used in TargetHttpProxys. Setting this\ntrue for TargetHttpsProxy is not permitted. The default is set to false. When `null`, the `https_redirect` field will be omitted from the resulting object.\n  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was\nsupplied in the request. pathRedirect cannot be supplied together with\nprefixRedirect. Supply one alone or neither. If neither is supplied, the path of the\noriginal request will be used for the redirect. The value must be between 1 and 1024\ncharacters. When `null`, the `path_redirect` field will be omitted from the resulting object.\n  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,\nretaining the remaining portion of the URL before redirecting the request.\nprefixRedirect cannot be supplied together with pathRedirect. Supply one alone or\nneither. If neither is supplied, the path of the original request will be used for\nthe redirect. The value must be between 1 and 1024 characters. When `null`, the `prefix_redirect` field will be omitted from the resulting object.\n  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:\n\n* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.\n\n* FOUND, which corresponds to 302.\n\n* SEE_OTHER which corresponds to 303.\n\n* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method\nwill be retained.\n\n* PERMANENT_REDIRECT, which corresponds to 308. In this case,\nthe request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.\n  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior\nto redirecting the request. If set to false, the query portion of the original URL is\nretained. The default is set to false.\n This field is required to ensure an empty block is not set. The normal default value is false.\n\n**Returns**:\n  - An attribute object that represents the `default_url_redirect` sub block.\n', args=[]),
    new(
      strip_query,
      host_redirect=null,
      https_redirect=null,
      path_redirect=null,
      prefix_redirect=null,
      redirect_response_code=null
    ):: std.prune(a={
      host_redirect: host_redirect,
      https_redirect: https_redirect,
      path_redirect: path_redirect,
      prefix_redirect: prefix_redirect,
      redirect_response_code: redirect_response_code,
      strip_query: strip_query,
    }),
  },
  header_action:: {
    '#new':: d.fn(help='\n`google.compute_url_map.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request\nprior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response\nprior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the\nbackendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
    new(
      request_headers_to_add=null,
      request_headers_to_remove=null,
      response_headers_to_add=null,
      response_headers_to_remove=null
    ):: std.prune(a={
      request_headers_to_add: request_headers_to_add,
      request_headers_to_remove: request_headers_to_remove,
      response_headers_to_add: response_headers_to_add,
      response_headers_to_remove: response_headers_to_remove,
    }),
    request_headers_to_add:: {
      '#new':: d.fn(help='\n`google.compute_url_map.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
      new(
        header_name,
        header_value,
        replace
      ):: std.prune(a={
        header_name: header_name,
        header_value: header_value,
        replace: replace,
      }),
    },
    response_headers_to_add:: {
      '#new':: d.fn(help='\n`google.compute_url_map.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
      new(
        header_name,
        header_value,
        replace
      ):: std.prune(a={
        header_name: header_name,
        header_value: header_value,
        replace: replace,
      }),
    },
  },
  host_rule:: {
    '#new':: d.fn(help='\n`google.compute_url_map.host_rule.new` constructs a new object with attributes and blocks configured for the `host_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when you create\nthe resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `hosts` (`list`): The list of host patterns to match. They must be valid hostnames, except * will\nmatch any string of ([a-z0-9-.]*). In that case, * must be the first character\nand must be followed in the pattern by either - or ..\n  - `path_matcher` (`string`): The name of the PathMatcher to use to match the path portion of the URL if the\nhostRule matches the URL&#39;s host portion.\n\n**Returns**:\n  - An attribute object that represents the `host_rule` sub block.\n', args=[]),
    new(
      hosts,
      path_matcher,
      description=null
    ):: std.prune(a={
      description: description,
      hosts: hosts,
      path_matcher: path_matcher,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_url_map.new` injects a new `google_compute_url_map` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_url_map.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_url_map` using the reference:\n\n    $._ref.google_compute_url_map.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_url_map.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `default_service` (`string`): The backend service or backend bucket to use when none of the given rules match. When `null`, the `default_service` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create\nthe resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The\nname must be 1-63 characters long, and comply with RFC1035. Specifically, the\nname must be 1-63 characters long and match the regular expression\n\u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the first character must be a lowercase\nletter, and all following characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `default_route_action` (`list[obj]`): defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions\nlike URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.\nIf defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService\nis set, defaultRouteAction cannot contain any weightedBackendServices.\n\nOnly one of defaultRouteAction or defaultUrlRedirect must be set. When `null`, the `default_route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.new](#fn-compute_url_mapdefault_route_actionnew) constructor.\n  - `default_url_redirect` (`list[obj]`): When none of the specified hostRules match, the request is redirected to a URL specified\nby defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or\ndefaultRouteAction must not be set. When `null`, the `default_url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_url_redirect.new](#fn-compute_url_mapdefault_url_redirectnew) constructor.\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService. The headerAction specified here take effect after\nheaderAction specified under pathMatcher. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.new](#fn-compute_url_mapheader_actionnew) constructor.\n  - `host_rule` (`list[obj]`): The list of HostRules to use against the URL. When `null`, the `host_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.host_rule.new](#fn-compute_url_maphost_rulenew) constructor.\n  - `path_matcher` (`list[obj]`): The list of named PathMatchers to use against the URL. When `null`, the `path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.new](#fn-compute_url_mappath_matchernew) constructor.\n  - `test` (`list[obj]`): The list of expected URL mapping tests. Request to update this UrlMap will\nsucceed only if all of the test cases pass. You can specify a maximum of 100\ntests per UrlMap. When `null`, the `test` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.test.new](#fn-compute_url_maptestnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.timeouts.new](#fn-compute_url_maptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    default_route_action=null,
    default_service=null,
    default_url_redirect=null,
    description=null,
    header_action=null,
    host_rule=null,
    path_matcher=null,
    project=null,
    test=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_url_map',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_route_action=default_route_action,
      default_service=default_service,
      default_url_redirect=default_url_redirect,
      description=description,
      header_action=header_action,
      host_rule=host_rule,
      name=name,
      path_matcher=path_matcher,
      project=project,
      test=test,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_url_map.newAttrs` constructs a new object with attributes and blocks configured for the `compute_url_map`\nTerraform resource.\n\nUnlike [google.compute_url_map.new](#fn-compute_url_mapnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `default_service` (`string`): The backend service or backend bucket to use when none of the given rules match. When `null`, the `default_service` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create\nthe resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The\nname must be 1-63 characters long, and comply with RFC1035. Specifically, the\nname must be 1-63 characters long and match the regular expression\n&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character must be a lowercase\nletter, and all following characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `default_route_action` (`list[obj]`): defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions\nlike URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.\nIf defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService\nis set, defaultRouteAction cannot contain any weightedBackendServices.\n\nOnly one of defaultRouteAction or defaultUrlRedirect must be set. When `null`, the `default_route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.new](#fn-compute_url_mapdefault_route_actionnew) constructor.\n  - `default_url_redirect` (`list[obj]`): When none of the specified hostRules match, the request is redirected to a URL specified\nby defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or\ndefaultRouteAction must not be set. When `null`, the `default_url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_url_redirect.new](#fn-compute_url_mapdefault_url_redirectnew) constructor.\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService. The headerAction specified here take effect after\nheaderAction specified under pathMatcher. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.new](#fn-compute_url_mapheader_actionnew) constructor.\n  - `host_rule` (`list[obj]`): The list of HostRules to use against the URL. When `null`, the `host_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.host_rule.new](#fn-compute_url_maphost_rulenew) constructor.\n  - `path_matcher` (`list[obj]`): The list of named PathMatchers to use against the URL. When `null`, the `path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.new](#fn-compute_url_mappath_matchernew) constructor.\n  - `test` (`list[obj]`): The list of expected URL mapping tests. Request to update this UrlMap will\nsucceed only if all of the test cases pass. You can specify a maximum of 100\ntests per UrlMap. When `null`, the `test` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.test.new](#fn-compute_url_maptestnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.timeouts.new](#fn-compute_url_maptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_url_map` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    default_route_action=null,
    default_service=null,
    default_url_redirect=null,
    description=null,
    header_action=null,
    host_rule=null,
    path_matcher=null,
    project=null,
    test=null,
    timeouts=null
  ):: std.prune(a={
    default_route_action: default_route_action,
    default_service: default_service,
    default_url_redirect: default_url_redirect,
    description: description,
    header_action: header_action,
    host_rule: host_rule,
    name: name,
    path_matcher: path_matcher,
    project: project,
    test: test,
    timeouts: timeouts,
  }),
  path_matcher:: {
    default_route_action:: {
      cors_policy:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials.\nThis translates to the Access-Control-Allow-Credentials header. When `null`, the `allow_credentials` field will be omitted from the resulting object.\n  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.\n  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.\n  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For regular expression grammar\nplease see en.cppreference.com/w/cpp/regex/ecmascript\nAn origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.\n  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests.\nAn origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origins` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.\n  - `max_age` (`number`): Specifies how long results of a preflight request can be cached in seconds.\nThis translates to the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cors_policy` sub block.\n', args=[]),
        new(
          allow_credentials=null,
          allow_headers=null,
          allow_methods=null,
          allow_origin_regexes=null,
          allow_origins=null,
          disabled=null,
          expose_headers=null,
          max_age=null
        ):: std.prune(a={
          allow_credentials: allow_credentials,
          allow_headers: allow_headers,
          allow_methods: allow_methods,
          allow_origin_regexes: allow_origin_regexes,
          allow_origins: allow_origins,
          disabled: disabled,
          expose_headers: expose_headers,
          max_age: max_age,
        }),
      },
      fault_injection_policy:: {
        abort:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_status` (`number`): The HTTP status code used to abort the request.\nThe value must be between 200 and 599 inclusive. When `null`, the `http_status` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.\nThe value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `abort` sub block.\n', args=[]),
          new(
            http_status=null,
            percentage=null
          ):: std.prune(a={
            http_status: http_status,
            percentage: percentage,
          }),
        },
        delay:: {
          fixed_delay:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are\nrepresented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.\nNote: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fixed_delay` sub block.\n', args=[]),
            new(
              nanos=null,
              seconds=null
            ):: std.prune(a={
              nanos: nanos,
              seconds: seconds,
            }),
          },
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.\nThe value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.\n  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay.new](#fn-delayfixed_delaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `delay` sub block.\n', args=[]),
          new(
            fixed_delay=null,
            percentage=null
          ):: std.prune(a={
            fixed_delay: fixed_delay,
            percentage: percentage,
          }),
        },
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault injection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.abort.new](#fn-fault_injection_policyabortnew) constructor.\n  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault injection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.new](#fn-fault_injection_policydelaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fault_injection_policy` sub block.\n', args=[]),
        new(
          abort=null,
          delay=null
        ):: std.prune(a={
          abort: abort,
          delay: delay,
        }),
      },
      '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.new` constructs a new object with attributes and blocks configured for the `default_route_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see\n[W3C Recommendation for Cross Origin Resource Sharing](https://www.w3.org/TR/cors/) When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.cors_policy.new](#fn-default_route_actioncors_policynew) constructor.\n  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.\nAs part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a\npercentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted\nby the Loadbalancer for a percentage of requests.\n\ntimeout and retryPolicy will be ignored by clients that are configured with a faultInjectionPolicy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.new](#fn-default_route_actionfault_injection_policynew) constructor.\n  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are shadowed to a separate mirrored backend service.\nLoadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service,\nthe host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.request_mirror_policy.new](#fn-default_route_actionrequest_mirror_policynew) constructor.\n  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.retry_policy.new](#fn-default_route_actionretry_policynew) constructor.\n  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time the request has been\nfully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.\n\nIf not specified, will use the largest timeout among all backend services associated with the route. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.timeout.new](#fn-default_route_actiontimeoutnew) constructor.\n  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to the matched service. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.url_rewrite.new](#fn-default_route_actionurl_rewritenew) constructor.\n  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match occurs.\nThe weights determine the fraction of traffic that flows to their corresponding backend service.\nIf all traffic needs to go to a single backend service, there must be one weightedBackendService\nwith weight set to a non 0 number.\n\nOnce a backendService is identified and before forwarding the request to the backend service,\nadvanced routing actions like Url rewrites and header transformations are applied depending on\nadditional settings specified in this HttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.new](#fn-default_route_actionweighted_backend_servicesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `default_route_action` sub block.\n', args=[]),
      new(
        cors_policy=null,
        fault_injection_policy=null,
        request_mirror_policy=null,
        retry_policy=null,
        timeout=null,
        url_rewrite=null,
        weighted_backend_services=null
      ):: std.prune(a={
        cors_policy: cors_policy,
        fault_injection_policy: fault_injection_policy,
        request_mirror_policy: request_mirror_policy,
        retry_policy: retry_policy,
        timeout: timeout,
        url_rewrite: url_rewrite,
        weighted_backend_services: weighted_backend_services,
      }),
      request_mirror_policy:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The full or partial URL to the BackendService resource being mirrored to.\n\n**Returns**:\n  - An attribute object that represents the `request_mirror_policy` sub block.\n', args=[]),
        new(
          backend_service
        ):: std.prune(a={
          backend_service: backend_service,
        }),
      },
      retry_policy:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0. If not specified, defaults to 1. When `null`, the `num_retries` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specfies one or more conditions when this retry rule applies. Valid values are:\n\n* 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code,\n  or if the backend service does not respond at all, example: disconnects, reset, read timeout,\n* connection failure, and refused streams.\n* gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.\n* connect-failure: Loadbalancer will retry on failures connecting to backend services,\n  for example due to connection timeouts.\n* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.\n  Currently the only retriable error supported is 409.\n* refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code.\n  This reset type indicates that it is safe to retry.\n* cancelled: Loadbalancer will retry if the gRPC status code in the response header is set to cancelled\n* deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded\n* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted\n* unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.\n  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt.\n\nIf not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,\nwill use the largest timeout among all backend services associated with the route. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.retry_policy.per_try_timeout.new](#fn-retry_policyper_try_timeoutnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
        new(
          num_retries=null,
          per_try_timeout=null,
          retry_conditions=null
        ):: std.prune(a={
          num_retries: num_retries,
          per_try_timeout: per_try_timeout,
          retry_conditions: retry_conditions,
        }),
        per_try_timeout:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are\nrepresented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.\nNote: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `per_try_timeout` sub block.\n', args=[]),
          new(
            nanos=null,
            seconds=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
      },
      timeout:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are represented\nwith a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.\nNote: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeout` sub block.\n', args=[]),
        new(
          nanos=null,
          seconds=null
        ):: std.prune(a={
          nanos: nanos,
          seconds: seconds,
        }),
      },
      url_rewrite:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host header is replaced\nwith contents of hostRewrite.\n\nThe value must be between 1 and 255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching portion of the\nrequest&#39;s path is replaced by pathPrefixRewrite.\n\nThe value must be between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
        new(
          host_rewrite=null,
          path_prefix_rewrite=null
        ):: std.prune(a={
          host_rewrite: host_rewrite,
          path_prefix_rewrite: path_prefix_rewrite,
        }),
      },
      weighted_backend_services:: {
        header_action:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request prior to\nforwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response prior to sending the\nresponse back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
          new(
            request_headers_to_add=null,
            request_headers_to_remove=null,
            response_headers_to_add=null,
            response_headers_to_remove=null
          ):: std.prune(a={
            request_headers_to_add: request_headers_to_add,
            request_headers_to_remove: request_headers_to_remove,
            response_headers_to_add: response_headers_to_add,
            response_headers_to_remove: response_headers_to_remove,
          }),
          request_headers_to_add:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.\n  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.\nIf true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
            new(
              header_name=null,
              header_value=null,
              replace=null
            ):: std.prune(a={
              header_name: header_name,
              header_value: header_value,
              replace: replace,
            }),
          },
          response_headers_to_add:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.\n  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.\nIf true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
            new(
              header_name=null,
              header_value=null,
              replace=null
            ):: std.prune(a={
              header_name: header_name,
              header_value: header_value,
              replace: replace,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The full or partial URL to the default BackendService resource. Before forwarding the\nrequest to backendService, the loadbalancer applies any relevant headerActions\nspecified as part of this backendServiceWeight. When `null`, the `backend_service` field will be omitted from the resulting object.\n  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as\nweight / (sum of all weightedBackendService weights in routeAction) .\n\nThe selection of a backend service is determined only for new traffic. Once a user&#39;s request\nhas been directed to a backendService, subsequent requests will be sent to the same backendService\nas determined by the BackendService&#39;s session affinity policy.\n\nThe value must be between 0 and 1000 When `null`, the `weight` field will be omitted from the resulting object.\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService.\n\nheaderAction specified here take effect before headerAction in the enclosing\nHttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.new](#fn-weighted_backend_servicesheader_actionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weighted_backend_services` sub block.\n', args=[]),
        new(
          backend_service=null,
          header_action=null,
          weight=null
        ):: std.prune(a={
          backend_service: backend_service,
          header_action: header_action,
          weight: weight,
        }),
      },
    },
    default_url_redirect:: {
      '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.default_url_redirect.new` constructs a new object with attributes and blocks configured for the `default_url_redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was\nsupplied in the request. The value must be between 1 and 255 characters. When `null`, the `host_redirect` field will be omitted from the resulting object.\n  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set to\nfalse, the URL scheme of the redirected request will remain the same as that of the\nrequest. This must only be set for UrlMaps used in TargetHttpProxys. Setting this\ntrue for TargetHttpsProxy is not permitted. The default is set to false. When `null`, the `https_redirect` field will be omitted from the resulting object.\n  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was\nsupplied in the request. pathRedirect cannot be supplied together with\nprefixRedirect. Supply one alone or neither. If neither is supplied, the path of the\noriginal request will be used for the redirect. The value must be between 1 and 1024\ncharacters. When `null`, the `path_redirect` field will be omitted from the resulting object.\n  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,\nretaining the remaining portion of the URL before redirecting the request.\nprefixRedirect cannot be supplied together with pathRedirect. Supply one alone or\nneither. If neither is supplied, the path of the original request will be used for\nthe redirect. The value must be between 1 and 1024 characters. When `null`, the `prefix_redirect` field will be omitted from the resulting object.\n  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:\n\n* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.\n\n* FOUND, which corresponds to 302.\n\n* SEE_OTHER which corresponds to 303.\n\n* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method\nwill be retained.\n\n* PERMANENT_REDIRECT, which corresponds to 308. In this case,\nthe request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.\n  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior\nto redirecting the request. If set to false, the query portion of the original URL is\nretained.\n This field is required to ensure an empty block is not set. The normal default value is false.\n\n**Returns**:\n  - An attribute object that represents the `default_url_redirect` sub block.\n', args=[]),
      new(
        strip_query,
        host_redirect=null,
        https_redirect=null,
        path_redirect=null,
        prefix_redirect=null,
        redirect_response_code=null
      ):: std.prune(a={
        host_redirect: host_redirect,
        https_redirect: https_redirect,
        path_redirect: path_redirect,
        prefix_redirect: prefix_redirect,
        redirect_response_code: redirect_response_code,
        strip_query: strip_query,
      }),
    },
    header_action:: {
      '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request\nprior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response\nprior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the\nbackendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
      new(
        request_headers_to_add=null,
        request_headers_to_remove=null,
        response_headers_to_add=null,
        response_headers_to_remove=null
      ):: std.prune(a={
        request_headers_to_add: request_headers_to_add,
        request_headers_to_remove: request_headers_to_remove,
        response_headers_to_add: response_headers_to_add,
        response_headers_to_remove: response_headers_to_remove,
      }),
      request_headers_to_add:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
        new(
          header_name,
          header_value,
          replace
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
          replace: replace,
        }),
      },
      response_headers_to_add:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
        new(
          header_name,
          header_value,
          replace
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
          replace: replace,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.new` constructs a new object with attributes and blocks configured for the `path_matcher`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_service` (`string`): The backend service or backend bucket to use when none of the given paths match. When `null`, the `default_service` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create\nthe resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name to which this PathMatcher is referred by the HostRule.\n  - `default_route_action` (`list[obj]`): defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs\nadvanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request\nto the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set.\nConversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.\n\nOnly one of defaultRouteAction or defaultUrlRedirect must be set. When `null`, the `default_route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.new](#fn-path_matcherdefault_route_actionnew) constructor.\n  - `default_url_redirect` (`list[obj]`): When none of the specified hostRules match, the request is redirected to a URL specified\nby defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or\ndefaultRouteAction must not be set. When `null`, the `default_url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_url_redirect.new](#fn-path_matcherdefault_url_redirectnew) constructor.\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService. HeaderAction specified here are applied after the\nmatching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.header_action.new](#fn-path_matcherheader_actionnew) constructor.\n  - `path_rule` (`list[obj]`): The list of path rules. Use this list instead of routeRules when routing based\non simple path matching is all that&#39;s required. The order by which path rules\nare specified does not matter. Matches are always done on the longest-path-first\nbasis. For example: a pathRule with a path /a/b/c/* will match before /a/b/*\nirrespective of the order in which those paths appear in this list. Within a\ngiven pathMatcher, only one of pathRules or routeRules must be set. When `null`, the `path_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.new](#fn-path_matcherpath_rulenew) constructor.\n  - `route_rules` (`list[obj]`): The list of ordered HTTP route rules. Use this list instead of pathRules when\nadvanced route matching and routing actions are desired. The order of specifying\nrouteRules matters: the first rule that matches will cause its specified routing\naction to take effect. Within a given pathMatcher, only one of pathRules or\nrouteRules must be set. routeRules are not supported in UrlMaps intended for\nExternal load balancers. When `null`, the `route_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.new](#fn-path_matcherroute_rulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `path_matcher` sub block.\n', args=[]),
    new(
      name,
      default_route_action=null,
      default_service=null,
      default_url_redirect=null,
      description=null,
      header_action=null,
      path_rule=null,
      route_rules=null
    ):: std.prune(a={
      default_route_action: default_route_action,
      default_service: default_service,
      default_url_redirect: default_url_redirect,
      description: description,
      header_action: header_action,
      name: name,
      path_rule: path_rule,
      route_rules: route_rules,
    }),
    path_rule:: {
      '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.new` constructs a new object with attributes and blocks configured for the `path_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `paths` (`list`): The list of path patterns to match. Each must start with / and the only place a\n\\* is allowed is at the end following a /. The string fed to the path matcher\ndoes not include any text after the first ? or #, and those chars are not\nallowed here.\n  - `service` (`string`): The backend service or backend bucket to use if any of the given paths match. When `null`, the `service` field will be omitted from the resulting object.\n  - `route_action` (`list[obj]`): In response to a matching path, the load balancer performs advanced routing\nactions like URL rewrites, header transformations, etc. prior to forwarding the\nrequest to the selected backend. If routeAction specifies any\nweightedBackendServices, service must not be set. Conversely if service is set,\nrouteAction cannot contain any  weightedBackendServices. Only one of routeAction\nor urlRedirect must be set. When `null`, the `route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.new](#fn-path_ruleroute_actionnew) constructor.\n  - `url_redirect` (`list[obj]`): When a path pattern is matched, the request is redirected to a URL specified\nby urlRedirect. If urlRedirect is specified, service or routeAction must not\nbe set. When `null`, the `url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.url_redirect.new](#fn-path_ruleurl_redirectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `path_rule` sub block.\n', args=[]),
      new(
        paths,
        route_action=null,
        service=null,
        url_redirect=null
      ):: std.prune(a={
        paths: paths,
        route_action: route_action,
        service: service,
        url_redirect: url_redirect,
      }),
      route_action:: {
        cors_policy:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the\nactual request can include user credentials. This translates to the Access-\nControl-Allow-Credentials header. Defaults to false. When `null`, the `allow_credentials` field will be omitted from the resulting object.\n  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.\n  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.\n  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For\nregular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript\nAn origin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.\n  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests. An\norigin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origins` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If true, specifies the CORS policy is disabled.\n  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.\n  - `max_age` (`number`): Specifies how long the results of a preflight request can be cached. This\ntranslates to the content for the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cors_policy` sub block.\n', args=[]),
          new(
            disabled,
            allow_credentials=null,
            allow_headers=null,
            allow_methods=null,
            allow_origin_regexes=null,
            allow_origins=null,
            expose_headers=null,
            max_age=null
          ):: std.prune(a={
            allow_credentials: allow_credentials,
            allow_headers: allow_headers,
            allow_methods: allow_methods,
            allow_origin_regexes: allow_origin_regexes,
            allow_origins: allow_origins,
            disabled: disabled,
            expose_headers: expose_headers,
            max_age: max_age,
          }),
        },
        fault_injection_policy:: {
          abort:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_status` (`number`): The HTTP status code used to abort the request. The value must be between 200\nand 599 inclusive.\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be\naborted as part of fault injection. The value must be between 0.0 and 100.0\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `abort` sub block.\n', args=[]),
            new(
              http_status,
              percentage
            ):: std.prune(a={
              http_status: http_status,
              percentage: percentage,
            }),
          },
          delay:: {
            fixed_delay:: {
              '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `fixed_delay` sub block.\n', args=[]),
              new(
                seconds,
                nanos=null
              ):: std.prune(a={
                nanos: nanos,
                seconds: seconds,
              }),
            },
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will\nbe introduced as part of fault injection. The value must be between 0.0 and\n100.0 inclusive.\n  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay.new](#fn-delayfixed_delaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `delay` sub block.\n', args=[]),
            new(
              percentage,
              fixed_delay=null
            ):: std.prune(a={
              fixed_delay: fixed_delay,
              percentage: percentage,
            }),
          },
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault\ninjection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.abort.new](#fn-fault_injection_policyabortnew) constructor.\n  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault\ninjection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.new](#fn-fault_injection_policydelaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fault_injection_policy` sub block.\n', args=[]),
          new(
            abort=null,
            delay=null
          ):: std.prune(a={
            abort: abort,
            delay: delay,
          }),
        },
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.new` constructs a new object with attributes and blocks configured for the `route_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see W3C\nRecommendation for Cross Origin Resource Sharing When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.cors_policy.new](#fn-route_actioncors_policynew) constructor.\n  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the\nresiliency of clients to backend service failure. As part of fault injection,\nwhen clients send requests to a backend service, delays can be introduced by\nLoadbalancer on a percentage of requests before sending those request to the\nbackend service. Similarly requests from clients can be aborted by the\nLoadbalancer for a percentage of requests. timeout and retry_policy will be\nignored by clients that are configured with a fault_injection_policy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.new](#fn-route_actionfault_injection_policynew) constructor.\n  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are\nshadowed to a separate mirrored backend service. Loadbalancer does not wait for\nresponses from the shadow service. Prior to sending traffic to the shadow\nservice, the host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.request_mirror_policy.new](#fn-route_actionrequest_mirror_policynew) constructor.\n  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.new](#fn-route_actionretry_policynew) constructor.\n  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time\nthe request is has been fully processed (i.e. end-of-stream) up until the\nresponse has been completely processed. Timeout includes all retries. If not\nspecified, the default value is 15 seconds. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.timeout.new](#fn-route_actiontimeoutnew) constructor.\n  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to\nthe matched service When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.url_rewrite.new](#fn-route_actionurl_rewritenew) constructor.\n  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match\noccurs. The weights determine the fraction of traffic that flows to their\ncorresponding backend service. If all traffic needs to go to a single backend\nservice, there must be one  weightedBackendService with weight set to a non 0\nnumber. Once a backendService is identified and before forwarding the request to\nthe backend service, advanced routing actions like Url rewrites and header\ntransformations are applied depending on additional settings specified in this\nHttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.new](#fn-route_actionweighted_backend_servicesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `route_action` sub block.\n', args=[]),
        new(
          cors_policy=null,
          fault_injection_policy=null,
          request_mirror_policy=null,
          retry_policy=null,
          timeout=null,
          url_rewrite=null,
          weighted_backend_services=null
        ):: std.prune(a={
          cors_policy: cors_policy,
          fault_injection_policy: fault_injection_policy,
          request_mirror_policy: request_mirror_policy,
          retry_policy: retry_policy,
          timeout: timeout,
          url_rewrite: url_rewrite,
          weighted_backend_services: weighted_backend_services,
        }),
        request_mirror_policy:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The BackendService resource being mirrored to.\n\n**Returns**:\n  - An attribute object that represents the `request_mirror_policy` sub block.\n', args=[]),
          new(
            backend_service
          ):: std.prune(a={
            backend_service: backend_service,
          }),
        },
        retry_policy:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0. When `null`, the `num_retries` field will be omitted from the resulting object.\n  - `retry_conditions` (`list`): Specifies one or more conditions when this retry rule applies. Valid values are:\n\n* 5xx: Loadbalancer will attempt a retry if the backend service responds with\nany 5xx response code, or if the backend service does not respond at all,\nexample: disconnects, reset, read timeout, connection failure, and refused\nstreams.\n* gateway-error: Similar to 5xx, but only applies to response codes\n502, 503 or 504.\n* connect-failure: Loadbalancer will retry on failures\nconnecting to backend services, for example due to connection timeouts.\n* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.\nCurrently the only retriable error supported is 409.\n* refused-stream: Loadbalancer will retry if the backend service resets the stream with a\nREFUSED_STREAM error code. This reset type indicates that it is safe to retry.\n* cancelled: Loadbalancer will retry if the gRPC status code in the response\nheader is set to cancelled\n* deadline-exceeded: Loadbalancer will retry if the\ngRPC status code in the response header is set to deadline-exceeded\n* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response\nheader is set to resource-exhausted\n* unavailable: Loadbalancer will retry if\nthe gRPC status code in the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.\n  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.per_try_timeout.new](#fn-retry_policyper_try_timeoutnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
          new(
            num_retries=null,
            per_try_timeout=null,
            retry_conditions=null
          ):: std.prune(a={
            num_retries: num_retries,
            per_try_timeout: per_try_timeout,
            retry_conditions: retry_conditions,
          }),
          per_try_timeout:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `per_try_timeout` sub block.\n', args=[]),
            new(
              seconds,
              nanos=null
            ):: std.prune(a={
              nanos: nanos,
              seconds: seconds,
            }),
          },
        },
        timeout:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `timeout` sub block.\n', args=[]),
          new(
            seconds,
            nanos=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
        url_rewrite:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host\nheader is replaced with contents of hostRewrite. The value must be between 1 and\n255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching\nportion of the request&#39;s path is replaced by pathPrefixRewrite. The value must\nbe between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
          new(
            host_rewrite=null,
            path_prefix_rewrite=null
          ):: std.prune(a={
            host_rewrite: host_rewrite,
            path_prefix_rewrite: path_prefix_rewrite,
          }),
        },
        weighted_backend_services:: {
          header_action:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request\nprior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response\nprior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the\nbackendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
            new(
              request_headers_to_add=null,
              request_headers_to_remove=null,
              response_headers_to_add=null,
              response_headers_to_remove=null
            ):: std.prune(a={
              request_headers_to_add: request_headers_to_add,
              request_headers_to_remove: request_headers_to_remove,
              response_headers_to_add: response_headers_to_add,
              response_headers_to_remove: response_headers_to_remove,
            }),
            request_headers_to_add:: {
              '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
            response_headers_to_add:: {
              '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The default BackendService resource. Before\nforwarding the request to backendService, the loadbalancer applies any relevant\nheaderActions specified as part of this backendServiceWeight.\n  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as weight /\n(sum of all weightedBackendService weights in routeAction) . The selection of a\nbackend service is determined only for new traffic. Once a user&#39;s request has\nbeen directed to a backendService, subsequent requests will be sent to the same\nbackendService as determined by the BackendService&#39;s session affinity policy.\nThe value must be between 0 and 1000\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService. headerAction specified here take effect before\nheaderAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.new](#fn-weighted_backend_servicesheader_actionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weighted_backend_services` sub block.\n', args=[]),
          new(
            backend_service,
            weight,
            header_action=null
          ):: std.prune(a={
            backend_service: backend_service,
            header_action: header_action,
            weight: weight,
          }),
        },
      },
      url_redirect:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.path_rule.url_redirect.new` constructs a new object with attributes and blocks configured for the `url_redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one\nthat was supplied in the request. The value must be between 1 and 255\ncharacters. When `null`, the `host_redirect` field will be omitted from the resulting object.\n  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https.\nIf set to false, the URL scheme of the redirected request will remain the\nsame as that of the request. This must only be set for UrlMaps used in\nTargetHttpProxys. Setting this true for TargetHttpsProxy is not\npermitted. The default is set to false. When `null`, the `https_redirect` field will be omitted from the resulting object.\n  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one\nthat was supplied in the request. pathRedirect cannot be supplied\ntogether with prefixRedirect. Supply one alone or neither. If neither is\nsupplied, the path of the original request will be used for the redirect.\nThe value must be between 1 and 1024 characters. When `null`, the `path_redirect` field will be omitted from the resulting object.\n  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the\nHttpRouteRuleMatch, retaining the remaining portion of the URL before\nredirecting the request. prefixRedirect cannot be supplied together with\npathRedirect. Supply one alone or neither. If neither is supplied, the\npath of the original request will be used for the redirect. The value\nmust be between 1 and 1024 characters. When `null`, the `prefix_redirect` field will be omitted from the resulting object.\n  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:\n\n* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.\n\n* FOUND, which corresponds to 302.\n\n* SEE_OTHER which corresponds to 303.\n\n* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method\nwill be retained.\n\n* PERMANENT_REDIRECT, which corresponds to 308. In this case,\nthe request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.\n  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is\nremoved prior to redirecting the request. If set to false, the query\nportion of the original URL is retained.\n This field is required to ensure an empty block is not set. The normal default value is false.\n\n**Returns**:\n  - An attribute object that represents the `url_redirect` sub block.\n', args=[]),
        new(
          strip_query,
          host_redirect=null,
          https_redirect=null,
          path_redirect=null,
          prefix_redirect=null,
          redirect_response_code=null
        ):: std.prune(a={
          host_redirect: host_redirect,
          https_redirect: https_redirect,
          path_redirect: path_redirect,
          prefix_redirect: prefix_redirect,
          redirect_response_code: redirect_response_code,
          strip_query: strip_query,
        }),
      },
    },
    route_rules:: {
      header_action:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request\nprior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response\nprior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the\nbackendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
        new(
          request_headers_to_add=null,
          request_headers_to_remove=null,
          response_headers_to_add=null,
          response_headers_to_remove=null
        ):: std.prune(a={
          request_headers_to_add: request_headers_to_add,
          request_headers_to_remove: request_headers_to_remove,
          response_headers_to_add: response_headers_to_add,
          response_headers_to_remove: response_headers_to_remove,
        }),
        request_headers_to_add:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
          new(
            header_name,
            header_value,
            replace
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
        response_headers_to_add:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
          new(
            header_name,
            header_value,
            replace
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
      },
      match_rules:: {
        header_matches:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.new` constructs a new object with attributes and blocks configured for the `header_matches`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exact_match` (`string`): The value should exactly match contents of exactMatch. Only one of exactMatch,\nprefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. When `null`, the `exact_match` field will be omitted from the resulting object.\n  - `header_name` (`string`): The name of the HTTP header to match. For matching against the HTTP request&#39;s\nauthority, use a headerMatch with the header name &#34;:authority&#34;. For matching a\nrequest&#39;s method, use the headerName &#34;:method&#34;.\n  - `invert_match` (`bool`): If set to false, the headerMatch is considered a match if the match criteria\nabove are met. If set to true, the headerMatch is considered a match if the\nmatch criteria above are NOT met. Defaults to false. When `null`, the `invert_match` field will be omitted from the resulting object.\n  - `prefix_match` (`string`): The value of the header must start with the contents of prefixMatch. Only one of\nexactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch\nmust be set. When `null`, the `prefix_match` field will be omitted from the resulting object.\n  - `present_match` (`bool`): A header with the contents of headerName must exist. The match takes place\nwhether or not the request&#39;s header has a value or not. Only one of exactMatch,\nprefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. When `null`, the `present_match` field will be omitted from the resulting object.\n  - `regex_match` (`string`): The value of the header must match the regular expression specified in\nregexMatch. For regular expression grammar, please see:\nen.cppreference.com/w/cpp/regex/ecmascript  For matching against a port\nspecified in the HTTP request, use a headerMatch with headerName set to PORT and\na regular expression that satisfies the RFC2616 Host header&#39;s port specifier.\nOnly one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or\nrangeMatch must be set. When `null`, the `regex_match` field will be omitted from the resulting object.\n  - `suffix_match` (`string`): The value of the header must end with the contents of suffixMatch. Only one of\nexactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch\nmust be set. When `null`, the `suffix_match` field will be omitted from the resulting object.\n  - `range_match` (`list[obj]`): The header value must be an integer and its value must be in the range specified\nin rangeMatch. If the header does not contain an integer, number or is empty,\nthe match fails. For example for a range [-5, 0]   - -3 will match.  - 0 will\nnot match.  - 0.25 will not match.  - -3someString will not match.   Only one of\nexactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch\nmust be set. When `null`, the `range_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.range_match.new](#fn-header_matchesrange_matchnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_matches` sub block.\n', args=[]),
          new(
            header_name,
            exact_match=null,
            invert_match=null,
            prefix_match=null,
            present_match=null,
            range_match=null,
            regex_match=null,
            suffix_match=null
          ):: std.prune(a={
            exact_match: exact_match,
            header_name: header_name,
            invert_match: invert_match,
            prefix_match: prefix_match,
            present_match: present_match,
            range_match: range_match,
            regex_match: regex_match,
            suffix_match: suffix_match,
          }),
          range_match:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.range_match.new` constructs a new object with attributes and blocks configured for the `range_match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `range_end` (`number`): The end of the range (exclusive).\n  - `range_start` (`number`): The start of the range (inclusive).\n\n**Returns**:\n  - An attribute object that represents the `range_match` sub block.\n', args=[]),
            new(
              range_end,
              range_start
            ):: std.prune(a={
              range_end: range_end,
              range_start: range_start,
            }),
          },
        },
        metadata_filters:: {
          filter_labels:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.filter_labels.new` constructs a new object with attributes and blocks configured for the `filter_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of metadata label. The name can have a maximum length of 1024 characters\nand must be at least 1 character long.\n  - `value` (`string`): The value of the label must match the specified value. value can have a maximum\nlength of 1024 characters.\n\n**Returns**:\n  - An attribute object that represents the `filter_labels` sub block.\n', args=[]),
            new(
              name,
              value
            ):: std.prune(a={
              name: name,
              value: value,
            }),
          },
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.new` constructs a new object with attributes and blocks configured for the `metadata_filters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `filter_match_criteria` (`string`): Specifies how individual filterLabel matches within the list of filterLabels\ncontribute towards the overall metadataFilter match. Supported values are:\n  - MATCH_ANY: At least one of the filterLabels must have a matching label in the\nprovided metadata.\n  - MATCH_ALL: All filterLabels must have matching labels in\nthe provided metadata. Possible values: [&#34;MATCH_ALL&#34;, &#34;MATCH_ANY&#34;]\n  - `filter_labels` (`list[obj]`): The list of label value pairs that must match labels in the provided metadata\nbased on filterMatchCriteria  This list must not be empty and can have at the\nmost 64 entries. When `null`, the `filter_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.filter_labels.new](#fn-metadata_filtersfilter_labelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metadata_filters` sub block.\n', args=[]),
          new(
            filter_match_criteria,
            filter_labels=null
          ):: std.prune(a={
            filter_labels: filter_labels,
            filter_match_criteria: filter_match_criteria,
          }),
        },
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.match_rules.new` constructs a new object with attributes and blocks configured for the `match_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `full_path_match` (`string`): For satisfying the matchRule condition, the path of the request must exactly\nmatch the value specified in fullPathMatch after removing any query parameters\nand anchor that may be part of the original URL. FullPathMatch must be between 1\nand 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must\nbe specified. When `null`, the `full_path_match` field will be omitted from the resulting object.\n  - `ignore_case` (`bool`): Specifies that prefixMatch and fullPathMatch matches are case sensitive.\nDefaults to false. When `null`, the `ignore_case` field will be omitted from the resulting object.\n  - `prefix_match` (`string`): For satisfying the matchRule condition, the request&#39;s path must begin with the\nspecified prefixMatch. prefixMatch must begin with a /. The value must be\nbetween 1 and 1024 characters. Only one of prefixMatch, fullPathMatch or\nregexMatch must be specified. When `null`, the `prefix_match` field will be omitted from the resulting object.\n  - `regex_match` (`string`): For satisfying the matchRule condition, the path of the request must satisfy the\nregular expression specified in regexMatch after removing any query parameters\nand anchor supplied with the original URL. For regular expression grammar please\nsee en.cppreference.com/w/cpp/regex/ecmascript  Only one of prefixMatch,\nfullPathMatch or regexMatch must be specified. When `null`, the `regex_match` field will be omitted from the resulting object.\n  - `header_matches` (`list[obj]`): Specifies a list of header match criteria, all of which must match corresponding\nheaders in the request. When `null`, the `header_matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.new](#fn-match_rulesheader_matchesnew) constructor.\n  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing configuration to\na limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS\nclients present node metadata. If a match takes place, the relevant routing\nconfiguration is made available to those proxies. For each metadataFilter in\nthis list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the\nfilterLabels must match the corresponding label provided in the metadata. If its\nfilterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match\nwith corresponding labels in the provided metadata. metadataFilters specified\nhere can be overrides those specified in ForwardingRule that refers to this\nUrlMap. metadataFilters only applies to Loadbalancers that have their\nloadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.new](#fn-match_rulesmetadata_filtersnew) constructor.\n  - `query_parameter_matches` (`list[obj]`): Specifies a list of query parameter match criteria, all of which must match\ncorresponding query parameters in the request. When `null`, the `query_parameter_matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.query_parameter_matches.new](#fn-match_rulesquery_parameter_matchesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match_rules` sub block.\n', args=[]),
        new(
          full_path_match=null,
          header_matches=null,
          ignore_case=null,
          metadata_filters=null,
          prefix_match=null,
          query_parameter_matches=null,
          regex_match=null
        ):: std.prune(a={
          full_path_match: full_path_match,
          header_matches: header_matches,
          ignore_case: ignore_case,
          metadata_filters: metadata_filters,
          prefix_match: prefix_match,
          query_parameter_matches: query_parameter_matches,
          regex_match: regex_match,
        }),
        query_parameter_matches:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.match_rules.query_parameter_matches.new` constructs a new object with attributes and blocks configured for the `query_parameter_matches`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exact_match` (`string`): The queryParameterMatch matches if the value of the parameter exactly matches\nthe contents of exactMatch. Only one of presentMatch, exactMatch and regexMatch\nmust be set. When `null`, the `exact_match` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the query parameter to match. The query parameter must exist in the\nrequest, in the absence of which the request match fails.\n  - `present_match` (`bool`): Specifies that the queryParameterMatch matches if the request contains the query\nparameter, irrespective of whether the parameter has a value or not. Only one of\npresentMatch, exactMatch and regexMatch must be set. When `null`, the `present_match` field will be omitted from the resulting object.\n  - `regex_match` (`string`): The queryParameterMatch matches if the value of the parameter matches the\nregular expression specified by regexMatch. For the regular expression grammar,\nplease see en.cppreference.com/w/cpp/regex/ecmascript  Only one of presentMatch,\nexactMatch and regexMatch must be set. When `null`, the `regex_match` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `query_parameter_matches` sub block.\n', args=[]),
          new(
            name,
            exact_match=null,
            present_match=null,
            regex_match=null
          ):: std.prune(a={
            exact_match: exact_match,
            name: name,
            present_match: present_match,
            regex_match: regex_match,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.new` constructs a new object with attributes and blocks configured for the `route_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `priority` (`number`): For routeRules within a given pathMatcher, priority determines the order\nin which load balancer will interpret routeRules. RouteRules are evaluated\nin order of priority, from the lowest to highest number. The priority of\na rule decreases as its number increases (1, 2, 3, N&#43;1). The first rule\nthat matches the request is applied.\n\nYou cannot configure two or more routeRules with the same priority.\nPriority for each rule must be set to a number between 0 and\n2147483647 inclusive.\n\nPriority numbers can have gaps, which enable you to add or remove rules\nin the future without affecting the rest of the rules. For example,\n1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which\nyou could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the\nfuture without any impact on existing rules.\n  - `service` (`string`): The backend service resource to which traffic is\ndirected if this rule is matched. If routeAction is additionally specified,\nadvanced routing actions like URL Rewrites, etc. take effect prior to sending\nthe request to the backend. However, if service is specified, routeAction cannot\ncontain any weightedBackendService s. Conversely, if routeAction specifies any\nweightedBackendServices, service must not be specified. Only one of urlRedirect,\nservice or routeAction.weightedBackendService must be set. When `null`, the `service` field will be omitted from the resulting object.\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService. The headerAction specified here are applied before\nthe matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].r\nouteAction.weightedBackendService.backendServiceWeightAction[].headerAction When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.header_action.new](#fn-route_rulesheader_actionnew) constructor.\n  - `match_rules` (`list[obj]`): The rules for determining a match. When `null`, the `match_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.new](#fn-route_rulesmatch_rulesnew) constructor.\n  - `route_action` (`list[obj]`): In response to a matching matchRule, the load balancer performs advanced routing\nactions like URL rewrites, header transformations, etc. prior to forwarding the\nrequest to the selected backend. If  routeAction specifies any\nweightedBackendServices, service must not be set. Conversely if service is set,\nrouteAction cannot contain any  weightedBackendServices. Only one of routeAction\nor urlRedirect must be set. When `null`, the `route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.new](#fn-route_rulesroute_actionnew) constructor.\n  - `url_redirect` (`list[obj]`): When this rule is matched, the request is redirected to a URL specified by\nurlRedirect. If urlRedirect is specified, service or routeAction must not be\nset. When `null`, the `url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.url_redirect.new](#fn-route_rulesurl_redirectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `route_rules` sub block.\n', args=[]),
      new(
        priority,
        header_action=null,
        match_rules=null,
        route_action=null,
        service=null,
        url_redirect=null
      ):: std.prune(a={
        header_action: header_action,
        match_rules: match_rules,
        priority: priority,
        route_action: route_action,
        service: service,
        url_redirect: url_redirect,
      }),
      route_action:: {
        cors_policy:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the\nactual request can include user credentials. This translates to the Access-\nControl-Allow-Credentials header. Defaults to false. When `null`, the `allow_credentials` field will be omitted from the resulting object.\n  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.\n  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.\n  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For\nregular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript\nAn origin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.\n  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests. An\norigin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origins` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If true, specifies the CORS policy is disabled.\nwhich indicates that the CORS policy is in effect. Defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.\n  - `max_age` (`number`): Specifies how long the results of a preflight request can be cached. This\ntranslates to the content for the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cors_policy` sub block.\n', args=[]),
          new(
            allow_credentials=null,
            allow_headers=null,
            allow_methods=null,
            allow_origin_regexes=null,
            allow_origins=null,
            disabled=null,
            expose_headers=null,
            max_age=null
          ):: std.prune(a={
            allow_credentials: allow_credentials,
            allow_headers: allow_headers,
            allow_methods: allow_methods,
            allow_origin_regexes: allow_origin_regexes,
            allow_origins: allow_origins,
            disabled: disabled,
            expose_headers: expose_headers,
            max_age: max_age,
          }),
        },
        fault_injection_policy:: {
          abort:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`\nTerraform sub block.\n\n\n\n**Args**:\n  - `http_status` (`number`): The HTTP status code used to abort the request. The value must be between 200\nand 599 inclusive. When `null`, the `http_status` field will be omitted from the resulting object.\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be\naborted as part of fault injection. The value must be between 0.0 and 100.0\ninclusive. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `abort` sub block.\n', args=[]),
            new(
              http_status=null,
              percentage=null
            ):: std.prune(a={
              http_status: http_status,
              percentage: percentage,
            }),
          },
          delay:: {
            fixed_delay:: {
              '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `fixed_delay` sub block.\n', args=[]),
              new(
                seconds,
                nanos=null
              ):: std.prune(a={
                nanos: nanos,
                seconds: seconds,
              }),
            },
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`\nTerraform sub block.\n\n\n\n**Args**:\n  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will\nbe introduced as part of fault injection. The value must be between 0.0 and\n100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.\n  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay.new](#fn-delayfixed_delaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `delay` sub block.\n', args=[]),
            new(
              fixed_delay=null,
              percentage=null
            ):: std.prune(a={
              fixed_delay: fixed_delay,
              percentage: percentage,
            }),
          },
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault\ninjection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.abort.new](#fn-fault_injection_policyabortnew) constructor.\n  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault\ninjection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.new](#fn-fault_injection_policydelaynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fault_injection_policy` sub block.\n', args=[]),
          new(
            abort=null,
            delay=null
          ):: std.prune(a={
            abort: abort,
            delay: delay,
          }),
        },
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.new` constructs a new object with attributes and blocks configured for the `route_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see W3C\nRecommendation for Cross Origin Resource Sharing When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.cors_policy.new](#fn-route_actioncors_policynew) constructor.\n  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the\nresiliency of clients to backend service failure. As part of fault injection,\nwhen clients send requests to a backend service, delays can be introduced by\nLoadbalancer on a percentage of requests before sending those request to the\nbackend service. Similarly requests from clients can be aborted by the\nLoadbalancer for a percentage of requests. timeout and retry_policy will be\nignored by clients that are configured with a fault_injection_policy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.new](#fn-route_actionfault_injection_policynew) constructor.\n  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are\nshadowed to a separate mirrored backend service. Loadbalancer does not wait for\nresponses from the shadow service. Prior to sending traffic to the shadow\nservice, the host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.request_mirror_policy.new](#fn-route_actionrequest_mirror_policynew) constructor.\n  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.new](#fn-route_actionretry_policynew) constructor.\n  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time\nthe request is has been fully processed (i.e. end-of-stream) up until the\nresponse has been completely processed. Timeout includes all retries. If not\nspecified, the default value is 15 seconds. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.timeout.new](#fn-route_actiontimeoutnew) constructor.\n  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to\nthe matched service When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.url_rewrite.new](#fn-route_actionurl_rewritenew) constructor.\n  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match\noccurs. The weights determine the fraction of traffic that flows to their\ncorresponding backend service. If all traffic needs to go to a single backend\nservice, there must be one  weightedBackendService with weight set to a non 0\nnumber. Once a backendService is identified and before forwarding the request to\nthe backend service, advanced routing actions like Url rewrites and header\ntransformations are applied depending on additional settings specified in this\nHttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.new](#fn-route_actionweighted_backend_servicesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `route_action` sub block.\n', args=[]),
        new(
          cors_policy=null,
          fault_injection_policy=null,
          request_mirror_policy=null,
          retry_policy=null,
          timeout=null,
          url_rewrite=null,
          weighted_backend_services=null
        ):: std.prune(a={
          cors_policy: cors_policy,
          fault_injection_policy: fault_injection_policy,
          request_mirror_policy: request_mirror_policy,
          retry_policy: retry_policy,
          timeout: timeout,
          url_rewrite: url_rewrite,
          weighted_backend_services: weighted_backend_services,
        }),
        request_mirror_policy:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The BackendService resource being mirrored to.\n\n**Returns**:\n  - An attribute object that represents the `request_mirror_policy` sub block.\n', args=[]),
          new(
            backend_service
          ):: std.prune(a={
            backend_service: backend_service,
          }),
        },
        retry_policy:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0.\n  - `retry_conditions` (`list`): Specfies one or more conditions when this retry rule applies. Valid values are:\n\n* 5xx: Loadbalancer will attempt a retry if the backend service responds with\n  any 5xx response code, or if the backend service does not respond at all,\n  example: disconnects, reset, read timeout, connection failure, and refused\n  streams.\n* gateway-error: Similar to 5xx, but only applies to response codes\n  502, 503 or 504.\n* connect-failure: Loadbalancer will retry on failures\n  connecting to backend services, for example due to connection timeouts.\n* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.\n  Currently the only retriable error supported is 409.\n* refused-stream: Loadbalancer will retry if the backend service resets the stream with a\n  REFUSED_STREAM error code. This reset type indicates that it is safe to retry.\n* cancelled: Loadbalancer will retry if the gRPC status code in the response\n  header is set to cancelled\n* deadline-exceeded: Loadbalancer will retry if the\n  gRPC status code in the response header is set to deadline-exceeded\n* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response\n  header is set to resource-exhausted\n* unavailable: Loadbalancer will retry if the gRPC status code in\n  the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.\n  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt.\nIf not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction\nis not set, will use the largest timeout among all backend services associated with the route. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.per_try_timeout.new](#fn-retry_policyper_try_timeoutnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
          new(
            num_retries,
            per_try_timeout=null,
            retry_conditions=null
          ):: std.prune(a={
            num_retries: num_retries,
            per_try_timeout: per_try_timeout,
            retry_conditions: retry_conditions,
          }),
          per_try_timeout:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `per_try_timeout` sub block.\n', args=[]),
            new(
              seconds,
              nanos=null
            ):: std.prune(a={
              nanos: nanos,
              seconds: seconds,
            }),
          },
        },
        timeout:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations\nless than one second are represented with a 0 &#39;seconds&#39; field and a positive\n&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000\ninclusive.\n\n**Returns**:\n  - An attribute object that represents the `timeout` sub block.\n', args=[]),
          new(
            seconds,
            nanos=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
        url_rewrite:: {
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host\nheader is replaced with contents of hostRewrite. The value must be between 1 and\n255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching\nportion of the request&#39;s path is replaced by pathPrefixRewrite. The value must\nbe between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
          new(
            host_rewrite=null,
            path_prefix_rewrite=null
          ):: std.prune(a={
            host_rewrite: host_rewrite,
            path_prefix_rewrite: path_prefix_rewrite,
          }),
        },
        weighted_backend_services:: {
          header_action:: {
            '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request\nprior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.\n  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response\nprior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.\n  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the\nbackendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.\n  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
            new(
              request_headers_to_add=null,
              request_headers_to_remove=null,
              response_headers_to_add=null,
              response_headers_to_remove=null
            ):: std.prune(a={
              request_headers_to_add: request_headers_to_add,
              request_headers_to_remove: request_headers_to_remove,
              response_headers_to_add: response_headers_to_add,
              response_headers_to_remove: response_headers_to_remove,
            }),
            request_headers_to_add:: {
              '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `request_headers_to_add` sub block.\n', args=[]),
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
            response_headers_to_add:: {
              '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the\nheader. If true, headerValue is set for the header, discarding any values that\nwere set for that header.\n\n**Returns**:\n  - An attribute object that represents the `response_headers_to_add` sub block.\n', args=[]),
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_service` (`string`): The default BackendService resource. Before\nforwarding the request to backendService, the loadbalancer applies any relevant\nheaderActions specified as part of this backendServiceWeight.\n  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as weight /\n(sum of all weightedBackendService weights in routeAction) . The selection of a\nbackend service is determined only for new traffic. Once a user&#39;s request has\nbeen directed to a backendService, subsequent requests will be sent to the same\nbackendService as determined by the BackendService&#39;s session affinity policy.\nThe value must be between 0 and 1000\n  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for\nthe selected backendService. headerAction specified here take effect before\nheaderAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.new](#fn-weighted_backend_servicesheader_actionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weighted_backend_services` sub block.\n', args=[]),
          new(
            backend_service,
            weight,
            header_action=null
          ):: std.prune(a={
            backend_service: backend_service,
            header_action: header_action,
            weight: weight,
          }),
        },
      },
      url_redirect:: {
        '#new':: d.fn(help='\n`google.compute_url_map.path_matcher.route_rules.url_redirect.new` constructs a new object with attributes and blocks configured for the `url_redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was\nsupplied in the request. The value must be between 1 and 255 characters. When `null`, the `host_redirect` field will be omitted from the resulting object.\n  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set\nto false, the URL scheme of the redirected request will remain the same as that\nof the request. This must only be set for UrlMaps used in TargetHttpProxys.\nSetting this true for TargetHttpsProxy is not permitted. Defaults to false. When `null`, the `https_redirect` field will be omitted from the resulting object.\n  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was\nsupplied in the request. Only one of pathRedirect or prefixRedirect must be\nspecified. The value must be between 1 and 1024 characters. When `null`, the `path_redirect` field will be omitted from the resulting object.\n  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,\nretaining the remaining portion of the URL before redirecting the request. When `null`, the `prefix_redirect` field will be omitted from the resulting object.\n  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:\n\n* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.\n\n* FOUND, which corresponds to 302.\n\n* SEE_OTHER which corresponds to 303.\n\n* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method will be retained.\n\n* PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.\n  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed\nprior to redirecting the request. If set to false, the query portion of the\noriginal URL is retained. Defaults to false. When `null`, the `strip_query` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_redirect` sub block.\n', args=[]),
        new(
          host_redirect=null,
          https_redirect=null,
          path_redirect=null,
          prefix_redirect=null,
          redirect_response_code=null,
          strip_query=null
        ):: std.prune(a={
          host_redirect: host_redirect,
          https_redirect: https_redirect,
          path_redirect: path_redirect,
          prefix_redirect: prefix_redirect,
          redirect_response_code: redirect_response_code,
          strip_query: strip_query,
        }),
      },
    },
  },
  test:: {
    '#new':: d.fn(help='\n`google.compute_url_map.test.new` constructs a new object with attributes and blocks configured for the `test`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of this test case. When `null`, the `description` field will be omitted from the resulting object.\n  - `host` (`string`): Host portion of the URL.\n  - `path` (`string`): Path portion of the URL.\n  - `service` (`string`): The backend service or backend bucket link that should be matched by this test.\n\n**Returns**:\n  - An attribute object that represents the `test` sub block.\n', args=[]),
    new(
      host,
      path,
      service,
      description=null
    ):: std.prune(a={
      description: description,
      host: host,
      path: path,
      service: service,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_url_map.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDefaultRouteAction':: d.fn(help='`google.list[obj].withDefaultRouteAction` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_route_action field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDefaultRouteActionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_route_action` field.\n', args=[]),
  withDefaultRouteAction(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_route_action: value,
        },
      },
    },
  },
  '#withDefaultRouteActionMixin':: d.fn(help='`google.list[obj].withDefaultRouteActionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_route_action field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultRouteAction](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_route_action` field.\n', args=[]),
  withDefaultRouteActionMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_route_action+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDefaultService':: d.fn(help='`google.string.withDefaultService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the default_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `default_service` field.\n', args=[]),
  withDefaultService(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_service: value,
        },
      },
    },
  },
  '#withDefaultUrlRedirect':: d.fn(help='`google.list[obj].withDefaultUrlRedirect` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_url_redirect field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDefaultUrlRedirectMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_url_redirect` field.\n', args=[]),
  withDefaultUrlRedirect(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_url_redirect: value,
        },
      },
    },
  },
  '#withDefaultUrlRedirectMixin':: d.fn(help='`google.list[obj].withDefaultUrlRedirectMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_url_redirect field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultUrlRedirect](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_url_redirect` field.\n', args=[]),
  withDefaultUrlRedirectMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_url_redirect+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withHeaderAction':: d.fn(help='`google.list[obj].withHeaderAction` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the header_action field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHeaderActionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `header_action` field.\n', args=[]),
  withHeaderAction(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          header_action: value,
        },
      },
    },
  },
  '#withHeaderActionMixin':: d.fn(help='`google.list[obj].withHeaderActionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the header_action field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHeaderAction](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `header_action` field.\n', args=[]),
  withHeaderActionMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          header_action+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHostRule':: d.fn(help='`google.list[obj].withHostRule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the host_rule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHostRuleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `host_rule` field.\n', args=[]),
  withHostRule(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          host_rule: value,
        },
      },
    },
  },
  '#withHostRuleMixin':: d.fn(help='`google.list[obj].withHostRuleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the host_rule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHostRule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `host_rule` field.\n', args=[]),
  withHostRuleMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          host_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPathMatcher':: d.fn(help='`google.list[obj].withPathMatcher` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the path_matcher field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPathMatcherMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `path_matcher` field.\n', args=[]),
  withPathMatcher(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          path_matcher: value,
        },
      },
    },
  },
  '#withPathMatcherMixin':: d.fn(help='`google.list[obj].withPathMatcherMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the path_matcher field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPathMatcher](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `path_matcher` field.\n', args=[]),
  withPathMatcherMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          path_matcher+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTest':: d.fn(help='`google.list[obj].withTest` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the test field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTestMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `test` field.\n', args=[]),
  withTest(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          test: value,
        },
      },
    },
  },
  '#withTestMixin':: d.fn(help='`google.list[obj].withTestMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the test field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTest](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `test` field.\n', args=[]),
  withTestMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          test+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
