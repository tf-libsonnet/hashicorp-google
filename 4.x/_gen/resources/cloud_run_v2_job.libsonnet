local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_run_v2_job', url='', help='`cloud_run_v2_job` represents the `google_cloud_run_v2_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  binary_authorization:: {
    '#new':: d.fn(help='\n`google.cloud_run_v2_job.binary_authorization.new` constructs a new object with attributes and blocks configured for the `binary_authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `breakglass_justification` (`string`): If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass When `null`, the `breakglass_justification` field will be omitted from the resulting object.\n  - `use_default` (`bool`): If True, indicates to use the default project&#39;s binary authorization policy. If False, binary authorization will be disabled. When `null`, the `use_default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `binary_authorization` sub block.\n', args=[]),
    new(
      breakglass_justification=null,
      use_default=null
    ):: std.prune(a={
      breakglass_justification: breakglass_justification,
      use_default: use_default,
    }),
  },
  '#new':: d.fn(help="\n`google.cloud_run_v2_job.new` injects a new `google_cloud_run_v2_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloud_run_v2_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloud_run_v2_job` using the reference:\n\n    $._ref.google_cloud_run_v2_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloud_run_v2_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `client` (`string`): Arbitrary identifier for the API client. When `null`, the `client` field will be omitted from the resulting object.\n  - `client_version` (`string`): Arbitrary version identifier for the API client. When `null`, the `client_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): KRM-style labels for the resource. User-provided labels are shared with Google\u0026#39;s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run will populate some labels with \u0026#39;run.googleapis.com\u0026#39; or \u0026#39;serving.knative.dev\u0026#39; namespaces. Those labels are read-only, and user changes will not be preserved. When `null`, the `labels` field will be omitted from the resulting object.\n  - `launch_stage` (`string`): The launch stage as defined by Google Cloud Platform Launch Stages. Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Possible values: [\u0026#34;UNIMPLEMENTED\u0026#34;, \u0026#34;PRELAUNCH\u0026#34;, \u0026#34;EARLY_ACCESS\u0026#34;, \u0026#34;ALPHA\u0026#34;, \u0026#34;BETA\u0026#34;, \u0026#34;GA\u0026#34;, \u0026#34;DEPRECATED\u0026#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the cloud run job When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the Job.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `binary_authorization` (`list[obj]`): Settings for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.binary_authorization.new](#fn-binary_authorizationnew) constructor.\n  - `template` (`list[obj]`): The template used to create executions for this Job. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.new](#fn-templatenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    binary_authorization=null,
    client=null,
    client_version=null,
    labels=null,
    launch_stage=null,
    location=null,
    project=null,
    template=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_run_v2_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      binary_authorization=binary_authorization,
      client=client,
      client_version=client_version,
      labels=labels,
      launch_stage=launch_stage,
      location=location,
      name=name,
      project=project,
      template=template,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloud_run_v2_job.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_run_v2_job`\nTerraform resource.\n\nUnlike [google.cloud_run_v2_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `client` (`string`): Arbitrary identifier for the API client. When `null`, the `client` field will be omitted from the resulting object.\n  - `client_version` (`string`): Arbitrary version identifier for the API client. When `null`, the `client_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): KRM-style labels for the resource. User-provided labels are shared with Google&#39;s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run will populate some labels with &#39;run.googleapis.com&#39; or &#39;serving.knative.dev&#39; namespaces. Those labels are read-only, and user changes will not be preserved. When `null`, the `labels` field will be omitted from the resulting object.\n  - `launch_stage` (`string`): The launch stage as defined by Google Cloud Platform Launch Stages. Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Possible values: [&#34;UNIMPLEMENTED&#34;, &#34;PRELAUNCH&#34;, &#34;EARLY_ACCESS&#34;, &#34;ALPHA&#34;, &#34;BETA&#34;, &#34;GA&#34;, &#34;DEPRECATED&#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the cloud run job When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the Job.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `binary_authorization` (`list[obj]`): Settings for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.binary_authorization.new](#fn-binary_authorizationnew) constructor.\n  - `template` (`list[obj]`): The template used to create executions for this Job. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.new](#fn-templatenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_run_v2_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    binary_authorization=null,
    client=null,
    client_version=null,
    labels=null,
    launch_stage=null,
    location=null,
    project=null,
    template=null,
    timeouts=null
  ):: std.prune(a={
    binary_authorization: binary_authorization,
    client: client,
    client_version: client_version,
    labels: labels,
    launch_stage: launch_stage,
    location: location,
    name: name,
    project: project,
    template: template,
    timeouts: timeouts,
  }),
  template:: {
    '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.new` constructs a new object with attributes and blocks configured for the `template`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): KRM-style labels for the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `parallelism` (`number`): Specifies the maximum desired number of tasks the execution should run at given time. Must be &lt;= taskCount. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism. When `null`, the `parallelism` field will be omitted from the resulting object.\n  - `task_count` (`number`): Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/ When `null`, the `task_count` field will be omitted from the resulting object.\n  - `template` (`list[obj]`): Describes the task(s) that will be created when executing an execution When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.new](#fn-cloud_run_v2_jobtemplatenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `template` sub block.\n', args=[]),
    new(
      labels=null,
      parallelism=null,
      task_count=null,
      template=null
    ):: std.prune(a={
      labels: labels,
      parallelism: parallelism,
      task_count: task_count,
      template: template,
    }),
    template:: {
      containers:: {
        env:: {
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.env.new` constructs a new object with attributes and blocks configured for the `env`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.\n  - `value` (`string`): Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to &#34;&#34;, and the maximum length is 32768 bytes When `null`, the `value` field will be omitted from the resulting object.\n  - `value_source` (`list[obj]`): Source for the environment variable&#39;s value. When `null`, the `value_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.env.value_source.new](#fn-cloud_run_v2_jobtemplatetemplatecontainersvalue_sourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `env` sub block.\n', args=[]),
          new(
            name,
            value=null,
            value_source=null
          ):: std.prune(a={
            name: name,
            value: value,
            value_source: value_source,
          }),
          value_source:: {
            '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.env.value_source.new` constructs a new object with attributes and blocks configured for the `value_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_key_ref` (`list[obj]`): Selects a secret and a specific version from Cloud Secret Manager. When `null`, the `secret_key_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.env.value_source.secret_key_ref.new](#fn-cloud_run_v2_jobtemplatetemplatecontainersenvsecret_key_refnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `value_source` sub block.\n', args=[]),
            new(
              secret_key_ref=null
            ):: std.prune(a={
              secret_key_ref: secret_key_ref,
            }),
            secret_key_ref:: {
              '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.env.value_source.secret_key_ref.new` constructs a new object with attributes and blocks configured for the `secret_key_ref`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret` (`string`): The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.\n  - `version` (`string`): The Cloud Secret Manager secret version. Can be &#39;latest&#39; for the latest value or an integer for a specific version.\n\n**Returns**:\n  - An attribute object that represents the `secret_key_ref` sub block.\n', args=[]),
              new(
                secret,
                version
              ):: std.prune(a={
                secret: secret,
                version: version,
              }),
            },
          },
        },
        liveness_probe:: {
          http_get:: {
            http_headers:: {
              '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.liveness_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The header field name\n  - `value` (`string`): The header field value When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http_headers` sub block.\n', args=[]),
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.liveness_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Path to access on the HTTP server. Defaults to &#39;/&#39;. When `null`, the `path` field will be omitted from the resulting object.\n  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.liveness_probe.http_get.http_headers.new](#fn-cloud_run_v2_jobtemplatetemplatecontainersliveness_probehttp_headersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_get` sub block.\n', args=[]),
            new(
              http_headers=null,
              path=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
            }),
          },
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.liveness_probe.new` constructs a new object with attributes and blocks configured for the `liveness_probe`\nTerraform sub block.\n\n\n\n**Args**:\n  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.\n  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.\n  - `period_seconds` (`number`): How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds When `null`, the `period_seconds` field will be omitted from the resulting object.\n  - `timeout_seconds` (`number`): Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `timeout_seconds` field will be omitted from the resulting object.\n  - `http_get` (`list[obj]`): HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.liveness_probe.http_get.new](#fn-cloud_run_v2_jobtemplatetemplatecontainershttp_getnew) constructor.\n  - `tcp_socket` (`list[obj]`): TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified. When `null`, the `tcp_socket` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.liveness_probe.tcp_socket.new](#fn-cloud_run_v2_jobtemplatetemplatecontainerstcp_socketnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `liveness_probe` sub block.\n', args=[]),
          new(
            failure_threshold=null,
            http_get=null,
            initial_delay_seconds=null,
            period_seconds=null,
            tcp_socket=null,
            timeout_seconds=null
          ):: std.prune(a={
            failure_threshold: failure_threshold,
            http_get: http_get,
            initial_delay_seconds: initial_delay_seconds,
            period_seconds: period_seconds,
            tcp_socket: tcp_socket,
            timeout_seconds: timeout_seconds,
          }),
          tcp_socket:: {
            '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.liveness_probe.tcp_socket.new` constructs a new object with attributes and blocks configured for the `tcp_socket`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to 8080. When `null`, the `port` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `tcp_socket` sub block.\n', args=[]),
            new(
              port=null
            ):: std.prune(a={
              port: port,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.new` constructs a new object with attributes and blocks configured for the `containers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`list`): Arguments to the entrypoint. The docker image&#39;s CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container&#39;s environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell When `null`, the `args` field will be omitted from the resulting object.\n  - `command` (`list`): Entrypoint array. Not executed within a shell. The docker image&#39;s ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container&#39;s environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell When `null`, the `command` field will be omitted from the resulting object.\n  - `image` (`string`): URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images\n  - `name` (`string`): Name of the container specified as a DNS_LABEL. When `null`, the `name` field will be omitted from the resulting object.\n  - `working_dir` (`string`): Container&#39;s working directory. If not specified, the container runtime&#39;s default will be used, which might be configured in the container image. When `null`, the `working_dir` field will be omitted from the resulting object.\n  - `env` (`list[obj]`): List of environment variables to set in the container. When `null`, the `env` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.env.new](#fn-cloud_run_v2_jobtemplatetemplateenvnew) constructor.\n  - `liveness_probe` (`list[obj]`): Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `liveness_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.liveness_probe.new](#fn-cloud_run_v2_jobtemplatetemplateliveness_probenew) constructor.\n  - `ports` (`list[obj]`): List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.\n\nIf omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on When `null`, the `ports` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.ports.new](#fn-cloud_run_v2_jobtemplatetemplateportsnew) constructor.\n  - `resources` (`list[obj]`): Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.resources.new](#fn-cloud_run_v2_jobtemplatetemplateresourcesnew) constructor.\n  - `startup_probe` (`list[obj]`): Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `startup_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.startup_probe.new](#fn-cloud_run_v2_jobtemplatetemplatestartup_probenew) constructor.\n  - `volume_mounts` (`list[obj]`): Volume to mount into the container&#39;s filesystem. When `null`, the `volume_mounts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.volume_mounts.new](#fn-cloud_run_v2_jobtemplatetemplatevolume_mountsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `containers` sub block.\n', args=[]),
        new(
          image,
          args=null,
          command=null,
          env=null,
          liveness_probe=null,
          name=null,
          ports=null,
          resources=null,
          startup_probe=null,
          volume_mounts=null,
          working_dir=null
        ):: std.prune(a={
          args: args,
          command: command,
          env: env,
          image: image,
          liveness_probe: liveness_probe,
          name: name,
          ports: ports,
          resources: resources,
          startup_probe: startup_probe,
          volume_mounts: volume_mounts,
          working_dir: working_dir,
        }),
        ports:: {
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.ports.new` constructs a new object with attributes and blocks configured for the `ports`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container_port` (`number`): Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536. When `null`, the `container_port` field will be omitted from the resulting object.\n  - `name` (`string`): If specified, used to specify which protocol to use. Allowed values are &#34;http1&#34; and &#34;h2c&#34;. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ports` sub block.\n', args=[]),
          new(
            container_port=null,
            name=null
          ):: std.prune(a={
            container_port: container_port,
            name: name,
          }),
        },
        resources:: {
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.resources.new` constructs a new object with attributes and blocks configured for the `resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `limits` (`obj`): Only memory and CPU are supported. Note: The only supported values for CPU are &#39;1&#39;, &#39;2&#39;, &#39;4&#39;, and &#39;8&#39;. Setting 4 CPU requires at least 2Gi of memory. The values of the map is string form of the &#39;quantity&#39; k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go When `null`, the `limits` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `resources` sub block.\n', args=[]),
          new(
            limits=null
          ):: std.prune(a={
            limits: limits,
          }),
        },
        startup_probe:: {
          http_get:: {
            http_headers:: {
              '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.startup_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The header field name\n  - `value` (`string`): The header field value When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `http_headers` sub block.\n', args=[]),
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.startup_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Path to access on the HTTP server. Defaults to &#39;/&#39;. When `null`, the `path` field will be omitted from the resulting object.\n  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.startup_probe.http_get.http_headers.new](#fn-cloud_run_v2_jobtemplatetemplatecontainersstartup_probehttp_headersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_get` sub block.\n', args=[]),
            new(
              http_headers=null,
              path=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
            }),
          },
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.startup_probe.new` constructs a new object with attributes and blocks configured for the `startup_probe`\nTerraform sub block.\n\n\n\n**Args**:\n  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.\n  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.\n  - `period_seconds` (`number`): How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds When `null`, the `period_seconds` field will be omitted from the resulting object.\n  - `timeout_seconds` (`number`): Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `timeout_seconds` field will be omitted from the resulting object.\n  - `http_get` (`list[obj]`): HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.startup_probe.http_get.new](#fn-cloud_run_v2_jobtemplatetemplatecontainershttp_getnew) constructor.\n  - `tcp_socket` (`list[obj]`): TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified. When `null`, the `tcp_socket` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.startup_probe.tcp_socket.new](#fn-cloud_run_v2_jobtemplatetemplatecontainerstcp_socketnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `startup_probe` sub block.\n', args=[]),
          new(
            failure_threshold=null,
            http_get=null,
            initial_delay_seconds=null,
            period_seconds=null,
            tcp_socket=null,
            timeout_seconds=null
          ):: std.prune(a={
            failure_threshold: failure_threshold,
            http_get: http_get,
            initial_delay_seconds: initial_delay_seconds,
            period_seconds: period_seconds,
            tcp_socket: tcp_socket,
            timeout_seconds: timeout_seconds,
          }),
          tcp_socket:: {
            '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.startup_probe.tcp_socket.new` constructs a new object with attributes and blocks configured for the `tcp_socket`\nTerraform sub block.\n\n\n\n**Args**:\n  - `port` (`number`): Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to 8080. When `null`, the `port` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `tcp_socket` sub block.\n', args=[]),
            new(
              port=null
            ):: std.prune(a={
              port: port,
            }),
          },
        },
        volume_mounts:: {
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.containers.volume_mounts.new` constructs a new object with attributes and blocks configured for the `volume_mounts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mount_path` (`string`): Path within the container at which the volume should be mounted. Must not contain &#39;:&#39;. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run\n  - `name` (`string`): This must match the Name of a Volume.\n\n**Returns**:\n  - An attribute object that represents the `volume_mounts` sub block.\n', args=[]),
          new(
            mount_path,
            name
          ):: std.prune(a={
            mount_path: mount_path,
            name: name,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.new` constructs a new object with attributes and blocks configured for the `template`\nTerraform sub block.\n\n\n\n**Args**:\n  - `encryption_key` (`string`): A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek When `null`, the `encryption_key` field will be omitted from the resulting object.\n  - `execution_environment` (`string`): The execution environment being used to host this Task. Possible values: [&#34;EXECUTION_ENVIRONMENT_GEN1&#34;, &#34;EXECUTION_ENVIRONMENT_GEN2&#34;] When `null`, the `execution_environment` field will be omitted from the resulting object.\n  - `max_retries` (`number`): Number of retries allowed per Task, before marking this Task failed. When `null`, the `max_retries` field will be omitted from the resulting object.\n  - `service_account` (`string`): Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project&#39;s default service account. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `timeout` (`string`): Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.\n\nA duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `containers` (`list[obj]`): Holds the single container that defines the unit of execution for this task. When `null`, the `containers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.containers.new](#fn-cloud_run_v2_jobtemplatecontainersnew) constructor.\n  - `volumes` (`list[obj]`): A list of Volumes to make available to containers. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.volumes.new](#fn-cloud_run_v2_jobtemplatevolumesnew) constructor.\n  - `vpc_access` (`list[obj]`): VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. When `null`, the `vpc_access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.vpc_access.new](#fn-cloud_run_v2_jobtemplatevpc_accessnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `template` sub block.\n', args=[]),
      new(
        containers=null,
        encryption_key=null,
        execution_environment=null,
        max_retries=null,
        service_account=null,
        timeout=null,
        volumes=null,
        vpc_access=null
      ):: std.prune(a={
        containers: containers,
        encryption_key: encryption_key,
        execution_environment: execution_environment,
        max_retries: max_retries,
        service_account: service_account,
        timeout: timeout,
        volumes: volumes,
        vpc_access: vpc_access,
      }),
      volumes:: {
        cloud_sql_instance:: {
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.volumes.cloud_sql_instance.new` constructs a new object with attributes and blocks configured for the `cloud_sql_instance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instances` (`list`): The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance} When `null`, the `instances` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cloud_sql_instance` sub block.\n', args=[]),
          new(
            instances=null
          ):: std.prune(a={
            instances: instances,
          }),
        },
        '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Volume&#39;s name.\n  - `cloud_sql_instance` (`list[obj]`): For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. When `null`, the `cloud_sql_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.volumes.cloud_sql_instance.new](#fn-cloud_run_v2_jobtemplatetemplatecloud_sql_instancenew) constructor.\n  - `secret` (`list[obj]`): Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret When `null`, the `secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.volumes.secret.new](#fn-cloud_run_v2_jobtemplatetemplatesecretnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `volumes` sub block.\n', args=[]),
        new(
          name,
          cloud_sql_instance=null,
          secret=null
        ):: std.prune(a={
          cloud_sql_instance: cloud_sql_instance,
          name: name,
          secret: secret,
        }),
        secret:: {
          items:: {
            '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.volumes.secret.items.new` constructs a new object with attributes and blocks configured for the `items`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`number`): Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume&#39;s default mode will be used.\n  - `path` (`string`): The relative path of the secret in the container.\n  - `version` (`string`): The Cloud Secret Manager secret version. Can be &#39;latest&#39; for the latest value or an integer for a specific version\n\n**Returns**:\n  - An attribute object that represents the `items` sub block.\n', args=[]),
            new(
              mode,
              path,
              version
            ):: std.prune(a={
              mode: mode,
              path: path,
              version: version,
            }),
          },
          '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.volumes.secret.new` constructs a new object with attributes and blocks configured for the `secret`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_mode` (`number`): Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. When `null`, the `default_mode` field will be omitted from the resulting object.\n  - `secret` (`string`): The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.\n  - `items` (`list[obj]`): If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version. When `null`, the `items` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_job.template.template.volumes.secret.items.new](#fn-cloud_run_v2_jobtemplatetemplatevolumesitemsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `secret` sub block.\n', args=[]),
          new(
            secret,
            default_mode=null,
            items=null
          ):: std.prune(a={
            default_mode: default_mode,
            items: items,
            secret: secret,
          }),
        },
      },
      vpc_access:: {
        '#new':: d.fn(help='\n`google.cloud_run_v2_job.template.template.vpc_access.new` constructs a new object with attributes and blocks configured for the `vpc_access`\nTerraform sub block.\n\n\n\n**Args**:\n  - `connector` (`string`): VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. When `null`, the `connector` field will be omitted from the resulting object.\n  - `egress` (`string`): Traffic VPC egress settings. Possible values: [&#34;ALL_TRAFFIC&#34;, &#34;PRIVATE_RANGES_ONLY&#34;] When `null`, the `egress` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpc_access` sub block.\n', args=[]),
        new(
          connector=null,
          egress=null
        ):: std.prune(a={
          connector: connector,
          egress: egress,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloud_run_v2_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBinaryAuthorization':: d.fn(help='`google.list[obj].withBinaryAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the binary_authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBinaryAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.\n', args=[]),
  withBinaryAuthorization(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          binary_authorization: value,
        },
      },
    },
  },
  '#withBinaryAuthorizationMixin':: d.fn(help='`google.list[obj].withBinaryAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the binary_authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBinaryAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.\n', args=[]),
  withBinaryAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          binary_authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClient':: d.fn(help='`google.string.withClient` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the client field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `client` field.\n', args=[]),
  withClient(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          client: value,
        },
      },
    },
  },
  '#withClientVersion':: d.fn(help='`google.string.withClientVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the client_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `client_version` field.\n', args=[]),
  withClientVersion(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          client_version: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLaunchStage':: d.fn(help='`google.string.withLaunchStage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the launch_stage field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `launch_stage` field.\n', args=[]),
  withLaunchStage(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          launch_stage: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTemplate':: d.fn(help='`google.list[obj].withTemplate` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the template field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTemplateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `template` field.\n', args=[]),
  withTemplate(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          template: value,
        },
      },
    },
  },
  '#withTemplateMixin':: d.fn(help='`google.list[obj].withTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the template field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTemplate](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `template` field.\n', args=[]),
  withTemplateMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
