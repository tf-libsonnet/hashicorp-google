local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudfunctions_function', url='', help='`cloudfunctions_function` represents the `google_cloudfunctions_function` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  event_trigger:: {
    failure_policy:: {
      '#new':: d.fn(help='\n`google.cloudfunctions_function.event_trigger.failure_policy.new` constructs a new object with attributes and blocks configured for the `failure_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `retry` (`bool`): Whether the function should be retried on failure. Defaults to false.\n\n**Returns**:\n  - An attribute object that represents the `failure_policy` sub block.\n', args=[]),
      new(
        retry
      ):: std.prune(a={
        retry: retry,
      }),
    },
    '#new':: d.fn(help='\n`google.cloudfunctions_function.event_trigger.new` constructs a new object with attributes and blocks configured for the `event_trigger`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event_type` (`string`): The type of event to observe. For example: &#34;google.storage.object.finalize&#34;. See the documentation on calling Cloud Functions for a full reference of accepted triggers.\n  - `resource` (`string`): The name or partial URI of the resource from which to observe events. For example, &#34;myBucket&#34; or &#34;projects/my-project/topics/my-topic&#34;\n  - `failure_policy` (`list[obj]`): Specifies policy for failed executions When `null`, the `failure_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.event_trigger.failure_policy.new](#fn-event_triggerfailure_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `event_trigger` sub block.\n', args=[]),
    new(
      event_type,
      resource,
      failure_policy=null
    ):: std.prune(a={
      event_type: event_type,
      failure_policy: failure_policy,
      resource: resource,
    }),
  },
  '#new':: d.fn(help="\n`google.cloudfunctions_function.new` injects a new `google_cloudfunctions_function` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudfunctions_function.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudfunctions_function` using the reference:\n\n    $._ref.google_cloudfunctions_function.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudfunctions_function.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `available_memory_mb` (`number`): Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. When `null`, the `available_memory_mb` field will be omitted from the resulting object.\n  - `build_environment_variables` (`obj`):  A set of key/value environment variable pairs available during build time. When `null`, the `build_environment_variables` field will be omitted from the resulting object.\n  - `build_worker_pool` (`string`): Name of the Cloud Build Custom Worker Pool that should be used to build the function. When `null`, the `build_worker_pool` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the function. When `null`, the `description` field will be omitted from the resulting object.\n  - `docker_registry` (`string`): Docker Registry to use for storing the function\u0026#39;s Docker images. Allowed values are CONTAINER_REGISTRY (default) and ARTIFACT_REGISTRY. When `null`, the `docker_registry` field will be omitted from the resulting object.\n  - `docker_repository` (`string`): User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry for storing images built with Cloud Build. When `null`, the `docker_repository` field will be omitted from the resulting object.\n  - `entry_point` (`string`): Name of the function that will be executed when the Google Cloud Function is triggered. When `null`, the `entry_point` field will be omitted from the resulting object.\n  - `environment_variables` (`obj`): A set of key/value environment variable pairs to assign to the function. When `null`, the `environment_variables` field will be omitted from the resulting object.\n  - `https_trigger_security_level` (`string`): The security level for the function. Defaults to SECURE_OPTIONAL. Valid only if trigger_http is used. When `null`, the `https_trigger_security_level` field will be omitted from the resulting object.\n  - `https_trigger_url` (`string`): URL which triggers function execution. Returned only if trigger_http is used. When `null`, the `https_trigger_url` field will be omitted from the resulting object.\n  - `ingress_settings` (`string`): String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function. When `null`, the `ingress_settings` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements. When `null`, the `labels` field will be omitted from the resulting object.\n  - `max_instances` (`number`): The limit on the maximum number of function instances that may coexist at a given time. When `null`, the `max_instances` field will be omitted from the resulting object.\n  - `min_instances` (`number`): The limit on the minimum number of function instances that may coexist at a given time. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the function. Function names must be unique globally.\n  - `project` (`string`): Project of the function. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region of function. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `runtime` (`string`): The runtime in which the function is going to run. Eg. \u0026#34;nodejs8\u0026#34;, \u0026#34;nodejs10\u0026#34;, \u0026#34;python37\u0026#34;, \u0026#34;go111\u0026#34;.\n  - `service_account_email` (`string`):  If provided, the self-provided service account to run the function with. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `source_archive_bucket` (`string`): The GCS bucket containing the zip archive which contains the function. When `null`, the `source_archive_bucket` field will be omitted from the resulting object.\n  - `source_archive_object` (`string`): The source archive object (file) in archive bucket. When `null`, the `source_archive_object` field will be omitted from the resulting object.\n  - `timeout` (`number`): Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `trigger_http` (`bool`): Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic. When `null`, the `trigger_http` field will be omitted from the resulting object.\n  - `vpc_connector` (`string`): The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*. When `null`, the `vpc_connector` field will be omitted from the resulting object.\n  - `vpc_connector_egress_settings` (`string`): The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value. When `null`, the `vpc_connector_egress_settings` field will be omitted from the resulting object.\n  - `event_trigger` (`list[obj]`): A source that fires events in response to a condition in another service. Cannot be used with trigger_http. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.event_trigger.new](#fn-event_triggernew) constructor.\n  - `secret_environment_variables` (`list[obj]`): Secret environment variables configuration When `null`, the `secret_environment_variables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_environment_variables.new](#fn-secret_environment_variablesnew) constructor.\n  - `secret_volumes` (`list[obj]`): Secret volumes configuration. When `null`, the `secret_volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_volumes.new](#fn-secret_volumesnew) constructor.\n  - `source_repository` (`list[obj]`): Represents parameters related to source repository where a function is hosted. Cannot be set alongside source_archive_bucket or source_archive_object. When `null`, the `source_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.source_repository.new](#fn-source_repositorynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    runtime,
    available_memory_mb=null,
    build_environment_variables=null,
    build_worker_pool=null,
    description=null,
    docker_registry=null,
    docker_repository=null,
    entry_point=null,
    environment_variables=null,
    event_trigger=null,
    https_trigger_security_level=null,
    https_trigger_url=null,
    ingress_settings=null,
    kms_key_name=null,
    labels=null,
    max_instances=null,
    min_instances=null,
    project=null,
    region=null,
    secret_environment_variables=null,
    secret_volumes=null,
    service_account_email=null,
    source_archive_bucket=null,
    source_archive_object=null,
    source_repository=null,
    timeout=null,
    timeouts=null,
    trigger_http=null,
    vpc_connector=null,
    vpc_connector_egress_settings=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions_function',
    label=resourceLabel,
    attrs=self.newAttrs(
      available_memory_mb=available_memory_mb,
      build_environment_variables=build_environment_variables,
      build_worker_pool=build_worker_pool,
      description=description,
      docker_registry=docker_registry,
      docker_repository=docker_repository,
      entry_point=entry_point,
      environment_variables=environment_variables,
      event_trigger=event_trigger,
      https_trigger_security_level=https_trigger_security_level,
      https_trigger_url=https_trigger_url,
      ingress_settings=ingress_settings,
      kms_key_name=kms_key_name,
      labels=labels,
      max_instances=max_instances,
      min_instances=min_instances,
      name=name,
      project=project,
      region=region,
      runtime=runtime,
      secret_environment_variables=secret_environment_variables,
      secret_volumes=secret_volumes,
      service_account_email=service_account_email,
      source_archive_bucket=source_archive_bucket,
      source_archive_object=source_archive_object,
      source_repository=source_repository,
      timeout=timeout,
      timeouts=timeouts,
      trigger_http=trigger_http,
      vpc_connector=vpc_connector,
      vpc_connector_egress_settings=vpc_connector_egress_settings
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudfunctions_function.newAttrs` constructs a new object with attributes and blocks configured for the `cloudfunctions_function`\nTerraform resource.\n\nUnlike [google.cloudfunctions_function.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `available_memory_mb` (`number`): Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. When `null`, the `available_memory_mb` field will be omitted from the resulting object.\n  - `build_environment_variables` (`obj`):  A set of key/value environment variable pairs available during build time. When `null`, the `build_environment_variables` field will be omitted from the resulting object.\n  - `build_worker_pool` (`string`): Name of the Cloud Build Custom Worker Pool that should be used to build the function. When `null`, the `build_worker_pool` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the function. When `null`, the `description` field will be omitted from the resulting object.\n  - `docker_registry` (`string`): Docker Registry to use for storing the function&#39;s Docker images. Allowed values are CONTAINER_REGISTRY (default) and ARTIFACT_REGISTRY. When `null`, the `docker_registry` field will be omitted from the resulting object.\n  - `docker_repository` (`string`): User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry for storing images built with Cloud Build. When `null`, the `docker_repository` field will be omitted from the resulting object.\n  - `entry_point` (`string`): Name of the function that will be executed when the Google Cloud Function is triggered. When `null`, the `entry_point` field will be omitted from the resulting object.\n  - `environment_variables` (`obj`): A set of key/value environment variable pairs to assign to the function. When `null`, the `environment_variables` field will be omitted from the resulting object.\n  - `https_trigger_security_level` (`string`): The security level for the function. Defaults to SECURE_OPTIONAL. Valid only if trigger_http is used. When `null`, the `https_trigger_security_level` field will be omitted from the resulting object.\n  - `https_trigger_url` (`string`): URL which triggers function execution. Returned only if trigger_http is used. When `null`, the `https_trigger_url` field will be omitted from the resulting object.\n  - `ingress_settings` (`string`): String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function. When `null`, the `ingress_settings` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements. When `null`, the `labels` field will be omitted from the resulting object.\n  - `max_instances` (`number`): The limit on the maximum number of function instances that may coexist at a given time. When `null`, the `max_instances` field will be omitted from the resulting object.\n  - `min_instances` (`number`): The limit on the minimum number of function instances that may coexist at a given time. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the function. Function names must be unique globally.\n  - `project` (`string`): Project of the function. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region of function. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `runtime` (`string`): The runtime in which the function is going to run. Eg. &#34;nodejs8&#34;, &#34;nodejs10&#34;, &#34;python37&#34;, &#34;go111&#34;.\n  - `service_account_email` (`string`):  If provided, the self-provided service account to run the function with. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `source_archive_bucket` (`string`): The GCS bucket containing the zip archive which contains the function. When `null`, the `source_archive_bucket` field will be omitted from the resulting object.\n  - `source_archive_object` (`string`): The source archive object (file) in archive bucket. When `null`, the `source_archive_object` field will be omitted from the resulting object.\n  - `timeout` (`number`): Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `trigger_http` (`bool`): Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic. When `null`, the `trigger_http` field will be omitted from the resulting object.\n  - `vpc_connector` (`string`): The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*. When `null`, the `vpc_connector` field will be omitted from the resulting object.\n  - `vpc_connector_egress_settings` (`string`): The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value. When `null`, the `vpc_connector_egress_settings` field will be omitted from the resulting object.\n  - `event_trigger` (`list[obj]`): A source that fires events in response to a condition in another service. Cannot be used with trigger_http. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.event_trigger.new](#fn-event_triggernew) constructor.\n  - `secret_environment_variables` (`list[obj]`): Secret environment variables configuration When `null`, the `secret_environment_variables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_environment_variables.new](#fn-secret_environment_variablesnew) constructor.\n  - `secret_volumes` (`list[obj]`): Secret volumes configuration. When `null`, the `secret_volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_volumes.new](#fn-secret_volumesnew) constructor.\n  - `source_repository` (`list[obj]`): Represents parameters related to source repository where a function is hosted. Cannot be set alongside source_archive_bucket or source_archive_object. When `null`, the `source_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.source_repository.new](#fn-source_repositorynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudfunctions_function` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    runtime,
    available_memory_mb=null,
    build_environment_variables=null,
    build_worker_pool=null,
    description=null,
    docker_registry=null,
    docker_repository=null,
    entry_point=null,
    environment_variables=null,
    event_trigger=null,
    https_trigger_security_level=null,
    https_trigger_url=null,
    ingress_settings=null,
    kms_key_name=null,
    labels=null,
    max_instances=null,
    min_instances=null,
    project=null,
    region=null,
    secret_environment_variables=null,
    secret_volumes=null,
    service_account_email=null,
    source_archive_bucket=null,
    source_archive_object=null,
    source_repository=null,
    timeout=null,
    timeouts=null,
    trigger_http=null,
    vpc_connector=null,
    vpc_connector_egress_settings=null
  ):: std.prune(a={
    available_memory_mb: available_memory_mb,
    build_environment_variables: build_environment_variables,
    build_worker_pool: build_worker_pool,
    description: description,
    docker_registry: docker_registry,
    docker_repository: docker_repository,
    entry_point: entry_point,
    environment_variables: environment_variables,
    event_trigger: event_trigger,
    https_trigger_security_level: https_trigger_security_level,
    https_trigger_url: https_trigger_url,
    ingress_settings: ingress_settings,
    kms_key_name: kms_key_name,
    labels: labels,
    max_instances: max_instances,
    min_instances: min_instances,
    name: name,
    project: project,
    region: region,
    runtime: runtime,
    secret_environment_variables: secret_environment_variables,
    secret_volumes: secret_volumes,
    service_account_email: service_account_email,
    source_archive_bucket: source_archive_bucket,
    source_archive_object: source_archive_object,
    source_repository: source_repository,
    timeout: timeout,
    timeouts: timeouts,
    trigger_http: trigger_http,
    vpc_connector: vpc_connector,
    vpc_connector_egress_settings: vpc_connector_egress_settings,
  }),
  secret_environment_variables:: {
    '#new':: d.fn(help='\n`google.cloudfunctions_function.secret_environment_variables.new` constructs a new object with attributes and blocks configured for the `secret_environment_variables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Name of the environment variable.\n  - `project_id` (`string`): Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function&#39;s project, assuming that the secret exists in the same project as of the function. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `secret` (`string`): ID of the secret in secret manager (not the full resource name).\n  - `version` (`string`): Version of the secret (version number or the string &#34;latest&#34;). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start.\n\n**Returns**:\n  - An attribute object that represents the `secret_environment_variables` sub block.\n', args=[]),
    new(
      key,
      secret,
      version,
      project_id=null
    ):: std.prune(a={
      key: key,
      project_id: project_id,
      secret: secret,
      version: version,
    }),
  },
  secret_volumes:: {
    '#new':: d.fn(help='\n`google.cloudfunctions_function.secret_volumes.new` constructs a new object with attributes and blocks configured for the `secret_volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mount_path` (`string`): The path within the container to mount the secret volume. For example, setting the mount_path as &#34;/etc/secrets&#34; would mount the secret value files under the &#34;/etc/secrets&#34; directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: &#34;/etc/secrets&#34; Restricted mount paths: &#34;/cloudsql&#34;, &#34;/dev/log&#34;, &#34;/pod&#34;, &#34;/proc&#34;, &#34;/var/log&#34;.\n  - `project_id` (`string`): Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function&#39;s project, assuming that the secret exists in the same project as of the function. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `secret` (`string`): ID of the secret in secret manager (not the full resource name).\n  - `versions` (`list[obj]`): List of secret versions to mount for this secret. If empty, the &#34;latest&#34; version of the secret will be made available in a file named after the secret under the mount point. When `null`, the `versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_volumes.versions.new](#fn-secret_volumesversionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `secret_volumes` sub block.\n', args=[]),
    new(
      mount_path,
      secret,
      project_id=null,
      versions=null
    ):: std.prune(a={
      mount_path: mount_path,
      project_id: project_id,
      secret: secret,
      versions: versions,
    }),
    versions:: {
      '#new':: d.fn(help='\n`google.cloudfunctions_function.secret_volumes.versions.new` constructs a new object with attributes and blocks configured for the `versions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as &#34;/etc/secrets&#34; and path as &#34;/secret_foo&#34; would mount the secret value file at &#34;/etc/secrets/secret_foo&#34;.\n  - `version` (`string`): Version of the secret (version number or the string &#34;latest&#34;). It is preferable to use &#34;latest&#34; version with secret volumes as secret value changes are reflected immediately.\n\n**Returns**:\n  - An attribute object that represents the `versions` sub block.\n', args=[]),
      new(
        path,
        version
      ):: std.prune(a={
        path: path,
        version: version,
      }),
    },
  },
  source_repository:: {
    '#new':: d.fn(help='\n`google.cloudfunctions_function.source_repository.new` constructs a new object with attributes and blocks configured for the `source_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The URL pointing to the hosted repository where the function is defined.\n\n**Returns**:\n  - An attribute object that represents the `source_repository` sub block.\n', args=[]),
    new(
      url
    ):: std.prune(a={
      url: url,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudfunctions_function.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  '#withAvailableMemoryMb':: d.fn(help='`google.number.withAvailableMemoryMb` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the available_memory_mb field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `available_memory_mb` field.\n', args=[]),
  withAvailableMemoryMb(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          available_memory_mb: value,
        },
      },
    },
  },
  '#withBuildEnvironmentVariables':: d.fn(help='`google.obj.withBuildEnvironmentVariables` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the build_environment_variables field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `build_environment_variables` field.\n', args=[]),
  withBuildEnvironmentVariables(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          build_environment_variables: value,
        },
      },
    },
  },
  '#withBuildWorkerPool':: d.fn(help='`google.string.withBuildWorkerPool` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the build_worker_pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `build_worker_pool` field.\n', args=[]),
  withBuildWorkerPool(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          build_worker_pool: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDockerRegistry':: d.fn(help='`google.string.withDockerRegistry` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the docker_registry field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `docker_registry` field.\n', args=[]),
  withDockerRegistry(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          docker_registry: value,
        },
      },
    },
  },
  '#withDockerRepository':: d.fn(help='`google.string.withDockerRepository` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the docker_repository field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `docker_repository` field.\n', args=[]),
  withDockerRepository(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          docker_repository: value,
        },
      },
    },
  },
  '#withEntryPoint':: d.fn(help='`google.string.withEntryPoint` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the entry_point field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `entry_point` field.\n', args=[]),
  withEntryPoint(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          entry_point: value,
        },
      },
    },
  },
  '#withEnvironmentVariables':: d.fn(help='`google.obj.withEnvironmentVariables` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the environment_variables field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `environment_variables` field.\n', args=[]),
  withEnvironmentVariables(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          environment_variables: value,
        },
      },
    },
  },
  '#withEventTrigger':: d.fn(help='`google.list[obj].withEventTrigger` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_trigger field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEventTriggerMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_trigger` field.\n', args=[]),
  withEventTrigger(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          event_trigger: value,
        },
      },
    },
  },
  '#withEventTriggerMixin':: d.fn(help='`google.list[obj].withEventTriggerMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_trigger field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEventTrigger](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_trigger` field.\n', args=[]),
  withEventTriggerMixin(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          event_trigger+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHttpsTriggerSecurityLevel':: d.fn(help='`google.string.withHttpsTriggerSecurityLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the https_trigger_security_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `https_trigger_security_level` field.\n', args=[]),
  withHttpsTriggerSecurityLevel(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          https_trigger_security_level: value,
        },
      },
    },
  },
  '#withHttpsTriggerUrl':: d.fn(help='`google.string.withHttpsTriggerUrl` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the https_trigger_url field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `https_trigger_url` field.\n', args=[]),
  withHttpsTriggerUrl(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          https_trigger_url: value,
        },
      },
    },
  },
  '#withIngressSettings':: d.fn(help='`google.string.withIngressSettings` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ingress_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ingress_settings` field.\n', args=[]),
  withIngressSettings(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          ingress_settings: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMaxInstances':: d.fn(help='`google.number.withMaxInstances` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_instances` field.\n', args=[]),
  withMaxInstances(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          max_instances: value,
        },
      },
    },
  },
  '#withMinInstances':: d.fn(help='`google.number.withMinInstances` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the min_instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `min_instances` field.\n', args=[]),
  withMinInstances(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          min_instances: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRuntime':: d.fn(help='`google.string.withRuntime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime` field.\n', args=[]),
  withRuntime(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          runtime: value,
        },
      },
    },
  },
  '#withSecretEnvironmentVariables':: d.fn(help='`google.list[obj].withSecretEnvironmentVariables` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secret_environment_variables field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecretEnvironmentVariablesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secret_environment_variables` field.\n', args=[]),
  withSecretEnvironmentVariables(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_environment_variables: value,
        },
      },
    },
  },
  '#withSecretEnvironmentVariablesMixin':: d.fn(help='`google.list[obj].withSecretEnvironmentVariablesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secret_environment_variables field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecretEnvironmentVariables](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secret_environment_variables` field.\n', args=[]),
  withSecretEnvironmentVariablesMixin(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_environment_variables+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSecretVolumes':: d.fn(help='`google.list[obj].withSecretVolumes` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secret_volumes field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecretVolumesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secret_volumes` field.\n', args=[]),
  withSecretVolumes(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_volumes: value,
        },
      },
    },
  },
  '#withSecretVolumesMixin':: d.fn(help='`google.list[obj].withSecretVolumesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secret_volumes field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecretVolumes](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secret_volumes` field.\n', args=[]),
  withSecretVolumesMixin(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_volumes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccountEmail':: d.fn(help='`google.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account_email` field.\n', args=[]),
  withServiceAccountEmail(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  '#withSourceArchiveBucket':: d.fn(help='`google.string.withSourceArchiveBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_archive_bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_archive_bucket` field.\n', args=[]),
  withSourceArchiveBucket(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_archive_bucket: value,
        },
      },
    },
  },
  '#withSourceArchiveObject':: d.fn(help='`google.string.withSourceArchiveObject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_archive_object field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_archive_object` field.\n', args=[]),
  withSourceArchiveObject(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_archive_object: value,
        },
      },
    },
  },
  '#withSourceRepository':: d.fn(help='`google.list[obj].withSourceRepository` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_repository field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceRepositoryMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_repository` field.\n', args=[]),
  withSourceRepository(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_repository: value,
        },
      },
    },
  },
  '#withSourceRepositoryMixin':: d.fn(help='`google.list[obj].withSourceRepositoryMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_repository field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceRepository](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_repository` field.\n', args=[]),
  withSourceRepositoryMixin(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_repository+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeout':: d.fn(help='`google.number.withTimeout` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the timeout field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `timeout` field.\n', args=[]),
  withTimeout(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTriggerHttp':: d.fn(help='`google.bool.withTriggerHttp` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the trigger_http field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `trigger_http` field.\n', args=[]),
  withTriggerHttp(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          trigger_http: value,
        },
      },
    },
  },
  '#withVpcConnector':: d.fn(help='`google.string.withVpcConnector` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vpc_connector field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vpc_connector` field.\n', args=[]),
  withVpcConnector(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          vpc_connector: value,
        },
      },
    },
  },
  '#withVpcConnectorEgressSettings':: d.fn(help='`google.string.withVpcConnectorEgressSettings` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vpc_connector_egress_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vpc_connector_egress_settings` field.\n', args=[]),
  withVpcConnectorEgressSettings(resourceLabel, value): {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          vpc_connector_egress_settings: value,
        },
      },
    },
  },
}
