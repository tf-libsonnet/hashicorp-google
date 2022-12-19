local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_flexible_app_version', url='', help='`app_engine_flexible_app_version` represents the `google_app_engine_flexible_app_version` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  api_config:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.api_config.new` constructs a new object with attributes and blocks configured for the `api_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_fail_action` (`string`): Action to take when users access resources that require authentication. Default value: &#34;AUTH_FAIL_ACTION_REDIRECT&#34; Possible values: [&#34;AUTH_FAIL_ACTION_REDIRECT&#34;, &#34;AUTH_FAIL_ACTION_UNAUTHORIZED&#34;] When `null`, the `auth_fail_action` field will be omitted from the resulting object.\n  - `login` (`string`): Level of login required to access this resource. Default value: &#34;LOGIN_OPTIONAL&#34; Possible values: [&#34;LOGIN_OPTIONAL&#34;, &#34;LOGIN_ADMIN&#34;, &#34;LOGIN_REQUIRED&#34;] When `null`, the `login` field will be omitted from the resulting object.\n  - `script` (`string`): Path to the script from the application root directory.\n  - `security_level` (`string`): Security (HTTPS) enforcement for this URL. Possible values: [&#34;SECURE_DEFAULT&#34;, &#34;SECURE_NEVER&#34;, &#34;SECURE_OPTIONAL&#34;, &#34;SECURE_ALWAYS&#34;] When `null`, the `security_level` field will be omitted from the resulting object.\n  - `url` (`string`): URL to serve the endpoint at. When `null`, the `url` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `api_config` sub block.\n', args=[]),
    new(
      script,
      auth_fail_action=null,
      login=null,
      security_level=null,
      url=null
    ):: std.prune(a={
      auth_fail_action: auth_fail_action,
      login: login,
      script: script,
      security_level: security_level,
      url: url,
    }),
  },
  automatic_scaling:: {
    cpu_utilization:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.automatic_scaling.cpu_utilization.new` constructs a new object with attributes and blocks configured for the `cpu_utilization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aggregation_window_length` (`string`): Period of time over which CPU utilization is calculated. When `null`, the `aggregation_window_length` field will be omitted from the resulting object.\n  - `target_utilization` (`number`): Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.\n\n**Returns**:\n  - An attribute object that represents the `cpu_utilization` sub block.\n', args=[]),
      new(
        target_utilization,
        aggregation_window_length=null
      ):: std.prune(a={
        aggregation_window_length: aggregation_window_length,
        target_utilization: target_utilization,
      }),
    },
    disk_utilization:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.automatic_scaling.disk_utilization.new` constructs a new object with attributes and blocks configured for the `disk_utilization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_read_bytes_per_second` (`number`): Target bytes read per second. When `null`, the `target_read_bytes_per_second` field will be omitted from the resulting object.\n  - `target_read_ops_per_second` (`number`): Target ops read per seconds. When `null`, the `target_read_ops_per_second` field will be omitted from the resulting object.\n  - `target_write_bytes_per_second` (`number`): Target bytes written per second. When `null`, the `target_write_bytes_per_second` field will be omitted from the resulting object.\n  - `target_write_ops_per_second` (`number`): Target ops written per second. When `null`, the `target_write_ops_per_second` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_utilization` sub block.\n', args=[]),
      new(
        target_read_bytes_per_second=null,
        target_read_ops_per_second=null,
        target_write_bytes_per_second=null,
        target_write_ops_per_second=null
      ):: std.prune(a={
        target_read_bytes_per_second: target_read_bytes_per_second,
        target_read_ops_per_second: target_read_ops_per_second,
        target_write_bytes_per_second: target_write_bytes_per_second,
        target_write_ops_per_second: target_write_ops_per_second,
      }),
    },
    network_utilization:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.automatic_scaling.network_utilization.new` constructs a new object with attributes and blocks configured for the `network_utilization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_received_bytes_per_second` (`number`): Target bytes received per second. When `null`, the `target_received_bytes_per_second` field will be omitted from the resulting object.\n  - `target_received_packets_per_second` (`number`): Target packets received per second. When `null`, the `target_received_packets_per_second` field will be omitted from the resulting object.\n  - `target_sent_bytes_per_second` (`number`): Target bytes sent per second. When `null`, the `target_sent_bytes_per_second` field will be omitted from the resulting object.\n  - `target_sent_packets_per_second` (`number`): Target packets sent per second. When `null`, the `target_sent_packets_per_second` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_utilization` sub block.\n', args=[]),
      new(
        target_received_bytes_per_second=null,
        target_received_packets_per_second=null,
        target_sent_bytes_per_second=null,
        target_sent_packets_per_second=null
      ):: std.prune(a={
        target_received_bytes_per_second: target_received_bytes_per_second,
        target_received_packets_per_second: target_received_packets_per_second,
        target_sent_bytes_per_second: target_sent_bytes_per_second,
        target_sent_packets_per_second: target_sent_packets_per_second,
      }),
    },
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.automatic_scaling.new` constructs a new object with attributes and blocks configured for the `automatic_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cool_down_period` (`string`): The time period that the Autoscaler should wait before it starts collecting information from a new instance.\nThis prevents the autoscaler from collecting information when the instance is initializing,\nduring which the collected usage would not be reliable. Default: 120s When `null`, the `cool_down_period` field will be omitted from the resulting object.\n  - `max_concurrent_requests` (`number`): Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.\n\nDefaults to a runtime-specific value. When `null`, the `max_concurrent_requests` field will be omitted from the resulting object.\n  - `max_idle_instances` (`number`): Maximum number of idle instances that should be maintained for this version. When `null`, the `max_idle_instances` field will be omitted from the resulting object.\n  - `max_pending_latency` (`string`): Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it. When `null`, the `max_pending_latency` field will be omitted from the resulting object.\n  - `max_total_instances` (`number`): Maximum number of instances that should be started to handle requests for this version. Default: 20 When `null`, the `max_total_instances` field will be omitted from the resulting object.\n  - `min_idle_instances` (`number`): Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. When `null`, the `min_idle_instances` field will be omitted from the resulting object.\n  - `min_pending_latency` (`string`): Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it. When `null`, the `min_pending_latency` field will be omitted from the resulting object.\n  - `min_total_instances` (`number`): Minimum number of running instances that should be maintained for this version. Default: 2 When `null`, the `min_total_instances` field will be omitted from the resulting object.\n  - `cpu_utilization` (`list[obj]`): Target scaling by CPU usage. When `null`, the `cpu_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.cpu_utilization.new](#fn-cpu_utilizationnew) constructor.\n  - `disk_utilization` (`list[obj]`): Target scaling by disk usage. When `null`, the `disk_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.disk_utilization.new](#fn-disk_utilizationnew) constructor.\n  - `network_utilization` (`list[obj]`): Target scaling by network usage. When `null`, the `network_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.network_utilization.new](#fn-network_utilizationnew) constructor.\n  - `request_utilization` (`list[obj]`): Target scaling by request utilization. When `null`, the `request_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.request_utilization.new](#fn-request_utilizationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `automatic_scaling` sub block.\n', args=[]),
    new(
      cool_down_period=null,
      cpu_utilization=null,
      disk_utilization=null,
      max_concurrent_requests=null,
      max_idle_instances=null,
      max_pending_latency=null,
      max_total_instances=null,
      min_idle_instances=null,
      min_pending_latency=null,
      min_total_instances=null,
      network_utilization=null,
      request_utilization=null
    ):: std.prune(a={
      cool_down_period: cool_down_period,
      cpu_utilization: cpu_utilization,
      disk_utilization: disk_utilization,
      max_concurrent_requests: max_concurrent_requests,
      max_idle_instances: max_idle_instances,
      max_pending_latency: max_pending_latency,
      max_total_instances: max_total_instances,
      min_idle_instances: min_idle_instances,
      min_pending_latency: min_pending_latency,
      min_total_instances: min_total_instances,
      network_utilization: network_utilization,
      request_utilization: request_utilization,
    }),
    request_utilization:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.automatic_scaling.request_utilization.new` constructs a new object with attributes and blocks configured for the `request_utilization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_concurrent_requests` (`number`): Target number of concurrent requests. When `null`, the `target_concurrent_requests` field will be omitted from the resulting object.\n  - `target_request_count_per_second` (`string`): Target requests per second. When `null`, the `target_request_count_per_second` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `request_utilization` sub block.\n', args=[]),
      new(
        target_concurrent_requests=null,
        target_request_count_per_second=null
      ):: std.prune(a={
        target_concurrent_requests: target_concurrent_requests,
        target_request_count_per_second: target_request_count_per_second,
      }),
    },
  },
  deployment:: {
    cloud_build_options:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.deployment.cloud_build_options.new` constructs a new object with attributes and blocks configured for the `cloud_build_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `app_yaml_path` (`string`): Path to the yaml file used in deployment, used to determine runtime configuration details.\n  - `cloud_build_timeout` (`string`): The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `cloud_build_timeout` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cloud_build_options` sub block.\n', args=[]),
      new(
        app_yaml_path,
        cloud_build_timeout=null
      ):: std.prune(a={
        app_yaml_path: app_yaml_path,
        cloud_build_timeout: cloud_build_timeout,
      }),
    },
    container:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.deployment.container.new` constructs a new object with attributes and blocks configured for the `container`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image` (`string`): URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest.\nExamples: &#34;gcr.io/my-project/image:tag&#34; or &#34;gcr.io/my-project/image@digest&#34;\n\n**Returns**:\n  - An attribute object that represents the `container` sub block.\n', args=[]),
      new(
        image
      ):: std.prune(a={
        image: image,
      }),
    },
    files:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.deployment.files.new` constructs a new object with attributes and blocks configured for the `files`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): \n  - `sha1_sum` (`string`): SHA1 checksum of the file When `null`, the `sha1_sum` field will be omitted from the resulting object.\n  - `source_url` (`string`): Source URL\n\n**Returns**:\n  - An attribute object that represents the `files` sub block.\n', args=[]),
      new(
        name,
        source_url,
        sha1_sum=null
      ):: std.prune(a={
        name: name,
        sha1_sum: sha1_sum,
        source_url: source_url,
      }),
    },
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.deployment.new` constructs a new object with attributes and blocks configured for the `deployment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_build_options` (`list[obj]`): Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly. When `null`, the `cloud_build_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.cloud_build_options.new](#fn-cloud_build_optionsnew) constructor.\n  - `container` (`list[obj]`): The Docker image for the container that runs the version. When `null`, the `container` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.container.new](#fn-containernew) constructor.\n  - `files` (`list[obj]`): Manifest of the files stored in Google Cloud Storage that are included as part of this version.\nAll files must be readable using the credentials supplied with this call. When `null`, the `files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.files.new](#fn-filesnew) constructor.\n  - `zip` (`list[obj]`): Zip File When `null`, the `zip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.zip.new](#fn-zipnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deployment` sub block.\n', args=[]),
    new(
      cloud_build_options=null,
      container=null,
      files=null,
      zip=null
    ):: std.prune(a={
      cloud_build_options: cloud_build_options,
      container: container,
      files: files,
      zip: zip,
    }),
    zip:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.deployment.zip.new` constructs a new object with attributes and blocks configured for the `zip`\nTerraform sub block.\n\n\n\n**Args**:\n  - `files_count` (`number`): files count When `null`, the `files_count` field will be omitted from the resulting object.\n  - `source_url` (`string`): Source URL\n\n**Returns**:\n  - An attribute object that represents the `zip` sub block.\n', args=[]),
      new(
        source_url,
        files_count=null
      ):: std.prune(a={
        files_count: files_count,
        source_url: source_url,
      }),
    },
  },
  endpoints_api_service:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.endpoints_api_service.new` constructs a new object with attributes and blocks configured for the `endpoints_api_service`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config_id` (`string`): Endpoints service configuration ID as specified by the Service Management API. For example &#34;2016-09-19r1&#34;.\n\nBy default, the rollout strategy for Endpoints is &#34;FIXED&#34;. This means that Endpoints starts up with a particular configuration ID.\nWhen a new configuration is rolled out, Endpoints must be given the new configuration ID. The configId field is used to give the configuration ID\nand is required in this case.\n\nEndpoints also has a rollout strategy called &#34;MANAGED&#34;. When using this, Endpoints fetches the latest configuration and does not need\nthe configuration ID. In this case, configId must be omitted. When `null`, the `config_id` field will be omitted from the resulting object.\n  - `disable_trace_sampling` (`bool`): Enable or disable trace sampling. By default, this is set to false for enabled. When `null`, the `disable_trace_sampling` field will be omitted from the resulting object.\n  - `name` (`string`): Endpoints service name which is the name of the &#34;service&#34; resource in the Service Management API.\nFor example &#34;myapi.endpoints.myproject.cloud.goog&#34;\n  - `rollout_strategy` (`string`): Endpoints rollout strategy. If FIXED, configId must be specified. If MANAGED, configId must be omitted. Default value: &#34;FIXED&#34; Possible values: [&#34;FIXED&#34;, &#34;MANAGED&#34;] When `null`, the `rollout_strategy` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `endpoints_api_service` sub block.\n', args=[]),
    new(
      name,
      config_id=null,
      disable_trace_sampling=null,
      rollout_strategy=null
    ):: std.prune(a={
      config_id: config_id,
      disable_trace_sampling: disable_trace_sampling,
      name: name,
      rollout_strategy: rollout_strategy,
    }),
  },
  entrypoint:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.entrypoint.new` constructs a new object with attributes and blocks configured for the `entrypoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `shell` (`string`): The format should be a shell command that can be fed to bash -c.\n\n**Returns**:\n  - An attribute object that represents the `entrypoint` sub block.\n', args=[]),
    new(
      shell
    ):: std.prune(a={
      shell: shell,
    }),
  },
  handlers:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.handlers.new` constructs a new object with attributes and blocks configured for the `handlers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_fail_action` (`string`): Actions to take when the user is not logged in. Possible values: [&#34;AUTH_FAIL_ACTION_REDIRECT&#34;, &#34;AUTH_FAIL_ACTION_UNAUTHORIZED&#34;] When `null`, the `auth_fail_action` field will be omitted from the resulting object.\n  - `login` (`string`): Methods to restrict access to a URL based on login status. Possible values: [&#34;LOGIN_OPTIONAL&#34;, &#34;LOGIN_ADMIN&#34;, &#34;LOGIN_REQUIRED&#34;] When `null`, the `login` field will be omitted from the resulting object.\n  - `redirect_http_response_code` (`string`): 30x code to use when performing redirects for the secure field. Possible values: [&#34;REDIRECT_HTTP_RESPONSE_CODE_301&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_302&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_303&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_307&#34;] When `null`, the `redirect_http_response_code` field will be omitted from the resulting object.\n  - `security_level` (`string`): Security (HTTPS) enforcement for this URL. Possible values: [&#34;SECURE_DEFAULT&#34;, &#34;SECURE_NEVER&#34;, &#34;SECURE_OPTIONAL&#34;, &#34;SECURE_ALWAYS&#34;] When `null`, the `security_level` field will be omitted from the resulting object.\n  - `url_regex` (`string`): URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.\nAll URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path. When `null`, the `url_regex` field will be omitted from the resulting object.\n  - `script` (`list[obj]`): Executes a script to handle the requests that match this URL pattern.\nOnly the auto value is supported for Node.js in the App Engine standard environment, for example &#34;script:&#34; &#34;auto&#34;. When `null`, the `script` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.script.new](#fn-scriptnew) constructor.\n  - `static_files` (`list[obj]`): Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files.\nStatic file handlers describe which files in the application directory are static files, and which URLs serve them. When `null`, the `static_files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.static_files.new](#fn-static_filesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `handlers` sub block.\n', args=[]),
    new(
      auth_fail_action=null,
      login=null,
      redirect_http_response_code=null,
      script=null,
      security_level=null,
      static_files=null,
      url_regex=null
    ):: std.prune(a={
      auth_fail_action: auth_fail_action,
      login: login,
      redirect_http_response_code: redirect_http_response_code,
      script: script,
      security_level: security_level,
      static_files: static_files,
      url_regex: url_regex,
    }),
    script:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.handlers.script.new` constructs a new object with attributes and blocks configured for the `script`\nTerraform sub block.\n\n\n\n**Args**:\n  - `script_path` (`string`): Path to the script from the application root directory.\n\n**Returns**:\n  - An attribute object that represents the `script` sub block.\n', args=[]),
      new(
        script_path
      ):: std.prune(a={
        script_path: script_path,
      }),
    },
    static_files:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.handlers.static_files.new` constructs a new object with attributes and blocks configured for the `static_files`\nTerraform sub block.\n\n\n\n**Args**:\n  - `application_readable` (`bool`): Whether files should also be uploaded as code data. By default, files declared in static file handlers are\nuploaded as static data and are only served to end users; they cannot be read by the application. If enabled,\nuploads are charged against both your code and static data storage resource quotas. When `null`, the `application_readable` field will be omitted from the resulting object.\n  - `expiration` (`string`): Time a static file served by this handler should be cached by web proxies and browsers.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example &#34;3.5s&#34;.\nDefault is &#39;0s&#39; When `null`, the `expiration` field will be omitted from the resulting object.\n  - `http_headers` (`obj`): HTTP headers to use for all responses from these URLs.\nAn object containing a list of &#34;key:value&#34; value pairs.&#34;. When `null`, the `http_headers` field will be omitted from the resulting object.\n  - `mime_type` (`string`): MIME type used to serve all files served by this handler.\nDefaults to file-specific MIME types, which are derived from each file&#39;s filename extension. When `null`, the `mime_type` field will be omitted from the resulting object.\n  - `path` (`string`): Path to the static files matched by the URL pattern, from the application root directory.\nThe path can refer to text matched in groupings in the URL pattern. When `null`, the `path` field will be omitted from the resulting object.\n  - `require_matching_file` (`bool`): Whether this handler should match the request if the file referenced by the handler does not exist. When `null`, the `require_matching_file` field will be omitted from the resulting object.\n  - `upload_path_regex` (`string`): Regular expression that matches the file paths for all files that should be referenced by this handler. When `null`, the `upload_path_regex` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `static_files` sub block.\n', args=[]),
      new(
        application_readable=null,
        expiration=null,
        http_headers=null,
        mime_type=null,
        path=null,
        require_matching_file=null,
        upload_path_regex=null
      ):: std.prune(a={
        application_readable: application_readable,
        expiration: expiration,
        http_headers: http_headers,
        mime_type: mime_type,
        path: path,
        require_matching_file: require_matching_file,
        upload_path_regex: upload_path_regex,
      }),
    },
  },
  liveness_check:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.liveness_check.new` constructs a new object with attributes and blocks configured for the `liveness_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `check_interval` (`string`): Interval between health checks. When `null`, the `check_interval` field will be omitted from the resulting object.\n  - `failure_threshold` (`number`): Number of consecutive failed checks required before considering the VM unhealthy. Default: 4. When `null`, the `failure_threshold` field will be omitted from the resulting object.\n  - `host` (`string`): Host header to send when performing a HTTP Readiness check. Example: &#34;myapp.appspot.com&#34; When `null`, the `host` field will be omitted from the resulting object.\n  - `initial_delay` (`string`): The initial delay before starting to execute the checks. Default: &#34;300s&#34; When `null`, the `initial_delay` field will be omitted from the resulting object.\n  - `path` (`string`): The request path.\n  - `success_threshold` (`number`): Number of consecutive successful checks required before considering the VM healthy. Default: 2. When `null`, the `success_threshold` field will be omitted from the resulting object.\n  - `timeout` (`string`): Time before the check is considered failed. Default: &#34;4s&#34; When `null`, the `timeout` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `liveness_check` sub block.\n', args=[]),
    new(
      path,
      check_interval=null,
      failure_threshold=null,
      host=null,
      initial_delay=null,
      success_threshold=null,
      timeout=null
    ):: std.prune(a={
      check_interval: check_interval,
      failure_threshold: failure_threshold,
      host: host,
      initial_delay: initial_delay,
      path: path,
      success_threshold: success_threshold,
      timeout: timeout,
    }),
  },
  manual_scaling:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.manual_scaling.new` constructs a new object with attributes and blocks configured for the `manual_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instances` (`number`): Number of instances to assign to the service at the start.\n\n**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2\nModules API set_num_instances() you must use &#39;lifecycle.ignore_changes = [&#34;manual_scaling&#34;[0].instances]&#39; to prevent drift detection.\n\n**Returns**:\n  - An attribute object that represents the `manual_scaling` sub block.\n', args=[]),
    new(
      instances
    ):: std.prune(a={
      instances: instances,
    }),
  },
  network:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.network.new` constructs a new object with attributes and blocks configured for the `network`\nTerraform sub block.\n\n\n\n**Args**:\n  - `forwarded_ports` (`list`): List of ports, or port pairs, to forward from the virtual machine to the application container. When `null`, the `forwarded_ports` field will be omitted from the resulting object.\n  - `instance_tag` (`string`): Tag to apply to the instance during creation. When `null`, the `instance_tag` field will be omitted from the resulting object.\n  - `name` (`string`): Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.\n  - `session_affinity` (`bool`): Enable session affinity. When `null`, the `session_affinity` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.\n\nIf the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range.\nIf the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetworkName) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network.\nIf the network that the instance is being created in is a custom Subnet Mode Network, then the subnetworkName must be specified and the IP address is created from the IPCidrRange of the subnetwork.\nIf specified, the subnetwork must exist in the same region as the App Engine flexible environment application. When `null`, the `subnetwork` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network` sub block.\n', args=[]),
    new(
      name,
      forwarded_ports=null,
      instance_tag=null,
      session_affinity=null,
      subnetwork=null
    ):: std.prune(a={
      forwarded_ports: forwarded_ports,
      instance_tag: instance_tag,
      name: name,
      session_affinity: session_affinity,
      subnetwork: subnetwork,
    }),
  },
  '#new':: d.fn(help="\n`google.app_engine_flexible_app_version.new` injects a new `google_app_engine_flexible_app_version` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_flexible_app_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_flexible_app_version` using the reference:\n\n    $._ref.google_app_engine_flexible_app_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_flexible_app_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `beta_settings` (`obj`): Metadata settings that are supplied to this version to enable beta runtime features. When `null`, the `beta_settings` field will be omitted from the resulting object.\n  - `default_expiration` (`string`): Duration that static files should be cached by web proxies and browsers.\nOnly applicable if the corresponding StaticFilesHandler does not specify its own expiration time. When `null`, the `default_expiration` field will be omitted from the resulting object.\n  - `delete_service_on_destroy` (`bool`): If set to \u0026#39;true\u0026#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.\n  - `env_variables` (`obj`): Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config. When `null`, the `env_variables` field will be omitted from the resulting object.\n  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [\u0026#34;INBOUND_SERVICE_MAIL\u0026#34;, \u0026#34;INBOUND_SERVICE_MAIL_BOUNCE\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_ERROR\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_MESSAGE\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_SUBSCRIBE\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_PRESENCE\u0026#34;, \u0026#34;INBOUND_SERVICE_CHANNEL_PRESENCE\u0026#34;, \u0026#34;INBOUND_SERVICE_WARMUP\u0026#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.\n  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are\nAutomaticScaling: F1, F2, F4, F4_1G\nManualScaling: B1, B2, B4, B8, B4_1G\nDefaults to F1 for AutomaticScaling and B1 for ManualScaling. When `null`, the `instance_class` field will be omitted from the resulting object.\n  - `nobuild_files_regex` (`string`): Files that match this pattern will not be built into this version. Only applicable for Go runtimes. When `null`, the `nobuild_files_regex` field will be omitted from the resulting object.\n  - `noop_on_destroy` (`bool`): If set to \u0026#39;true\u0026#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `runtime` (`string`): Desired runtime. Example python27.\n  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.\nPlease see the app.yaml reference for valid values at \u0026#39;https://cloud.google.com/appengine/docs/standard/\u0026lt;language\u0026gt;/config/appref\u0026#39;\\\nSubstitute \u0026#39;\u0026lt;language\u0026gt;\u0026#39; with \u0026#39;python\u0026#39;, \u0026#39;java\u0026#39;, \u0026#39;php\u0026#39;, \u0026#39;ruby\u0026#39;, \u0026#39;go\u0026#39; or \u0026#39;nodejs\u0026#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.\n  - `runtime_channel` (`string`): The channel of the runtime to use. Only available for some runtimes. When `null`, the `runtime_channel` field will be omitted from the resulting object.\n  - `runtime_main_executable_path` (`string`): The path or name of the app\u0026#39;s main executable. When `null`, the `runtime_main_executable_path` field will be omitted from the resulting object.\n  - `service` (`string`): AppEngine service resource. Can contain numbers, letters, and hyphens.\n  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as\ndefault if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `serving_status` (`string`): Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: \u0026#34;SERVING\u0026#34; Possible values: [\u0026#34;SERVING\u0026#34;, \u0026#34;STOPPED\u0026#34;] When `null`, the `serving_status` field will be omitted from the resulting object.\n  - `version_id` (`string`): Relative name of the version within the service. For example, \u0026#39;v1\u0026#39;. Version names can contain only lowercase letters, numbers, or hyphens.\nReserved names,\u0026#34;default\u0026#34;, \u0026#34;latest\u0026#34;, and any name with the prefix \u0026#34;ah-\u0026#34;. When `null`, the `version_id` field will be omitted from the resulting object.\n  - `api_config` (`list[obj]`): Serving configuration for Google Cloud Endpoints. When `null`, the `api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.api_config.new](#fn-api_confignew) constructor.\n  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.new](#fn-automatic_scalingnew) constructor.\n  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.new](#fn-deploymentnew) constructor.\n  - `endpoints_api_service` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `endpoints_api_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.endpoints_api_service.new](#fn-endpoints_api_servicenew) constructor.\n  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.entrypoint.new](#fn-entrypointnew) constructor.\n  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.\nThe first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.new](#fn-handlersnew) constructor.\n  - `liveness_check` (`list[obj]`): Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. When `null`, the `liveness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.liveness_check.new](#fn-liveness_checknew) constructor.\n  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.manual_scaling.new](#fn-manual_scalingnew) constructor.\n  - `network` (`list[obj]`): Extra network settings When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.network.new](#fn-networknew) constructor.\n  - `readiness_check` (`list[obj]`): Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation. When `null`, the `readiness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.readiness_check.new](#fn-readiness_checknew) constructor.\n  - `resources` (`list[obj]`): Machine resources for a version. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.resources.new](#fn-resourcesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.vpc_access_connector.new](#fn-vpc_access_connectornew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    runtime,
    service,
    api_config=null,
    automatic_scaling=null,
    beta_settings=null,
    default_expiration=null,
    delete_service_on_destroy=null,
    deployment=null,
    endpoints_api_service=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    liveness_check=null,
    manual_scaling=null,
    network=null,
    nobuild_files_regex=null,
    noop_on_destroy=null,
    project=null,
    readiness_check=null,
    resources=null,
    runtime_api_version=null,
    runtime_channel=null,
    runtime_main_executable_path=null,
    service_account=null,
    serving_status=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_flexible_app_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_config=api_config,
      automatic_scaling=automatic_scaling,
      beta_settings=beta_settings,
      default_expiration=default_expiration,
      delete_service_on_destroy=delete_service_on_destroy,
      deployment=deployment,
      endpoints_api_service=endpoints_api_service,
      entrypoint=entrypoint,
      env_variables=env_variables,
      handlers=handlers,
      inbound_services=inbound_services,
      instance_class=instance_class,
      liveness_check=liveness_check,
      manual_scaling=manual_scaling,
      network=network,
      nobuild_files_regex=nobuild_files_regex,
      noop_on_destroy=noop_on_destroy,
      project=project,
      readiness_check=readiness_check,
      resources=resources,
      runtime=runtime,
      runtime_api_version=runtime_api_version,
      runtime_channel=runtime_channel,
      runtime_main_executable_path=runtime_main_executable_path,
      service=service,
      service_account=service_account,
      serving_status=serving_status,
      timeouts=timeouts,
      version_id=version_id,
      vpc_access_connector=vpc_access_connector
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_flexible_app_version.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_flexible_app_version`\nTerraform resource.\n\nUnlike [google.app_engine_flexible_app_version.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `beta_settings` (`obj`): Metadata settings that are supplied to this version to enable beta runtime features. When `null`, the `beta_settings` field will be omitted from the resulting object.\n  - `default_expiration` (`string`): Duration that static files should be cached by web proxies and browsers.\nOnly applicable if the corresponding StaticFilesHandler does not specify its own expiration time. When `null`, the `default_expiration` field will be omitted from the resulting object.\n  - `delete_service_on_destroy` (`bool`): If set to &#39;true&#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.\n  - `env_variables` (`obj`): Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config. When `null`, the `env_variables` field will be omitted from the resulting object.\n  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [&#34;INBOUND_SERVICE_MAIL&#34;, &#34;INBOUND_SERVICE_MAIL_BOUNCE&#34;, &#34;INBOUND_SERVICE_XMPP_ERROR&#34;, &#34;INBOUND_SERVICE_XMPP_MESSAGE&#34;, &#34;INBOUND_SERVICE_XMPP_SUBSCRIBE&#34;, &#34;INBOUND_SERVICE_XMPP_PRESENCE&#34;, &#34;INBOUND_SERVICE_CHANNEL_PRESENCE&#34;, &#34;INBOUND_SERVICE_WARMUP&#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.\n  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are\nAutomaticScaling: F1, F2, F4, F4_1G\nManualScaling: B1, B2, B4, B8, B4_1G\nDefaults to F1 for AutomaticScaling and B1 for ManualScaling. When `null`, the `instance_class` field will be omitted from the resulting object.\n  - `nobuild_files_regex` (`string`): Files that match this pattern will not be built into this version. Only applicable for Go runtimes. When `null`, the `nobuild_files_regex` field will be omitted from the resulting object.\n  - `noop_on_destroy` (`bool`): If set to &#39;true&#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `runtime` (`string`): Desired runtime. Example python27.\n  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.\nPlease see the app.yaml reference for valid values at &#39;https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref&#39;\\\nSubstitute &#39;&lt;language&gt;&#39; with &#39;python&#39;, &#39;java&#39;, &#39;php&#39;, &#39;ruby&#39;, &#39;go&#39; or &#39;nodejs&#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.\n  - `runtime_channel` (`string`): The channel of the runtime to use. Only available for some runtimes. When `null`, the `runtime_channel` field will be omitted from the resulting object.\n  - `runtime_main_executable_path` (`string`): The path or name of the app&#39;s main executable. When `null`, the `runtime_main_executable_path` field will be omitted from the resulting object.\n  - `service` (`string`): AppEngine service resource. Can contain numbers, letters, and hyphens.\n  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as\ndefault if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `serving_status` (`string`): Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: &#34;SERVING&#34; Possible values: [&#34;SERVING&#34;, &#34;STOPPED&#34;] When `null`, the `serving_status` field will be omitted from the resulting object.\n  - `version_id` (`string`): Relative name of the version within the service. For example, &#39;v1&#39;. Version names can contain only lowercase letters, numbers, or hyphens.\nReserved names,&#34;default&#34;, &#34;latest&#34;, and any name with the prefix &#34;ah-&#34;. When `null`, the `version_id` field will be omitted from the resulting object.\n  - `api_config` (`list[obj]`): Serving configuration for Google Cloud Endpoints. When `null`, the `api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.api_config.new](#fn-api_confignew) constructor.\n  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.new](#fn-automatic_scalingnew) constructor.\n  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.new](#fn-deploymentnew) constructor.\n  - `endpoints_api_service` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `endpoints_api_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.endpoints_api_service.new](#fn-endpoints_api_servicenew) constructor.\n  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.entrypoint.new](#fn-entrypointnew) constructor.\n  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.\nThe first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.new](#fn-handlersnew) constructor.\n  - `liveness_check` (`list[obj]`): Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. When `null`, the `liveness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.liveness_check.new](#fn-liveness_checknew) constructor.\n  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.manual_scaling.new](#fn-manual_scalingnew) constructor.\n  - `network` (`list[obj]`): Extra network settings When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.network.new](#fn-networknew) constructor.\n  - `readiness_check` (`list[obj]`): Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation. When `null`, the `readiness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.readiness_check.new](#fn-readiness_checknew) constructor.\n  - `resources` (`list[obj]`): Machine resources for a version. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.resources.new](#fn-resourcesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.vpc_access_connector.new](#fn-vpc_access_connectornew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_flexible_app_version` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    runtime,
    service,
    api_config=null,
    automatic_scaling=null,
    beta_settings=null,
    default_expiration=null,
    delete_service_on_destroy=null,
    deployment=null,
    endpoints_api_service=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    liveness_check=null,
    manual_scaling=null,
    network=null,
    nobuild_files_regex=null,
    noop_on_destroy=null,
    project=null,
    readiness_check=null,
    resources=null,
    runtime_api_version=null,
    runtime_channel=null,
    runtime_main_executable_path=null,
    service_account=null,
    serving_status=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null
  ):: std.prune(a={
    api_config: api_config,
    automatic_scaling: automatic_scaling,
    beta_settings: beta_settings,
    default_expiration: default_expiration,
    delete_service_on_destroy: delete_service_on_destroy,
    deployment: deployment,
    endpoints_api_service: endpoints_api_service,
    entrypoint: entrypoint,
    env_variables: env_variables,
    handlers: handlers,
    inbound_services: inbound_services,
    instance_class: instance_class,
    liveness_check: liveness_check,
    manual_scaling: manual_scaling,
    network: network,
    nobuild_files_regex: nobuild_files_regex,
    noop_on_destroy: noop_on_destroy,
    project: project,
    readiness_check: readiness_check,
    resources: resources,
    runtime: runtime,
    runtime_api_version: runtime_api_version,
    runtime_channel: runtime_channel,
    runtime_main_executable_path: runtime_main_executable_path,
    service: service,
    service_account: service_account,
    serving_status: serving_status,
    timeouts: timeouts,
    version_id: version_id,
    vpc_access_connector: vpc_access_connector,
  }),
  readiness_check:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.readiness_check.new` constructs a new object with attributes and blocks configured for the `readiness_check`\nTerraform sub block.\n\n\n\n**Args**:\n  - `app_start_timeout` (`string`): A maximum time limit on application initialization, measured from moment the application successfully\nreplies to a healthcheck until it is ready to serve traffic. Default: &#34;300s&#34; When `null`, the `app_start_timeout` field will be omitted from the resulting object.\n  - `check_interval` (`string`): Interval between health checks.  Default: &#34;5s&#34;. When `null`, the `check_interval` field will be omitted from the resulting object.\n  - `failure_threshold` (`number`): Number of consecutive failed checks required before removing traffic. Default: 2. When `null`, the `failure_threshold` field will be omitted from the resulting object.\n  - `host` (`string`): Host header to send when performing a HTTP Readiness check. Example: &#34;myapp.appspot.com&#34; When `null`, the `host` field will be omitted from the resulting object.\n  - `path` (`string`): The request path.\n  - `success_threshold` (`number`): Number of consecutive successful checks required before receiving traffic. Default: 2. When `null`, the `success_threshold` field will be omitted from the resulting object.\n  - `timeout` (`string`): Time before the check is considered failed. Default: &#34;4s&#34; When `null`, the `timeout` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `readiness_check` sub block.\n', args=[]),
    new(
      path,
      app_start_timeout=null,
      check_interval=null,
      failure_threshold=null,
      host=null,
      success_threshold=null,
      timeout=null
    ):: std.prune(a={
      app_start_timeout: app_start_timeout,
      check_interval: check_interval,
      failure_threshold: failure_threshold,
      host: host,
      path: path,
      success_threshold: success_threshold,
      timeout: timeout,
    }),
  },
  resources:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.resources.new` constructs a new object with attributes and blocks configured for the `resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu` (`number`): Number of CPU cores needed. When `null`, the `cpu` field will be omitted from the resulting object.\n  - `disk_gb` (`number`): Disk size (GB) needed. When `null`, the `disk_gb` field will be omitted from the resulting object.\n  - `memory_gb` (`number`): Memory (GB) needed. When `null`, the `memory_gb` field will be omitted from the resulting object.\n  - `volumes` (`list[obj]`): List of ports, or port pairs, to forward from the virtual machine to the application container. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.resources.volumes.new](#fn-volumesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `resources` sub block.\n', args=[]),
    new(
      cpu=null,
      disk_gb=null,
      memory_gb=null,
      volumes=null
    ):: std.prune(a={
      cpu: cpu,
      disk_gb: disk_gb,
      memory_gb: memory_gb,
      volumes: volumes,
    }),
    volumes:: {
      '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.resources.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Unique name for the volume.\n  - `size_gb` (`number`): Volume size in gigabytes.\n  - `volume_type` (`string`): Underlying volume type, e.g. &#39;tmpfs&#39;.\n\n**Returns**:\n  - An attribute object that represents the `volumes` sub block.\n', args=[]),
      new(
        name,
        size_gb,
        volume_type
      ):: std.prune(a={
        name: name,
        size_gb: size_gb,
        volume_type: volume_type,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  vpc_access_connector:: {
    '#new':: d.fn(help='\n`google.app_engine_flexible_app_version.vpc_access_connector.new` constructs a new object with attributes and blocks configured for the `vpc_access_connector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.\n\n**Returns**:\n  - An attribute object that represents the `vpc_access_connector` sub block.\n', args=[]),
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  '#withApiConfig':: d.fn(help='`google.list[obj].withApiConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the api_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withApiConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `api_config` field.\n', args=[]),
  withApiConfig(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          api_config: value,
        },
      },
    },
  },
  '#withApiConfigMixin':: d.fn(help='`google.list[obj].withApiConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the api_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withApiConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `api_config` field.\n', args=[]),
  withApiConfigMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          api_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAutomaticScaling':: d.fn(help='`google.list[obj].withAutomaticScaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automatic_scaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutomaticScalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automatic_scaling` field.\n', args=[]),
  withAutomaticScaling(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          automatic_scaling: value,
        },
      },
    },
  },
  '#withAutomaticScalingMixin':: d.fn(help='`google.list[obj].withAutomaticScalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automatic_scaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutomaticScaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automatic_scaling` field.\n', args=[]),
  withAutomaticScalingMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          automatic_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBetaSettings':: d.fn(help='`google.obj.withBetaSettings` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the beta_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `beta_settings` field.\n', args=[]),
  withBetaSettings(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          beta_settings: value,
        },
      },
    },
  },
  '#withDefaultExpiration':: d.fn(help='`google.string.withDefaultExpiration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the default_expiration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `default_expiration` field.\n', args=[]),
  withDefaultExpiration(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          default_expiration: value,
        },
      },
    },
  },
  '#withDeleteServiceOnDestroy':: d.fn(help='`google.bool.withDeleteServiceOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the delete_service_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `delete_service_on_destroy` field.\n', args=[]),
  withDeleteServiceOnDestroy(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          delete_service_on_destroy: value,
        },
      },
    },
  },
  '#withDeployment':: d.fn(help='`google.list[obj].withDeployment` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deployment field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDeploymentMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deployment` field.\n', args=[]),
  withDeployment(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          deployment: value,
        },
      },
    },
  },
  '#withDeploymentMixin':: d.fn(help='`google.list[obj].withDeploymentMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deployment field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDeployment](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deployment` field.\n', args=[]),
  withDeploymentMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          deployment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEndpointsApiService':: d.fn(help='`google.list[obj].withEndpointsApiService` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the endpoints_api_service field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEndpointsApiServiceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `endpoints_api_service` field.\n', args=[]),
  withEndpointsApiService(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          endpoints_api_service: value,
        },
      },
    },
  },
  '#withEndpointsApiServiceMixin':: d.fn(help='`google.list[obj].withEndpointsApiServiceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the endpoints_api_service field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEndpointsApiService](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `endpoints_api_service` field.\n', args=[]),
  withEndpointsApiServiceMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          endpoints_api_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEntrypoint':: d.fn(help='`google.list[obj].withEntrypoint` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entrypoint field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEntrypointMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entrypoint` field.\n', args=[]),
  withEntrypoint(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          entrypoint: value,
        },
      },
    },
  },
  '#withEntrypointMixin':: d.fn(help='`google.list[obj].withEntrypointMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entrypoint field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEntrypoint](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entrypoint` field.\n', args=[]),
  withEntrypointMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          entrypoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnvVariables':: d.fn(help='`google.obj.withEnvVariables` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the env_variables field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `env_variables` field.\n', args=[]),
  withEnvVariables(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          env_variables: value,
        },
      },
    },
  },
  '#withHandlers':: d.fn(help='`google.list[obj].withHandlers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the handlers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHandlersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `handlers` field.\n', args=[]),
  withHandlers(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          handlers: value,
        },
      },
    },
  },
  '#withHandlersMixin':: d.fn(help='`google.list[obj].withHandlersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the handlers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHandlers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `handlers` field.\n', args=[]),
  withHandlersMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInboundServices':: d.fn(help='`google.list.withInboundServices` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the inbound_services field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `inbound_services` field.\n', args=[]),
  withInboundServices(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          inbound_services: value,
        },
      },
    },
  },
  '#withInstanceClass':: d.fn(help='`google.string.withInstanceClass` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_class field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_class` field.\n', args=[]),
  withInstanceClass(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          instance_class: value,
        },
      },
    },
  },
  '#withLivenessCheck':: d.fn(help='`google.list[obj].withLivenessCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the liveness_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLivenessCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `liveness_check` field.\n', args=[]),
  withLivenessCheck(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          liveness_check: value,
        },
      },
    },
  },
  '#withLivenessCheckMixin':: d.fn(help='`google.list[obj].withLivenessCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the liveness_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLivenessCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `liveness_check` field.\n', args=[]),
  withLivenessCheckMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          liveness_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withManualScaling':: d.fn(help='`google.list[obj].withManualScaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the manual_scaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManualScalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `manual_scaling` field.\n', args=[]),
  withManualScaling(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          manual_scaling: value,
        },
      },
    },
  },
  '#withManualScalingMixin':: d.fn(help='`google.list[obj].withManualScalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the manual_scaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManualScaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `manual_scaling` field.\n', args=[]),
  withManualScalingMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          manual_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.list[obj].withNetwork` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkMixin':: d.fn(help='`google.list[obj].withNetworkMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetwork](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network` field.\n', args=[]),
  withNetworkMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          network+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNobuildFilesRegex':: d.fn(help='`google.string.withNobuildFilesRegex` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the nobuild_files_regex field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `nobuild_files_regex` field.\n', args=[]),
  withNobuildFilesRegex(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          nobuild_files_regex: value,
        },
      },
    },
  },
  '#withNoopOnDestroy':: d.fn(help='`google.bool.withNoopOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the noop_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `noop_on_destroy` field.\n', args=[]),
  withNoopOnDestroy(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          noop_on_destroy: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReadinessCheck':: d.fn(help='`google.list[obj].withReadinessCheck` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the readiness_check field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReadinessCheckMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `readiness_check` field.\n', args=[]),
  withReadinessCheck(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          readiness_check: value,
        },
      },
    },
  },
  '#withReadinessCheckMixin':: d.fn(help='`google.list[obj].withReadinessCheckMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the readiness_check field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReadinessCheck](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `readiness_check` field.\n', args=[]),
  withReadinessCheckMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          readiness_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withResources':: d.fn(help='`google.list[obj].withResources` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resources field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withResourcesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resources` field.\n', args=[]),
  withResources(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          resources: value,
        },
      },
    },
  },
  '#withResourcesMixin':: d.fn(help='`google.list[obj].withResourcesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resources field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withResources](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resources` field.\n', args=[]),
  withResourcesMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          resources+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRuntime':: d.fn(help='`google.string.withRuntime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime` field.\n', args=[]),
  withRuntime(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime: value,
        },
      },
    },
  },
  '#withRuntimeApiVersion':: d.fn(help='`google.string.withRuntimeApiVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_api_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_api_version` field.\n', args=[]),
  withRuntimeApiVersion(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime_api_version: value,
        },
      },
    },
  },
  '#withRuntimeChannel':: d.fn(help='`google.string.withRuntimeChannel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_channel field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_channel` field.\n', args=[]),
  withRuntimeChannel(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime_channel: value,
        },
      },
    },
  },
  '#withRuntimeMainExecutablePath':: d.fn(help='`google.string.withRuntimeMainExecutablePath` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_main_executable_path field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_main_executable_path` field.\n', args=[]),
  withRuntimeMainExecutablePath(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime_main_executable_path: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withServingStatus':: d.fn(help='`google.string.withServingStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the serving_status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `serving_status` field.\n', args=[]),
  withServingStatus(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          serving_status: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionId':: d.fn(help='`google.string.withVersionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_id` field.\n', args=[]),
  withVersionId(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          version_id: value,
        },
      },
    },
  },
  '#withVpcAccessConnector':: d.fn(help='`google.list[obj].withVpcAccessConnector` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_access_connector field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVpcAccessConnectorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_access_connector` field.\n', args=[]),
  withVpcAccessConnector(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector: value,
        },
      },
    },
  },
  '#withVpcAccessConnectorMixin':: d.fn(help='`google.list[obj].withVpcAccessConnectorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_access_connector field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVpcAccessConnector](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_access_connector` field.\n', args=[]),
  withVpcAccessConnectorMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
