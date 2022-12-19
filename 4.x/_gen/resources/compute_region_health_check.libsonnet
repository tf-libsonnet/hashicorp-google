local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_region_health_check', url='', help='`compute_region_health_check` represents the `google_compute_region_health_check` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  grpc_health_check:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.grpc_health_check.new` constructs a new object with attributes and blocks configured for the `grpc_health_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `grpc_service_name` (`string`): The gRPC service name for the health check.\nThe value of grpcServiceName has the following meanings by convention:\n\n* Empty serviceName means the overall status of all services at the backend.\n* Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.\n\nThe grpcServiceName can only be ASCII. When `null`, the `grpc_service_name` field will be omitted from the resulting object.\n  - `port` (`number`): The port number for the health check request.\nMust be specified if portName and portSpecification are not set\nor if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535. When `null`, the `port` field will be omitted from the resulting object.\n  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and\nport_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.\n  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the\nfollowing values:\n\n  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.\n\n  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.\n\n  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each\n  network endpoint is used for health checking. For other backends, the\n  port or named port specified in the Backend Service is used for health\n  checking.\n\nIf not specified, gRPC health check follows behavior specified in &#39;port&#39; and\n&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `grpc_health_check` sub block.\n', args=[]),
    new(
      grpc_service_name=null,
      port=null,
      port_name=null,
      port_specification=null
    ):: std.prune(a={
      grpc_service_name: grpc_service_name,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
    }),
  },
  http2_health_check:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.http2_health_check.new` constructs a new object with attributes and blocks configured for the `http2_health_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host` (`string`): The value of the host header in the HTTP2 health check request.\nIf left empty (default value), the public IP on behalf of which this health\ncheck is performed will be used. When `null`, the `host` field will be omitted from the resulting object.\n  - `port` (`number`): The TCP port number for the HTTP2 health check request.\nThe default value is 443. When `null`, the `port` field will be omitted from the resulting object.\n  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and\nport_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.\n  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the\nfollowing values:\n\n  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.\n\n  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.\n\n  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each\n  network endpoint is used for health checking. For other backends, the\n  port or named port specified in the Backend Service is used for health\n  checking.\n\nIf not specified, HTTP2 health check follows behavior specified in &#39;port&#39; and\n&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the\nbackend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `request_path` (`string`): The request path of the HTTP2 health check request.\nThe default value is /. When `null`, the `request_path` field will be omitted from the resulting object.\n  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty\n(the default value), any response will indicate health. The response data\ncan only be ASCII. When `null`, the `response` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http2_health_check` sub block.\n', args=[]),
    new(
      host=null,
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request_path=null,
      response=null
    ):: std.prune(a={
      host: host,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request_path: request_path,
      response: response,
    }),
  },
  http_health_check:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.http_health_check.new` constructs a new object with attributes and blocks configured for the `http_health_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host` (`string`): The value of the host header in the HTTP health check request.\nIf left empty (default value), the public IP on behalf of which this health\ncheck is performed will be used. When `null`, the `host` field will be omitted from the resulting object.\n  - `port` (`number`): The TCP port number for the HTTP health check request.\nThe default value is 80. When `null`, the `port` field will be omitted from the resulting object.\n  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and\nport_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.\n  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the\nfollowing values:\n\n  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.\n\n  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.\n\n  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each\n  network endpoint is used for health checking. For other backends, the\n  port or named port specified in the Backend Service is used for health\n  checking.\n\nIf not specified, HTTP health check follows behavior specified in &#39;port&#39; and\n&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the\nbackend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `request_path` (`string`): The request path of the HTTP health check request.\nThe default value is /. When `null`, the `request_path` field will be omitted from the resulting object.\n  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty\n(the default value), any response will indicate health. The response data\ncan only be ASCII. When `null`, the `response` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http_health_check` sub block.\n', args=[]),
    new(
      host=null,
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request_path=null,
      response=null
    ):: std.prune(a={
      host: host,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request_path: request_path,
      response: response,
    }),
  },
  https_health_check:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.https_health_check.new` constructs a new object with attributes and blocks configured for the `https_health_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host` (`string`): The value of the host header in the HTTPS health check request.\nIf left empty (default value), the public IP on behalf of which this health\ncheck is performed will be used. When `null`, the `host` field will be omitted from the resulting object.\n  - `port` (`number`): The TCP port number for the HTTPS health check request.\nThe default value is 443. When `null`, the `port` field will be omitted from the resulting object.\n  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and\nport_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.\n  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the\nfollowing values:\n\n  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.\n\n  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.\n\n  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each\n  network endpoint is used for health checking. For other backends, the\n  port or named port specified in the Backend Service is used for health\n  checking.\n\nIf not specified, HTTPS health check follows behavior specified in &#39;port&#39; and\n&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the\nbackend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `request_path` (`string`): The request path of the HTTPS health check request.\nThe default value is /. When `null`, the `request_path` field will be omitted from the resulting object.\n  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty\n(the default value), any response will indicate health. The response data\ncan only be ASCII. When `null`, the `response` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `https_health_check` sub block.\n', args=[]),
    new(
      host=null,
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request_path=null,
      response=null
    ):: std.prune(a={
      host: host,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request_path: request_path,
      response: response,
    }),
  },
  log_config:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable` (`bool`): Indicates whether or not to export logs. This is false by default,\nwhich means no health check logging will be done. When `null`, the `enable` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      enable=null
    ):: std.prune(a={
      enable: enable,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_region_health_check.new` injects a new `google_compute_region_health_check` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_region_health_check.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_region_health_check` using the reference:\n\n    $._ref.google_compute_region_health_check.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_region_health_check.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `check_interval_sec` (`number`): How often (in seconds) to send a health check. The default value is 5\nseconds. When `null`, the `check_interval_sec` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `healthy_threshold` (`number`): A so-far unhealthy instance will be marked healthy after this many\nconsecutive successes. The default value is 2. When `null`, the `healthy_threshold` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created health check should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.\nThe default value is 5 seconds.  It is invalid for timeoutSec to have\ngreater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.\n  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many\nconsecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.\n  - `grpc_health_check` (`list[obj]`): A nested object resource When `null`, the `grpc_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.grpc_health_check.new](#fn-computeregionhealthcheckgrpchealthchecknew) constructor.\n  - `http2_health_check` (`list[obj]`): A nested object resource When `null`, the `http2_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.http2_health_check.new](#fn-computeregionhealthcheckhttp2healthchecknew) constructor.\n  - `http_health_check` (`list[obj]`): A nested object resource When `null`, the `http_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.http_health_check.new](#fn-computeregionhealthcheckhttphealthchecknew) constructor.\n  - `https_health_check` (`list[obj]`): A nested object resource When `null`, the `https_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.https_health_check.new](#fn-computeregionhealthcheckhttpshealthchecknew) constructor.\n  - `log_config` (`list[obj]`): Configure logging on this health check. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.log_config.new](#fn-computeregionhealthchecklogconfignew) constructor.\n  - `ssl_health_check` (`list[obj]`): A nested object resource When `null`, the `ssl_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.ssl_health_check.new](#fn-computeregionhealthchecksslhealthchecknew) constructor.\n  - `tcp_health_check` (`list[obj]`): A nested object resource When `null`, the `tcp_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.tcp_health_check.new](#fn-computeregionhealthchecktcphealthchecknew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.timeouts.new](#fn-computeregionhealthchecktimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    check_interval_sec=null,
    description=null,
    grpc_health_check=null,
    healthy_threshold=null,
    http2_health_check=null,
    http_health_check=null,
    https_health_check=null,
    log_config=null,
    project=null,
    region=null,
    ssl_health_check=null,
    tcp_health_check=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_health_check',
    label=resourceLabel,
    attrs=self.newAttrs(
      check_interval_sec=check_interval_sec,
      description=description,
      grpc_health_check=grpc_health_check,
      healthy_threshold=healthy_threshold,
      http2_health_check=http2_health_check,
      http_health_check=http_health_check,
      https_health_check=https_health_check,
      log_config=log_config,
      name=name,
      project=project,
      region=region,
      ssl_health_check=ssl_health_check,
      tcp_health_check=tcp_health_check,
      timeout_sec=timeout_sec,
      timeouts=timeouts,
      unhealthy_threshold=unhealthy_threshold
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_region_health_check.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_health_check`\nTerraform resource.\n\nUnlike [google.compute_region_health_check.new](#fn-computeregionhealthchecknew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `check_interval_sec` (`number`): How often (in seconds) to send a health check. The default value is 5\nseconds. When `null`, the `check_interval_sec` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `healthy_threshold` (`number`): A so-far unhealthy instance will be marked healthy after this many\nconsecutive successes. The default value is 2. When `null`, the `healthy_threshold` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created health check should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.\nThe default value is 5 seconds.  It is invalid for timeoutSec to have\ngreater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.\n  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many\nconsecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.\n  - `grpc_health_check` (`list[obj]`): A nested object resource When `null`, the `grpc_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.grpc_health_check.new](#fn-computeregionhealthcheckgrpchealthchecknew) constructor.\n  - `http2_health_check` (`list[obj]`): A nested object resource When `null`, the `http2_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.http2_health_check.new](#fn-computeregionhealthcheckhttp2healthchecknew) constructor.\n  - `http_health_check` (`list[obj]`): A nested object resource When `null`, the `http_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.http_health_check.new](#fn-computeregionhealthcheckhttphealthchecknew) constructor.\n  - `https_health_check` (`list[obj]`): A nested object resource When `null`, the `https_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.https_health_check.new](#fn-computeregionhealthcheckhttpshealthchecknew) constructor.\n  - `log_config` (`list[obj]`): Configure logging on this health check. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.log_config.new](#fn-computeregionhealthchecklogconfignew) constructor.\n  - `ssl_health_check` (`list[obj]`): A nested object resource When `null`, the `ssl_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.ssl_health_check.new](#fn-computeregionhealthchecksslhealthchecknew) constructor.\n  - `tcp_health_check` (`list[obj]`): A nested object resource When `null`, the `tcp_health_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.tcp_health_check.new](#fn-computeregionhealthchecktcphealthchecknew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_health_check.timeouts.new](#fn-computeregionhealthchecktimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_health_check` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    check_interval_sec=null,
    description=null,
    grpc_health_check=null,
    healthy_threshold=null,
    http2_health_check=null,
    http_health_check=null,
    https_health_check=null,
    log_config=null,
    project=null,
    region=null,
    ssl_health_check=null,
    tcp_health_check=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null
  ):: std.prune(a={
    check_interval_sec: check_interval_sec,
    description: description,
    grpc_health_check: grpc_health_check,
    healthy_threshold: healthy_threshold,
    http2_health_check: http2_health_check,
    http_health_check: http_health_check,
    https_health_check: https_health_check,
    log_config: log_config,
    name: name,
    project: project,
    region: region,
    ssl_health_check: ssl_health_check,
    tcp_health_check: tcp_health_check,
    timeout_sec: timeout_sec,
    timeouts: timeouts,
    unhealthy_threshold: unhealthy_threshold,
  }),
  ssl_health_check:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.ssl_health_check.new` constructs a new object with attributes and blocks configured for the `ssl_health_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): The TCP port number for the SSL health check request.\nThe default value is 443. When `null`, the `port` field will be omitted from the resulting object.\n  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and\nport_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.\n  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the\nfollowing values:\n\n  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.\n\n  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.\n\n  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each\n  network endpoint is used for health checking. For other backends, the\n  port or named port specified in the Backend Service is used for health\n  checking.\n\nIf not specified, SSL health check follows behavior specified in &#39;port&#39; and\n&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the\nbackend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `request` (`string`): The application data to send once the SSL connection has been\nestablished (default value is empty). If both request and response are\nempty, the connection establishment alone will indicate health. The request\ndata can only be ASCII. When `null`, the `request` field will be omitted from the resulting object.\n  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty\n(the default value), any response will indicate health. The response data\ncan only be ASCII. When `null`, the `response` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ssl_health_check` sub block.\n', args=[]),
    new(
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request=null,
      response=null
    ):: std.prune(a={
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request: request,
      response: response,
    }),
  },
  tcp_health_check:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.tcp_health_check.new` constructs a new object with attributes and blocks configured for the `tcp_health_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): The TCP port number for the TCP health check request.\nThe default value is 80. When `null`, the `port` field will be omitted from the resulting object.\n  - `port_name` (`string`): Port name as defined in InstanceGroup#NamedPort#name. If both port and\nport_name are defined, port takes precedence. When `null`, the `port_name` field will be omitted from the resulting object.\n  - `port_specification` (`string`): Specifies how port is selected for health checking, can be one of the\nfollowing values:\n\n  * &#39;USE_FIXED_PORT&#39;: The port number in &#39;port&#39; is used for health checking.\n\n  * &#39;USE_NAMED_PORT&#39;: The &#39;portName&#39; is used for health checking.\n\n  * &#39;USE_SERVING_PORT&#39;: For NetworkEndpointGroup, the port specified for each\n  network endpoint is used for health checking. For other backends, the\n  port or named port specified in the Backend Service is used for health\n  checking.\n\nIf not specified, TCP health check follows behavior specified in &#39;port&#39; and\n&#39;portName&#39; fields. Possible values: [&#34;USE_FIXED_PORT&#34;, &#34;USE_NAMED_PORT&#34;, &#34;USE_SERVING_PORT&#34;] When `null`, the `port_specification` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to the\nbackend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `request` (`string`): The application data to send once the TCP connection has been\nestablished (default value is empty). If both request and response are\nempty, the connection establishment alone will indicate health. The request\ndata can only be ASCII. When `null`, the `request` field will be omitted from the resulting object.\n  - `response` (`string`): The bytes to match against the beginning of the response data. If left empty\n(the default value), any response will indicate health. The response data\ncan only be ASCII. When `null`, the `response` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `tcp_health_check` sub block.\n', args=[]),
    new(
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request=null,
      response=null
    ):: std.prune(a={
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request: request,
      response: response,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_region_health_check.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCheckIntervalSec':: d.fn(help='`google.number.withCheckIntervalSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the check_interval_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `check_interval_sec` field.\n', args=[]),
  withCheckIntervalSec(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          check_interval_sec: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGrpcHealthCheck':: d.fn(help='`google.list[obj].withGrpcHealthCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the grpc_health_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGrpcHealthCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `grpc_health_check` field.\n', args=[]),
  withGrpcHealthCheck(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          grpc_health_check: value,
        },
      },
    },
  },
  '#withGrpcHealthCheckMixin':: d.fn(help='`google.list[obj].withGrpcHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the grpc_health_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGrpcHealthCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `grpc_health_check` field.\n', args=[]),
  withGrpcHealthCheckMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          grpc_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHealthyThreshold':: d.fn(help='`google.number.withHealthyThreshold` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the healthy_threshold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `healthy_threshold` field.\n', args=[]),
  withHealthyThreshold(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          healthy_threshold: value,
        },
      },
    },
  },
  '#withHttp2HealthCheck':: d.fn(help='`google.list[obj].withHttp2HealthCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the http2_health_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHttp2HealthCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `http2_health_check` field.\n', args=[]),
  withHttp2HealthCheck(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          http2_health_check: value,
        },
      },
    },
  },
  '#withHttp2HealthCheckMixin':: d.fn(help='`google.list[obj].withHttp2HealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the http2_health_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHttp2HealthCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `http2_health_check` field.\n', args=[]),
  withHttp2HealthCheckMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          http2_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHttpHealthCheck':: d.fn(help='`google.list[obj].withHttpHealthCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the http_health_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHttpHealthCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `http_health_check` field.\n', args=[]),
  withHttpHealthCheck(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          http_health_check: value,
        },
      },
    },
  },
  '#withHttpHealthCheckMixin':: d.fn(help='`google.list[obj].withHttpHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the http_health_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHttpHealthCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `http_health_check` field.\n', args=[]),
  withHttpHealthCheckMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          http_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHttpsHealthCheck':: d.fn(help='`google.list[obj].withHttpsHealthCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the https_health_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHttpsHealthCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `https_health_check` field.\n', args=[]),
  withHttpsHealthCheck(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          https_health_check: value,
        },
      },
    },
  },
  '#withHttpsHealthCheckMixin':: d.fn(help='`google.list[obj].withHttpsHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the https_health_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHttpsHealthCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `https_health_check` field.\n', args=[]),
  withHttpsHealthCheckMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          https_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSslHealthCheck':: d.fn(help='`google.list[obj].withSslHealthCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ssl_health_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSslHealthCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ssl_health_check` field.\n', args=[]),
  withSslHealthCheck(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          ssl_health_check: value,
        },
      },
    },
  },
  '#withSslHealthCheckMixin':: d.fn(help='`google.list[obj].withSslHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ssl_health_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSslHealthCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ssl_health_check` field.\n', args=[]),
  withSslHealthCheckMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          ssl_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTcpHealthCheck':: d.fn(help='`google.list[obj].withTcpHealthCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the tcp_health_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTcpHealthCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `tcp_health_check` field.\n', args=[]),
  withTcpHealthCheck(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          tcp_health_check: value,
        },
      },
    },
  },
  '#withTcpHealthCheckMixin':: d.fn(help='`google.list[obj].withTcpHealthCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the tcp_health_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTcpHealthCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `tcp_health_check` field.\n', args=[]),
  withTcpHealthCheckMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          tcp_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeoutSec':: d.fn(help='`google.number.withTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `timeout_sec` field.\n', args=[]),
  withTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          timeout_sec: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUnhealthyThreshold':: d.fn(help='`google.number.withUnhealthyThreshold` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the unhealthy_threshold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `unhealthy_threshold` field.\n', args=[]),
  withUnhealthyThreshold(resourceLabel, value): {
    resource+: {
      google_compute_region_health_check+: {
        [resourceLabel]+: {
          unhealthy_threshold: value,
        },
      },
    },
  },
}
