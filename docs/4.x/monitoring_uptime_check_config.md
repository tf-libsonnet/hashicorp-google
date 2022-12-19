---
permalink: /monitoring_uptime_check_config/
---

# monitoring_uptime_check_config

`monitoring_uptime_check_config` represents the `google_monitoring_uptime_check_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCheckerType()`](#fn-withcheckertype)
* [`fn withContentMatchers()`](#fn-withcontentmatchers)
* [`fn withContentMatchersMixin()`](#fn-withcontentmatchersmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withHttpCheck()`](#fn-withhttpcheck)
* [`fn withHttpCheckMixin()`](#fn-withhttpcheckmixin)
* [`fn withMonitoredResource()`](#fn-withmonitoredresource)
* [`fn withMonitoredResourceMixin()`](#fn-withmonitoredresourcemixin)
* [`fn withPeriod()`](#fn-withperiod)
* [`fn withProject()`](#fn-withproject)
* [`fn withResourceGroup()`](#fn-withresourcegroup)
* [`fn withResourceGroupMixin()`](#fn-withresourcegroupmixin)
* [`fn withSelectedRegions()`](#fn-withselectedregions)
* [`fn withTcpCheck()`](#fn-withtcpcheck)
* [`fn withTcpCheckMixin()`](#fn-withtcpcheckmixin)
* [`fn withTimeout()`](#fn-withtimeout)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj content_matchers`](#obj-content_matchers)
  * [`fn new()`](#fn-content_matchersnew)
  * [`obj content_matchers.json_path_matcher`](#obj-content_matchersjson_path_matcher)
    * [`fn new()`](#fn-content_matchersjson_path_matchernew)
* [`obj http_check`](#obj-http_check)
  * [`fn new()`](#fn-http_checknew)
  * [`obj http_check.accepted_response_status_codes`](#obj-http_checkaccepted_response_status_codes)
    * [`fn new()`](#fn-http_checkaccepted_response_status_codesnew)
  * [`obj http_check.auth_info`](#obj-http_checkauth_info)
    * [`fn new()`](#fn-http_checkauth_infonew)
* [`obj monitored_resource`](#obj-monitored_resource)
  * [`fn new()`](#fn-monitored_resourcenew)
* [`obj resource_group`](#obj-resource_group)
  * [`fn new()`](#fn-resource_groupnew)
* [`obj tcp_check`](#obj-tcp_check)
  * [`fn new()`](#fn-tcp_checknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_uptime_check_config.new` injects a new `google_monitoring_uptime_check_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_uptime_check_config.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_uptime_check_config` using the reference:

    $._ref.google_monitoring_uptime_check_config.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_uptime_check_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `checker_type` (`string`): The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS. Possible values: [&#34;STATIC_IP_CHECKERS&#34;, &#34;VPC_CHECKERS&#34;] When `null`, the `checker_type` field will be omitted from the resulting object.
  - `display_name` (`string`): A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  - `period` (`string`): How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s. When `null`, the `period` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `selected_regions` (`list`): The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. When `null`, the `selected_regions` field will be omitted from the resulting object.
  - `timeout` (`string`): The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration
  - `content_matchers` (`list[obj]`): The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response&#39;s content. This field is optional and should only be specified if a content match is required. When `null`, the `content_matchers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.content_matchers.new](#fn-content_matchersnew) constructor.
  - `http_check` (`list[obj]`): Contains information needed to make an HTTP or HTTPS check. When `null`, the `http_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.new](#fn-http_checknew) constructor.
  - `monitored_resource` (`list[obj]`): The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service When `null`, the `monitored_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.monitored_resource.new](#fn-monitored_resourcenew) constructor.
  - `resource_group` (`list[obj]`): The group resource associated with the configuration. When `null`, the `resource_group` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.resource_group.new](#fn-resource_groupnew) constructor.
  - `tcp_check` (`list[obj]`): Contains information needed to make a TCP check. When `null`, the `tcp_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.tcp_check.new](#fn-tcp_checknew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_uptime_check_config.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_uptime_check_config`
Terraform resource.

Unlike [google.monitoring_uptime_check_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `checker_type` (`string`): The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS. Possible values: [&#34;STATIC_IP_CHECKERS&#34;, &#34;VPC_CHECKERS&#34;] When `null`, the `checker_type` field will be omitted from the resulting object.
  - `display_name` (`string`): A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  - `period` (`string`): How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s. When `null`, the `period` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `selected_regions` (`list`): The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. When `null`, the `selected_regions` field will be omitted from the resulting object.
  - `timeout` (`string`): The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration
  - `content_matchers` (`list[obj]`): The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response&#39;s content. This field is optional and should only be specified if a content match is required. When `null`, the `content_matchers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.content_matchers.new](#fn-content_matchersnew) constructor.
  - `http_check` (`list[obj]`): Contains information needed to make an HTTP or HTTPS check. When `null`, the `http_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.new](#fn-http_checknew) constructor.
  - `monitored_resource` (`list[obj]`): The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service When `null`, the `monitored_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.monitored_resource.new](#fn-monitored_resourcenew) constructor.
  - `resource_group` (`list[obj]`): The group resource associated with the configuration. When `null`, the `resource_group` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.resource_group.new](#fn-resource_groupnew) constructor.
  - `tcp_check` (`list[obj]`): Contains information needed to make a TCP check. When `null`, the `tcp_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.tcp_check.new](#fn-tcp_checknew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_uptime_check_config` resource into the root Terraform configuration.


### fn withCheckerType

```ts
withCheckerType()
```

`google.string.withCheckerType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the checker_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `checker_type` field.


### fn withContentMatchers

```ts
withContentMatchers()
```

`google.list[obj].withContentMatchers` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the content_matchers field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withContentMatchersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `content_matchers` field.


### fn withContentMatchersMixin

```ts
withContentMatchersMixin()
```

`google.list[obj].withContentMatchersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the content_matchers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withContentMatchers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `content_matchers` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withHttpCheck

```ts
withHttpCheck()
```

`google.list[obj].withHttpCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHttpCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http_check` field.


### fn withHttpCheckMixin

```ts
withHttpCheckMixin()
```

`google.list[obj].withHttpCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHttpCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http_check` field.


### fn withMonitoredResource

```ts
withMonitoredResource()
```

`google.list[obj].withMonitoredResource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitored_resource field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMonitoredResourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitored_resource` field.


### fn withMonitoredResourceMixin

```ts
withMonitoredResourceMixin()
```

`google.list[obj].withMonitoredResourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitored_resource field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoredResource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitored_resource` field.


### fn withPeriod

```ts
withPeriod()
```

`google.string.withPeriod` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the period field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `period` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withResourceGroup

```ts
withResourceGroup()
```

`google.list[obj].withResourceGroup` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_group field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withResourceGroupMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_group` field.


### fn withResourceGroupMixin

```ts
withResourceGroupMixin()
```

`google.list[obj].withResourceGroupMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_group field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withResourceGroup](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_group` field.


### fn withSelectedRegions

```ts
withSelectedRegions()
```

`google.list.withSelectedRegions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the selected_regions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `selected_regions` field.


### fn withTcpCheck

```ts
withTcpCheck()
```

`google.list[obj].withTcpCheck` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the tcp_check field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTcpCheckMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `tcp_check` field.


### fn withTcpCheckMixin

```ts
withTcpCheckMixin()
```

`google.list[obj].withTcpCheckMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the tcp_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTcpCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `tcp_check` field.


### fn withTimeout

```ts
withTimeout()
```

`google.string.withTimeout` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `timeout` field.


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


## obj content_matchers



### fn content_matchers.new

```ts
new()
```


`google.monitoring_uptime_check_config.content_matchers.new` constructs a new object with attributes and blocks configured for the `content_matchers`
Terraform sub block.



**Args**:
  - `content` (`string`): String or regex content to match (max 1024 bytes)
  - `matcher` (`string`): The type of content matcher that will be applied to the server output, compared to the content string when the check is run. Default value: &#34;CONTAINS_STRING&#34; Possible values: [&#34;CONTAINS_STRING&#34;, &#34;NOT_CONTAINS_STRING&#34;, &#34;MATCHES_REGEX&#34;, &#34;NOT_MATCHES_REGEX&#34;, &#34;MATCHES_JSON_PATH&#34;, &#34;NOT_MATCHES_JSON_PATH&#34;] When `null`, the `matcher` field will be omitted from the resulting object.
  - `json_path_matcher` (`list[obj]`): Information needed to perform a JSONPath content match. Used for &#39;ContentMatcherOption::MATCHES_JSON_PATH&#39; and &#39;ContentMatcherOption::NOT_MATCHES_JSON_PATH&#39;. When `null`, the `json_path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.content_matchers.json_path_matcher.new](#fn-content_matchersjson_path_matchernew) constructor.

**Returns**:
  - An attribute object that represents the `content_matchers` sub block.


## obj content_matchers.json_path_matcher



### fn content_matchers.json_path_matcher.new

```ts
new()
```


`google.monitoring_uptime_check_config.content_matchers.json_path_matcher.new` constructs a new object with attributes and blocks configured for the `json_path_matcher`
Terraform sub block.



**Args**:
  - `json_matcher` (`string`): Options to perform JSONPath content matching. Default value: &#34;EXACT_MATCH&#34; Possible values: [&#34;EXACT_MATCH&#34;, &#34;REGEX_MATCH&#34;] When `null`, the `json_matcher` field will be omitted from the resulting object.
  - `json_path` (`string`): JSONPath within the response output pointing to the expected &#39;ContentMatcher::content&#39; to match against.

**Returns**:
  - An attribute object that represents the `json_path_matcher` sub block.


## obj http_check



### fn http_check.new

```ts
new()
```


`google.monitoring_uptime_check_config.http_check.new` constructs a new object with attributes and blocks configured for the `http_check`
Terraform sub block.



**Args**:
  - `body` (`string`): The request body associated with the HTTP POST request. If contentType is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the requestMethod is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. &#34;foo=bar&#34; in URL-encoded form is &#34;foo%3Dbar&#34; and in base64 encoding is &#34;Zm9vJTI1M0RiYXI=&#34;. When `null`, the `body` field will be omitted from the resulting object.
  - `content_type` (`string`): The content type to use for the check. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;URL_ENCODED&#34;] When `null`, the `content_type` field will be omitted from the resulting object.
  - `headers` (`obj`): The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100. When `null`, the `headers` field will be omitted from the resulting object.
  - `mask_headers` (`bool`): Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to True then the headers will be obscured with ******. When `null`, the `mask_headers` field will be omitted from the resulting object.
  - `path` (`string`): The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with &#34;/&#34;, a &#34;/&#34; will be prepended automatically. Optional (defaults to &#34;/&#34;). When `null`, the `path` field will be omitted from the resulting object.
  - `port` (`number`): The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL). When `null`, the `port` field will be omitted from the resulting object.
  - `request_method` (`string`): The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then requestMethod defaults to GET. Default value: &#34;GET&#34; Possible values: [&#34;METHOD_UNSPECIFIED&#34;, &#34;GET&#34;, &#34;POST&#34;] When `null`, the `request_method` field will be omitted from the resulting object.
  - `use_ssl` (`bool`): If true, use HTTPS instead of HTTP to run the check. When `null`, the `use_ssl` field will be omitted from the resulting object.
  - `validate_ssl` (`bool`): Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitoredResource is set to uptime_url. If useSsl is false, setting validateSsl to true has no effect. When `null`, the `validate_ssl` field will be omitted from the resulting object.
  - `accepted_response_status_codes` (`list[obj]`): If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299. When `null`, the `accepted_response_status_codes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.accepted_response_status_codes.new](#fn-http_checkaccepted_response_status_codesnew) constructor.
  - `auth_info` (`list[obj]`): The authentication information. Optional when creating an HTTP check; defaults to empty. When `null`, the `auth_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.auth_info.new](#fn-http_checkauth_infonew) constructor.

**Returns**:
  - An attribute object that represents the `http_check` sub block.


## obj http_check.accepted_response_status_codes



### fn http_check.accepted_response_status_codes.new

```ts
new()
```


`google.monitoring_uptime_check_config.http_check.accepted_response_status_codes.new` constructs a new object with attributes and blocks configured for the `accepted_response_status_codes`
Terraform sub block.



**Args**:
  - `status_class` (`string`): A class of status codes to accept. Possible values: [&#34;STATUS_CLASS_1XX&#34;, &#34;STATUS_CLASS_2XX&#34;, &#34;STATUS_CLASS_3XX&#34;, &#34;STATUS_CLASS_4XX&#34;, &#34;STATUS_CLASS_5XX&#34;, &#34;STATUS_CLASS_ANY&#34;] When `null`, the `status_class` field will be omitted from the resulting object.
  - `status_value` (`number`): A status code to accept. When `null`, the `status_value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `accepted_response_status_codes` sub block.


## obj http_check.auth_info



### fn http_check.auth_info.new

```ts
new()
```


`google.monitoring_uptime_check_config.http_check.auth_info.new` constructs a new object with attributes and blocks configured for the `auth_info`
Terraform sub block.



**Args**:
  - `password` (`string`): The password to authenticate.
  - `username` (`string`): The username to authenticate.

**Returns**:
  - An attribute object that represents the `auth_info` sub block.


## obj monitored_resource



### fn monitored_resource.new

```ts
new()
```


`google.monitoring_uptime_check_config.monitored_resource.new` constructs a new object with attributes and blocks configured for the `monitored_resource`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels &#34;project_id&#34;, &#34;instance_id&#34;, and &#34;zone&#34;.
  - `type` (`string`): The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).

**Returns**:
  - An attribute object that represents the `monitored_resource` sub block.


## obj resource_group



### fn resource_group.new

```ts
new()
```


`google.monitoring_uptime_check_config.resource_group.new` constructs a new object with attributes and blocks configured for the `resource_group`
Terraform sub block.



**Args**:
  - `group_id` (`string`): The group of resources being monitored. Should be the &#39;name&#39; of a group When `null`, the `group_id` field will be omitted from the resulting object.
  - `resource_type` (`string`): The resource type of the group members. Possible values: [&#34;RESOURCE_TYPE_UNSPECIFIED&#34;, &#34;INSTANCE&#34;, &#34;AWS_ELB_LOAD_BALANCER&#34;] When `null`, the `resource_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `resource_group` sub block.


## obj tcp_check



### fn tcp_check.new

```ts
new()
```


`google.monitoring_uptime_check_config.tcp_check.new` constructs a new object with attributes and blocks configured for the `tcp_check`
Terraform sub block.



**Args**:
  - `port` (`number`): The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) to construct the full URL.

**Returns**:
  - An attribute object that represents the `tcp_check` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_uptime_check_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
