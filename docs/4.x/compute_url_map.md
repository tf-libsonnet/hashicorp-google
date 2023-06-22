---
permalink: /compute_url_map/
---

# compute_url_map

`compute_url_map` represents the `google_compute_url_map` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDefaultRouteAction()`](#fn-withdefaultrouteaction)
* [`fn withDefaultRouteActionMixin()`](#fn-withdefaultrouteactionmixin)
* [`fn withDefaultService()`](#fn-withdefaultservice)
* [`fn withDefaultUrlRedirect()`](#fn-withdefaulturlredirect)
* [`fn withDefaultUrlRedirectMixin()`](#fn-withdefaulturlredirectmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withHeaderAction()`](#fn-withheaderaction)
* [`fn withHeaderActionMixin()`](#fn-withheaderactionmixin)
* [`fn withHostRule()`](#fn-withhostrule)
* [`fn withHostRuleMixin()`](#fn-withhostrulemixin)
* [`fn withName()`](#fn-withname)
* [`fn withPathMatcher()`](#fn-withpathmatcher)
* [`fn withPathMatcherMixin()`](#fn-withpathmatchermixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTest()`](#fn-withtest)
* [`fn withTestMixin()`](#fn-withtestmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj default_route_action`](#obj-default_route_action)
  * [`fn new()`](#fn-default_route_actionnew)
  * [`obj default_route_action.cors_policy`](#obj-default_route_actioncors_policy)
    * [`fn new()`](#fn-default_route_actioncors_policynew)
  * [`obj default_route_action.fault_injection_policy`](#obj-default_route_actionfault_injection_policy)
    * [`fn new()`](#fn-default_route_actionfault_injection_policynew)
    * [`obj default_route_action.fault_injection_policy.abort`](#obj-default_route_actionfault_injection_policyabort)
      * [`fn new()`](#fn-default_route_actionfault_injection_policyabortnew)
    * [`obj default_route_action.fault_injection_policy.delay`](#obj-default_route_actionfault_injection_policydelay)
      * [`fn new()`](#fn-default_route_actionfault_injection_policydelaynew)
      * [`obj default_route_action.fault_injection_policy.delay.fixed_delay`](#obj-default_route_actionfault_injection_policydelayfixed_delay)
        * [`fn new()`](#fn-default_route_actionfault_injection_policydelayfixed_delaynew)
  * [`obj default_route_action.request_mirror_policy`](#obj-default_route_actionrequest_mirror_policy)
    * [`fn new()`](#fn-default_route_actionrequest_mirror_policynew)
  * [`obj default_route_action.retry_policy`](#obj-default_route_actionretry_policy)
    * [`fn new()`](#fn-default_route_actionretry_policynew)
    * [`obj default_route_action.retry_policy.per_try_timeout`](#obj-default_route_actionretry_policyper_try_timeout)
      * [`fn new()`](#fn-default_route_actionretry_policyper_try_timeoutnew)
  * [`obj default_route_action.timeout`](#obj-default_route_actiontimeout)
    * [`fn new()`](#fn-default_route_actiontimeoutnew)
  * [`obj default_route_action.url_rewrite`](#obj-default_route_actionurl_rewrite)
    * [`fn new()`](#fn-default_route_actionurl_rewritenew)
  * [`obj default_route_action.weighted_backend_services`](#obj-default_route_actionweighted_backend_services)
    * [`fn new()`](#fn-default_route_actionweighted_backend_servicesnew)
    * [`obj default_route_action.weighted_backend_services.header_action`](#obj-default_route_actionweighted_backend_servicesheader_action)
      * [`fn new()`](#fn-default_route_actionweighted_backend_servicesheader_actionnew)
      * [`obj default_route_action.weighted_backend_services.header_action.request_headers_to_add`](#obj-default_route_actionweighted_backend_servicesheader_actionrequest_headers_to_add)
        * [`fn new()`](#fn-default_route_actionweighted_backend_servicesheader_actionrequest_headers_to_addnew)
      * [`obj default_route_action.weighted_backend_services.header_action.response_headers_to_add`](#obj-default_route_actionweighted_backend_servicesheader_actionresponse_headers_to_add)
        * [`fn new()`](#fn-default_route_actionweighted_backend_servicesheader_actionresponse_headers_to_addnew)
* [`obj default_url_redirect`](#obj-default_url_redirect)
  * [`fn new()`](#fn-default_url_redirectnew)
* [`obj header_action`](#obj-header_action)
  * [`fn new()`](#fn-header_actionnew)
  * [`obj header_action.request_headers_to_add`](#obj-header_actionrequest_headers_to_add)
    * [`fn new()`](#fn-header_actionrequest_headers_to_addnew)
  * [`obj header_action.response_headers_to_add`](#obj-header_actionresponse_headers_to_add)
    * [`fn new()`](#fn-header_actionresponse_headers_to_addnew)
* [`obj host_rule`](#obj-host_rule)
  * [`fn new()`](#fn-host_rulenew)
* [`obj path_matcher`](#obj-path_matcher)
  * [`fn new()`](#fn-path_matchernew)
  * [`obj path_matcher.default_route_action`](#obj-path_matcherdefault_route_action)
    * [`fn new()`](#fn-path_matcherdefault_route_actionnew)
    * [`obj path_matcher.default_route_action.cors_policy`](#obj-path_matcherdefault_route_actioncors_policy)
      * [`fn new()`](#fn-path_matcherdefault_route_actioncors_policynew)
    * [`obj path_matcher.default_route_action.fault_injection_policy`](#obj-path_matcherdefault_route_actionfault_injection_policy)
      * [`fn new()`](#fn-path_matcherdefault_route_actionfault_injection_policynew)
      * [`obj path_matcher.default_route_action.fault_injection_policy.abort`](#obj-path_matcherdefault_route_actionfault_injection_policyabort)
        * [`fn new()`](#fn-path_matcherdefault_route_actionfault_injection_policyabortnew)
      * [`obj path_matcher.default_route_action.fault_injection_policy.delay`](#obj-path_matcherdefault_route_actionfault_injection_policydelay)
        * [`fn new()`](#fn-path_matcherdefault_route_actionfault_injection_policydelaynew)
        * [`obj path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay`](#obj-path_matcherdefault_route_actionfault_injection_policydelayfixed_delay)
          * [`fn new()`](#fn-path_matcherdefault_route_actionfault_injection_policydelayfixed_delaynew)
    * [`obj path_matcher.default_route_action.request_mirror_policy`](#obj-path_matcherdefault_route_actionrequest_mirror_policy)
      * [`fn new()`](#fn-path_matcherdefault_route_actionrequest_mirror_policynew)
    * [`obj path_matcher.default_route_action.retry_policy`](#obj-path_matcherdefault_route_actionretry_policy)
      * [`fn new()`](#fn-path_matcherdefault_route_actionretry_policynew)
      * [`obj path_matcher.default_route_action.retry_policy.per_try_timeout`](#obj-path_matcherdefault_route_actionretry_policyper_try_timeout)
        * [`fn new()`](#fn-path_matcherdefault_route_actionretry_policyper_try_timeoutnew)
    * [`obj path_matcher.default_route_action.timeout`](#obj-path_matcherdefault_route_actiontimeout)
      * [`fn new()`](#fn-path_matcherdefault_route_actiontimeoutnew)
    * [`obj path_matcher.default_route_action.url_rewrite`](#obj-path_matcherdefault_route_actionurl_rewrite)
      * [`fn new()`](#fn-path_matcherdefault_route_actionurl_rewritenew)
    * [`obj path_matcher.default_route_action.weighted_backend_services`](#obj-path_matcherdefault_route_actionweighted_backend_services)
      * [`fn new()`](#fn-path_matcherdefault_route_actionweighted_backend_servicesnew)
      * [`obj path_matcher.default_route_action.weighted_backend_services.header_action`](#obj-path_matcherdefault_route_actionweighted_backend_servicesheader_action)
        * [`fn new()`](#fn-path_matcherdefault_route_actionweighted_backend_servicesheader_actionnew)
        * [`obj path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add`](#obj-path_matcherdefault_route_actionweighted_backend_servicesheader_actionrequest_headers_to_add)
          * [`fn new()`](#fn-path_matcherdefault_route_actionweighted_backend_servicesheader_actionrequest_headers_to_addnew)
        * [`obj path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add`](#obj-path_matcherdefault_route_actionweighted_backend_servicesheader_actionresponse_headers_to_add)
          * [`fn new()`](#fn-path_matcherdefault_route_actionweighted_backend_servicesheader_actionresponse_headers_to_addnew)
  * [`obj path_matcher.default_url_redirect`](#obj-path_matcherdefault_url_redirect)
    * [`fn new()`](#fn-path_matcherdefault_url_redirectnew)
  * [`obj path_matcher.header_action`](#obj-path_matcherheader_action)
    * [`fn new()`](#fn-path_matcherheader_actionnew)
    * [`obj path_matcher.header_action.request_headers_to_add`](#obj-path_matcherheader_actionrequest_headers_to_add)
      * [`fn new()`](#fn-path_matcherheader_actionrequest_headers_to_addnew)
    * [`obj path_matcher.header_action.response_headers_to_add`](#obj-path_matcherheader_actionresponse_headers_to_add)
      * [`fn new()`](#fn-path_matcherheader_actionresponse_headers_to_addnew)
  * [`obj path_matcher.path_rule`](#obj-path_matcherpath_rule)
    * [`fn new()`](#fn-path_matcherpath_rulenew)
    * [`obj path_matcher.path_rule.route_action`](#obj-path_matcherpath_ruleroute_action)
      * [`fn new()`](#fn-path_matcherpath_ruleroute_actionnew)
      * [`obj path_matcher.path_rule.route_action.cors_policy`](#obj-path_matcherpath_ruleroute_actioncors_policy)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actioncors_policynew)
      * [`obj path_matcher.path_rule.route_action.fault_injection_policy`](#obj-path_matcherpath_ruleroute_actionfault_injection_policy)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actionfault_injection_policynew)
        * [`obj path_matcher.path_rule.route_action.fault_injection_policy.abort`](#obj-path_matcherpath_ruleroute_actionfault_injection_policyabort)
          * [`fn new()`](#fn-path_matcherpath_ruleroute_actionfault_injection_policyabortnew)
        * [`obj path_matcher.path_rule.route_action.fault_injection_policy.delay`](#obj-path_matcherpath_ruleroute_actionfault_injection_policydelay)
          * [`fn new()`](#fn-path_matcherpath_ruleroute_actionfault_injection_policydelaynew)
          * [`obj path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay`](#obj-path_matcherpath_ruleroute_actionfault_injection_policydelayfixed_delay)
            * [`fn new()`](#fn-path_matcherpath_ruleroute_actionfault_injection_policydelayfixed_delaynew)
      * [`obj path_matcher.path_rule.route_action.request_mirror_policy`](#obj-path_matcherpath_ruleroute_actionrequest_mirror_policy)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actionrequest_mirror_policynew)
      * [`obj path_matcher.path_rule.route_action.retry_policy`](#obj-path_matcherpath_ruleroute_actionretry_policy)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actionretry_policynew)
        * [`obj path_matcher.path_rule.route_action.retry_policy.per_try_timeout`](#obj-path_matcherpath_ruleroute_actionretry_policyper_try_timeout)
          * [`fn new()`](#fn-path_matcherpath_ruleroute_actionretry_policyper_try_timeoutnew)
      * [`obj path_matcher.path_rule.route_action.timeout`](#obj-path_matcherpath_ruleroute_actiontimeout)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actiontimeoutnew)
      * [`obj path_matcher.path_rule.route_action.url_rewrite`](#obj-path_matcherpath_ruleroute_actionurl_rewrite)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actionurl_rewritenew)
      * [`obj path_matcher.path_rule.route_action.weighted_backend_services`](#obj-path_matcherpath_ruleroute_actionweighted_backend_services)
        * [`fn new()`](#fn-path_matcherpath_ruleroute_actionweighted_backend_servicesnew)
        * [`obj path_matcher.path_rule.route_action.weighted_backend_services.header_action`](#obj-path_matcherpath_ruleroute_actionweighted_backend_servicesheader_action)
          * [`fn new()`](#fn-path_matcherpath_ruleroute_actionweighted_backend_servicesheader_actionnew)
          * [`obj path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add`](#obj-path_matcherpath_ruleroute_actionweighted_backend_servicesheader_actionrequest_headers_to_add)
            * [`fn new()`](#fn-path_matcherpath_ruleroute_actionweighted_backend_servicesheader_actionrequest_headers_to_addnew)
          * [`obj path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add`](#obj-path_matcherpath_ruleroute_actionweighted_backend_servicesheader_actionresponse_headers_to_add)
            * [`fn new()`](#fn-path_matcherpath_ruleroute_actionweighted_backend_servicesheader_actionresponse_headers_to_addnew)
    * [`obj path_matcher.path_rule.url_redirect`](#obj-path_matcherpath_ruleurl_redirect)
      * [`fn new()`](#fn-path_matcherpath_ruleurl_redirectnew)
  * [`obj path_matcher.route_rules`](#obj-path_matcherroute_rules)
    * [`fn new()`](#fn-path_matcherroute_rulesnew)
    * [`obj path_matcher.route_rules.header_action`](#obj-path_matcherroute_rulesheader_action)
      * [`fn new()`](#fn-path_matcherroute_rulesheader_actionnew)
      * [`obj path_matcher.route_rules.header_action.request_headers_to_add`](#obj-path_matcherroute_rulesheader_actionrequest_headers_to_add)
        * [`fn new()`](#fn-path_matcherroute_rulesheader_actionrequest_headers_to_addnew)
      * [`obj path_matcher.route_rules.header_action.response_headers_to_add`](#obj-path_matcherroute_rulesheader_actionresponse_headers_to_add)
        * [`fn new()`](#fn-path_matcherroute_rulesheader_actionresponse_headers_to_addnew)
    * [`obj path_matcher.route_rules.match_rules`](#obj-path_matcherroute_rulesmatch_rules)
      * [`fn new()`](#fn-path_matcherroute_rulesmatch_rulesnew)
      * [`obj path_matcher.route_rules.match_rules.header_matches`](#obj-path_matcherroute_rulesmatch_rulesheader_matches)
        * [`fn new()`](#fn-path_matcherroute_rulesmatch_rulesheader_matchesnew)
        * [`obj path_matcher.route_rules.match_rules.header_matches.range_match`](#obj-path_matcherroute_rulesmatch_rulesheader_matchesrange_match)
          * [`fn new()`](#fn-path_matcherroute_rulesmatch_rulesheader_matchesrange_matchnew)
      * [`obj path_matcher.route_rules.match_rules.metadata_filters`](#obj-path_matcherroute_rulesmatch_rulesmetadata_filters)
        * [`fn new()`](#fn-path_matcherroute_rulesmatch_rulesmetadata_filtersnew)
        * [`obj path_matcher.route_rules.match_rules.metadata_filters.filter_labels`](#obj-path_matcherroute_rulesmatch_rulesmetadata_filtersfilter_labels)
          * [`fn new()`](#fn-path_matcherroute_rulesmatch_rulesmetadata_filtersfilter_labelsnew)
      * [`obj path_matcher.route_rules.match_rules.query_parameter_matches`](#obj-path_matcherroute_rulesmatch_rulesquery_parameter_matches)
        * [`fn new()`](#fn-path_matcherroute_rulesmatch_rulesquery_parameter_matchesnew)
    * [`obj path_matcher.route_rules.route_action`](#obj-path_matcherroute_rulesroute_action)
      * [`fn new()`](#fn-path_matcherroute_rulesroute_actionnew)
      * [`obj path_matcher.route_rules.route_action.cors_policy`](#obj-path_matcherroute_rulesroute_actioncors_policy)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actioncors_policynew)
      * [`obj path_matcher.route_rules.route_action.fault_injection_policy`](#obj-path_matcherroute_rulesroute_actionfault_injection_policy)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actionfault_injection_policynew)
        * [`obj path_matcher.route_rules.route_action.fault_injection_policy.abort`](#obj-path_matcherroute_rulesroute_actionfault_injection_policyabort)
          * [`fn new()`](#fn-path_matcherroute_rulesroute_actionfault_injection_policyabortnew)
        * [`obj path_matcher.route_rules.route_action.fault_injection_policy.delay`](#obj-path_matcherroute_rulesroute_actionfault_injection_policydelay)
          * [`fn new()`](#fn-path_matcherroute_rulesroute_actionfault_injection_policydelaynew)
          * [`obj path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay`](#obj-path_matcherroute_rulesroute_actionfault_injection_policydelayfixed_delay)
            * [`fn new()`](#fn-path_matcherroute_rulesroute_actionfault_injection_policydelayfixed_delaynew)
      * [`obj path_matcher.route_rules.route_action.request_mirror_policy`](#obj-path_matcherroute_rulesroute_actionrequest_mirror_policy)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actionrequest_mirror_policynew)
      * [`obj path_matcher.route_rules.route_action.retry_policy`](#obj-path_matcherroute_rulesroute_actionretry_policy)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actionretry_policynew)
        * [`obj path_matcher.route_rules.route_action.retry_policy.per_try_timeout`](#obj-path_matcherroute_rulesroute_actionretry_policyper_try_timeout)
          * [`fn new()`](#fn-path_matcherroute_rulesroute_actionretry_policyper_try_timeoutnew)
      * [`obj path_matcher.route_rules.route_action.timeout`](#obj-path_matcherroute_rulesroute_actiontimeout)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actiontimeoutnew)
      * [`obj path_matcher.route_rules.route_action.url_rewrite`](#obj-path_matcherroute_rulesroute_actionurl_rewrite)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actionurl_rewritenew)
      * [`obj path_matcher.route_rules.route_action.weighted_backend_services`](#obj-path_matcherroute_rulesroute_actionweighted_backend_services)
        * [`fn new()`](#fn-path_matcherroute_rulesroute_actionweighted_backend_servicesnew)
        * [`obj path_matcher.route_rules.route_action.weighted_backend_services.header_action`](#obj-path_matcherroute_rulesroute_actionweighted_backend_servicesheader_action)
          * [`fn new()`](#fn-path_matcherroute_rulesroute_actionweighted_backend_servicesheader_actionnew)
          * [`obj path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add`](#obj-path_matcherroute_rulesroute_actionweighted_backend_servicesheader_actionrequest_headers_to_add)
            * [`fn new()`](#fn-path_matcherroute_rulesroute_actionweighted_backend_servicesheader_actionrequest_headers_to_addnew)
          * [`obj path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add`](#obj-path_matcherroute_rulesroute_actionweighted_backend_servicesheader_actionresponse_headers_to_add)
            * [`fn new()`](#fn-path_matcherroute_rulesroute_actionweighted_backend_servicesheader_actionresponse_headers_to_addnew)
    * [`obj path_matcher.route_rules.url_redirect`](#obj-path_matcherroute_rulesurl_redirect)
      * [`fn new()`](#fn-path_matcherroute_rulesurl_redirectnew)
* [`obj test`](#obj-test)
  * [`fn new()`](#fn-testnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_url_map.new` injects a new `google_compute_url_map` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_url_map.new('some_id')

You can get the reference to the `id` field of the created `google.compute_url_map` using the reference:

    $._ref.google_compute_url_map.some_id.get('id')

This is the same as directly entering `"${ google_compute_url_map.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `default_service` (`string`): The backend service or backend bucket to use when none of the given rules match. When `null`, the `default_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when you create
the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character must be a lowercase
letter, and all following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `default_route_action` (`list[obj]`): defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
is set, defaultRouteAction cannot contain any weightedBackendServices.

Only one of defaultRouteAction or defaultUrlRedirect must be set. When `null`, the `default_route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.new](#fn-default_route_actionnew) constructor.
  - `default_url_redirect` (`list[obj]`): When none of the specified hostRules match, the request is redirected to a URL specified
by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
defaultRouteAction must not be set. When `null`, the `default_url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_url_redirect.new](#fn-default_url_redirectnew) constructor.
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService. The headerAction specified here take effect after
headerAction specified under pathMatcher. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.new](#fn-header_actionnew) constructor.
  - `host_rule` (`list[obj]`): The list of HostRules to use against the URL. When `null`, the `host_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.host_rule.new](#fn-host_rulenew) constructor.
  - `path_matcher` (`list[obj]`): The list of named PathMatchers to use against the URL. When `null`, the `path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.new](#fn-path_matchernew) constructor.
  - `test` (`list[obj]`): The list of expected URL mapping tests. Request to update this UrlMap will
succeed only if all of the test cases pass. You can specify a maximum of 100
tests per UrlMap. When `null`, the `test` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.test.new](#fn-testnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_url_map.newAttrs` constructs a new object with attributes and blocks configured for the `compute_url_map`
Terraform resource.

Unlike [google.compute_url_map.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `default_service` (`string`): The backend service or backend bucket to use when none of the given rules match. When `null`, the `default_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when you create
the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character must be a lowercase
letter, and all following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `default_route_action` (`list[obj]`): defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
is set, defaultRouteAction cannot contain any weightedBackendServices.

Only one of defaultRouteAction or defaultUrlRedirect must be set. When `null`, the `default_route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.new](#fn-default_route_actionnew) constructor.
  - `default_url_redirect` (`list[obj]`): When none of the specified hostRules match, the request is redirected to a URL specified
by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
defaultRouteAction must not be set. When `null`, the `default_url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_url_redirect.new](#fn-default_url_redirectnew) constructor.
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService. The headerAction specified here take effect after
headerAction specified under pathMatcher. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.new](#fn-header_actionnew) constructor.
  - `host_rule` (`list[obj]`): The list of HostRules to use against the URL. When `null`, the `host_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.host_rule.new](#fn-host_rulenew) constructor.
  - `path_matcher` (`list[obj]`): The list of named PathMatchers to use against the URL. When `null`, the `path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.new](#fn-path_matchernew) constructor.
  - `test` (`list[obj]`): The list of expected URL mapping tests. Request to update this UrlMap will
succeed only if all of the test cases pass. You can specify a maximum of 100
tests per UrlMap. When `null`, the `test` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.test.new](#fn-testnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_url_map` resource into the root Terraform configuration.


### fn withDefaultRouteAction

```ts
withDefaultRouteAction()
```

`google.list[obj].withDefaultRouteAction` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_route_action field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultRouteActionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_route_action` field.


### fn withDefaultRouteActionMixin

```ts
withDefaultRouteActionMixin()
```

`google.list[obj].withDefaultRouteActionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_route_action field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultRouteAction](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_route_action` field.


### fn withDefaultService

```ts
withDefaultService()
```

`google.string.withDefaultService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the default_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `default_service` field.


### fn withDefaultUrlRedirect

```ts
withDefaultUrlRedirect()
```

`google.list[obj].withDefaultUrlRedirect` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_url_redirect field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultUrlRedirectMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_url_redirect` field.


### fn withDefaultUrlRedirectMixin

```ts
withDefaultUrlRedirectMixin()
```

`google.list[obj].withDefaultUrlRedirectMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_url_redirect field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultUrlRedirect](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_url_redirect` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withHeaderAction

```ts
withHeaderAction()
```

`google.list[obj].withHeaderAction` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the header_action field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHeaderActionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `header_action` field.


### fn withHeaderActionMixin

```ts
withHeaderActionMixin()
```

`google.list[obj].withHeaderActionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the header_action field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHeaderAction](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `header_action` field.


### fn withHostRule

```ts
withHostRule()
```

`google.list[obj].withHostRule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the host_rule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHostRuleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `host_rule` field.


### fn withHostRuleMixin

```ts
withHostRuleMixin()
```

`google.list[obj].withHostRuleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the host_rule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHostRule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `host_rule` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPathMatcher

```ts
withPathMatcher()
```

`google.list[obj].withPathMatcher` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the path_matcher field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPathMatcherMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `path_matcher` field.


### fn withPathMatcherMixin

```ts
withPathMatcherMixin()
```

`google.list[obj].withPathMatcherMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the path_matcher field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPathMatcher](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `path_matcher` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTest

```ts
withTest()
```

`google.list[obj].withTest` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the test field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTestMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `test` field.


### fn withTestMixin

```ts
withTestMixin()
```

`google.list[obj].withTestMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the test field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTest](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `test` field.


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


## obj default_route_action



### fn default_route_action.new

```ts
new()
```


`google.compute_url_map.default_route_action.new` constructs a new object with attributes and blocks configured for the `default_route_action`
Terraform sub block.



**Args**:
  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see
[W3C Recommendation for Cross Origin Resource Sharing](https://www.w3.org/TR/cors/) When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.cors_policy.new](#fn-default_route_actioncors_policynew) constructor.
  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
As part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a
percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted
by the Loadbalancer for a percentage of requests.

timeout and retryPolicy will be ignored by clients that are configured with a faultInjectionPolicy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.new](#fn-default_route_actionfault_injection_policynew) constructor.
  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are shadowed to a separate mirrored backend service.
Loadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service,
the host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.request_mirror_policy.new](#fn-default_route_actionrequest_mirror_policynew) constructor.
  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.retry_policy.new](#fn-default_route_actionretry_policynew) constructor.
  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time the request has been
fully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.

If not specified, will use the largest timeout among all backend services associated with the route. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.timeout.new](#fn-default_route_actiontimeoutnew) constructor.
  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to the matched service. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.url_rewrite.new](#fn-default_route_actionurl_rewritenew) constructor.
  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match occurs.
The weights determine the fraction of traffic that flows to their corresponding backend service.
If all traffic needs to go to a single backend service, there must be one weightedBackendService
with weight set to a non 0 number.

Once a backendService is identified and before forwarding the request to the backend service,
advanced routing actions like Url rewrites and header transformations are applied depending on
additional settings specified in this HttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.new](#fn-default_route_actionweighted_backend_servicesnew) constructor.

**Returns**:
  - An attribute object that represents the `default_route_action` sub block.


## obj default_route_action.cors_policy



### fn default_route_action.cors_policy.new

```ts
new()
```


`google.compute_url_map.default_route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`
Terraform sub block.



**Args**:
  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
This translates to the Access-Control-Allow-Credentials header. When `null`, the `allow_credentials` field will be omitted from the resulting object.
  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.
  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.
  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For regular expression grammar
please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.
  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests.
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origins` field will be omitted from the resulting object.
  - `disabled` (`bool`): If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.
  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.
  - `max_age` (`number`): Specifies how long results of a preflight request can be cached in seconds.
This translates to the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cors_policy` sub block.


## obj default_route_action.fault_injection_policy



### fn default_route_action.fault_injection_policy.new

```ts
new()
```


`google.compute_url_map.default_route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`
Terraform sub block.



**Args**:
  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault injection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.abort.new](#fn-default_route_actiondefault_route_actionabortnew) constructor.
  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault injection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.delay.new](#fn-default_route_actiondefault_route_actiondelaynew) constructor.

**Returns**:
  - An attribute object that represents the `fault_injection_policy` sub block.


## obj default_route_action.fault_injection_policy.abort



### fn default_route_action.fault_injection_policy.abort.new

```ts
new()
```


`google.compute_url_map.default_route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`
Terraform sub block.



**Args**:
  - `http_status` (`number`): The HTTP status code used to abort the request.
The value must be between 200 and 599 inclusive. When `null`, the `http_status` field will be omitted from the resulting object.
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `abort` sub block.


## obj default_route_action.fault_injection_policy.delay



### fn default_route_action.fault_injection_policy.delay.new

```ts
new()
```


`google.compute_url_map.default_route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`
Terraform sub block.



**Args**:
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.
  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.fault_injection_policy.delay.fixed_delay.new](#fn-default_route_actiondefault_route_actionfault_injection_policyfixed_delaynew) constructor.

**Returns**:
  - An attribute object that represents the `delay` sub block.


## obj default_route_action.fault_injection_policy.delay.fixed_delay



### fn default_route_action.fault_injection_policy.delay.fixed_delay.new

```ts
new()
```


`google.compute_url_map.default_route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fixed_delay` sub block.


## obj default_route_action.request_mirror_policy



### fn default_route_action.request_mirror_policy.new

```ts
new()
```


`google.compute_url_map.default_route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The full or partial URL to the BackendService resource being mirrored to.

**Returns**:
  - An attribute object that represents the `request_mirror_policy` sub block.


## obj default_route_action.retry_policy



### fn default_route_action.retry_policy.new

```ts
new()
```


`google.compute_url_map.default_route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0. If not specified, defaults to 1. When `null`, the `num_retries` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specfies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code,
  or if the backend service does not respond at all, example: disconnects, reset, read timeout,
* connection failure, and refused streams.
* gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures connecting to backend services,
  for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
  Currently the only retriable error supported is 409.
* refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code.
  This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted
* unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.
  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt.

If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,
will use the largest timeout among all backend services associated with the route. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.retry_policy.per_try_timeout.new](#fn-default_route_actiondefault_route_actionper_try_timeoutnew) constructor.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj default_route_action.retry_policy.per_try_timeout



### fn default_route_action.retry_policy.per_try_timeout.new

```ts
new()
```


`google.compute_url_map.default_route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `per_try_timeout` sub block.


## obj default_route_action.timeout



### fn default_route_action.timeout.new

```ts
new()
```


`google.compute_url_map.default_route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeout` sub block.


## obj default_route_action.url_rewrite



### fn default_route_action.url_rewrite.new

```ts
new()
```


`google.compute_url_map.default_route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host header is replaced
with contents of hostRewrite.

The value must be between 1 and 255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.
  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching portion of the
request&#39;s path is replaced by pathPrefixRewrite.

The value must be between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_rewrite` sub block.


## obj default_route_action.weighted_backend_services



### fn default_route_action.weighted_backend_services.new

```ts
new()
```


`google.compute_url_map.default_route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The full or partial URL to the default BackendService resource. Before forwarding the
request to backendService, the loadbalancer applies any relevant headerActions
specified as part of this backendServiceWeight. When `null`, the `backend_service` field will be omitted from the resulting object.
  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as
weight / (sum of all weightedBackendService weights in routeAction) .

The selection of a backend service is determined only for new traffic. Once a user&#39;s request
has been directed to a backendService, subsequent requests will be sent to the same backendService
as determined by the BackendService&#39;s session affinity policy.

The value must be between 0 and 1000 When `null`, the `weight` field will be omitted from the resulting object.
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService.

headerAction specified here take effect before headerAction in the enclosing
HttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.header_action.new](#fn-default_route_actiondefault_route_actionheader_actionnew) constructor.

**Returns**:
  - An attribute object that represents the `weighted_backend_services` sub block.


## obj default_route_action.weighted_backend_services.header_action



### fn default_route_action.weighted_backend_services.header_action.new

```ts
new()
```


`google.compute_url_map.default_route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request prior to
forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response prior to sending the
response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-default_route_actiondefault_route_actionweighted_backend_servicesrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-default_route_actiondefault_route_actionweighted_backend_servicesresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj default_route_action.weighted_backend_services.header_action.request_headers_to_add



### fn default_route_action.weighted_backend_services.header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.
  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj default_route_action.weighted_backend_services.header_action.response_headers_to_add



### fn default_route_action.weighted_backend_services.header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.
  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj default_url_redirect



### fn default_url_redirect.new

```ts
new()
```


`google.compute_url_map.default_url_redirect.new` constructs a new object with attributes and blocks configured for the `default_url_redirect`
Terraform sub block.



**Args**:
  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was
supplied in the request. The value must be between 1 and 255 characters. When `null`, the `host_redirect` field will be omitted from the resulting object.
  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set to
false, the URL scheme of the redirected request will remain the same as that of the
request. This must only be set for UrlMaps used in TargetHttpProxys. Setting this
true for TargetHttpsProxy is not permitted. The default is set to false. When `null`, the `https_redirect` field will be omitted from the resulting object.
  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was
supplied in the request. pathRedirect cannot be supplied together with
prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the
original request will be used for the redirect. The value must be between 1 and 1024
characters. When `null`, the `path_redirect` field will be omitted from the resulting object.
  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
retaining the remaining portion of the URL before redirecting the request.
prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or
neither. If neither is supplied, the path of the original request will be used for
the redirect. The value must be between 1 and 1024 characters. When `null`, the `prefix_redirect` field will be omitted from the resulting object.
  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case,
the request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.
  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior
to redirecting the request. If set to false, the query portion of the original URL is
retained. The default is set to false.
 This field is required to ensure an empty block is not set. The normal default value is false.

**Returns**:
  - An attribute object that represents the `default_url_redirect` sub block.


## obj header_action



### fn header_action.new

```ts
new()
```


`google.compute_url_map.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the
backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.request_headers_to_add.new](#fn-header_actionrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.header_action.response_headers_to_add.new](#fn-header_actionresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj header_action.request_headers_to_add



### fn header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj header_action.response_headers_to_add



### fn header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj host_rule



### fn host_rule.new

```ts
new()
```


`google.compute_url_map.host_rule.new` constructs a new object with attributes and blocks configured for the `host_rule`
Terraform sub block.



**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when you create
the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `hosts` (`list`): The list of host patterns to match. They must be valid hostnames, except * will
match any string of ([a-z0-9-.]*). In that case, * must be the first character
and must be followed in the pattern by either - or ..
  - `path_matcher` (`string`): The name of the PathMatcher to use to match the path portion of the URL if the
hostRule matches the URL&#39;s host portion.

**Returns**:
  - An attribute object that represents the `host_rule` sub block.


## obj path_matcher



### fn path_matcher.new

```ts
new()
```


`google.compute_url_map.path_matcher.new` constructs a new object with attributes and blocks configured for the `path_matcher`
Terraform sub block.



**Args**:
  - `default_service` (`string`): The backend service or backend bucket to use when none of the given paths match. When `null`, the `default_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when you create
the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name to which this PathMatcher is referred by the HostRule.
  - `default_route_action` (`list[obj]`): defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs
advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request
to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set.
Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.

Only one of defaultRouteAction or defaultUrlRedirect must be set. When `null`, the `default_route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.new](#fn-path_matcherdefault_route_actionnew) constructor.
  - `default_url_redirect` (`list[obj]`): When none of the specified hostRules match, the request is redirected to a URL specified
by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
defaultRouteAction must not be set. When `null`, the `default_url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_url_redirect.new](#fn-path_matcherdefault_url_redirectnew) constructor.
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService. HeaderAction specified here are applied after the
matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.header_action.new](#fn-path_matcherheader_actionnew) constructor.
  - `path_rule` (`list[obj]`): The list of path rules. Use this list instead of routeRules when routing based
on simple path matching is all that&#39;s required. The order by which path rules
are specified does not matter. Matches are always done on the longest-path-first
basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/*
irrespective of the order in which those paths appear in this list. Within a
given pathMatcher, only one of pathRules or routeRules must be set. When `null`, the `path_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.new](#fn-path_matcherpath_rulenew) constructor.
  - `route_rules` (`list[obj]`): The list of ordered HTTP route rules. Use this list instead of pathRules when
advanced route matching and routing actions are desired. The order of specifying
routeRules matters: the first rule that matches will cause its specified routing
action to take effect. Within a given pathMatcher, only one of pathRules or
routeRules must be set. routeRules are not supported in UrlMaps intended for
External load balancers. When `null`, the `route_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.new](#fn-path_matcherroute_rulesnew) constructor.

**Returns**:
  - An attribute object that represents the `path_matcher` sub block.


## obj path_matcher.default_route_action



### fn path_matcher.default_route_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.new` constructs a new object with attributes and blocks configured for the `default_route_action`
Terraform sub block.



**Args**:
  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see
[W3C Recommendation for Cross Origin Resource Sharing](https://www.w3.org/TR/cors/) When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.cors_policy.new](#fn-path_matcherpath_matchercors_policynew) constructor.
  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
As part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a
percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted
by the Loadbalancer for a percentage of requests.

timeout and retryPolicy will be ignored by clients that are configured with a faultInjectionPolicy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.new](#fn-path_matcherpath_matcherfault_injection_policynew) constructor.
  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are shadowed to a separate mirrored backend service.
Loadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service,
the host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.request_mirror_policy.new](#fn-path_matcherpath_matcherrequest_mirror_policynew) constructor.
  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.retry_policy.new](#fn-path_matcherpath_matcherretry_policynew) constructor.
  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time the request has been
fully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.

If not specified, will use the largest timeout among all backend services associated with the route. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.timeout.new](#fn-path_matcherpath_matchertimeoutnew) constructor.
  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to the matched service. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.url_rewrite.new](#fn-path_matcherpath_matcherurl_rewritenew) constructor.
  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match occurs.
The weights determine the fraction of traffic that flows to their corresponding backend service.
If all traffic needs to go to a single backend service, there must be one weightedBackendService
with weight set to a non 0 number.

Once a backendService is identified and before forwarding the request to the backend service,
advanced routing actions like Url rewrites and header transformations are applied depending on
additional settings specified in this HttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.new](#fn-path_matcherpath_matcherweighted_backend_servicesnew) constructor.

**Returns**:
  - An attribute object that represents the `default_route_action` sub block.


## obj path_matcher.default_route_action.cors_policy



### fn path_matcher.default_route_action.cors_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`
Terraform sub block.



**Args**:
  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
This translates to the Access-Control-Allow-Credentials header. When `null`, the `allow_credentials` field will be omitted from the resulting object.
  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.
  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.
  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For regular expression grammar
please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.
  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests.
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. When `null`, the `allow_origins` field will be omitted from the resulting object.
  - `disabled` (`bool`): If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.
  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.
  - `max_age` (`number`): Specifies how long results of a preflight request can be cached in seconds.
This translates to the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cors_policy` sub block.


## obj path_matcher.default_route_action.fault_injection_policy



### fn path_matcher.default_route_action.fault_injection_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`
Terraform sub block.



**Args**:
  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault injection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.abort.new](#fn-path_matcherpath_matcherdefault_route_actionabortnew) constructor.
  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault injection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.new](#fn-path_matcherpath_matcherdefault_route_actiondelaynew) constructor.

**Returns**:
  - An attribute object that represents the `fault_injection_policy` sub block.


## obj path_matcher.default_route_action.fault_injection_policy.abort



### fn path_matcher.default_route_action.fault_injection_policy.abort.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`
Terraform sub block.



**Args**:
  - `http_status` (`number`): The HTTP status code used to abort the request.
The value must be between 200 and 599 inclusive. When `null`, the `http_status` field will be omitted from the resulting object.
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `abort` sub block.


## obj path_matcher.default_route_action.fault_injection_policy.delay



### fn path_matcher.default_route_action.fault_injection_policy.delay.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`
Terraform sub block.



**Args**:
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.
  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay.new](#fn-path_matcherpath_matcherdefault_route_actionfault_injection_policyfixed_delaynew) constructor.

**Returns**:
  - An attribute object that represents the `delay` sub block.


## obj path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay



### fn path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fixed_delay` sub block.


## obj path_matcher.default_route_action.request_mirror_policy



### fn path_matcher.default_route_action.request_mirror_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The full or partial URL to the BackendService resource being mirrored to.

**Returns**:
  - An attribute object that represents the `request_mirror_policy` sub block.


## obj path_matcher.default_route_action.retry_policy



### fn path_matcher.default_route_action.retry_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0. If not specified, defaults to 1. When `null`, the `num_retries` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specfies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code,
  or if the backend service does not respond at all, example: disconnects, reset, read timeout,
* connection failure, and refused streams.
* gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures connecting to backend services,
  for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
  Currently the only retriable error supported is 409.
* refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code.
  This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted
* unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.
  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt.

If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,
will use the largest timeout among all backend services associated with the route. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.retry_policy.per_try_timeout.new](#fn-path_matcherpath_matcherdefault_route_actionper_try_timeoutnew) constructor.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj path_matcher.default_route_action.retry_policy.per_try_timeout



### fn path_matcher.default_route_action.retry_policy.per_try_timeout.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `per_try_timeout` sub block.


## obj path_matcher.default_route_action.timeout



### fn path_matcher.default_route_action.timeout.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeout` sub block.


## obj path_matcher.default_route_action.url_rewrite



### fn path_matcher.default_route_action.url_rewrite.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host header is replaced
with contents of hostRewrite.

The value must be between 1 and 255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.
  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching portion of the
request&#39;s path is replaced by pathPrefixRewrite.

The value must be between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_rewrite` sub block.


## obj path_matcher.default_route_action.weighted_backend_services



### fn path_matcher.default_route_action.weighted_backend_services.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The full or partial URL to the default BackendService resource. Before forwarding the
request to backendService, the loadbalancer applies any relevant headerActions
specified as part of this backendServiceWeight. When `null`, the `backend_service` field will be omitted from the resulting object.
  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as
weight / (sum of all weightedBackendService weights in routeAction) .

The selection of a backend service is determined only for new traffic. Once a user&#39;s request
has been directed to a backendService, subsequent requests will be sent to the same backendService
as determined by the BackendService&#39;s session affinity policy.

The value must be between 0 and 1000 When `null`, the `weight` field will be omitted from the resulting object.
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService.

headerAction specified here take effect before headerAction in the enclosing
HttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.new](#fn-path_matcherpath_matcherdefault_route_actionheader_actionnew) constructor.

**Returns**:
  - An attribute object that represents the `weighted_backend_services` sub block.


## obj path_matcher.default_route_action.weighted_backend_services.header_action



### fn path_matcher.default_route_action.weighted_backend_services.header_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request prior to
forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response prior to sending the
response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-path_matcherpath_matcherdefault_route_actionweighted_backend_servicesrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-path_matcherpath_matcherdefault_route_actionweighted_backend_servicesresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add



### fn path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.
  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add



### fn path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to add. When `null`, the `header_name` field will be omitted from the resulting object.
  - `header_value` (`string`): The value of the header to add. When `null`, the `header_value` field will be omitted from the resulting object.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. When `null`, the `replace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj path_matcher.default_url_redirect



### fn path_matcher.default_url_redirect.new

```ts
new()
```


`google.compute_url_map.path_matcher.default_url_redirect.new` constructs a new object with attributes and blocks configured for the `default_url_redirect`
Terraform sub block.



**Args**:
  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was
supplied in the request. The value must be between 1 and 255 characters. When `null`, the `host_redirect` field will be omitted from the resulting object.
  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set to
false, the URL scheme of the redirected request will remain the same as that of the
request. This must only be set for UrlMaps used in TargetHttpProxys. Setting this
true for TargetHttpsProxy is not permitted. The default is set to false. When `null`, the `https_redirect` field will be omitted from the resulting object.
  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was
supplied in the request. pathRedirect cannot be supplied together with
prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the
original request will be used for the redirect. The value must be between 1 and 1024
characters. When `null`, the `path_redirect` field will be omitted from the resulting object.
  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
retaining the remaining portion of the URL before redirecting the request.
prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or
neither. If neither is supplied, the path of the original request will be used for
the redirect. The value must be between 1 and 1024 characters. When `null`, the `prefix_redirect` field will be omitted from the resulting object.
  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case,
the request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.
  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior
to redirecting the request. If set to false, the query portion of the original URL is
retained.
 This field is required to ensure an empty block is not set. The normal default value is false.

**Returns**:
  - An attribute object that represents the `default_url_redirect` sub block.


## obj path_matcher.header_action



### fn path_matcher.header_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the
backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.header_action.request_headers_to_add.new](#fn-path_matcherpath_matcherrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.header_action.response_headers_to_add.new](#fn-path_matcherpath_matcherresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj path_matcher.header_action.request_headers_to_add



### fn path_matcher.header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj path_matcher.header_action.response_headers_to_add



### fn path_matcher.header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj path_matcher.path_rule



### fn path_matcher.path_rule.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.new` constructs a new object with attributes and blocks configured for the `path_rule`
Terraform sub block.



**Args**:
  - `paths` (`list`): The list of path patterns to match. Each must start with / and the only place a
\* is allowed is at the end following a /. The string fed to the path matcher
does not include any text after the first ? or #, and those chars are not
allowed here.
  - `service` (`string`): The backend service or backend bucket to use if any of the given paths match. When `null`, the `service` field will be omitted from the resulting object.
  - `route_action` (`list[obj]`): In response to a matching path, the load balancer performs advanced routing
actions like URL rewrites, header transformations, etc. prior to forwarding the
request to the selected backend. If routeAction specifies any
weightedBackendServices, service must not be set. Conversely if service is set,
routeAction cannot contain any  weightedBackendServices. Only one of routeAction
or urlRedirect must be set. When `null`, the `route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.new](#fn-path_matcherpath_matcherroute_actionnew) constructor.
  - `url_redirect` (`list[obj]`): When a path pattern is matched, the request is redirected to a URL specified
by urlRedirect. If urlRedirect is specified, service or routeAction must not
be set. When `null`, the `url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.url_redirect.new](#fn-path_matcherpath_matcherurl_redirectnew) constructor.

**Returns**:
  - An attribute object that represents the `path_rule` sub block.


## obj path_matcher.path_rule.route_action



### fn path_matcher.path_rule.route_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.new` constructs a new object with attributes and blocks configured for the `route_action`
Terraform sub block.



**Args**:
  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see W3C
Recommendation for Cross Origin Resource Sharing When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.cors_policy.new](#fn-path_matcherpath_matcherpath_rulecors_policynew) constructor.
  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the
resiliency of clients to backend service failure. As part of fault injection,
when clients send requests to a backend service, delays can be introduced by
Loadbalancer on a percentage of requests before sending those request to the
backend service. Similarly requests from clients can be aborted by the
Loadbalancer for a percentage of requests. timeout and retry_policy will be
ignored by clients that are configured with a fault_injection_policy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.new](#fn-path_matcherpath_matcherpath_rulefault_injection_policynew) constructor.
  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are
shadowed to a separate mirrored backend service. Loadbalancer does not wait for
responses from the shadow service. Prior to sending traffic to the shadow
service, the host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.request_mirror_policy.new](#fn-path_matcherpath_matcherpath_rulerequest_mirror_policynew) constructor.
  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.new](#fn-path_matcherpath_matcherpath_ruleretry_policynew) constructor.
  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time
the request is has been fully processed (i.e. end-of-stream) up until the
response has been completely processed. Timeout includes all retries. If not
specified, the default value is 15 seconds. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.timeout.new](#fn-path_matcherpath_matcherpath_ruletimeoutnew) constructor.
  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to
the matched service When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.url_rewrite.new](#fn-path_matcherpath_matcherpath_ruleurl_rewritenew) constructor.
  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match
occurs. The weights determine the fraction of traffic that flows to their
corresponding backend service. If all traffic needs to go to a single backend
service, there must be one  weightedBackendService with weight set to a non 0
number. Once a backendService is identified and before forwarding the request to
the backend service, advanced routing actions like Url rewrites and header
transformations are applied depending on additional settings specified in this
HttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.new](#fn-path_matcherpath_matcherpath_ruleweighted_backend_servicesnew) constructor.

**Returns**:
  - An attribute object that represents the `route_action` sub block.


## obj path_matcher.path_rule.route_action.cors_policy



### fn path_matcher.path_rule.route_action.cors_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`
Terraform sub block.



**Args**:
  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the
actual request can include user credentials. This translates to the Access-
Control-Allow-Credentials header. Defaults to false. When `null`, the `allow_credentials` field will be omitted from the resulting object.
  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.
  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.
  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For
regular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.
  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests. An
origin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origins` field will be omitted from the resulting object.
  - `disabled` (`bool`): If true, specifies the CORS policy is disabled.
  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.
  - `max_age` (`number`): Specifies how long the results of a preflight request can be cached. This
translates to the content for the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cors_policy` sub block.


## obj path_matcher.path_rule.route_action.fault_injection_policy



### fn path_matcher.path_rule.route_action.fault_injection_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`
Terraform sub block.



**Args**:
  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault
injection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.abort.new](#fn-path_matcherpath_matcherpath_ruleroute_actionabortnew) constructor.
  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault
injection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.new](#fn-path_matcherpath_matcherpath_ruleroute_actiondelaynew) constructor.

**Returns**:
  - An attribute object that represents the `fault_injection_policy` sub block.


## obj path_matcher.path_rule.route_action.fault_injection_policy.abort



### fn path_matcher.path_rule.route_action.fault_injection_policy.abort.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`
Terraform sub block.



**Args**:
  - `http_status` (`number`): The HTTP status code used to abort the request. The value must be between 200
and 599 inclusive.
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be
aborted as part of fault injection. The value must be between 0.0 and 100.0
inclusive.

**Returns**:
  - An attribute object that represents the `abort` sub block.


## obj path_matcher.path_rule.route_action.fault_injection_policy.delay



### fn path_matcher.path_rule.route_action.fault_injection_policy.delay.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`
Terraform sub block.



**Args**:
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will
be introduced as part of fault injection. The value must be between 0.0 and
100.0 inclusive.
  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay.new](#fn-path_matcherpath_matcherpath_ruleroute_actionfault_injection_policyfixed_delaynew) constructor.

**Returns**:
  - An attribute object that represents the `delay` sub block.


## obj path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay



### fn path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `fixed_delay` sub block.


## obj path_matcher.path_rule.route_action.request_mirror_policy



### fn path_matcher.path_rule.route_action.request_mirror_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The BackendService resource being mirrored to.

**Returns**:
  - An attribute object that represents the `request_mirror_policy` sub block.


## obj path_matcher.path_rule.route_action.retry_policy



### fn path_matcher.path_rule.route_action.retry_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0. When `null`, the `num_retries` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specifies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with
any 5xx response code, or if the backend service does not respond at all,
example: disconnects, reset, read timeout, connection failure, and refused
streams.
* gateway-error: Similar to 5xx, but only applies to response codes
502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures
connecting to backend services, for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
Currently the only retriable error supported is 409.
* refused-stream: Loadbalancer will retry if the backend service resets the stream with a
REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response
header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the
gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response
header is set to resource-exhausted
* unavailable: Loadbalancer will retry if
the gRPC status code in the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.
  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.per_try_timeout.new](#fn-path_matcherpath_matcherpath_ruleroute_actionper_try_timeoutnew) constructor.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj path_matcher.path_rule.route_action.retry_policy.per_try_timeout



### fn path_matcher.path_rule.route_action.retry_policy.per_try_timeout.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `per_try_timeout` sub block.


## obj path_matcher.path_rule.route_action.timeout



### fn path_matcher.path_rule.route_action.timeout.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `timeout` sub block.


## obj path_matcher.path_rule.route_action.url_rewrite



### fn path_matcher.path_rule.route_action.url_rewrite.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host
header is replaced with contents of hostRewrite. The value must be between 1 and
255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.
  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching
portion of the request&#39;s path is replaced by pathPrefixRewrite. The value must
be between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_rewrite` sub block.


## obj path_matcher.path_rule.route_action.weighted_backend_services



### fn path_matcher.path_rule.route_action.weighted_backend_services.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The default BackendService resource. Before
forwarding the request to backendService, the loadbalancer applies any relevant
headerActions specified as part of this backendServiceWeight.
  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as weight /
(sum of all weightedBackendService weights in routeAction) . The selection of a
backend service is determined only for new traffic. Once a user&#39;s request has
been directed to a backendService, subsequent requests will be sent to the same
backendService as determined by the BackendService&#39;s session affinity policy.
The value must be between 0 and 1000
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService. headerAction specified here take effect before
headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.new](#fn-path_matcherpath_matcherpath_ruleroute_actionheader_actionnew) constructor.

**Returns**:
  - An attribute object that represents the `weighted_backend_services` sub block.


## obj path_matcher.path_rule.route_action.weighted_backend_services.header_action



### fn path_matcher.path_rule.route_action.weighted_backend_services.header_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the
backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-path_matcherpath_matcherpath_ruleroute_actionweighted_backend_servicesrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-path_matcherpath_matcherpath_ruleroute_actionweighted_backend_servicesresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add



### fn path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add



### fn path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj path_matcher.path_rule.url_redirect



### fn path_matcher.path_rule.url_redirect.new

```ts
new()
```


`google.compute_url_map.path_matcher.path_rule.url_redirect.new` constructs a new object with attributes and blocks configured for the `url_redirect`
Terraform sub block.



**Args**:
  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one
that was supplied in the request. The value must be between 1 and 255
characters. When `null`, the `host_redirect` field will be omitted from the resulting object.
  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https.
If set to false, the URL scheme of the redirected request will remain the
same as that of the request. This must only be set for UrlMaps used in
TargetHttpProxys. Setting this true for TargetHttpsProxy is not
permitted. The default is set to false. When `null`, the `https_redirect` field will be omitted from the resulting object.
  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one
that was supplied in the request. pathRedirect cannot be supplied
together with prefixRedirect. Supply one alone or neither. If neither is
supplied, the path of the original request will be used for the redirect.
The value must be between 1 and 1024 characters. When `null`, the `path_redirect` field will be omitted from the resulting object.
  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the
HttpRouteRuleMatch, retaining the remaining portion of the URL before
redirecting the request. prefixRedirect cannot be supplied together with
pathRedirect. Supply one alone or neither. If neither is supplied, the
path of the original request will be used for the redirect. The value
must be between 1 and 1024 characters. When `null`, the `prefix_redirect` field will be omitted from the resulting object.
  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case,
the request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.
  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is
removed prior to redirecting the request. If set to false, the query
portion of the original URL is retained.
 This field is required to ensure an empty block is not set. The normal default value is false.

**Returns**:
  - An attribute object that represents the `url_redirect` sub block.


## obj path_matcher.route_rules



### fn path_matcher.route_rules.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.new` constructs a new object with attributes and blocks configured for the `route_rules`
Terraform sub block.



**Args**:
  - `priority` (`number`): For routeRules within a given pathMatcher, priority determines the order
in which load balancer will interpret routeRules. RouteRules are evaluated
in order of priority, from the lowest to highest number. The priority of
a rule decreases as its number increases (1, 2, 3, N&#43;1). The first rule
that matches the request is applied.

You cannot configure two or more routeRules with the same priority.
Priority for each rule must be set to a number between 0 and
2147483647 inclusive.

Priority numbers can have gaps, which enable you to add or remove rules
in the future without affecting the rest of the rules. For example,
1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which
you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the
future without any impact on existing rules.
  - `service` (`string`): The backend service resource to which traffic is
directed if this rule is matched. If routeAction is additionally specified,
advanced routing actions like URL Rewrites, etc. take effect prior to sending
the request to the backend. However, if service is specified, routeAction cannot
contain any weightedBackendService s. Conversely, if routeAction specifies any
weightedBackendServices, service must not be specified. Only one of urlRedirect,
service or routeAction.weightedBackendService must be set. When `null`, the `service` field will be omitted from the resulting object.
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService. The headerAction specified here are applied before
the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].r
outeAction.weightedBackendService.backendServiceWeightAction[].headerAction When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.header_action.new](#fn-path_matcherpath_matcherheader_actionnew) constructor.
  - `match_rules` (`list[obj]`): The rules for determining a match. When `null`, the `match_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.new](#fn-path_matcherpath_matchermatch_rulesnew) constructor.
  - `route_action` (`list[obj]`): In response to a matching matchRule, the load balancer performs advanced routing
actions like URL rewrites, header transformations, etc. prior to forwarding the
request to the selected backend. If  routeAction specifies any
weightedBackendServices, service must not be set. Conversely if service is set,
routeAction cannot contain any  weightedBackendServices. Only one of routeAction
or urlRedirect must be set. When `null`, the `route_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.new](#fn-path_matcherpath_matcherroute_actionnew) constructor.
  - `url_redirect` (`list[obj]`): When this rule is matched, the request is redirected to a URL specified by
urlRedirect. If urlRedirect is specified, service or routeAction must not be
set. When `null`, the `url_redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.url_redirect.new](#fn-path_matcherpath_matcherurl_redirectnew) constructor.

**Returns**:
  - An attribute object that represents the `route_rules` sub block.


## obj path_matcher.route_rules.header_action



### fn path_matcher.route_rules.header_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the
backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.header_action.request_headers_to_add.new](#fn-path_matcherpath_matcherroute_rulesrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.header_action.response_headers_to_add.new](#fn-path_matcherpath_matcherroute_rulesresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj path_matcher.route_rules.header_action.request_headers_to_add



### fn path_matcher.route_rules.header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj path_matcher.route_rules.header_action.response_headers_to_add



### fn path_matcher.route_rules.header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj path_matcher.route_rules.match_rules



### fn path_matcher.route_rules.match_rules.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.match_rules.new` constructs a new object with attributes and blocks configured for the `match_rules`
Terraform sub block.



**Args**:
  - `full_path_match` (`string`): For satisfying the matchRule condition, the path of the request must exactly
match the value specified in fullPathMatch after removing any query parameters
and anchor that may be part of the original URL. FullPathMatch must be between 1
and 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must
be specified. When `null`, the `full_path_match` field will be omitted from the resulting object.
  - `ignore_case` (`bool`): Specifies that prefixMatch and fullPathMatch matches are case sensitive.
Defaults to false. When `null`, the `ignore_case` field will be omitted from the resulting object.
  - `path_template_match` (`string`): For satisfying the matchRule condition, the path of the request
must match the wildcard pattern specified in pathTemplateMatch
after removing any query parameters and anchor that may be part
of the original URL.

pathTemplateMatch must be between 1 and 255 characters
(inclusive).  The pattern specified by pathTemplateMatch may
have at most 5 wildcard operators and at most 5 variable
captures in total. When `null`, the `path_template_match` field will be omitted from the resulting object.
  - `prefix_match` (`string`): For satisfying the matchRule condition, the request&#39;s path must begin with the
specified prefixMatch. prefixMatch must begin with a /. The value must be
between 1 and 1024 characters. Only one of prefixMatch, fullPathMatch or
regexMatch must be specified. When `null`, the `prefix_match` field will be omitted from the resulting object.
  - `regex_match` (`string`): For satisfying the matchRule condition, the path of the request must satisfy the
regular expression specified in regexMatch after removing any query parameters
and anchor supplied with the original URL. For regular expression grammar please
see en.cppreference.com/w/cpp/regex/ecmascript  Only one of prefixMatch,
fullPathMatch or regexMatch must be specified. When `null`, the `regex_match` field will be omitted from the resulting object.
  - `header_matches` (`list[obj]`): Specifies a list of header match criteria, all of which must match corresponding
headers in the request. When `null`, the `header_matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.new](#fn-path_matcherpath_matcherroute_rulesheader_matchesnew) constructor.
  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing configuration to
a limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS
clients present node metadata. If a match takes place, the relevant routing
configuration is made available to those proxies. For each metadataFilter in
this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the
filterLabels must match the corresponding label provided in the metadata. If its
filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match
with corresponding labels in the provided metadata. metadataFilters specified
here can be overrides those specified in ForwardingRule that refers to this
UrlMap. metadataFilters only applies to Loadbalancers that have their
loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.new](#fn-path_matcherpath_matcherroute_rulesmetadata_filtersnew) constructor.
  - `query_parameter_matches` (`list[obj]`): Specifies a list of query parameter match criteria, all of which must match
corresponding query parameters in the request. When `null`, the `query_parameter_matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.query_parameter_matches.new](#fn-path_matcherpath_matcherroute_rulesquery_parameter_matchesnew) constructor.

**Returns**:
  - An attribute object that represents the `match_rules` sub block.


## obj path_matcher.route_rules.match_rules.header_matches



### fn path_matcher.route_rules.match_rules.header_matches.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.new` constructs a new object with attributes and blocks configured for the `header_matches`
Terraform sub block.



**Args**:
  - `exact_match` (`string`): The value should exactly match contents of exactMatch. Only one of exactMatch,
prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. When `null`, the `exact_match` field will be omitted from the resulting object.
  - `header_name` (`string`): The name of the HTTP header to match. For matching against the HTTP request&#39;s
authority, use a headerMatch with the header name &#34;:authority&#34;. For matching a
request&#39;s method, use the headerName &#34;:method&#34;.
  - `invert_match` (`bool`): If set to false, the headerMatch is considered a match if the match criteria
above are met. If set to true, the headerMatch is considered a match if the
match criteria above are NOT met. Defaults to false. When `null`, the `invert_match` field will be omitted from the resulting object.
  - `prefix_match` (`string`): The value of the header must start with the contents of prefixMatch. Only one of
exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
must be set. When `null`, the `prefix_match` field will be omitted from the resulting object.
  - `present_match` (`bool`): A header with the contents of headerName must exist. The match takes place
whether or not the request&#39;s header has a value or not. Only one of exactMatch,
prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. When `null`, the `present_match` field will be omitted from the resulting object.
  - `regex_match` (`string`): The value of the header must match the regular expression specified in
regexMatch. For regular expression grammar, please see:
en.cppreference.com/w/cpp/regex/ecmascript  For matching against a port
specified in the HTTP request, use a headerMatch with headerName set to PORT and
a regular expression that satisfies the RFC2616 Host header&#39;s port specifier.
Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or
rangeMatch must be set. When `null`, the `regex_match` field will be omitted from the resulting object.
  - `suffix_match` (`string`): The value of the header must end with the contents of suffixMatch. Only one of
exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
must be set. When `null`, the `suffix_match` field will be omitted from the resulting object.
  - `range_match` (`list[obj]`): The header value must be an integer and its value must be in the range specified
in rangeMatch. If the header does not contain an integer, number or is empty,
the match fails. For example for a range [-5, 0]   - -3 will match.  - 0 will
not match.  - 0.25 will not match.  - -3someString will not match.   Only one of
exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
must be set. When `null`, the `range_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.range_match.new](#fn-path_matcherpath_matcherroute_rulesmatch_rulesrange_matchnew) constructor.

**Returns**:
  - An attribute object that represents the `header_matches` sub block.


## obj path_matcher.route_rules.match_rules.header_matches.range_match



### fn path_matcher.route_rules.match_rules.header_matches.range_match.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.match_rules.header_matches.range_match.new` constructs a new object with attributes and blocks configured for the `range_match`
Terraform sub block.



**Args**:
  - `range_end` (`number`): The end of the range (exclusive).
  - `range_start` (`number`): The start of the range (inclusive).

**Returns**:
  - An attribute object that represents the `range_match` sub block.


## obj path_matcher.route_rules.match_rules.metadata_filters



### fn path_matcher.route_rules.match_rules.metadata_filters.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.new` constructs a new object with attributes and blocks configured for the `metadata_filters`
Terraform sub block.



**Args**:
  - `filter_match_criteria` (`string`): Specifies how individual filterLabel matches within the list of filterLabels
contribute towards the overall metadataFilter match. Supported values are:
  - MATCH_ANY: At least one of the filterLabels must have a matching label in the
provided metadata.
  - MATCH_ALL: All filterLabels must have matching labels in
the provided metadata. Possible values: [&#34;MATCH_ALL&#34;, &#34;MATCH_ANY&#34;]
  - `filter_labels` (`list[obj]`): The list of label value pairs that must match labels in the provided metadata
based on filterMatchCriteria  This list must not be empty and can have at the
most 64 entries. When `null`, the `filter_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.filter_labels.new](#fn-path_matcherpath_matcherroute_rulesmatch_rulesfilter_labelsnew) constructor.

**Returns**:
  - An attribute object that represents the `metadata_filters` sub block.


## obj path_matcher.route_rules.match_rules.metadata_filters.filter_labels



### fn path_matcher.route_rules.match_rules.metadata_filters.filter_labels.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.match_rules.metadata_filters.filter_labels.new` constructs a new object with attributes and blocks configured for the `filter_labels`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of metadata label. The name can have a maximum length of 1024 characters
and must be at least 1 character long.
  - `value` (`string`): The value of the label must match the specified value. value can have a maximum
length of 1024 characters.

**Returns**:
  - An attribute object that represents the `filter_labels` sub block.


## obj path_matcher.route_rules.match_rules.query_parameter_matches



### fn path_matcher.route_rules.match_rules.query_parameter_matches.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.match_rules.query_parameter_matches.new` constructs a new object with attributes and blocks configured for the `query_parameter_matches`
Terraform sub block.



**Args**:
  - `exact_match` (`string`): The queryParameterMatch matches if the value of the parameter exactly matches
the contents of exactMatch. Only one of presentMatch, exactMatch and regexMatch
must be set. When `null`, the `exact_match` field will be omitted from the resulting object.
  - `name` (`string`): The name of the query parameter to match. The query parameter must exist in the
request, in the absence of which the request match fails.
  - `present_match` (`bool`): Specifies that the queryParameterMatch matches if the request contains the query
parameter, irrespective of whether the parameter has a value or not. Only one of
presentMatch, exactMatch and regexMatch must be set. When `null`, the `present_match` field will be omitted from the resulting object.
  - `regex_match` (`string`): The queryParameterMatch matches if the value of the parameter matches the
regular expression specified by regexMatch. For the regular expression grammar,
please see en.cppreference.com/w/cpp/regex/ecmascript  Only one of presentMatch,
exactMatch and regexMatch must be set. When `null`, the `regex_match` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `query_parameter_matches` sub block.


## obj path_matcher.route_rules.route_action



### fn path_matcher.route_rules.route_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.new` constructs a new object with attributes and blocks configured for the `route_action`
Terraform sub block.



**Args**:
  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. Please see W3C
Recommendation for Cross Origin Resource Sharing When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.cors_policy.new](#fn-path_matcherpath_matcherroute_rulescors_policynew) constructor.
  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the
resiliency of clients to backend service failure. As part of fault injection,
when clients send requests to a backend service, delays can be introduced by
Loadbalancer on a percentage of requests before sending those request to the
backend service. Similarly requests from clients can be aborted by the
Loadbalancer for a percentage of requests. timeout and retry_policy will be
ignored by clients that are configured with a fault_injection_policy. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.new](#fn-path_matcherpath_matcherroute_rulesfault_injection_policynew) constructor.
  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the route&#39;s backends are
shadowed to a separate mirrored backend service. Loadbalancer does not wait for
responses from the shadow service. Prior to sending traffic to the shadow
service, the host / authority header is suffixed with -shadow. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.request_mirror_policy.new](#fn-path_matcherpath_matcherroute_rulesrequest_mirror_policynew) constructor.
  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.new](#fn-path_matcherpath_matcherroute_rulesretry_policynew) constructor.
  - `timeout` (`list[obj]`): Specifies the timeout for the selected route. Timeout is computed from the time
the request is has been fully processed (i.e. end-of-stream) up until the
response has been completely processed. Timeout includes all retries. If not
specified, the default value is 15 seconds. When `null`, the `timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.timeout.new](#fn-path_matcherpath_matcherroute_rulestimeoutnew) constructor.
  - `url_rewrite` (`list[obj]`): The spec to modify the URL of the request, prior to forwarding the request to
the matched service When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.url_rewrite.new](#fn-path_matcherpath_matcherroute_rulesurl_rewritenew) constructor.
  - `weighted_backend_services` (`list[obj]`): A list of weighted backend services to send traffic to when a route match
occurs. The weights determine the fraction of traffic that flows to their
corresponding backend service. If all traffic needs to go to a single backend
service, there must be one  weightedBackendService with weight set to a non 0
number. Once a backendService is identified and before forwarding the request to
the backend service, advanced routing actions like Url rewrites and header
transformations are applied depending on additional settings specified in this
HttpRouteAction. When `null`, the `weighted_backend_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.new](#fn-path_matcherpath_matcherroute_rulesweighted_backend_servicesnew) constructor.

**Returns**:
  - An attribute object that represents the `route_action` sub block.


## obj path_matcher.route_rules.route_action.cors_policy



### fn path_matcher.route_rules.route_action.cors_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`
Terraform sub block.



**Args**:
  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the
actual request can include user credentials. This translates to the Access-
Control-Allow-Credentials header. Defaults to false. When `null`, the `allow_credentials` field will be omitted from the resulting object.
  - `allow_headers` (`list`): Specifies the content for the Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.
  - `allow_methods` (`list`): Specifies the content for the Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.
  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. For
regular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.
  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests. An
origin is allowed if it matches either allow_origins or allow_origin_regex. When `null`, the `allow_origins` field will be omitted from the resulting object.
  - `disabled` (`bool`): If true, specifies the CORS policy is disabled.
which indicates that the CORS policy is in effect. Defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.
  - `expose_headers` (`list`): Specifies the content for the Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.
  - `max_age` (`number`): Specifies how long the results of a preflight request can be cached. This
translates to the content for the Access-Control-Max-Age header. When `null`, the `max_age` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cors_policy` sub block.


## obj path_matcher.route_rules.route_action.fault_injection_policy



### fn path_matcher.route_rules.route_action.fault_injection_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`
Terraform sub block.



**Args**:
  - `abort` (`list[obj]`): The specification for how client requests are aborted as part of fault
injection. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.abort.new](#fn-path_matcherpath_matcherroute_rulesroute_actionabortnew) constructor.
  - `delay` (`list[obj]`): The specification for how client requests are delayed as part of fault
injection, before being sent to a backend service. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.new](#fn-path_matcherpath_matcherroute_rulesroute_actiondelaynew) constructor.

**Returns**:
  - An attribute object that represents the `fault_injection_policy` sub block.


## obj path_matcher.route_rules.route_action.fault_injection_policy.abort



### fn path_matcher.route_rules.route_action.fault_injection_policy.abort.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`
Terraform sub block.



**Args**:
  - `http_status` (`number`): The HTTP status code used to abort the request. The value must be between 200
and 599 inclusive. When `null`, the `http_status` field will be omitted from the resulting object.
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) which will be
aborted as part of fault injection. The value must be between 0.0 and 100.0
inclusive. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `abort` sub block.


## obj path_matcher.route_rules.route_action.fault_injection_policy.delay



### fn path_matcher.route_rules.route_action.fault_injection_policy.delay.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`
Terraform sub block.



**Args**:
  - `percentage` (`number`): The percentage of traffic (connections/operations/requests) on which delay will
be introduced as part of fault injection. The value must be between 0.0 and
100.0 inclusive. When `null`, the `percentage` field will be omitted from the resulting object.
  - `fixed_delay` (`list[obj]`): Specifies the value of the fixed delay interval. When `null`, the `fixed_delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay.new](#fn-path_matcherpath_matcherroute_rulesroute_actionfault_injection_policyfixed_delaynew) constructor.

**Returns**:
  - An attribute object that represents the `delay` sub block.


## obj path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay



### fn path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay.new` constructs a new object with attributes and blocks configured for the `fixed_delay`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `fixed_delay` sub block.


## obj path_matcher.route_rules.route_action.request_mirror_policy



### fn path_matcher.route_rules.route_action.request_mirror_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The BackendService resource being mirrored to.

**Returns**:
  - An attribute object that represents the `request_mirror_policy` sub block.


## obj path_matcher.route_rules.route_action.retry_policy



### fn path_matcher.route_rules.route_action.retry_policy.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `num_retries` (`number`): Specifies the allowed number retries. This number must be &gt; 0.
  - `retry_conditions` (`list`): Specfies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with
  any 5xx response code, or if the backend service does not respond at all,
  example: disconnects, reset, read timeout, connection failure, and refused
  streams.
* gateway-error: Similar to 5xx, but only applies to response codes
  502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures
  connecting to backend services, for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
  Currently the only retriable error supported is 409.
* refused-stream: Loadbalancer will retry if the backend service resets the stream with a
  REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response
  header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the
  gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response
  header is set to resource-exhausted
* unavailable: Loadbalancer will retry if the gRPC status code in
  the response header is set to unavailable When `null`, the `retry_conditions` field will be omitted from the resulting object.
  - `per_try_timeout` (`list[obj]`): Specifies a non-zero timeout per retry attempt.
If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction
is not set, will use the largest timeout among all backend services associated with the route. When `null`, the `per_try_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.per_try_timeout.new](#fn-path_matcherpath_matcherroute_rulesroute_actionper_try_timeoutnew) constructor.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj path_matcher.route_rules.route_action.retry_policy.per_try_timeout



### fn path_matcher.route_rules.route_action.retry_policy.per_try_timeout.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.retry_policy.per_try_timeout.new` constructs a new object with attributes and blocks configured for the `per_try_timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `per_try_timeout` sub block.


## obj path_matcher.route_rules.route_action.timeout



### fn path_matcher.route_rules.route_action.timeout.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.timeout.new` constructs a new object with attributes and blocks configured for the `timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 &#39;seconds&#39; field and a positive
&#39;nanos&#39; field. Must be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`string`): Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive.

**Returns**:
  - An attribute object that represents the `timeout` sub block.


## obj path_matcher.route_rules.route_action.url_rewrite



### fn path_matcher.route_rules.route_action.url_rewrite.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected service, the request&#39;s host
header is replaced with contents of hostRewrite. The value must be between 1 and
255 characters. When `null`, the `host_rewrite` field will be omitted from the resulting object.
  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected backend service, the matching
portion of the request&#39;s path is replaced by pathPrefixRewrite. The value must
be between 1 and 1024 characters. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.
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


## obj path_matcher.route_rules.route_action.weighted_backend_services



### fn path_matcher.route_rules.route_action.weighted_backend_services.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.new` constructs a new object with attributes and blocks configured for the `weighted_backend_services`
Terraform sub block.



**Args**:
  - `backend_service` (`string`): The default BackendService resource. Before
forwarding the request to backendService, the loadbalancer applies any relevant
headerActions specified as part of this backendServiceWeight.
  - `weight` (`number`): Specifies the fraction of traffic sent to backendService, computed as weight /
(sum of all weightedBackendService weights in routeAction) . The selection of a
backend service is determined only for new traffic. Once a user&#39;s request has
been directed to a backendService, subsequent requests will be sent to the same
backendService as determined by the BackendService&#39;s session affinity policy.
The value must be between 0 and 1000
  - `header_action` (`list[obj]`): Specifies changes to request and response headers that need to take effect for
the selected backendService. headerAction specified here take effect before
headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.new](#fn-path_matcherpath_matcherroute_rulesroute_actionheader_actionnew) constructor.

**Returns**:
  - An attribute object that represents the `weighted_backend_services` sub block.


## obj path_matcher.route_rules.route_action.weighted_backend_services.header_action



### fn path_matcher.route_rules.route_action.weighted_backend_services.header_action.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. When `null`, the `request_headers_to_remove` field will be omitted from the resulting object.
  - `response_headers_to_remove` (`list`): A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. When `null`, the `response_headers_to_remove` field will be omitted from the resulting object.
  - `request_headers_to_add` (`list[obj]`): Headers to add to a matching request prior to forwarding the request to the
backendService. When `null`, the `request_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add.new](#fn-path_matcherpath_matcherroute_rulesroute_actionweighted_backend_servicesrequest_headers_to_addnew) constructor.
  - `response_headers_to_add` (`list[obj]`): Headers to add the response prior to sending the response back to the client. When `null`, the `response_headers_to_add` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add.new](#fn-path_matcherpath_matcherroute_rulesroute_actionweighted_backend_servicesresponse_headers_to_addnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add



### fn path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add.new` constructs a new object with attributes and blocks configured for the `request_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `request_headers_to_add` sub block.


## obj path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add



### fn path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add.new` constructs a new object with attributes and blocks configured for the `response_headers_to_add`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header.
  - `header_value` (`string`): The value of the header to add.
  - `replace` (`bool`): If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header.

**Returns**:
  - An attribute object that represents the `response_headers_to_add` sub block.


## obj path_matcher.route_rules.url_redirect



### fn path_matcher.route_rules.url_redirect.new

```ts
new()
```


`google.compute_url_map.path_matcher.route_rules.url_redirect.new` constructs a new object with attributes and blocks configured for the `url_redirect`
Terraform sub block.



**Args**:
  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was
supplied in the request. The value must be between 1 and 255 characters. When `null`, the `host_redirect` field will be omitted from the resulting object.
  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. If set
to false, the URL scheme of the redirected request will remain the same as that
of the request. This must only be set for UrlMaps used in TargetHttpProxys.
Setting this true for TargetHttpsProxy is not permitted. Defaults to false. When `null`, the `https_redirect` field will be omitted from the resulting object.
  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was
supplied in the request. Only one of pathRedirect or prefixRedirect must be
specified. The value must be between 1 and 1024 characters. When `null`, the `path_redirect` field will be omitted from the resulting object.
  - `prefix_redirect` (`string`): The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
retaining the remaining portion of the URL before redirecting the request. When `null`, the `prefix_redirect` field will be omitted from the resulting object.
  - `redirect_response_code` (`string`): The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method will be retained. Possible values: [&#34;FOUND&#34;, &#34;MOVED_PERMANENTLY_DEFAULT&#34;, &#34;PERMANENT_REDIRECT&#34;, &#34;SEE_OTHER&#34;, &#34;TEMPORARY_REDIRECT&#34;] When `null`, the `redirect_response_code` field will be omitted from the resulting object.
  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed
prior to redirecting the request. If set to false, the query portion of the
original URL is retained. Defaults to false. When `null`, the `strip_query` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_redirect` sub block.


## obj test



### fn test.new

```ts
new()
```


`google.compute_url_map.test.new` constructs a new object with attributes and blocks configured for the `test`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of this test case. When `null`, the `description` field will be omitted from the resulting object.
  - `host` (`string`): Host portion of the URL.
  - `path` (`string`): Path portion of the URL.
  - `service` (`string`): The backend service or backend bucket link that should be matched by this test.

**Returns**:
  - An attribute object that represents the `test` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_url_map.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
