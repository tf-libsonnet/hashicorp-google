local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_uptime_check_config', url='', help='`monitoring_uptime_check_config` represents the `google_monitoring_uptime_check_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  content_matchers:: {
    json_path_matcher:: {
      '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.content_matchers.json_path_matcher.new` constructs a new object with attributes and blocks configured for the `json_path_matcher`\nTerraform sub block.\n\n\n\n**Args**:\n  - `json_matcher` (`string`): Options to perform JSONPath content matching. Default value: &#34;EXACT_MATCH&#34; Possible values: [&#34;EXACT_MATCH&#34;, &#34;REGEX_MATCH&#34;] When `null`, the `json_matcher` field will be omitted from the resulting object.\n  - `json_path` (`string`): JSONPath within the response output pointing to the expected &#39;ContentMatcher::content&#39; to match against.\n\n**Returns**:\n  - An attribute object that represents the `json_path_matcher` sub block.\n', args=[]),
      new(
        json_path,
        json_matcher=null
      ):: std.prune(a={
        json_matcher: json_matcher,
        json_path: json_path,
      }),
    },
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.content_matchers.new` constructs a new object with attributes and blocks configured for the `content_matchers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content` (`string`): String or regex content to match (max 1024 bytes)\n  - `matcher` (`string`): The type of content matcher that will be applied to the server output, compared to the content string when the check is run. Default value: &#34;CONTAINS_STRING&#34; Possible values: [&#34;CONTAINS_STRING&#34;, &#34;NOT_CONTAINS_STRING&#34;, &#34;MATCHES_REGEX&#34;, &#34;NOT_MATCHES_REGEX&#34;, &#34;MATCHES_JSON_PATH&#34;, &#34;NOT_MATCHES_JSON_PATH&#34;] When `null`, the `matcher` field will be omitted from the resulting object.\n  - `json_path_matcher` (`list[obj]`): Information needed to perform a JSONPath content match. Used for &#39;ContentMatcherOption::MATCHES_JSON_PATH&#39; and &#39;ContentMatcherOption::NOT_MATCHES_JSON_PATH&#39;. When `null`, the `json_path_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.content_matchers.json_path_matcher.new](#fn-content_matchersjson_path_matchernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `content_matchers` sub block.\n', args=[]),
    new(
      content,
      json_path_matcher=null,
      matcher=null
    ):: std.prune(a={
      content: content,
      json_path_matcher: json_path_matcher,
      matcher: matcher,
    }),
  },
  http_check:: {
    accepted_response_status_codes:: {
      '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.http_check.accepted_response_status_codes.new` constructs a new object with attributes and blocks configured for the `accepted_response_status_codes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `status_class` (`string`): A class of status codes to accept. Possible values: [&#34;STATUS_CLASS_1XX&#34;, &#34;STATUS_CLASS_2XX&#34;, &#34;STATUS_CLASS_3XX&#34;, &#34;STATUS_CLASS_4XX&#34;, &#34;STATUS_CLASS_5XX&#34;, &#34;STATUS_CLASS_ANY&#34;] When `null`, the `status_class` field will be omitted from the resulting object.\n  - `status_value` (`number`): A status code to accept. When `null`, the `status_value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `accepted_response_status_codes` sub block.\n', args=[]),
      new(
        status_class=null,
        status_value=null
      ):: std.prune(a={
        status_class: status_class,
        status_value: status_value,
      }),
    },
    auth_info:: {
      '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.http_check.auth_info.new` constructs a new object with attributes and blocks configured for the `auth_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): The password to authenticate.\n  - `username` (`string`): The username to authenticate.\n\n**Returns**:\n  - An attribute object that represents the `auth_info` sub block.\n', args=[]),
      new(
        password,
        username
      ):: std.prune(a={
        password: password,
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.http_check.new` constructs a new object with attributes and blocks configured for the `http_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `body` (`string`): The request body associated with the HTTP POST request. If contentType is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the requestMethod is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. &#34;foo=bar&#34; in URL-encoded form is &#34;foo%3Dbar&#34; and in base64 encoding is &#34;Zm9vJTI1M0RiYXI=&#34;. When `null`, the `body` field will be omitted from the resulting object.\n  - `content_type` (`string`): The content type to use for the check. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;URL_ENCODED&#34;, &#34;USER_PROVIDED&#34;] When `null`, the `content_type` field will be omitted from the resulting object.\n  - `custom_content_type` (`string`): A user provided content type header to use for the check. The invalid configurations outlined in the &#39;content_type&#39; field apply to custom_content_type&#39;, as well as the following 1. &#39;content_type&#39; is &#39;URL_ENCODED&#39; and &#39;custom_content_type&#39; is set. 2. &#39;content_type&#39; is &#39;USER_PROVIDED&#39; and &#39;custom_content_type&#39; is not set. When `null`, the `custom_content_type` field will be omitted from the resulting object.\n  - `headers` (`obj`): The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100. When `null`, the `headers` field will be omitted from the resulting object.\n  - `mask_headers` (`bool`): Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to True then the headers will be obscured with ******. When `null`, the `mask_headers` field will be omitted from the resulting object.\n  - `path` (`string`): The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with &#34;/&#34;, a &#34;/&#34; will be prepended automatically. Optional (defaults to &#34;/&#34;). When `null`, the `path` field will be omitted from the resulting object.\n  - `port` (`number`): The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL). When `null`, the `port` field will be omitted from the resulting object.\n  - `request_method` (`string`): The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then requestMethod defaults to GET. Default value: &#34;GET&#34; Possible values: [&#34;METHOD_UNSPECIFIED&#34;, &#34;GET&#34;, &#34;POST&#34;] When `null`, the `request_method` field will be omitted from the resulting object.\n  - `use_ssl` (`bool`): If true, use HTTPS instead of HTTP to run the check. When `null`, the `use_ssl` field will be omitted from the resulting object.\n  - `validate_ssl` (`bool`): Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitoredResource is set to uptime_url. If useSsl is false, setting validateSsl to true has no effect. When `null`, the `validate_ssl` field will be omitted from the resulting object.\n  - `accepted_response_status_codes` (`list[obj]`): If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299. When `null`, the `accepted_response_status_codes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.accepted_response_status_codes.new](#fn-http_checkaccepted_response_status_codesnew) constructor.\n  - `auth_info` (`list[obj]`): The authentication information. Optional when creating an HTTP check; defaults to empty. When `null`, the `auth_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.auth_info.new](#fn-http_checkauth_infonew) constructor.\n  - `ping_config` (`list[obj]`): Contains information needed to add pings to an HTTP check. When `null`, the `ping_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.ping_config.new](#fn-http_checkping_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_check` sub block.\n', args=[]),
    new(
      accepted_response_status_codes=null,
      auth_info=null,
      body=null,
      content_type=null,
      custom_content_type=null,
      headers=null,
      mask_headers=null,
      path=null,
      ping_config=null,
      port=null,
      request_method=null,
      use_ssl=null,
      validate_ssl=null
    ):: std.prune(a={
      accepted_response_status_codes: accepted_response_status_codes,
      auth_info: auth_info,
      body: body,
      content_type: content_type,
      custom_content_type: custom_content_type,
      headers: headers,
      mask_headers: mask_headers,
      path: path,
      ping_config: ping_config,
      port: port,
      request_method: request_method,
      use_ssl: use_ssl,
      validate_ssl: validate_ssl,
    }),
    ping_config:: {
      '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.http_check.ping_config.new` constructs a new object with attributes and blocks configured for the `ping_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pings_count` (`number`): Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.\n\n**Returns**:\n  - An attribute object that represents the `ping_config` sub block.\n', args=[]),
      new(
        pings_count
      ):: std.prune(a={
        pings_count: pings_count,
      }),
    },
  },
  monitored_resource:: {
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.monitored_resource.new` constructs a new object with attributes and blocks configured for the `monitored_resource`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels &#34;project_id&#34;, &#34;instance_id&#34;, and &#34;zone&#34;.\n  - `type` (`string`): The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).\n\n**Returns**:\n  - An attribute object that represents the `monitored_resource` sub block.\n', args=[]),
    new(
      labels,
      type
    ):: std.prune(a={
      labels: labels,
      type: type,
    }),
  },
  '#new':: d.fn(help="\n`google.monitoring_uptime_check_config.new` injects a new `google_monitoring_uptime_check_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_uptime_check_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_uptime_check_config` using the reference:\n\n    $._ref.google_monitoring_uptime_check_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_uptime_check_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `checker_type` (`string`): The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS. Possible values: [\u0026#34;STATIC_IP_CHECKERS\u0026#34;, \u0026#34;VPC_CHECKERS\u0026#34;] When `null`, the `checker_type` field will be omitted from the resulting object.\n  - `display_name` (`string`): A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.\n  - `period` (`string`): How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s. When `null`, the `period` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `selected_regions` (`list`): The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. When `null`, the `selected_regions` field will be omitted from the resulting object.\n  - `timeout` (`string`): The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration\n  - `user_labels` (`obj`): User-supplied key/value data to be used for organizing and identifying the \u0026#39;UptimeCheckConfig\u0026#39; objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `content_matchers` (`list[obj]`): The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response\u0026#39;s content. This field is optional and should only be specified if a content match is required. When `null`, the `content_matchers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.content_matchers.new](#fn-content_matchersnew) constructor.\n  - `http_check` (`list[obj]`): Contains information needed to make an HTTP or HTTPS check. When `null`, the `http_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.new](#fn-http_checknew) constructor.\n  - `monitored_resource` (`list[obj]`): The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service When `null`, the `monitored_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.monitored_resource.new](#fn-monitored_resourcenew) constructor.\n  - `resource_group` (`list[obj]`): The group resource associated with the configuration. When `null`, the `resource_group` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.resource_group.new](#fn-resource_groupnew) constructor.\n  - `synthetic_monitor` (`list[obj]`): A Synthetic Monitor deployed to a Cloud Functions V2 instance. When `null`, the `synthetic_monitor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.synthetic_monitor.new](#fn-synthetic_monitornew) constructor.\n  - `tcp_check` (`list[obj]`): Contains information needed to make a TCP check. When `null`, the `tcp_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.tcp_check.new](#fn-tcp_checknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    timeout,
    checker_type=null,
    content_matchers=null,
    http_check=null,
    monitored_resource=null,
    period=null,
    project=null,
    resource_group=null,
    selected_regions=null,
    synthetic_monitor=null,
    tcp_check=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_uptime_check_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      checker_type=checker_type,
      content_matchers=content_matchers,
      display_name=display_name,
      http_check=http_check,
      monitored_resource=monitored_resource,
      period=period,
      project=project,
      resource_group=resource_group,
      selected_regions=selected_regions,
      synthetic_monitor=synthetic_monitor,
      tcp_check=tcp_check,
      timeout=timeout,
      timeouts=timeouts,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_uptime_check_config.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_uptime_check_config`\nTerraform resource.\n\nUnlike [google.monitoring_uptime_check_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `checker_type` (`string`): The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS. Possible values: [&#34;STATIC_IP_CHECKERS&#34;, &#34;VPC_CHECKERS&#34;] When `null`, the `checker_type` field will be omitted from the resulting object.\n  - `display_name` (`string`): A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.\n  - `period` (`string`): How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s. When `null`, the `period` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `selected_regions` (`list`): The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. When `null`, the `selected_regions` field will be omitted from the resulting object.\n  - `timeout` (`string`): The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration\n  - `user_labels` (`obj`): User-supplied key/value data to be used for organizing and identifying the &#39;UptimeCheckConfig&#39; objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `content_matchers` (`list[obj]`): The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response&#39;s content. This field is optional and should only be specified if a content match is required. When `null`, the `content_matchers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.content_matchers.new](#fn-content_matchersnew) constructor.\n  - `http_check` (`list[obj]`): Contains information needed to make an HTTP or HTTPS check. When `null`, the `http_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.http_check.new](#fn-http_checknew) constructor.\n  - `monitored_resource` (`list[obj]`): The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service When `null`, the `monitored_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.monitored_resource.new](#fn-monitored_resourcenew) constructor.\n  - `resource_group` (`list[obj]`): The group resource associated with the configuration. When `null`, the `resource_group` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.resource_group.new](#fn-resource_groupnew) constructor.\n  - `synthetic_monitor` (`list[obj]`): A Synthetic Monitor deployed to a Cloud Functions V2 instance. When `null`, the `synthetic_monitor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.synthetic_monitor.new](#fn-synthetic_monitornew) constructor.\n  - `tcp_check` (`list[obj]`): Contains information needed to make a TCP check. When `null`, the `tcp_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.tcp_check.new](#fn-tcp_checknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_uptime_check_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    timeout,
    checker_type=null,
    content_matchers=null,
    http_check=null,
    monitored_resource=null,
    period=null,
    project=null,
    resource_group=null,
    selected_regions=null,
    synthetic_monitor=null,
    tcp_check=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    checker_type: checker_type,
    content_matchers: content_matchers,
    display_name: display_name,
    http_check: http_check,
    monitored_resource: monitored_resource,
    period: period,
    project: project,
    resource_group: resource_group,
    selected_regions: selected_regions,
    synthetic_monitor: synthetic_monitor,
    tcp_check: tcp_check,
    timeout: timeout,
    timeouts: timeouts,
    user_labels: user_labels,
  }),
  resource_group:: {
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.resource_group.new` constructs a new object with attributes and blocks configured for the `resource_group`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_id` (`string`): The group of resources being monitored. Should be the &#39;name&#39; of a group When `null`, the `group_id` field will be omitted from the resulting object.\n  - `resource_type` (`string`): The resource type of the group members. Possible values: [&#34;RESOURCE_TYPE_UNSPECIFIED&#34;, &#34;INSTANCE&#34;, &#34;AWS_ELB_LOAD_BALANCER&#34;] When `null`, the `resource_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `resource_group` sub block.\n', args=[]),
    new(
      group_id=null,
      resource_type=null
    ):: std.prune(a={
      group_id: group_id,
      resource_type: resource_type,
    }),
  },
  synthetic_monitor:: {
    cloud_function_v2:: {
      '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.synthetic_monitor.cloud_function_v2.new` constructs a new object with attributes and blocks configured for the `cloud_function_v2`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The fully qualified name of the cloud function resource.\n\n**Returns**:\n  - An attribute object that represents the `cloud_function_v2` sub block.\n', args=[]),
      new(
        name
      ):: std.prune(a={
        name: name,
      }),
    },
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.synthetic_monitor.new` constructs a new object with attributes and blocks configured for the `synthetic_monitor`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_function_v2` (`list[obj]`): Target a Synthetic Monitor GCFv2 Instance When `null`, the `cloud_function_v2` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.synthetic_monitor.cloud_function_v2.new](#fn-synthetic_monitorcloud_function_v2new) constructor.\n\n**Returns**:\n  - An attribute object that represents the `synthetic_monitor` sub block.\n', args=[]),
    new(
      cloud_function_v2=null
    ):: std.prune(a={
      cloud_function_v2: cloud_function_v2,
    }),
  },
  tcp_check:: {
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.tcp_check.new` constructs a new object with attributes and blocks configured for the `tcp_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) to construct the full URL.\n  - `ping_config` (`list[obj]`): Contains information needed to add pings to a TCP check. When `null`, the `ping_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_uptime_check_config.tcp_check.ping_config.new](#fn-tcp_checkping_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `tcp_check` sub block.\n', args=[]),
    new(
      port,
      ping_config=null
    ):: std.prune(a={
      ping_config: ping_config,
      port: port,
    }),
    ping_config:: {
      '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.tcp_check.ping_config.new` constructs a new object with attributes and blocks configured for the `ping_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pings_count` (`number`): Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.\n\n**Returns**:\n  - An attribute object that represents the `ping_config` sub block.\n', args=[]),
      new(
        pings_count
      ):: std.prune(a={
        pings_count: pings_count,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_uptime_check_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCheckerType':: d.fn(help='`google.string.withCheckerType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the checker_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `checker_type` field.\n', args=[]),
  withCheckerType(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          checker_type: value,
        },
      },
    },
  },
  '#withContentMatchers':: d.fn(help='`google.list[obj].withContentMatchers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the content_matchers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withContentMatchersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `content_matchers` field.\n', args=[]),
  withContentMatchers(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          content_matchers: value,
        },
      },
    },
  },
  '#withContentMatchersMixin':: d.fn(help='`google.list[obj].withContentMatchersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the content_matchers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withContentMatchers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `content_matchers` field.\n', args=[]),
  withContentMatchersMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          content_matchers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withHttpCheck':: d.fn(help='`google.list[obj].withHttpCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the http_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHttpCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `http_check` field.\n', args=[]),
  withHttpCheck(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          http_check: value,
        },
      },
    },
  },
  '#withHttpCheckMixin':: d.fn(help='`google.list[obj].withHttpCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the http_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHttpCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `http_check` field.\n', args=[]),
  withHttpCheckMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          http_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMonitoredResource':: d.fn(help='`google.list[obj].withMonitoredResource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the monitored_resource field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMonitoredResourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `monitored_resource` field.\n', args=[]),
  withMonitoredResource(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          monitored_resource: value,
        },
      },
    },
  },
  '#withMonitoredResourceMixin':: d.fn(help='`google.list[obj].withMonitoredResourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the monitored_resource field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoredResource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `monitored_resource` field.\n', args=[]),
  withMonitoredResourceMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          monitored_resource+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPeriod':: d.fn(help='`google.string.withPeriod` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the period field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `period` field.\n', args=[]),
  withPeriod(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          period: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withResourceGroup':: d.fn(help='`google.list[obj].withResourceGroup` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resource_group field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withResourceGroupMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resource_group` field.\n', args=[]),
  withResourceGroup(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          resource_group: value,
        },
      },
    },
  },
  '#withResourceGroupMixin':: d.fn(help='`google.list[obj].withResourceGroupMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resource_group field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withResourceGroup](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resource_group` field.\n', args=[]),
  withResourceGroupMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          resource_group+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSelectedRegions':: d.fn(help='`google.list.withSelectedRegions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the selected_regions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `selected_regions` field.\n', args=[]),
  withSelectedRegions(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          selected_regions: value,
        },
      },
    },
  },
  '#withSyntheticMonitor':: d.fn(help='`google.list[obj].withSyntheticMonitor` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the synthetic_monitor field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSyntheticMonitorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `synthetic_monitor` field.\n', args=[]),
  withSyntheticMonitor(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          synthetic_monitor: value,
        },
      },
    },
  },
  '#withSyntheticMonitorMixin':: d.fn(help='`google.list[obj].withSyntheticMonitorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the synthetic_monitor field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSyntheticMonitor](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `synthetic_monitor` field.\n', args=[]),
  withSyntheticMonitorMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          synthetic_monitor+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTcpCheck':: d.fn(help='`google.list[obj].withTcpCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the tcp_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTcpCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `tcp_check` field.\n', args=[]),
  withTcpCheck(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          tcp_check: value,
        },
      },
    },
  },
  '#withTcpCheckMixin':: d.fn(help='`google.list[obj].withTcpCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the tcp_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTcpCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `tcp_check` field.\n', args=[]),
  withTcpCheckMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          tcp_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeout':: d.fn(help='`google.string.withTimeout` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the timeout field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `timeout` field.\n', args=[]),
  withTimeout(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserLabels':: d.fn(help='`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the user_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `user_labels` field.\n', args=[]),
  withUserLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
