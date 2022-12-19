---
permalink: /network_services_edge_cache_service/
---

# network_services_edge_cache_service

`network_services_edge_cache_service` represents the `google_network_services_edge_cache_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisableHttp2()`](#fn-withdisablehttp2)
* [`fn withDisableQuic()`](#fn-withdisablequic)
* [`fn withEdgeSecurityPolicy()`](#fn-withedgesecuritypolicy)
* [`fn withEdgeSslCertificates()`](#fn-withedgesslcertificates)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRequireTls()`](#fn-withrequiretls)
* [`fn withRouting()`](#fn-withrouting)
* [`fn withRoutingMixin()`](#fn-withroutingmixin)
* [`fn withSslPolicy()`](#fn-withsslpolicy)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj routing`](#obj-routing)
  * [`fn new()`](#fn-routingnew)
  * [`obj routing.host_rule`](#obj-routinghost_rule)
    * [`fn new()`](#fn-routinghost_rulenew)
  * [`obj routing.path_matcher`](#obj-routingpath_matcher)
    * [`fn new()`](#fn-routingpath_matchernew)
    * [`obj routing.path_matcher.route_rule`](#obj-routingpath_matcherroute_rule)
      * [`fn new()`](#fn-routingpath_matcherroute_rulenew)
      * [`obj routing.path_matcher.route_rule.header_action`](#obj-routingpath_matcherroute_ruleheader_action)
        * [`fn new()`](#fn-routingpath_matcherroute_ruleheader_actionnew)
        * [`obj routing.path_matcher.route_rule.header_action.request_header_to_add`](#obj-routingpath_matcherroute_ruleheader_actionrequest_header_to_add)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleheader_actionrequest_header_to_addnew)
        * [`obj routing.path_matcher.route_rule.header_action.request_header_to_remove`](#obj-routingpath_matcherroute_ruleheader_actionrequest_header_to_remove)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleheader_actionrequest_header_to_removenew)
        * [`obj routing.path_matcher.route_rule.header_action.response_header_to_add`](#obj-routingpath_matcherroute_ruleheader_actionresponse_header_to_add)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleheader_actionresponse_header_to_addnew)
        * [`obj routing.path_matcher.route_rule.header_action.response_header_to_remove`](#obj-routingpath_matcherroute_ruleheader_actionresponse_header_to_remove)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleheader_actionresponse_header_to_removenew)
      * [`obj routing.path_matcher.route_rule.match_rule`](#obj-routingpath_matcherroute_rulematch_rule)
        * [`fn new()`](#fn-routingpath_matcherroute_rulematch_rulenew)
        * [`obj routing.path_matcher.route_rule.match_rule.header_match`](#obj-routingpath_matcherroute_rulematch_ruleheader_match)
          * [`fn new()`](#fn-routingpath_matcherroute_rulematch_ruleheader_matchnew)
        * [`obj routing.path_matcher.route_rule.match_rule.query_parameter_match`](#obj-routingpath_matcherroute_rulematch_rulequery_parameter_match)
          * [`fn new()`](#fn-routingpath_matcherroute_rulematch_rulequery_parameter_matchnew)
      * [`obj routing.path_matcher.route_rule.route_action`](#obj-routingpath_matcherroute_ruleroute_action)
        * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actionnew)
        * [`obj routing.path_matcher.route_rule.route_action.cdn_policy`](#obj-routingpath_matcherroute_ruleroute_actioncdn_policy)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actioncdn_policynew)
          * [`obj routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures`](#obj-routingpath_matcherroute_ruleroute_actioncdn_policyadd_signatures)
            * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actioncdn_policyadd_signaturesnew)
          * [`obj routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy`](#obj-routingpath_matcherroute_ruleroute_actioncdn_policycache_key_policy)
            * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actioncdn_policycache_key_policynew)
          * [`obj routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options`](#obj-routingpath_matcherroute_ruleroute_actioncdn_policysigned_token_options)
            * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actioncdn_policysigned_token_optionsnew)
        * [`obj routing.path_matcher.route_rule.route_action.cors_policy`](#obj-routingpath_matcherroute_ruleroute_actioncors_policy)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actioncors_policynew)
        * [`obj routing.path_matcher.route_rule.route_action.url_rewrite`](#obj-routingpath_matcherroute_ruleroute_actionurl_rewrite)
          * [`fn new()`](#fn-routingpath_matcherroute_ruleroute_actionurl_rewritenew)
      * [`obj routing.path_matcher.route_rule.url_redirect`](#obj-routingpath_matcherroute_ruleurl_redirect)
        * [`fn new()`](#fn-routingpath_matcherroute_ruleurl_redirectnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_services_edge_cache_service.new` injects a new `google_network_services_edge_cache_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_services_edge_cache_service.new('some_id')

You can get the reference to the `id` field of the created `google.network_services_edge_cache_service` using the reference:

    $._ref.google_network_services_edge_cache_service.some_id.get('id')

This is the same as directly entering `"${ google_network_services_edge_cache_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `disable_http2` (`bool`): Disables HTTP/2.

HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.

Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated. When `null`, the `disable_http2` field will be omitted from the resulting object.
  - `disable_quic` (`bool`): HTTP/3 (IETF QUIC) and Google QUIC are enabled by default. When `null`, the `disable_quic` field will be omitted from the resulting object.
  - `edge_security_policy` (`string`): Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService. When `null`, the `edge_security_policy` field will be omitted from the resulting object.
  - `edge_ssl_certificates` (`list`): URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.

Note that only &#34;global&#34; certificates with a &#34;scope&#34; of &#34;EDGE_CACHE&#34; can be attached to an EdgeCacheService. When `null`, the `edge_ssl_certificates` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `require_tls` (`bool`): Require TLS (HTTPS) for all clients connecting to this service.

Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
You must have at least one (1) edgeSslCertificate specified to enable this. When `null`, the `require_tls` field will be omitted from the resulting object.
  - `ssl_policy` (`string`): URL of the SslPolicy resource that will be associated with the EdgeCacheService.

If not set, the EdgeCacheService has no SSL policy configured, and will default to the &#34;COMPATIBLE&#34; policy. When `null`, the `ssl_policy` field will be omitted from the resulting object.
  - `log_config` (`list[obj]`): Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.log_config.new](#fn-log_confignew) constructor.
  - `routing` (`list[obj]`): Defines how requests are routed, modified, cached and/or which origin content is filled from. When `null`, the `routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.new](#fn-routingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_services_edge_cache_service.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_edge_cache_service`
Terraform resource.

Unlike [google.network_services_edge_cache_service.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `disable_http2` (`bool`): Disables HTTP/2.

HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.

Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated. When `null`, the `disable_http2` field will be omitted from the resulting object.
  - `disable_quic` (`bool`): HTTP/3 (IETF QUIC) and Google QUIC are enabled by default. When `null`, the `disable_quic` field will be omitted from the resulting object.
  - `edge_security_policy` (`string`): Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService. When `null`, the `edge_security_policy` field will be omitted from the resulting object.
  - `edge_ssl_certificates` (`list`): URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.

Note that only &#34;global&#34; certificates with a &#34;scope&#34; of &#34;EDGE_CACHE&#34; can be attached to an EdgeCacheService. When `null`, the `edge_ssl_certificates` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `require_tls` (`bool`): Require TLS (HTTPS) for all clients connecting to this service.

Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
You must have at least one (1) edgeSslCertificate specified to enable this. When `null`, the `require_tls` field will be omitted from the resulting object.
  - `ssl_policy` (`string`): URL of the SslPolicy resource that will be associated with the EdgeCacheService.

If not set, the EdgeCacheService has no SSL policy configured, and will default to the &#34;COMPATIBLE&#34; policy. When `null`, the `ssl_policy` field will be omitted from the resulting object.
  - `log_config` (`list[obj]`): Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.log_config.new](#fn-log_confignew) constructor.
  - `routing` (`list[obj]`): Defines how requests are routed, modified, cached and/or which origin content is filled from. When `null`, the `routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.new](#fn-routingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_edge_cache_service` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisableHttp2

```ts
withDisableHttp2()
```

`google.bool.withDisableHttp2` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_http2 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_http2` field.


### fn withDisableQuic

```ts
withDisableQuic()
```

`google.bool.withDisableQuic` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_quic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_quic` field.


### fn withEdgeSecurityPolicy

```ts
withEdgeSecurityPolicy()
```

`google.string.withEdgeSecurityPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the edge_security_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `edge_security_policy` field.


### fn withEdgeSslCertificates

```ts
withEdgeSslCertificates()
```

`google.list.withEdgeSslCertificates` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the edge_ssl_certificates field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `edge_ssl_certificates` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withRequireTls

```ts
withRequireTls()
```

`google.bool.withRequireTls` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the require_tls field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `require_tls` field.


### fn withRouting

```ts
withRouting()
```

`google.list[obj].withRouting` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the routing field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRoutingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `routing` field.


### fn withRoutingMixin

```ts
withRoutingMixin()
```

`google.list[obj].withRoutingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the routing field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRouting](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `routing` field.


### fn withSslPolicy

```ts
withSslPolicy()
```

`google.string.withSslPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ssl_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ssl_policy` field.


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


## obj log_config



### fn log_config.new

```ts
new()
```


`google.network_services_edge_cache_service.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `enable` (`bool`): Specifies whether to enable logging for traffic served by this service. When `null`, the `enable` field will be omitted from the resulting object.
  - `sample_rate` (`number`): Configures the sampling rate of requests, where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0, and the value of the field must be in [0, 1].

This field can only be specified if logging is enabled for this service. When `null`, the `sample_rate` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj routing



### fn routing.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.new` constructs a new object with attributes and blocks configured for the `routing`
Terraform sub block.



**Args**:
  - `host_rule` (`list[obj]`): The list of hostRules to match against. These rules define which hostnames the EdgeCacheService will match against, and which route configurations apply. When `null`, the `host_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.host_rule.new](#fn-routinghost_rulenew) constructor.
  - `path_matcher` (`list[obj]`): The list of pathMatchers referenced via name by hostRules. PathMatcher is used to match the path portion of the URL when a HostRule matches the URL&#39;s host portion. When `null`, the `path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.new](#fn-routingpath_matchernew) constructor.

**Returns**:
  - An attribute object that represents the `routing` sub block.


## obj routing.host_rule



### fn routing.host_rule.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.host_rule.new` constructs a new object with attributes and blocks configured for the `host_rule`
Terraform sub block.



**Args**:
  - `description` (`string`): A human-readable description of the hostRule. When `null`, the `description` field will be omitted from the resulting object.
  - `hosts` (`list`): The list of host patterns to match.

Host patterns must be valid hostnames. Ports are not allowed. Wildcard hosts are supported in the suffix or prefix form. * matches any string of ([a-z0-9-.]*). It does not match the empty string.

When multiple hosts are specified, hosts are matched in the following priority:

  1. Exact domain names: &#39;&#39;www.foo.com&#39;&#39;.
  2. Suffix domain wildcards: &#39;&#39;*.foo.com&#39;&#39; or &#39;&#39;*-bar.foo.com&#39;&#39;.
  3. Prefix domain wildcards: &#39;&#39;foo.*&#39;&#39; or &#39;&#39;foo-*&#39;&#39;.
  4. Special wildcard &#39;&#39;*&#39;&#39; matching any domain.

  Notes:

    The wildcard will not match the empty string. e.g. &#39;&#39;*-bar.foo.com&#39;&#39; will match &#39;&#39;baz-bar.foo.com&#39;&#39; but not &#39;&#39;-bar.foo.com&#39;&#39;. The longest wildcards match first. Only a single host in the entire service can match on &#39;&#39;*&#39;&#39;. A domain must be unique across all configured hosts within a service.

    Hosts are matched against the HTTP Host header, or for HTTP/2 and HTTP/3, the &#34;:authority&#34; header, from the incoming request.

    You may specify up to 10 hosts.
  - `path_matcher` (`string`): The name of the pathMatcher associated with this hostRule.

**Returns**:
  - An attribute object that represents the `host_rule` sub block.


## obj routing.path_matcher



### fn routing.path_matcher.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.new` constructs a new object with attributes and blocks configured for the `path_matcher`
Terraform sub block.



**Args**:
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name to which this PathMatcher is referred by the HostRule.
  - `route_rule` (`list[obj]`): The routeRules to match against. routeRules support advanced routing behaviour, and can match on paths, headers and query parameters, as well as status codes and HTTP methods. When `null`, the `route_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.new](#fn-routingroutingroute_rulenew) constructor.

**Returns**:
  - An attribute object that represents the `path_matcher` sub block.


## obj routing.path_matcher.route_rule



### fn routing.path_matcher.route_rule.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.new` constructs a new object with attributes and blocks configured for the `route_rule`
Terraform sub block.



**Args**:
  - `description` (`string`): A human-readable description of the routeRule. When `null`, the `description` field will be omitted from the resulting object.
  - `origin` (`string`): The Origin resource that requests to this route should fetch from when a matching response is not in cache. Origins can be defined as short names (&#34;my-origin&#34;) or fully-qualified resource URLs - e.g. &#34;networkservices.googleapis.com/projects/my-project/global/edgecacheorigins/my-origin&#34;

Only one of origin or urlRedirect can be set. When `null`, the `origin` field will be omitted from the resulting object.
  - `priority` (`string`): The priority of this route rule, where 1 is the highest priority.

You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number between 1 and 999 inclusive.

Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers
to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  - `header_action` (`list[obj]`): The header actions, including adding &amp; removing headers, for requests that match this route. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.new](#fn-routingroutingpath_matcherheader_actionnew) constructor.
  - `match_rule` (`list[obj]`): The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates
within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule. When `null`, the `match_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.new](#fn-routingroutingpath_matchermatch_rulenew) constructor.
  - `route_action` (`list[obj]`): In response to a matching path, the routeAction performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected origin. When `null`, the `route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.new](#fn-routingroutingpath_matcherroute_actionnew) constructor.
  - `url_redirect` (`list[obj]`): The URL redirect configuration for requests that match this route. When `null`, the `url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.url_redirect.new](#fn-routingroutingpath_matcherurl_redirectnew) constructor.

**Returns**:
  - An attribute object that represents the `route_rule` sub block.


## obj routing.path_matcher.route_rule.header_action



### fn routing.path_matcher.route_rule.header_action.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_header_to_add` (`list[obj]`): Describes a header to add. When `null`, the `request_header_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_add.new](#fn-routingroutingpath_matcherroute_rulerequest_header_to_addnew) constructor.
  - `request_header_to_remove` (`list[obj]`): A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin. When `null`, the `request_header_to_remove` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_remove.new](#fn-routingroutingpath_matcherroute_rulerequest_header_to_removenew) constructor.
  - `response_header_to_add` (`list[obj]`): Headers to add to the response prior to sending it back to the client.

Response headers are only sent to the client, and do not have an effect on the cache serving the response. When `null`, the `response_header_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_add.new](#fn-routingroutingpath_matcherroute_ruleresponse_header_to_addnew) constructor.
  - `response_header_to_remove` (`list[obj]`): A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin. When `null`, the `response_header_to_remove` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_remove.new](#fn-routingroutingpath_matcherroute_ruleresponse_header_to_removenew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj routing.path_matcher.route_rule.header_action.request_header_to_add



### fn routing.path_matcher.route_rule.header_action.request_header_to_add.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_add.new` constructs a new object with attributes and blocks configured for the `request_header_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): Whether to replace all existing headers with the same name. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_header_to_add` sub block.


## obj routing.path_matcher.route_rule.header_action.request_header_to_remove



### fn routing.path_matcher.route_rule.header_action.request_header_to_remove.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.request_header_to_remove.new` constructs a new object with attributes and blocks configured for the `request_header_to_remove`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to remove.

**Returns**:
  - An attribute object that represents the `request_header_to_remove` sub block.


## obj routing.path_matcher.route_rule.header_action.response_header_to_add



### fn routing.path_matcher.route_rule.header_action.response_header_to_add.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_add.new` constructs a new object with attributes and blocks configured for the `response_header_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): Whether to replace all existing headers with the same name. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `response_header_to_add` sub block.


## obj routing.path_matcher.route_rule.header_action.response_header_to_remove



### fn routing.path_matcher.route_rule.header_action.response_header_to_remove.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.header_action.response_header_to_remove.new` constructs a new object with attributes and blocks configured for the `response_header_to_remove`
Terraform sub block.



**Args**:
  - `header_name` (`string`): Headers to remove from the response prior to sending it back to the client.

Response headers are only sent to the client, and do not have an effect on the cache serving the response.

**Returns**:
  - An attribute object that represents the `response_header_to_remove` sub block.


## obj routing.path_matcher.route_rule.match_rule



### fn routing.path_matcher.route_rule.match_rule.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.new` constructs a new object with attributes and blocks configured for the `match_rule`
Terraform sub block.



**Args**:
  - `full_path_match` (`string`): For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL. When `null`, the `full_path_match` field will be omitted from the resulting object.
  - `ignore_case` (`bool`): Specifies that prefixMatch and fullPathMatch matches are case sensitive. When `null`, the `ignore_case` field will be omitted from the resulting object.
  - `path_template_match` (`string`): For satisfying the matchRule condition, the path of the request
must match the wildcard pattern specified in pathTemplateMatch
after removing any query parameters and anchor that may be part
of the original URL.

pathTemplateMatch must be between 1 and 255 characters
(inclusive).  The pattern specified by pathTemplateMatch may
have at most 5 wildcard operators and at most 5 variable
captures in total. When `null`, the `path_template_match` field will be omitted from the resulting object.
  - `prefix_match` (`string`): For satisfying the matchRule condition, the request&#39;s path must begin with the specified prefixMatch. prefixMatch must begin with a /. When `null`, the `prefix_match` field will be omitted from the resulting object.
  - `header_match` (`list[obj]`): Specifies a list of header match criteria, all of which must match corresponding headers in the request. When `null`, the `header_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.header_match.new](#fn-routingroutingpath_matcherroute_ruleheader_matchnew) constructor.
  - `query_parameter_match` (`list[obj]`): Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request. When `null`, the `query_parameter_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.query_parameter_match.new](#fn-routingroutingpath_matcherroute_rulequery_parameter_matchnew) constructor.

**Returns**:
  - An attribute object that represents the `match_rule` sub block.


## obj routing.path_matcher.route_rule.match_rule.header_match



### fn routing.path_matcher.route_rule.match_rule.header_match.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.header_match.new` constructs a new object with attributes and blocks configured for the `header_match`
Terraform sub block.



**Args**:
  - `exact_match` (`string`): The value of the header should exactly match contents of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.
  - `header_name` (`string`): The header name to match on.
  - `invert_match` (`bool`): If set to false (default), the headerMatch is considered a match if the match criteria above are met.
If set to true, the headerMatch is considered a match if the match criteria above are NOT met. When `null`, the `invert_match` field will be omitted from the resulting object.
  - `prefix_match` (`string`): The value of the header must start with the contents of prefixMatch. When `null`, the `prefix_match` field will be omitted from the resulting object.
  - `present_match` (`bool`): A header with the contents of headerName must exist. The match takes place whether or not the request&#39;s header has a value. When `null`, the `present_match` field will be omitted from the resulting object.
  - `suffix_match` (`string`): The value of the header must end with the contents of suffixMatch. When `null`, the `suffix_match` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `header_match` sub block.


## obj routing.path_matcher.route_rule.match_rule.query_parameter_match



### fn routing.path_matcher.route_rule.match_rule.query_parameter_match.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.match_rule.query_parameter_match.new` constructs a new object with attributes and blocks configured for the `query_parameter_match`
Terraform sub block.



**Args**:
  - `exact_match` (`string`): The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.
  - `name` (`string`): The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  - `present_match` (`bool`): Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. When `null`, the `present_match` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `query_parameter_match` sub block.


## obj routing.path_matcher.route_rule.route_action



### fn routing.path_matcher.route_rule.route_action.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.new` constructs a new object with attributes and blocks configured for the `route_action`
Terraform sub block.



**Args**:
  - `cdn_policy` (`list[obj]`): The policy to use for defining caching and signed request behaviour for requests that match this route. When `null`, the `cdn_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.new](#fn-routingroutingpath_matcherroute_rulecdn_policynew) constructor.
  - `cors_policy` (`list[obj]`): CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set. When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cors_policy.new](#fn-routingroutingpath_matcherroute_rulecors_policynew) constructor.
  - `url_rewrite` (`list[obj]`): The URL rewrite configuration for requests that match this route. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.url_rewrite.new](#fn-routingroutingpath_matcherroute_ruleurl_rewritenew) constructor.

**Returns**:
  - An attribute object that represents the `route_action` sub block.


## obj routing.path_matcher.route_rule.route_action.cdn_policy



### fn routing.path_matcher.route_rule.route_action.cdn_policy.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.new` constructs a new object with attributes and blocks configured for the `cdn_policy`
Terraform sub block.



**Args**:
  - `cache_mode` (`string`): Cache modes allow users to control the behaviour of the cache, what content it should cache automatically, whether to respect origin headers, or whether to unconditionally cache all responses.

For all cache modes, Cache-Control headers will be passed to the client. Use clientTtl to override what is sent to the client. Possible values: [&#34;CACHE_ALL_STATIC&#34;, &#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, &#34;BYPASS_CACHE&#34;] When `null`, the `cache_mode` field will be omitted from the resulting object.
  - `client_ttl` (`string`): Specifies a separate client (e.g. browser client) TTL, separate from the TTL used by the edge caches. Leaving this empty will use the same cache TTL for both the CDN and the client-facing response.

- The TTL must be &gt; 0 and &lt;= 86400s (1 day)
- The clientTtl cannot be larger than the defaultTtl (if set)
- Fractions of a second are not allowed.

Omit this field to use the defaultTtl, or the max-age set by the origin, as the client-facing TTL.

When the cache mode is set to &#34;USE_ORIGIN_HEADERS&#34; or &#34;BYPASS_CACHE&#34;, you must omit this field.
A duration in seconds terminated by &#39;s&#39;. Example: &#34;3s&#34;. When `null`, the `client_ttl` field will be omitted from the resulting object.
  - `default_ttl` (`string`): Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age).

Defaults to 3600s (1 hour).

- The TTL must be &gt;= 0 and &lt;= 31,536,000 seconds (1 year)
- Setting a TTL of &#34;0&#34; means &#34;always revalidate&#34; (equivalent to must-revalidate)
- The value of defaultTTL cannot be set to a value greater than that of maxTTL.
- Fractions of a second are not allowed.
- When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses.

Note that infrequently accessed objects may be evicted from the cache before the defined TTL. Objects that expire will be revalidated with the origin.

When the cache mode is set to &#34;USE_ORIGIN_HEADERS&#34; or &#34;BYPASS_CACHE&#34;, you must omit this field.

A duration in seconds terminated by &#39;s&#39;. Example: &#34;3s&#34;. When `null`, the `default_ttl` field will be omitted from the resulting object.
  - `max_ttl` (`string`): Specifies the maximum allowed TTL for cached content served by this origin.

Defaults to 86400s (1 day).

Cache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTtl seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive.

- The TTL must be &gt;= 0 and &lt;= 31,536,000 seconds (1 year)
- Setting a TTL of &#34;0&#34; means &#34;always revalidate&#34;
- The value of maxTtl must be equal to or greater than defaultTtl.
- Fractions of a second are not allowed.

When the cache mode is set to &#34;USE_ORIGIN_HEADERS&#34;, &#34;FORCE_CACHE_ALL&#34;, or &#34;BYPASS_CACHE&#34;, you must omit this field.

A duration in seconds terminated by &#39;s&#39;. Example: &#34;3s&#34;. When `null`, the `max_ttl` field will be omitted from the resulting object.
  - `negative_caching` (`bool`): Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency.

By default, the CDNPolicy will apply the following default TTLs to these status codes:

- HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m
- HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s
- HTTP 405 (Method Not Found), 414 (URI Too Long), 501 (Not Implemented): 60s

These defaults can be overridden in negativeCachingPolicy When `null`, the `negative_caching` field will be omitted from the resulting object.
  - `negative_caching_policy` (`obj`): Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.

- Omitting the policy and leaving negativeCaching enabled will use the default TTLs for each status code, defined in negativeCaching.
- TTLs must be &gt;= 0 (where 0 is &#34;always revalidate&#34;) and &lt;= 86400s (1 day)

Note that when specifying an explicit negativeCachingPolicy, you should take care to specify a cache TTL for all response codes that you wish to cache. The CDNPolicy will not apply any default negative caching when a policy exists. When `null`, the `negative_caching_policy` field will be omitted from the resulting object.
  - `signed_request_keyset` (`string`): The EdgeCacheKeyset containing the set of public keys used to validate signed requests at the edge. When `null`, the `signed_request_keyset` field will be omitted from the resulting object.
  - `signed_request_maximum_expiration_ttl` (`string`): Limit how far into the future the expiration time of a signed request may be.

When set, a signed request is rejected if its expiration time is later than now &#43; signedRequestMaximumExpirationTtl, where now is the time at which the signed request is first handled by the CDN.

- The TTL must be &gt; 0.
- Fractions of a second are not allowed.

By default, signedRequestMaximumExpirationTtl is not set and the expiration time of a signed request may be arbitrarily far into future. When `null`, the `signed_request_maximum_expiration_ttl` field will be omitted from the resulting object.
  - `signed_request_mode` (`string`): Whether to enforce signed requests. The default value is DISABLED, which means all content is public, and does not authorize access.

You must also set a signedRequestKeyset to enable signed requests.

When set to REQUIRE_SIGNATURES, all matching requests will have their signature validated. Requests that were not signed with the corresponding private key, or that are otherwise invalid (expired, do not match the signature, IP address, or header) will be rejected with a HTTP 403 and (if enabled) logged. Possible values: [&#34;DISABLED&#34;, &#34;REQUIRE_SIGNATURES&#34;, &#34;REQUIRE_TOKENS&#34;] When `null`, the `signed_request_mode` field will be omitted from the resulting object.
  - `add_signatures` (`list[obj]`): Enable signature generation or propagation on this route.

This field may only be specified when signedRequestMode is set to REQUIRE_TOKENS. When `null`, the `add_signatures` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures.new](#fn-routingroutingpath_matcherroute_ruleroute_actionadd_signaturesnew) constructor.
  - `cache_key_policy` (`list[obj]`): Defines the request parameters that contribute to the cache key. When `null`, the `cache_key_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy.new](#fn-routingroutingpath_matcherroute_ruleroute_actioncache_key_policynew) constructor.
  - `signed_token_options` (`list[obj]`): Additional options for signed tokens.

signedTokenOptions may only be specified when signedRequestMode is REQUIRE_TOKENS. When `null`, the `signed_token_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options.new](#fn-routingroutingpath_matcherroute_ruleroute_actionsigned_token_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `cdn_policy` sub block.


## obj routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures



### fn routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures.new` constructs a new object with attributes and blocks configured for the `add_signatures`
Terraform sub block.



**Args**:
  - `actions` (`list`): The actions to take to add signatures to responses. Possible values: [&#34;GENERATE_COOKIE&#34;, &#34;GENERATE_TOKEN_HLS_COOKIELESS&#34;, &#34;PROPAGATE_TOKEN_HLS_COOKIELESS&#34;]
  - `copied_parameters` (`list`): The parameters to copy from the verified token to the generated token.

Only the following parameters may be copied:

  * &#39;PathGlobs&#39;
  * &#39;paths&#39;
  * &#39;acl&#39;
  * &#39;URLPrefix&#39;
  * &#39;IPRanges&#39;
  * &#39;SessionID&#39;
  * &#39;id&#39;
  * &#39;Data&#39;
  * &#39;data&#39;
  * &#39;payload&#39;
  * &#39;Headers&#39;

You may specify up to 6 parameters to copy.  A given parameter is be copied only if the parameter exists in the verified token.  Parameter names are matched exactly as specified.  The order of the parameters does not matter.  Duplicates are not allowed.

This field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified. When `null`, the `copied_parameters` field will be omitted from the resulting object.
  - `keyset` (`string`): The keyset to use for signature generation.

The following are both valid paths to an EdgeCacheKeyset resource:

  * &#39;projects/project/locations/global/edgeCacheKeysets/yourKeyset&#39;
  * &#39;yourKeyset&#39;

This must be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.  This field may not be specified otherwise. When `null`, the `keyset` field will be omitted from the resulting object.
  - `token_query_parameter` (`string`): The query parameter in which to put the generated token.

If not specified, defaults to &#39;edge-cache-token&#39;.

If specified, the name must be 1-64 characters long and match the regular expression &#39;[a-zA-Z]([a-zA-Z0-9_-])*&#39; which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.

This field may only be set when the GENERATE_TOKEN_HLS_COOKIELESS or PROPAGATE_TOKEN_HLS_COOKIELESS actions are specified. When `null`, the `token_query_parameter` field will be omitted from the resulting object.
  - `token_ttl` (`string`): The duration the token is valid starting from the moment the token is first generated.

Defaults to &#39;86400s&#39; (1 day).

The TTL must be &gt;= 0 and &lt;= 604,800 seconds (1 week).

This field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `token_ttl` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `add_signatures` sub block.


## obj routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy



### fn routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy.new` constructs a new object with attributes and blocks configured for the `cache_key_policy`
Terraform sub block.



**Args**:
  - `exclude_host` (`bool`): If true, requests to different hosts will be cached separately.

Note: this should only be enabled if hosts share the same origin and content. Removing the host from the cache key may inadvertently result in different objects being cached than intended, depending on which route the first user matched. When `null`, the `exclude_host` field will be omitted from the resulting object.
  - `exclude_query_string` (`bool`): If true, exclude query string parameters from the cache key

If false (the default), include the query string parameters in
the cache key according to includeQueryParameters and
excludeQueryParameters. If neither includeQueryParameters nor
excludeQueryParameters is set, the entire query string will be
included. When `null`, the `exclude_query_string` field will be omitted from the resulting object.
  - `excluded_query_parameters` (`list`): Names of query string parameters to exclude from cache keys. All other parameters will be included.

Either specify includedQueryParameters or excludedQueryParameters, not both. &#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as delimiters. When `null`, the `excluded_query_parameters` field will be omitted from the resulting object.
  - `include_protocol` (`bool`): If true, http and https requests will be cached separately. When `null`, the `include_protocol` field will be omitted from the resulting object.
  - `included_cookie_names` (`list`): Names of Cookies to include in cache keys.  The cookie name and cookie value of each cookie named will be used as part of the cache key.

Cookie names:
  - must be valid RFC 6265 &#34;cookie-name&#34; tokens
  - are case sensitive
  - cannot start with &#34;Edge-Cache-&#34; (case insensitive)

  Note that specifying several cookies, and/or cookies that have a large range of values (e.g., per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance.

  You may specify up to three cookie names. When `null`, the `included_cookie_names` field will be omitted from the resulting object.
  - `included_header_names` (`list`): Names of HTTP request headers to include in cache keys. The value of the header field will be used as part of the cache key.

- Header names must be valid HTTP RFC 7230 header field values.
- Header field names are case insensitive
- To include the HTTP method, use &#34;:method&#34;

Note that specifying several headers, and/or headers that have a large range of values (e.g. per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance. When `null`, the `included_header_names` field will be omitted from the resulting object.
  - `included_query_parameters` (`list`): Names of query string parameters to include in cache keys. All other parameters will be excluded.

Either specify includedQueryParameters or excludedQueryParameters, not both. &#39;&amp;&#39; and &#39;=&#39; will be percent encoded and not treated as delimiters. When `null`, the `included_query_parameters` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cache_key_policy` sub block.


## obj routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options



### fn routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options.new` constructs a new object with attributes and blocks configured for the `signed_token_options`
Terraform sub block.



**Args**:
  - `allowed_signature_algorithms` (`list`): The allowed signature algorithms to use.

Defaults to using only ED25519.

You may specify up to 3 signature algorithms to use. Possible values: [&#34;ED25519&#34;, &#34;HMAC_SHA_256&#34;, &#34;HMAC_SHA1&#34;] When `null`, the `allowed_signature_algorithms` field will be omitted from the resulting object.
  - `token_query_parameter` (`string`): The query parameter in which to find the token.

The name must be 1-64 characters long and match the regular expression &#39;[a-zA-Z]([a-zA-Z0-9_-])*&#39; which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.

Defaults to &#39;edge-cache-token&#39;. When `null`, the `token_query_parameter` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `signed_token_options` sub block.


## obj routing.path_matcher.route_rule.route_action.cors_policy



### fn routing.path_matcher.route_rule.route_action.cors_policy.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`
Terraform sub block.



**Args**:
  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials.

This translates to the Access-Control-Allow-Credentials response header. When `null`, the `allow_credentials` field will be omitted from the resulting object.
  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers response header. When `null`, the `allow_headers` field will be omitted from the resulting object.
  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods response header. When `null`, the `allow_methods` field will be omitted from the resulting object.
  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests.

This translates to the Access-Control-Allow-Origin response header. When `null`, the `allow_origins` field will be omitted from the resulting object.
  - `disabled` (`bool`): If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.
  - `expose_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers response header. When `null`, the `expose_headers` field will be omitted from the resulting object.
  - `max_age` (`string`): Specifies how long results of a preflight request can be cached by a client in seconds. Note that many browser clients enforce a maximum TTL of 600s (10 minutes).

- Setting the value to -1 forces a pre-flight check for all requests (not recommended)
- A maximum TTL of 86400s can be set, but note that (as above) some clients may force pre-flight checks at a more regular interval.
- This translates to the Access-Control-Max-Age header.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;.

**Returns**:
  - An attribute object that represents the `cors_policy` sub block.


## obj routing.path_matcher.route_rule.route_action.url_rewrite



### fn routing.path_matcher.route_rule.route_action.url_rewrite.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected origin, the request&#39;s host header is replaced with contents of hostRewrite. When `null`, the `host_rewrite` field will be omitted from the resulting object.
  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected origin, the matching portion of the request&#39;s path is replaced by pathPrefixRewrite. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.
  - `path_template_rewrite` (`string`): Prior to forwarding the request to the selected origin, if the
request matched a pathTemplateMatch, the matching portion of the
request&#39;s path is replaced re-written using the pattern specified
by pathTemplateRewrite.

pathTemplateRewrite must be between 1 and 255 characters
(inclusive), must start with a &#39;/&#39;, and must only use variables
captured by the route&#39;s pathTemplate matchers.

pathTemplateRewrite may only be used when all of a route&#39;s
MatchRules specify pathTemplate.

Only one of pathPrefixRewrite and pathTemplateRewrite may be
specified. When `null`, the `path_template_rewrite` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_rewrite` sub block.


## obj routing.path_matcher.route_rule.url_redirect



### fn routing.path_matcher.route_rule.url_redirect.new

```ts
new()
```


`google.network_services_edge_cache_service.routing.path_matcher.route_rule.url_redirect.new` constructs a new object with attributes and blocks configured for the `url_redirect`
Terraform sub block.



**Args**:
  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was supplied in the request. When `null`, the `host_redirect` field will be omitted from the resulting object.
  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request.

This can only be set if there is at least one (1) edgeSslCertificate set on the service. When `null`, the `https_redirect` field will be omitted from the resulting object.
  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was supplied in the request.

pathRedirect cannot be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.

The path value must be between 1 and 1024 characters. When `null`, the `path_redirect` field will be omitted from the resulting object.
  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the routeRule, retaining the remaining portion of the URL before redirecting the request.

prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect. When `null`, the `prefix_redirect` field will be omitted from the resulting object.
  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction.

The supported values are:

- &#39;MOVED_PERMANENTLY_DEFAULT&#39;, which is the default value and corresponds to 301.
- &#39;FOUND&#39;, which corresponds to 302.
- &#39;SEE_OTHER&#39; which corresponds to 303.
- &#39;TEMPORARY_REDIRECT&#39;, which corresponds to 307. in this case, the request method will be retained.
- &#39;PERMANENT_REDIRECT&#39;, which corresponds to 308. in this case, the request method will be retained. Possible values: [&#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;FOUND&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;, &#34;PERMANENT_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.
  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. When `null`, the `strip_query` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_redirect` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_services_edge_cache_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
