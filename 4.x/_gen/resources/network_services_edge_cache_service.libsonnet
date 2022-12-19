local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_services_edge_cache_service', url='', help='`network_services_edge_cache_service` represents the `google_network_services_edge_cache_service` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  log_config:: {
    '#new':: d.fn(help='\n`google.network_services_edge_cache_service.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable` (`bool`): Specifies whether to enable logging for traffic served by this service. When `null`, the `enable` field will be omitted from the resulting object.\n  - `sample_rate` (`number`): Configures the sampling rate of requests, where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0, and the value of the field must be in [0, 1].\n\nThis field can only be specified if logging is enabled for this service. When `null`, the `sample_rate` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      enable=null,
      sample_rate=null
    ):: std.prune(a={
      enable: enable,
      sample_rate: sample_rate,
    }),
  },
  '#new':: d.fn(help="\n`google.network_services_edge_cache_service.new` injects a new `google_network_services_edge_cache_service` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_services_edge_cache_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_services_edge_cache_service` using the reference:\n\n    $._ref.google_network_services_edge_cache_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_services_edge_cache_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `disable_http2` (`bool`): Disables HTTP/2.\n\nHTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.\n\nSome legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated. When `null`, the `disable_http2` field will be omitted from the resulting object.\n  - `disable_quic` (`bool`): HTTP/3 (IETF QUIC) and Google QUIC are enabled by default. When `null`, the `disable_quic` field will be omitted from the resulting object.\n  - `edge_security_policy` (`string`): Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService. When `null`, the `edge_security_policy` field will be omitted from the resulting object.\n  - `edge_ssl_certificates` (`list`): URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.\n\nNote that only \u0026#34;global\u0026#34; certificates with a \u0026#34;scope\u0026#34; of \u0026#34;EDGE_CACHE\u0026#34; can be attached to an EdgeCacheService. When `null`, the `edge_ssl_certificates` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `require_tls` (`bool`): Require TLS (HTTPS) for all clients connecting to this service.\n\nClients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).\nYou must have at least one (1) edgeSslCertificate specified to enable this. When `null`, the `require_tls` field will be omitted from the resulting object.\n  - `ssl_policy` (`string`): URL of the SslPolicy resource that will be associated with the EdgeCacheService.\n\nIf not set, the EdgeCacheService has no SSL policy configured, and will default to the \u0026#34;COMPATIBLE\u0026#34; policy. When `null`, the `ssl_policy` field will be omitted from the resulting object.\n  - `log_config` (`list[obj]`): Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.log_config.new](#fn-log_confignew) constructor.\n  - `routing` (`list[obj]`): Defines how requests are routed, modified, cached and/or which origin content is filled from. When `null`, the `routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.new](#fn-routingnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    disable_http2=null,
    disable_quic=null,
    edge_security_policy=null,
    edge_ssl_certificates=null,
    labels=null,
    log_config=null,
    project=null,
    require_tls=null,
    routing=null,
    ssl_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_edge_cache_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disable_http2=disable_http2,
      disable_quic=disable_quic,
      edge_security_policy=edge_security_policy,
      edge_ssl_certificates=edge_ssl_certificates,
      labels=labels,
      log_config=log_config,
      name=name,
      project=project,
      require_tls=require_tls,
      routing=routing,
      ssl_policy=ssl_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_services_edge_cache_service.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_edge_cache_service`\nTerraform resource.\n\nUnlike [google.network_services_edge_cache_service.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `disable_http2` (`bool`): Disables HTTP/2.\n\nHTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.\n\nSome legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated. When `null`, the `disable_http2` field will be omitted from the resulting object.\n  - `disable_quic` (`bool`): HTTP/3 (IETF QUIC) and Google QUIC are enabled by default. When `null`, the `disable_quic` field will be omitted from the resulting object.\n  - `edge_security_policy` (`string`): Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService. When `null`, the `edge_security_policy` field will be omitted from the resulting object.\n  - `edge_ssl_certificates` (`list`): URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.\n\nNote that only &#34;global&#34; certificates with a &#34;scope&#34; of &#34;EDGE_CACHE&#34; can be attached to an EdgeCacheService. When `null`, the `edge_ssl_certificates` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `require_tls` (`bool`): Require TLS (HTTPS) for all clients connecting to this service.\n\nClients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).\nYou must have at least one (1) edgeSslCertificate specified to enable this. When `null`, the `require_tls` field will be omitted from the resulting object.\n  - `ssl_policy` (`string`): URL of the SslPolicy resource that will be associated with the EdgeCacheService.\n\nIf not set, the EdgeCacheService has no SSL policy configured, and will default to the &#34;COMPATIBLE&#34; policy. When `null`, the `ssl_policy` field will be omitted from the resulting object.\n  - `log_config` (`list[obj]`): Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.log_config.new](#fn-log_confignew) constructor.\n  - `routing` (`list[obj]`): Defines how requests are routed, modified, cached and/or which origin content is filled from. When `null`, the `routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.new](#fn-routingnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_edge_cache_service` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    disable_http2=null,
    disable_quic=null,
    edge_security_policy=null,
    edge_ssl_certificates=null,
    labels=null,
    log_config=null,
    project=null,
    require_tls=null,
    routing=null,
    ssl_policy=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disable_http2: disable_http2,
    disable_quic: disable_quic,
    edge_security_policy: edge_security_policy,
    edge_ssl_certificates: edge_ssl_certificates,
    labels: labels,
    log_config: log_config,
    name: name,
    project: project,
    require_tls: require_tls,
    routing: routing,
    ssl_policy: ssl_policy,
    timeouts: timeouts,
  }),
  routing:: {
    host_rule:: {
      '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.host_rule.new` constructs a new object with attributes and blocks configured for the `host_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A human-readable description of the hostRule. When `null`, the `description` field will be omitted from the resulting object.\n  - `hosts` (`list`): The list of host patterns to match.\n\nHost patterns must be valid hostnames. Ports are not allowed. Wildcard hosts are supported in the suffix or prefix form. * matches any string of ([a-z0-9-.]*). It does not match the empty string.\n\nWhen multiple hosts are specified, hosts are matched in the following priority:\n\n  1. Exact domain names: &#39;&#39;www.foo.com&#39;&#39;.\n  2. Suffix domain wildcards: &#39;&#39;*.foo.com&#39;&#39; or &#39;&#39;*-bar.foo.com&#39;&#39;.\n  3. Prefix domain wildcards: &#39;&#39;foo.*&#39;&#39; or &#39;&#39;foo-*&#39;&#39;.\n  4. Special wildcard &#39;&#39;*&#39;&#39; matching any domain.\n\n  Notes:\n\n    The wildcard will not match the empty string. e.g. &#39;&#39;*-bar.foo.com&#39;&#39; will match &#39;&#39;baz-bar.foo.com&#39;&#39; but not &#39;&#39;-bar.foo.com&#39;&#39;. The longest wildcards match first. Only a single host in the entire service can match on &#39;&#39;*&#39;&#39;. A domain must be unique across all configured hosts within a service.\n\n    Hosts are matched against the HTTP Host header, or for HTTP/2 and HTTP/3, the &#34;:authority&#34; header, from the incoming request.\n\n    You may specify up to 10 hosts.\n  - `path_matcher` (`string`): The name of the pathMatcher associated with this hostRule.\n\n**Returns**:\n  - An attribute object that represents the `host_rule` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.new` constructs a new object with attributes and blocks configured for the `routing`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rule` (`list[obj]`): The list of hostRules to match against. These rules define which hostnames the EdgeCacheService will match against, and which route configurations apply. When `null`, the `host_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.host_rule.new](#fn-routinghost_rulenew) constructor.\n  - `path_matcher` (`list[obj]`): The list of pathMatchers referenced via name by hostRules. PathMatcher is used to match the path portion of the URL when a HostRule matches the URL&#39;s host portion. When `null`, the `path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.new](#fn-routingpath_matchernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `routing` sub block.\n', args=[]),
    new(
      host_rule=null,
      path_matcher=null
    ):: std.prune(a={
      host_rule: host_rule,
      path_matcher: path_matcher,
    }),
    path_matcher:: {
      '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.new` constructs a new object with attributes and blocks configured for the `path_matcher`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name to which this PathMatcher is referred by the HostRule.\n  - `route_rule` (`list[obj]`): The routeRules to match against. routeRules support advanced routing behaviour, and can match on paths, headers and query parameters, as well as status codes and HTTP methods. When `null`, the `route_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.new](#fn-routingroutingroute_rulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `path_matcher` sub block.\n', args=[]),
      new(
        name,
        description=null,
        route_rule=null
      ):: std.prune(a={
        description: description,
        name: name,
        route_rule: route_rule,
      }),
      route_rule:: {
        header_action:: {
          '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `request_header_to_add` (`list[obj]`): Describes a header to add. When `null`, the `request_header_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_add.new](#fn-routingroutingpath_matcherroute_rulerequest_header_to_addnew) constructor.\n  - `request_header_to_remove` (`list[obj]`): A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin. When `null`, the `request_header_to_remove` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_remove.new](#fn-routingroutingpath_matcherroute_rulerequest_header_to_removenew) constructor.\n  - `response_header_to_add` (`list[obj]`): Headers to add to the response prior to sending it back to the client.\n\nResponse headers are only sent to the client, and do not have an effect on the cache serving the response. When `null`, the `response_header_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_add.new](#fn-routingroutingpath_matcherroute_ruleresponse_header_to_addnew) constructor.\n  - `response_header_to_remove` (`list[obj]`): A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin. When `null`, the `response_header_to_remove` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_remove.new](#fn-routingroutingpath_matcherroute_ruleresponse_header_to_removenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `header_action` sub block.\n', args=[]),
          new(
            request_header_to_add=null,
            request_header_to_remove=null,
            response_header_to_add=null,
            response_header_to_remove=null
          ):: std.prune(a={
            request_header_to_add: request_header_to_add,
            request_header_to_remove: request_header_to_remove,
            response_header_to_add: response_header_to_add,
            response_header_to_remove: response_header_to_remove,
          }),
          request_header_to_add:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_add.new` constructs a new object with attributes and blocks configured for the `request_header_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): Whether to replace all existing headers with the same name. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_header_to_add` sub block.\n', args=[]),
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
          request_header_to_remove:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_remove.new` constructs a new object with attributes and blocks configured for the `request_header_to_remove`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to remove.\n\n**Returns**:\n  - An attribute object that represents the `request_header_to_remove` sub block.\n', args=[]),
            new(
              header_name
            ):: std.prune(a={
              header_name: header_name,
            }),
          },
          response_header_to_add:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_add.new` constructs a new object with attributes and blocks configured for the `response_header_to_add`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): The name of the header to add.\n  - `header_value` (`string`): The value of the header to add.\n  - `replace` (`bool`): Whether to replace all existing headers with the same name. When `null`, the `replace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `response_header_to_add` sub block.\n', args=[]),
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
          response_header_to_remove:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_remove.new` constructs a new object with attributes and blocks configured for the `response_header_to_remove`\nTerraform sub block.\n\n\n\n**Args**:\n  - `header_name` (`string`): Headers to remove from the response prior to sending it back to the client.\n\nResponse headers are only sent to the client, and do not have an effect on the cache serving the response.\n\n**Returns**:\n  - An attribute object that represents the `response_header_to_remove` sub block.\n', args=[]),
            new(
              header_name
            ):: std.prune(a={
              header_name: header_name,
            }),
          },
        },
        match_rule:: {
          header_match:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.header_match.new` constructs a new object with attributes and blocks configured for the `header_match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exact_match` (`string`): The value of the header should exactly match contents of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.\n  - `header_name` (`string`): The header name to match on.\n  - `invert_match` (`bool`): If set to false (default), the headerMatch is considered a match if the match criteria above are met.\nIf set to true, the headerMatch is considered a match if the match criteria above are NOT met. When `null`, the `invert_match` field will be omitted from the resulting object.\n  - `prefix_match` (`string`): The value of the header must start with the contents of prefixMatch. When `null`, the `prefix_match` field will be omitted from the resulting object.\n  - `present_match` (`bool`): A header with the contents of headerName must exist. The match takes place whether or not the request&#39;s header has a value. When `null`, the `present_match` field will be omitted from the resulting object.\n  - `suffix_match` (`string`): The value of the header must end with the contents of suffixMatch. When `null`, the `suffix_match` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `header_match` sub block.\n', args=[]),
            new(
              header_name,
              exact_match=null,
              invert_match=null,
              prefix_match=null,
              present_match=null,
              suffix_match=null
            ):: std.prune(a={
              exact_match: exact_match,
              header_name: header_name,
              invert_match: invert_match,
              prefix_match: prefix_match,
              present_match: present_match,
              suffix_match: suffix_match,
            }),
          },
          '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.new` constructs a new object with attributes and blocks configured for the `match_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `full_path_match` (`string`): For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL. When `null`, the `full_path_match` field will be omitted from the resulting object.\n  - `ignore_case` (`bool`): Specifies that prefixMatch and fullPathMatch matches are case sensitive. When `null`, the `ignore_case` field will be omitted from the resulting object.\n  - `path_template_match` (`string`): For satisfying the matchRule condition, the path of the request\nmust match the wildcard pattern specified in pathTemplateMatch\nafter removing any query parameters and anchor that may be part\nof the original URL.\n\npathTemplateMatch must be between 1 and 255 characters\n(inclusive).  The pattern specified by pathTemplateMatch may\nhave at most 5 wildcard operators and at most 5 variable\ncaptures in total. When `null`, the `path_template_match` field will be omitted from the resulting object.\n  - `prefix_match` (`string`): For satisfying the matchRule condition, the request&#39;s path must begin with the specified prefixMatch. prefixMatch must begin with a /. When `null`, the `prefix_match` field will be omitted from the resulting object.\n  - `header_match` (`list[obj]`): Specifies a list of header match criteria, all of which must match corresponding headers in the request. When `null`, the `header_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.header_match.new](#fn-routingroutingpath_matcherroute_ruleheader_matchnew) constructor.\n  - `query_parameter_match` (`list[obj]`): Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request. When `null`, the `query_parameter_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.query_parameter_match.new](#fn-routingroutingpath_matcherroute_rulequery_parameter_matchnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match_rule` sub block.\n', args=[]),
          new(
            full_path_match=null,
            header_match=null,
            ignore_case=null,
            path_template_match=null,
            prefix_match=null,
            query_parameter_match=null
          ):: std.prune(a={
            full_path_match: full_path_match,
            header_match: header_match,
            ignore_case: ignore_case,
            path_template_match: path_template_match,
            prefix_match: prefix_match,
            query_parameter_match: query_parameter_match,
          }),
          query_parameter_match:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.query_parameter_match.new` constructs a new object with attributes and blocks configured for the `query_parameter_match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exact_match` (`string`): The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.\n  - `present_match` (`bool`): Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. When `null`, the `present_match` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `query_parameter_match` sub block.\n', args=[]),
            new(
              name,
              exact_match=null,
              present_match=null
            ):: std.prune(a={
              exact_match: exact_match,
              name: name,
              present_match: present_match,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.new` constructs a new object with attributes and blocks configured for the `route_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A human-readable description of the routeRule. When `null`, the `description` field will be omitted from the resulting object.\n  - `origin` (`string`): The Origin resource that requests to this route should fetch from when a matching response is not in cache. Origins can be defined as short names (&#34;my-origin&#34;) or fully-qualified resource URLs - e.g. &#34;networkservices.googleapis.com/projects/my-project/global/edgecacheorigins/my-origin&#34;\n\nOnly one of origin or urlRedirect can be set. When `null`, the `origin` field will be omitted from the resulting object.\n  - `priority` (`string`): The priority of this route rule, where 1 is the highest priority.\n\nYou cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number between 1 and 999 inclusive.\n\nPriority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers\nto which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.\n  - `header_action` (`list[obj]`): The header actions, including adding &amp; removing headers, for requests that match this route. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.new](#fn-routingroutingpath_matcherheader_actionnew) constructor.\n  - `match_rule` (`list[obj]`): The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates\nwithin a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule. When `null`, the `match_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.new](#fn-routingroutingpath_matchermatch_rulenew) constructor.\n  - `route_action` (`list[obj]`): In response to a matching path, the routeAction performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected origin. When `null`, the `route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.new](#fn-routingroutingpath_matcherroute_actionnew) constructor.\n  - `url_redirect` (`list[obj]`): The URL redirect configuration for requests that match this route. When `null`, the `url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.url_redirect.new](#fn-routingroutingpath_matcherurl_redirectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `route_rule` sub block.\n', args=[]),
        new(
          priority,
          description=null,
          header_action=null,
          match_rule=null,
          origin=null,
          route_action=null,
          url_redirect=null
        ):: std.prune(a={
          description: description,
          header_action: header_action,
          match_rule: match_rule,
          origin: origin,
          priority: priority,
          route_action: route_action,
          url_redirect: url_redirect,
        }),
        route_action:: {
          cdn_policy:: {
            add_signatures:: {
              '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures.new` constructs a new object with attributes and blocks configured for the `add_signatures`\nTerraform sub block.\n\n\n\n**Args**:\n  - `actions` (`list`): The actions to take to add signatures to responses. Possible values: [&#34;GENERATE_COOKIE&#34;, &#34;GENERATE_TOKEN_HLS_COOKIELESS&#34;, &#34;PROPAGATE_TOKEN_HLS_COOKIELESS&#34;]\n  - `copied_parameters` (`list`): The parameters to copy from the verified token to the generated token.\n\nOnly the following parameters may be copied:\n\n  * &#39;PathGlobs&#39;\n  * &#39;paths&#39;\n  * &#39;acl&#39;\n  * &#39;URLPrefix&#39;\n  * &#39;IPRanges&#39;\n  * &#39;SessionID&#39;\n  * &#39;id&#39;\n  * &#39;Data&#39;\n  * &#39;data&#39;\n  * &#39;payload&#39;\n  * &#39;Headers&#39;\n\nYou may specify up to 6 parameters to copy.  A given parameter is be copied only if the parameter exists in the verified token.  Parameter names are matched exactly as specified.  The order of the parameters does not matter.  Duplicates are not allowed.\n\nThis field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified. When `null`, the `copied_parameters` field will be omitted from the resulting object.\n  - `keyset` (`string`): The keyset to use for signature generation.\n\nThe following are both valid paths to an EdgeCacheKeyset resource:\n\n  * &#39;projects/project/locations/global/edgeCacheKeysets/yourKeyset&#39;\n  * &#39;yourKeyset&#39;\n\nThis must be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.  This field may not be specified otherwise. When `null`, the `keyset` field will be omitted from the resulting object.\n  - `token_query_parameter` (`string`): The query parameter in which to put the generated token.\n\nIf not specified, defaults to &#39;edge-cache-token&#39;.\n\nIf specified, the name must be 1-64 characters long and match the regular expression &#39;[a-zA-Z]([a-zA-Z0-9_-])*&#39; which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.\n\nThis field may only be set when the GENERATE_TOKEN_HLS_COOKIELESS or PROPAGATE_TOKEN_HLS_COOKIELESS actions are specified. When `null`, the `token_query_parameter` field will be omitted from the resulting object.\n  - `token_ttl` (`string`): The duration the token is valid starting from the moment the token is first generated.\n\nDefaults to &#39;86400s&#39; (1 day).\n\nThe TTL must be &gt;= 0 and &lt;= 604,800 seconds (1 week).\n\nThis field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `token_ttl` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `add_signatures` sub block.\n', args=[]),
              new(
                actions,
                copied_parameters=null,
                keyset=null,
                token_query_parameter=null,
                token_ttl=null
              ):: std.prune(a={
                actions: actions,
                copied_parameters: copied_parameters,
                keyset: keyset,
                token_query_parameter: token_query_parameter,
                token_ttl: token_ttl,
              }),
            },
            cache_key_policy:: {
              '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy.new` constructs a new object with attributes and blocks configured for the `cache_key_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclude_host` (`bool`): If true, requests to different hosts will be cached separately.\n\nNote: this should only be enabled if hosts share the same origin and content. Removing the host from the cache key may inadvertently result in different objects being cached than intended, depending on which route the first user matched. When `null`, the `exclude_host` field will be omitted from the resulting object.\n  - `exclude_query_string` (`bool`): If true, exclude query string parameters from the cache key\n\nIf false (the default), include the query string parameters in\nthe cache key according to includeQueryParameters and\nexcludeQueryParameters. If neither includeQueryParameters nor\nexcludeQueryParameters is set, the entire query string will be\nincluded. When `null`, the `exclude_query_string` field will be omitted from the resulting object.\n  - `excluded_query_parameters` (`list`): Names of query string parameters to exclude from cache keys. All other parameters will be included.\n\nEither specify includedQueryParameters or excludedQueryParameters, not both. &#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as delimiters. When `null`, the `excluded_query_parameters` field will be omitted from the resulting object.\n  - `include_protocol` (`bool`): If true, http and https requests will be cached separately. When `null`, the `include_protocol` field will be omitted from the resulting object.\n  - `included_cookie_names` (`list`): Names of Cookies to include in cache keys.  The cookie name and cookie value of each cookie named will be used as part of the cache key.\n\nCookie names:\n  - must be valid RFC 6265 &#34;cookie-name&#34; tokens\n  - are case sensitive\n  - cannot start with &#34;Edge-Cache-&#34; (case insensitive)\n\n  Note that specifying several cookies, and/or cookies that have a large range of values (e.g., per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance.\n\n  You may specify up to three cookie names. When `null`, the `included_cookie_names` field will be omitted from the resulting object.\n  - `included_header_names` (`list`): Names of HTTP request headers to include in cache keys. The value of the header field will be used as part of the cache key.\n\n- Header names must be valid HTTP RFC 7230 header field values.\n- Header field names are case insensitive\n- To include the HTTP method, use &#34;:method&#34;\n\nNote that specifying several headers, and/or headers that have a large range of values (e.g. per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance. When `null`, the `included_header_names` field will be omitted from the resulting object.\n  - `included_query_parameters` (`list`): Names of query string parameters to include in cache keys. All other parameters will be excluded.\n\nEither specify includedQueryParameters or excludedQueryParameters, not both. &#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as delimiters. When `null`, the `included_query_parameters` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cache_key_policy` sub block.\n', args=[]),
              new(
                exclude_host=null,
                exclude_query_string=null,
                excluded_query_parameters=null,
                include_protocol=null,
                included_cookie_names=null,
                included_header_names=null,
                included_query_parameters=null
              ):: std.prune(a={
                exclude_host: exclude_host,
                exclude_query_string: exclude_query_string,
                excluded_query_parameters: excluded_query_parameters,
                include_protocol: include_protocol,
                included_cookie_names: included_cookie_names,
                included_header_names: included_header_names,
                included_query_parameters: included_query_parameters,
              }),
            },
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.new` constructs a new object with attributes and blocks configured for the `cdn_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cache_mode` (`string`): Cache modes allow users to control the behaviour of the cache, what content it should cache automatically, whether to respect origin headers, or whether to unconditionally cache all responses.\n\nFor all cache modes, Cache-Control headers will be passed to the client. Use clientTtl to override what is sent to the client. Possible values: [&#34;CACHE_ALL_STATIC&#34;, &#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, &#34;BYPASS_CACHE&#34;] When `null`, the `cache_mode` field will be omitted from the resulting object.\n  - `client_ttl` (`string`): Specifies a separate client (e.g. browser client) TTL, separate from the TTL used by the edge caches. Leaving this empty will use the same cache TTL for both the CDN and the client-facing response.\n\n- The TTL must be &gt; 0 and &lt;= 86400s (1 day)\n- The clientTtl cannot be larger than the defaultTtl (if set)\n- Fractions of a second are not allowed.\n\nOmit this field to use the defaultTtl, or the max-age set by the origin, as the client-facing TTL.\n\nWhen the cache mode is set to &#34;USE_ORIGIN_HEADERS&#34; or &#34;BYPASS_CACHE&#34;, you must omit this field.\nA duration in seconds terminated by &#39;s&#39;. Example: &#34;3s&#34;. When `null`, the `client_ttl` field will be omitted from the resulting object.\n  - `default_ttl` (`string`): Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age).\n\nDefaults to 3600s (1 hour).\n\n- The TTL must be &gt;= 0 and &lt;= 31,536,000 seconds (1 year)\n- Setting a TTL of &#34;0&#34; means &#34;always revalidate&#34; (equivalent to must-revalidate)\n- The value of defaultTTL cannot be set to a value greater than that of maxTTL.\n- Fractions of a second are not allowed.\n- When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses.\n\nNote that infrequently accessed objects may be evicted from the cache before the defined TTL. Objects that expire will be revalidated with the origin.\n\nWhen the cache mode is set to &#34;USE_ORIGIN_HEADERS&#34; or &#34;BYPASS_CACHE&#34;, you must omit this field.\n\nA duration in seconds terminated by &#39;s&#39;. Example: &#34;3s&#34;. When `null`, the `default_ttl` field will be omitted from the resulting object.\n  - `max_ttl` (`string`): Specifies the maximum allowed TTL for cached content served by this origin.\n\nDefaults to 86400s (1 day).\n\nCache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTtl seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive.\n\n- The TTL must be &gt;= 0 and &lt;= 31,536,000 seconds (1 year)\n- Setting a TTL of &#34;0&#34; means &#34;always revalidate&#34;\n- The value of maxTtl must be equal to or greater than defaultTtl.\n- Fractions of a second are not allowed.\n\nWhen the cache mode is set to &#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, or &#34;BYPASS_CACHE&#34;, you must omit this field.\n\nA duration in seconds terminated by &#39;s&#39;. Example: &#34;3s&#34;. When `null`, the `max_ttl` field will be omitted from the resulting object.\n  - `negative_caching` (`bool`): Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency.\n\nBy default, the CDNPolicy will apply the following default TTLs to these status codes:\n\n- HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m\n- HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s\n- HTTP 405 (Method Not Found), 414 (URI Too Long), 501 (Not Implemented): 60s\n\nThese defaults can be overridden in negativeCachingPolicy When `null`, the `negative_caching` field will be omitted from the resulting object.\n  - `negative_caching_policy` (`obj`): Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.\n\n- Omitting the policy and leaving negativeCaching enabled will use the default TTLs for each status code, defined in negativeCaching.\n- TTLs must be &gt;= 0 (where 0 is &#34;always revalidate&#34;) and &lt;= 86400s (1 day)\n\nNote that when specifying an explicit negativeCachingPolicy, you should take care to specify a cache TTL for all response codes that you wish to cache. The CDNPolicy will not apply any default negative caching when a policy exists. When `null`, the `negative_caching_policy` field will be omitted from the resulting object.\n  - `signed_request_keyset` (`string`): The EdgeCacheKeyset containing the set of public keys used to validate signed requests at the edge. When `null`, the `signed_request_keyset` field will be omitted from the resulting object.\n  - `signed_request_maximum_expiration_ttl` (`string`): Limit how far into the future the expiration time of a signed request may be.\n\nWhen set, a signed request is rejected if its expiration time is later than now &#43; signedRequestMaximumExpirationTtl, where now is the time at which the signed request is first handled by the CDN.\n\n- The TTL must be &gt; 0.\n- Fractions of a second are not allowed.\n\nBy default, signedRequestMaximumExpirationTtl is not set and the expiration time of a signed request may be arbitrarily far into future. When `null`, the `signed_request_maximum_expiration_ttl` field will be omitted from the resulting object.\n  - `signed_request_mode` (`string`): Whether to enforce signed requests. The default value is DISABLED, which means all content is public, and does not authorize access.\n\nYou must also set a signedRequestKeyset to enable signed requests.\n\nWhen set to REQUIRE_SIGNATURES, all matching requests will have their signature validated. Requests that were not signed with the corresponding private key, or that are otherwise invalid (expired, do not match the signature, IP address, or header) will be rejected with a HTTP 403 and (if enabled) logged. Possible values: [&#34;DISABLED&#34;, &#34;REQUIRE_SIGNATURES&#34;, &#34;REQUIRE_TOKENS&#34;] When `null`, the `signed_request_mode` field will be omitted from the resulting object.\n  - `add_signatures` (`list[obj]`): Enable signature generation or propagation on this route.\n\nThis field may only be specified when signedRequestMode is set to REQUIRE_TOKENS. When `null`, the `add_signatures` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures.new](#fn-routingroutingpath_matcherroute_ruleroute_actionadd_signaturesnew) constructor.\n  - `cache_key_policy` (`list[obj]`): Defines the request parameters that contribute to the cache key. When `null`, the `cache_key_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy.new](#fn-routingroutingpath_matcherroute_ruleroute_actioncache_key_policynew) constructor.\n  - `signed_token_options` (`list[obj]`): Additional options for signed tokens.\n\nsignedTokenOptions may only be specified when signedRequestMode is REQUIRE_TOKENS. When `null`, the `signed_token_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options.new](#fn-routingroutingpath_matcherroute_ruleroute_actionsigned_token_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cdn_policy` sub block.\n', args=[]),
            new(
              add_signatures=null,
              cache_key_policy=null,
              cache_mode=null,
              client_ttl=null,
              default_ttl=null,
              max_ttl=null,
              negative_caching=null,
              negative_caching_policy=null,
              signed_request_keyset=null,
              signed_request_maximum_expiration_ttl=null,
              signed_request_mode=null,
              signed_token_options=null
            ):: std.prune(a={
              add_signatures: add_signatures,
              cache_key_policy: cache_key_policy,
              cache_mode: cache_mode,
              client_ttl: client_ttl,
              default_ttl: default_ttl,
              max_ttl: max_ttl,
              negative_caching: negative_caching,
              negative_caching_policy: negative_caching_policy,
              signed_request_keyset: signed_request_keyset,
              signed_request_maximum_expiration_ttl: signed_request_maximum_expiration_ttl,
              signed_request_mode: signed_request_mode,
              signed_token_options: signed_token_options,
            }),
            signed_token_options:: {
              '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options.new` constructs a new object with attributes and blocks configured for the `signed_token_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_signature_algorithms` (`list`): The allowed signature algorithms to use.\n\nDefaults to using only ED25519.\n\nYou may specify up to 3 signature algorithms to use. Possible values: [&#34;ED25519&#34;, &#34;HMAC_SHA_256&#34;, &#34;HMAC_SHA1&#34;] When `null`, the `allowed_signature_algorithms` field will be omitted from the resulting object.\n  - `token_query_parameter` (`string`): The query parameter in which to find the token.\n\nThe name must be 1-64 characters long and match the regular expression &#39;[a-zA-Z]([a-zA-Z0-9_-])*&#39; which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.\n\nDefaults to &#39;edge-cache-token&#39;. When `null`, the `token_query_parameter` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `signed_token_options` sub block.\n', args=[]),
              new(
                allowed_signature_algorithms=null,
                token_query_parameter=null
              ):: std.prune(a={
                allowed_signature_algorithms: allowed_signature_algorithms,
                token_query_parameter: token_query_parameter,
              }),
            },
          },
          cors_policy:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials.\n\nThis translates to the Access-Control-Allow-Credentials response header. When `null`, the `allow_credentials` field will be omitted from the resulting object.\n  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers response header. When `null`, the `allow_headers` field will be omitted from the resulting object.\n  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods response header. When `null`, the `allow_methods` field will be omitted from the resulting object.\n  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests.\n\nThis translates to the Access-Control-Allow-Origin response header. When `null`, the `allow_origins` field will be omitted from the resulting object.\n  - `disabled` (`bool`): If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `expose_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers response header. When `null`, the `expose_headers` field will be omitted from the resulting object.\n  - `max_age` (`string`): Specifies how long results of a preflight request can be cached by a client in seconds. Note that many browser clients enforce a maximum TTL of 600s (10 minutes).\n\n- Setting the value to -1 forces a pre-flight check for all requests (not recommended)\n- A maximum TTL of 86400s can be set, but note that (as above) some clients may force pre-flight checks at a more regular interval.\n- This translates to the Access-Control-Max-Age header.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;.\n\n**Returns**:\n  - An attribute object that represents the `cors_policy` sub block.\n', args=[]),
            new(
              max_age,
              allow_credentials=null,
              allow_headers=null,
              allow_methods=null,
              allow_origins=null,
              disabled=null,
              expose_headers=null
            ):: std.prune(a={
              allow_credentials: allow_credentials,
              allow_headers: allow_headers,
              allow_methods: allow_methods,
              allow_origins: allow_origins,
              disabled: disabled,
              expose_headers: expose_headers,
              max_age: max_age,
            }),
          },
          '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.new` constructs a new object with attributes and blocks configured for the `route_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cdn_policy` (`list[obj]`): The policy to use for defining caching and signed request behaviour for requests that match this route. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.new](#fn-routingroutingpath_matcherroute_rulecdn_policynew) constructor.\n  - `cors_policy` (`list[obj]`): CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set. When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cors_policy.new](#fn-routingroutingpath_matcherroute_rulecors_policynew) constructor.\n  - `url_rewrite` (`list[obj]`): The URL rewrite configuration for requests that match this route. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.url_rewrite.new](#fn-routingroutingpath_matcherroute_ruleurl_rewritenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `route_action` sub block.\n', args=[]),
          new(
            cdn_policy=null,
            cors_policy=null,
            url_rewrite=null
          ):: std.prune(a={
            cdn_policy: cdn_policy,
            cors_policy: cors_policy,
            url_rewrite: url_rewrite,
          }),
          url_rewrite:: {
            '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_rewrite` (`string`): Prior to forwarding the request to the selected origin, the request&#39;s host header is replaced with contents of hostRewrite. When `null`, the `host_rewrite` field will be omitted from the resulting object.\n  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected origin, the matching portion of the request&#39;s path is replaced by pathPrefixRewrite. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.\n  - `path_template_rewrite` (`string`): Prior to forwarding the request to the selected origin, if the\nrequest matched a pathTemplateMatch, the matching portion of the\nrequest&#39;s path is replaced re-written using the pattern specified\nby pathTemplateRewrite.\n\npathTemplateRewrite must be between 1 and 255 characters\n(inclusive), must start with a &#39;/&#39;, and must only use variables\ncaptured by the route&#39;s pathTemplate matchers.\n\npathTemplateRewrite may only be used when all of a route&#39;s\nMatchRules specify pathTemplate.\n\nOnly one of pathPrefixRewrite and pathTemplateRewrite may be\nspecified. When `null`, the `path_template_rewrite` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_rewrite` sub block.\n', args=[]),
            new(
              host_rewrite=null,
              path_prefix_rewrite=null,
              path_template_rewrite=null
            ):: std.prune(a={
              host_rewrite: host_rewrite,
              path_prefix_rewrite: path_prefix_rewrite,
              path_template_rewrite: path_template_rewrite,
            }),
          },
        },
        url_redirect:: {
          '#new':: d.fn(help='\n`google.network_services_edge_cache_service.routing.path_matcher.route_rule.url_redirect.new` constructs a new object with attributes and blocks configured for the `url_redirect`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was supplied in the request. When `null`, the `host_redirect` field will be omitted from the resulting object.\n  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request.\n\nThis can only be set if there is at least one (1) edgeSslCertificate set on the service. When `null`, the `https_redirect` field will be omitted from the resulting object.\n  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was supplied in the request.\n\npathRedirect cannot be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.\n\nThe path value must be between 1 and 1024 characters. When `null`, the `path_redirect` field will be omitted from the resulting object.\n  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the routeRule, retaining the remaining portion of the URL before redirecting the request.\n\nprefixRedirect cannot be supplied together with pathRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect. When `null`, the `prefix_redirect` field will be omitted from the resulting object.\n  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction.\n\nThe supported values are:\n\n- &#39;MOVED_PERMANENTLY_DEFAULT&#39;, which is the default value and corresponds to 301.\n- &#39;FOUND&#39;, which corresponds to 302.\n- &#39;SEE_OTHER&#39; which corresponds to 303.\n- &#39;TEMPORARY_REDIRECT&#39;, which corresponds to 307. in this case, the request method will be retained.\n- &#39;PERMANENT_REDIRECT&#39;, which corresponds to 308. in this case, the request method will be retained. Possible values: [&#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;FOUND&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;, &#34;PERMANENT_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.\n  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. When `null`, the `strip_query` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `url_redirect` sub block.\n', args=[]),
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
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_services_edge_cache_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisableHttp2':: d.fn(help='`google.bool.withDisableHttp2` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disable_http2 field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disable_http2` field.\n', args=[]),
  withDisableHttp2(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          disable_http2: value,
        },
      },
    },
  },
  '#withDisableQuic':: d.fn(help='`google.bool.withDisableQuic` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disable_quic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disable_quic` field.\n', args=[]),
  withDisableQuic(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          disable_quic: value,
        },
      },
    },
  },
  '#withEdgeSecurityPolicy':: d.fn(help='`google.string.withEdgeSecurityPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the edge_security_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `edge_security_policy` field.\n', args=[]),
  withEdgeSecurityPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          edge_security_policy: value,
        },
      },
    },
  },
  '#withEdgeSslCertificates':: d.fn(help='`google.list.withEdgeSslCertificates` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the edge_ssl_certificates field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `edge_ssl_certificates` field.\n', args=[]),
  withEdgeSslCertificates(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          edge_ssl_certificates: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRequireTls':: d.fn(help='`google.bool.withRequireTls` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the require_tls field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `require_tls` field.\n', args=[]),
  withRequireTls(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          require_tls: value,
        },
      },
    },
  },
  '#withRouting':: d.fn(help='`google.list[obj].withRouting` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the routing field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRoutingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `routing` field.\n', args=[]),
  withRouting(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          routing: value,
        },
      },
    },
  },
  '#withRoutingMixin':: d.fn(help='`google.list[obj].withRoutingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the routing field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRouting](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `routing` field.\n', args=[]),
  withRoutingMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          routing+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSslPolicy':: d.fn(help='`google.string.withSslPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ssl_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ssl_policy` field.\n', args=[]),
  withSslPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          ssl_policy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
