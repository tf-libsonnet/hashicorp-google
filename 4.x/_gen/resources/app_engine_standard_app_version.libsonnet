local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_standard_app_version', url='', help='`app_engine_standard_app_version` represents the `google_app_engine_standard_app_version` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  automatic_scaling:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.automatic_scaling.new` constructs a new object with attributes and blocks configured for the `automatic_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_concurrent_requests` (`number`): Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.\n\nDefaults to a runtime-specific value. When `null`, the `max_concurrent_requests` field will be omitted from the resulting object.\n  - `max_idle_instances` (`number`): Maximum number of idle instances that should be maintained for this version. When `null`, the `max_idle_instances` field will be omitted from the resulting object.\n  - `max_pending_latency` (`string`): Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `max_pending_latency` field will be omitted from the resulting object.\n  - `min_idle_instances` (`number`): Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. When `null`, the `min_idle_instances` field will be omitted from the resulting object.\n  - `min_pending_latency` (`string`): Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `min_pending_latency` field will be omitted from the resulting object.\n  - `standard_scheduler_settings` (`list[obj]`): Scheduler settings for standard environment. When `null`, the `standard_scheduler_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.automatic_scaling.standard_scheduler_settings.new](#fn-standard_scheduler_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `automatic_scaling` sub block.\n', args=[]),
    new(
      max_concurrent_requests=null,
      max_idle_instances=null,
      max_pending_latency=null,
      min_idle_instances=null,
      min_pending_latency=null,
      standard_scheduler_settings=null
    ):: std.prune(a={
      max_concurrent_requests: max_concurrent_requests,
      max_idle_instances: max_idle_instances,
      max_pending_latency: max_pending_latency,
      min_idle_instances: min_idle_instances,
      min_pending_latency: min_pending_latency,
      standard_scheduler_settings: standard_scheduler_settings,
    }),
    standard_scheduler_settings:: {
      '#new':: d.fn(help='\n`google.app_engine_standard_app_version.automatic_scaling.standard_scheduler_settings.new` constructs a new object with attributes and blocks configured for the `standard_scheduler_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_instances` (`number`): Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration. When `null`, the `max_instances` field will be omitted from the resulting object.\n  - `min_instances` (`number`): Minimum number of instances to run for this version. Set to zero to disable minInstances configuration. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `target_cpu_utilization` (`number`): Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value. When `null`, the `target_cpu_utilization` field will be omitted from the resulting object.\n  - `target_throughput_utilization` (`number`): Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value. When `null`, the `target_throughput_utilization` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `standard_scheduler_settings` sub block.\n', args=[]),
      new(
        max_instances=null,
        min_instances=null,
        target_cpu_utilization=null,
        target_throughput_utilization=null
      ):: std.prune(a={
        max_instances: max_instances,
        min_instances: min_instances,
        target_cpu_utilization: target_cpu_utilization,
        target_throughput_utilization: target_throughput_utilization,
      }),
    },
  },
  basic_scaling:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.basic_scaling.new` constructs a new object with attributes and blocks configured for the `basic_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `idle_timeout` (`string`): Duration of time after the last request that an instance must wait before the instance is shut down.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. Defaults to 900s. When `null`, the `idle_timeout` field will be omitted from the resulting object.\n  - `max_instances` (`number`): Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].\n\n**Returns**:\n  - An attribute object that represents the `basic_scaling` sub block.\n', args=[]),
    new(
      max_instances,
      idle_timeout=null
    ):: std.prune(a={
      idle_timeout: idle_timeout,
      max_instances: max_instances,
    }),
  },
  deployment:: {
    files:: {
      '#new':: d.fn(help='\n`google.app_engine_standard_app_version.deployment.files.new` constructs a new object with attributes and blocks configured for the `files`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): \n  - `sha1_sum` (`string`): SHA1 checksum of the file When `null`, the `sha1_sum` field will be omitted from the resulting object.\n  - `source_url` (`string`): Source URL\n\n**Returns**:\n  - An attribute object that represents the `files` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.deployment.new` constructs a new object with attributes and blocks configured for the `deployment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `files` (`list[obj]`): Manifest of the files stored in Google Cloud Storage that are included as part of this version.\nAll files must be readable using the credentials supplied with this call. When `null`, the `files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.files.new](#fn-filesnew) constructor.\n  - `zip` (`list[obj]`): Zip File When `null`, the `zip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.zip.new](#fn-zipnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deployment` sub block.\n', args=[]),
    new(
      files=null,
      zip=null
    ):: std.prune(a={
      files: files,
      zip: zip,
    }),
    zip:: {
      '#new':: d.fn(help='\n`google.app_engine_standard_app_version.deployment.zip.new` constructs a new object with attributes and blocks configured for the `zip`\nTerraform sub block.\n\n\n\n**Args**:\n  - `files_count` (`number`): files count When `null`, the `files_count` field will be omitted from the resulting object.\n  - `source_url` (`string`): Source URL\n\n**Returns**:\n  - An attribute object that represents the `zip` sub block.\n', args=[]),
      new(
        source_url,
        files_count=null
      ):: std.prune(a={
        files_count: files_count,
        source_url: source_url,
      }),
    },
  },
  entrypoint:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.entrypoint.new` constructs a new object with attributes and blocks configured for the `entrypoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `shell` (`string`): The format should be a shell command that can be fed to bash -c.\n\n**Returns**:\n  - An attribute object that represents the `entrypoint` sub block.\n', args=[]),
    new(
      shell
    ):: std.prune(a={
      shell: shell,
    }),
  },
  handlers:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.handlers.new` constructs a new object with attributes and blocks configured for the `handlers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_fail_action` (`string`): Actions to take when the user is not logged in. Possible values: [&#34;AUTH_FAIL_ACTION_REDIRECT&#34;, &#34;AUTH_FAIL_ACTION_UNAUTHORIZED&#34;] When `null`, the `auth_fail_action` field will be omitted from the resulting object.\n  - `login` (`string`): Methods to restrict access to a URL based on login status. Possible values: [&#34;LOGIN_OPTIONAL&#34;, &#34;LOGIN_ADMIN&#34;, &#34;LOGIN_REQUIRED&#34;] When `null`, the `login` field will be omitted from the resulting object.\n  - `redirect_http_response_code` (`string`): 30x code to use when performing redirects for the secure field. Possible values: [&#34;REDIRECT_HTTP_RESPONSE_CODE_301&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_302&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_303&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_307&#34;] When `null`, the `redirect_http_response_code` field will be omitted from the resulting object.\n  - `security_level` (`string`): Security (HTTPS) enforcement for this URL. Possible values: [&#34;SECURE_DEFAULT&#34;, &#34;SECURE_NEVER&#34;, &#34;SECURE_OPTIONAL&#34;, &#34;SECURE_ALWAYS&#34;] When `null`, the `security_level` field will be omitted from the resulting object.\n  - `url_regex` (`string`): URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.\nAll URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path. When `null`, the `url_regex` field will be omitted from the resulting object.\n  - `script` (`list[obj]`): Executes a script to handle the requests that match this URL pattern.\nOnly the auto value is supported for Node.js in the App Engine standard environment, for example &#34;script:&#34; &#34;auto&#34;. When `null`, the `script` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.script.new](#fn-scriptnew) constructor.\n  - `static_files` (`list[obj]`): Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them. When `null`, the `static_files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.static_files.new](#fn-static_filesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `handlers` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.app_engine_standard_app_version.handlers.script.new` constructs a new object with attributes and blocks configured for the `script`\nTerraform sub block.\n\n\n\n**Args**:\n  - `script_path` (`string`): Path to the script from the application root directory.\n\n**Returns**:\n  - An attribute object that represents the `script` sub block.\n', args=[]),
      new(
        script_path
      ):: std.prune(a={
        script_path: script_path,
      }),
    },
    static_files:: {
      '#new':: d.fn(help='\n`google.app_engine_standard_app_version.handlers.static_files.new` constructs a new object with attributes and blocks configured for the `static_files`\nTerraform sub block.\n\n\n\n**Args**:\n  - `application_readable` (`bool`): Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as\nstatic data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged\nagainst both your code and static data storage resource quotas. When `null`, the `application_readable` field will be omitted from the resulting object.\n  - `expiration` (`string`): Time a static file served by this handler should be cached by web proxies and browsers.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example &#34;3.5s&#34;. When `null`, the `expiration` field will be omitted from the resulting object.\n  - `http_headers` (`obj`): HTTP headers to use for all responses from these URLs.\nAn object containing a list of &#34;key:value&#34; value pairs.&#34;. When `null`, the `http_headers` field will be omitted from the resulting object.\n  - `mime_type` (`string`): MIME type used to serve all files served by this handler.\nDefaults to file-specific MIME types, which are derived from each file&#39;s filename extension. When `null`, the `mime_type` field will be omitted from the resulting object.\n  - `path` (`string`): Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern. When `null`, the `path` field will be omitted from the resulting object.\n  - `require_matching_file` (`bool`): Whether this handler should match the request if the file referenced by the handler does not exist. When `null`, the `require_matching_file` field will be omitted from the resulting object.\n  - `upload_path_regex` (`string`): Regular expression that matches the file paths for all files that should be referenced by this handler. When `null`, the `upload_path_regex` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `static_files` sub block.\n', args=[]),
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
  libraries:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.libraries.new` constructs a new object with attributes and blocks configured for the `libraries`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the library. Example &#34;django&#34;. When `null`, the `name` field will be omitted from the resulting object.\n  - `version` (`string`): Version of the library to select, or &#34;latest&#34;. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `libraries` sub block.\n', args=[]),
    new(
      name=null,
      version=null
    ):: std.prune(a={
      name: name,
      version: version,
    }),
  },
  manual_scaling:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.manual_scaling.new` constructs a new object with attributes and blocks configured for the `manual_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instances` (`number`): Number of instances to assign to the service at the start.\n\n**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2\nModules API set_num_instances() you must use &#39;lifecycle.ignore_changes = [&#34;manual_scaling&#34;[0].instances]&#39; to prevent drift detection.\n\n**Returns**:\n  - An attribute object that represents the `manual_scaling` sub block.\n', args=[]),
    new(
      instances
    ):: std.prune(a={
      instances: instances,
    }),
  },
  '#new':: d.fn(help="\n`google.app_engine_standard_app_version.new` injects a new `google_app_engine_standard_app_version` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_standard_app_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_standard_app_version` using the reference:\n\n    $._ref.google_app_engine_standard_app_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_standard_app_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `app_engine_apis` (`bool`): Allows App Engine second generation runtimes to access the legacy bundled services. When `null`, the `app_engine_apis` field will be omitted from the resulting object.\n  - `delete_service_on_destroy` (`bool`): If set to \u0026#39;true\u0026#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.\n  - `env_variables` (`obj`): Environment variables available to the application. When `null`, the `env_variables` field will be omitted from the resulting object.\n  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [\u0026#34;INBOUND_SERVICE_MAIL\u0026#34;, \u0026#34;INBOUND_SERVICE_MAIL_BOUNCE\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_ERROR\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_MESSAGE\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_SUBSCRIBE\u0026#34;, \u0026#34;INBOUND_SERVICE_XMPP_PRESENCE\u0026#34;, \u0026#34;INBOUND_SERVICE_CHANNEL_PRESENCE\u0026#34;, \u0026#34;INBOUND_SERVICE_WARMUP\u0026#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.\n  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are\nAutomaticScaling: F1, F2, F4, F4_1G\nBasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8\nDefaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen. When `null`, the `instance_class` field will be omitted from the resulting object.\n  - `noop_on_destroy` (`bool`): If set to \u0026#39;true\u0026#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `runtime` (`string`): Desired runtime. Example python27.\n  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.\nPlease see the app.yaml reference for valid values at \u0026#39;https://cloud.google.com/appengine/docs/standard/\u0026lt;language\u0026gt;/config/appref\u0026#39;\\\nSubstitute \u0026#39;\u0026lt;language\u0026gt;\u0026#39; with \u0026#39;python\u0026#39;, \u0026#39;java\u0026#39;, \u0026#39;php\u0026#39;, \u0026#39;ruby\u0026#39;, \u0026#39;go\u0026#39; or \u0026#39;nodejs\u0026#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.\n  - `service` (`string`): AppEngine service resource\n  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `threadsafe` (`bool`): Whether multiple requests can be dispatched to this version at once. When `null`, the `threadsafe` field will be omitted from the resulting object.\n  - `version_id` (`string`): Relative name of the version within the service. For example, \u0026#39;v1\u0026#39;. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,\u0026#34;default\u0026#34;, \u0026#34;latest\u0026#34;, and any name with the prefix \u0026#34;ah-\u0026#34;. When `null`, the `version_id` field will be omitted from the resulting object.\n  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.automatic_scaling.new](#fn-automatic_scalingnew) constructor.\n  - `basic_scaling` (`list[obj]`): Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity. When `null`, the `basic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.basic_scaling.new](#fn-basic_scalingnew) constructor.\n  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.new](#fn-deploymentnew) constructor.\n  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.entrypoint.new](#fn-entrypointnew) constructor.\n  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.\nThe first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.new](#fn-handlersnew) constructor.\n  - `libraries` (`list[obj]`): Configuration for third-party Python runtime libraries that are required by the application. When `null`, the `libraries` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.libraries.new](#fn-librariesnew) constructor.\n  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.manual_scaling.new](#fn-manual_scalingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.vpc_access_connector.new](#fn-vpc_access_connectornew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    runtime,
    service,
    app_engine_apis=null,
    automatic_scaling=null,
    basic_scaling=null,
    delete_service_on_destroy=null,
    deployment=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    libraries=null,
    manual_scaling=null,
    noop_on_destroy=null,
    project=null,
    runtime_api_version=null,
    service_account=null,
    threadsafe=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_standard_app_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine_apis=app_engine_apis,
      automatic_scaling=automatic_scaling,
      basic_scaling=basic_scaling,
      delete_service_on_destroy=delete_service_on_destroy,
      deployment=deployment,
      entrypoint=entrypoint,
      env_variables=env_variables,
      handlers=handlers,
      inbound_services=inbound_services,
      instance_class=instance_class,
      libraries=libraries,
      manual_scaling=manual_scaling,
      noop_on_destroy=noop_on_destroy,
      project=project,
      runtime=runtime,
      runtime_api_version=runtime_api_version,
      service=service,
      service_account=service_account,
      threadsafe=threadsafe,
      timeouts=timeouts,
      version_id=version_id,
      vpc_access_connector=vpc_access_connector
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_standard_app_version.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_standard_app_version`\nTerraform resource.\n\nUnlike [google.app_engine_standard_app_version.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_engine_apis` (`bool`): Allows App Engine second generation runtimes to access the legacy bundled services. When `null`, the `app_engine_apis` field will be omitted from the resulting object.\n  - `delete_service_on_destroy` (`bool`): If set to &#39;true&#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.\n  - `env_variables` (`obj`): Environment variables available to the application. When `null`, the `env_variables` field will be omitted from the resulting object.\n  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [&#34;INBOUND_SERVICE_MAIL&#34;, &#34;INBOUND_SERVICE_MAIL_BOUNCE&#34;, &#34;INBOUND_SERVICE_XMPP_ERROR&#34;, &#34;INBOUND_SERVICE_XMPP_MESSAGE&#34;, &#34;INBOUND_SERVICE_XMPP_SUBSCRIBE&#34;, &#34;INBOUND_SERVICE_XMPP_PRESENCE&#34;, &#34;INBOUND_SERVICE_CHANNEL_PRESENCE&#34;, &#34;INBOUND_SERVICE_WARMUP&#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.\n  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are\nAutomaticScaling: F1, F2, F4, F4_1G\nBasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8\nDefaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen. When `null`, the `instance_class` field will be omitted from the resulting object.\n  - `noop_on_destroy` (`bool`): If set to &#39;true&#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `runtime` (`string`): Desired runtime. Example python27.\n  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.\nPlease see the app.yaml reference for valid values at &#39;https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref&#39;\\\nSubstitute &#39;&lt;language&gt;&#39; with &#39;python&#39;, &#39;java&#39;, &#39;php&#39;, &#39;ruby&#39;, &#39;go&#39; or &#39;nodejs&#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.\n  - `service` (`string`): AppEngine service resource\n  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `threadsafe` (`bool`): Whether multiple requests can be dispatched to this version at once. When `null`, the `threadsafe` field will be omitted from the resulting object.\n  - `version_id` (`string`): Relative name of the version within the service. For example, &#39;v1&#39;. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,&#34;default&#34;, &#34;latest&#34;, and any name with the prefix &#34;ah-&#34;. When `null`, the `version_id` field will be omitted from the resulting object.\n  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.automatic_scaling.new](#fn-automatic_scalingnew) constructor.\n  - `basic_scaling` (`list[obj]`): Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity. When `null`, the `basic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.basic_scaling.new](#fn-basic_scalingnew) constructor.\n  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.new](#fn-deploymentnew) constructor.\n  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.entrypoint.new](#fn-entrypointnew) constructor.\n  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.\nThe first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.new](#fn-handlersnew) constructor.\n  - `libraries` (`list[obj]`): Configuration for third-party Python runtime libraries that are required by the application. When `null`, the `libraries` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.libraries.new](#fn-librariesnew) constructor.\n  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.manual_scaling.new](#fn-manual_scalingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.vpc_access_connector.new](#fn-vpc_access_connectornew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_standard_app_version` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    runtime,
    service,
    app_engine_apis=null,
    automatic_scaling=null,
    basic_scaling=null,
    delete_service_on_destroy=null,
    deployment=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    libraries=null,
    manual_scaling=null,
    noop_on_destroy=null,
    project=null,
    runtime_api_version=null,
    service_account=null,
    threadsafe=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null
  ):: std.prune(a={
    app_engine_apis: app_engine_apis,
    automatic_scaling: automatic_scaling,
    basic_scaling: basic_scaling,
    delete_service_on_destroy: delete_service_on_destroy,
    deployment: deployment,
    entrypoint: entrypoint,
    env_variables: env_variables,
    handlers: handlers,
    inbound_services: inbound_services,
    instance_class: instance_class,
    libraries: libraries,
    manual_scaling: manual_scaling,
    noop_on_destroy: noop_on_destroy,
    project: project,
    runtime: runtime,
    runtime_api_version: runtime_api_version,
    service: service,
    service_account: service_account,
    threadsafe: threadsafe,
    timeouts: timeouts,
    version_id: version_id,
    vpc_access_connector: vpc_access_connector,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.app_engine_standard_app_version.vpc_access_connector.new` constructs a new object with attributes and blocks configured for the `vpc_access_connector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `egress_setting` (`string`): The egress setting for the connector, controlling what traffic is diverted through it. When `null`, the `egress_setting` field will be omitted from the resulting object.\n  - `name` (`string`): Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.\n\n**Returns**:\n  - An attribute object that represents the `vpc_access_connector` sub block.\n', args=[]),
    new(
      name,
      egress_setting=null
    ):: std.prune(a={
      egress_setting: egress_setting,
      name: name,
    }),
  },
  '#withAppEngineApis':: d.fn(help='`google.bool.withAppEngineApis` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the app_engine_apis field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `app_engine_apis` field.\n', args=[]),
  withAppEngineApis(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          app_engine_apis: value,
        },
      },
    },
  },
  '#withAutomaticScaling':: d.fn(help='`google.list[obj].withAutomaticScaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automatic_scaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutomaticScalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automatic_scaling` field.\n', args=[]),
  withAutomaticScaling(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          automatic_scaling: value,
        },
      },
    },
  },
  '#withAutomaticScalingMixin':: d.fn(help='`google.list[obj].withAutomaticScalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automatic_scaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutomaticScaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automatic_scaling` field.\n', args=[]),
  withAutomaticScalingMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          automatic_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBasicScaling':: d.fn(help='`google.list[obj].withBasicScaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the basic_scaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBasicScalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `basic_scaling` field.\n', args=[]),
  withBasicScaling(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          basic_scaling: value,
        },
      },
    },
  },
  '#withBasicScalingMixin':: d.fn(help='`google.list[obj].withBasicScalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the basic_scaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBasicScaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `basic_scaling` field.\n', args=[]),
  withBasicScalingMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          basic_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeleteServiceOnDestroy':: d.fn(help='`google.bool.withDeleteServiceOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the delete_service_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `delete_service_on_destroy` field.\n', args=[]),
  withDeleteServiceOnDestroy(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          delete_service_on_destroy: value,
        },
      },
    },
  },
  '#withDeployment':: d.fn(help='`google.list[obj].withDeployment` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deployment field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDeploymentMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deployment` field.\n', args=[]),
  withDeployment(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          deployment: value,
        },
      },
    },
  },
  '#withDeploymentMixin':: d.fn(help='`google.list[obj].withDeploymentMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deployment field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDeployment](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deployment` field.\n', args=[]),
  withDeploymentMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          deployment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEntrypoint':: d.fn(help='`google.list[obj].withEntrypoint` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entrypoint field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEntrypointMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entrypoint` field.\n', args=[]),
  withEntrypoint(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          entrypoint: value,
        },
      },
    },
  },
  '#withEntrypointMixin':: d.fn(help='`google.list[obj].withEntrypointMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entrypoint field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEntrypoint](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entrypoint` field.\n', args=[]),
  withEntrypointMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          entrypoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnvVariables':: d.fn(help='`google.obj.withEnvVariables` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the env_variables field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `env_variables` field.\n', args=[]),
  withEnvVariables(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          env_variables: value,
        },
      },
    },
  },
  '#withHandlers':: d.fn(help='`google.list[obj].withHandlers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the handlers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHandlersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `handlers` field.\n', args=[]),
  withHandlers(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          handlers: value,
        },
      },
    },
  },
  '#withHandlersMixin':: d.fn(help='`google.list[obj].withHandlersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the handlers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHandlers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `handlers` field.\n', args=[]),
  withHandlersMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInboundServices':: d.fn(help='`google.list.withInboundServices` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the inbound_services field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `inbound_services` field.\n', args=[]),
  withInboundServices(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          inbound_services: value,
        },
      },
    },
  },
  '#withInstanceClass':: d.fn(help='`google.string.withInstanceClass` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_class field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_class` field.\n', args=[]),
  withInstanceClass(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          instance_class: value,
        },
      },
    },
  },
  '#withLibraries':: d.fn(help='`google.list[obj].withLibraries` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the libraries field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLibrariesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `libraries` field.\n', args=[]),
  withLibraries(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          libraries: value,
        },
      },
    },
  },
  '#withLibrariesMixin':: d.fn(help='`google.list[obj].withLibrariesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the libraries field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLibraries](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `libraries` field.\n', args=[]),
  withLibrariesMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          libraries+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withManualScaling':: d.fn(help='`google.list[obj].withManualScaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the manual_scaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManualScalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `manual_scaling` field.\n', args=[]),
  withManualScaling(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          manual_scaling: value,
        },
      },
    },
  },
  '#withManualScalingMixin':: d.fn(help='`google.list[obj].withManualScalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the manual_scaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManualScaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `manual_scaling` field.\n', args=[]),
  withManualScalingMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          manual_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNoopOnDestroy':: d.fn(help='`google.bool.withNoopOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the noop_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `noop_on_destroy` field.\n', args=[]),
  withNoopOnDestroy(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          noop_on_destroy: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRuntime':: d.fn(help='`google.string.withRuntime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime` field.\n', args=[]),
  withRuntime(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          runtime: value,
        },
      },
    },
  },
  '#withRuntimeApiVersion':: d.fn(help='`google.string.withRuntimeApiVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_api_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_api_version` field.\n', args=[]),
  withRuntimeApiVersion(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          runtime_api_version: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withThreadsafe':: d.fn(help='`google.bool.withThreadsafe` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the threadsafe field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `threadsafe` field.\n', args=[]),
  withThreadsafe(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          threadsafe: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionId':: d.fn(help='`google.string.withVersionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_id` field.\n', args=[]),
  withVersionId(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          version_id: value,
        },
      },
    },
  },
  '#withVpcAccessConnector':: d.fn(help='`google.list[obj].withVpcAccessConnector` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_access_connector field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVpcAccessConnectorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_access_connector` field.\n', args=[]),
  withVpcAccessConnector(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector: value,
        },
      },
    },
  },
  '#withVpcAccessConnectorMixin':: d.fn(help='`google.list[obj].withVpcAccessConnectorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_access_connector field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVpcAccessConnector](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_access_connector` field.\n', args=[]),
  withVpcAccessConnectorMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
