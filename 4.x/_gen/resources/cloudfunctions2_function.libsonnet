local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudfunctions2_function', url='', help='`cloudfunctions2_function` represents the `google_cloudfunctions2_function` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  build_config:: {
    '#new':: d.fn(help='\n`google.cloudfunctions2_function.build_config.new` constructs a new object with attributes and blocks configured for the `build_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `docker_repository` (`string`): User managed repository created in Artifact Registry optionally with a customer managed encryption key. When `null`, the `docker_repository` field will be omitted from the resulting object.\n  - `entry_point` (`string`): The name of the function (as defined in source code) that will be executed.\nDefaults to the resource name suffix, if not specified. For backward\ncompatibility, if function with given name is not found, then the system\nwill try to use function named &#34;function&#34;. For Node.js this is name of a\nfunction exported by the module specified in source_location. When `null`, the `entry_point` field will be omitted from the resulting object.\n  - `environment_variables` (`obj`): User-provided build-time environment variables for the function. When `null`, the `environment_variables` field will be omitted from the resulting object.\n  - `runtime` (`string`): The runtime in which to run the function. Required when deploying a new\nfunction, optional when updating an existing function. When `null`, the `runtime` field will be omitted from the resulting object.\n  - `worker_pool` (`string`): Name of the Cloud Build Custom Worker Pool that should be used to build the function. When `null`, the `worker_pool` field will be omitted from the resulting object.\n  - `source` (`list[obj]`): The location of the function source code. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.source.new](#fn-buildconfigsourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `build_config` sub block.\n', args=[]),
    new(
      docker_repository=null,
      entry_point=null,
      environment_variables=null,
      runtime=null,
      source=null,
      worker_pool=null
    ):: std.prune(a={
      docker_repository: docker_repository,
      entry_point: entry_point,
      environment_variables: environment_variables,
      runtime: runtime,
      source: source,
      worker_pool: worker_pool,
    }),
    source:: {
      '#new':: d.fn(help='\n`google.cloudfunctions2_function.build_config.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repo_source` (`list[obj]`): If provided, get the source from this location in a Cloud Source Repository. When `null`, the `repo_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.source.repo_source.new](#fn-sourcereposourcenew) constructor.\n  - `storage_source` (`list[obj]`): If provided, get the source from this location in Google Cloud Storage. When `null`, the `storage_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.source.storage_source.new](#fn-sourcestoragesourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
      new(
        repo_source=null,
        storage_source=null
      ):: std.prune(a={
        repo_source: repo_source,
        storage_source: storage_source,
      }),
      repo_source:: {
        '#new':: d.fn(help='\n`google.cloudfunctions2_function.build_config.source.repo_source.new` constructs a new object with attributes and blocks configured for the `repo_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `branch_name` (`string`): Regex matching branches to build. When `null`, the `branch_name` field will be omitted from the resulting object.\n  - `commit_sha` (`string`): Regex matching tags to build. When `null`, the `commit_sha` field will be omitted from the resulting object.\n  - `dir` (`string`): Directory, relative to the source root, in which to run the build. When `null`, the `dir` field will be omitted from the resulting object.\n  - `invert_regex` (`bool`): Only trigger a build if the revision regex does \nNOT match the revision regex. When `null`, the `invert_regex` field will be omitted from the resulting object.\n  - `project_id` (`string`): ID of the project that owns the Cloud Source Repository. If omitted, the \nproject ID requesting the build is assumed. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `repo_name` (`string`): Name of the Cloud Source Repository. When `null`, the `repo_name` field will be omitted from the resulting object.\n  - `tag_name` (`string`): Regex matching tags to build. When `null`, the `tag_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `repo_source` sub block.\n', args=[]),
        new(
          branch_name=null,
          commit_sha=null,
          dir=null,
          invert_regex=null,
          project_id=null,
          repo_name=null,
          tag_name=null
        ):: std.prune(a={
          branch_name: branch_name,
          commit_sha: commit_sha,
          dir: dir,
          invert_regex: invert_regex,
          project_id: project_id,
          repo_name: repo_name,
          tag_name: tag_name,
        }),
      },
      storage_source:: {
        '#new':: d.fn(help='\n`google.cloudfunctions2_function.build_config.source.storage_source.new` constructs a new object with attributes and blocks configured for the `storage_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Google Cloud Storage bucket containing the source When `null`, the `bucket` field will be omitted from the resulting object.\n  - `generation` (`number`): Google Cloud Storage generation for the object. If the generation \nis omitted, the latest generation will be used. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Google Cloud Storage object containing the source. When `null`, the `object` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `storage_source` sub block.\n', args=[]),
        new(
          bucket=null,
          generation=null,
          object=null
        ):: std.prune(a={
          bucket: bucket,
          generation: generation,
          object: object,
        }),
      },
    },
  },
  event_trigger:: {
    event_filters:: {
      '#new':: d.fn(help='\n`google.cloudfunctions2_function.event_trigger.event_filters.new` constructs a new object with attributes and blocks configured for the `event_filters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `attribute` (`string`): &#39;Required. The name of a CloudEvents attribute.\nCurrently, only a subset of attributes are supported for filtering. Use the &#39;gcloud eventarc providers describe&#39; command to learn more about events and their attributes.\nDo not filter for the &#39;type&#39; attribute here, as this is already achieved by the resource&#39;s &#39;event_type&#39; attribute.\n  - `operator` (`string`): Optional. The operator used for matching the events with the value of\nthe filter. If not specified, only events that have an exact key-value\npair specified in the filter are matched.\nThe only allowed value is &#39;match-path-pattern&#39;.\n[See documentation on path patterns here](https://cloud.google.com/eventarc/docs/path-patterns)&#39; When `null`, the `operator` field will be omitted from the resulting object.\n  - `value` (`string`): Required. The value for the attribute.\nIf the operator field is set as &#39;match-path-pattern&#39;, this value can be a path pattern instead of an exact value.\n\n**Returns**:\n  - An attribute object that represents the `event_filters` sub block.\n', args=[]),
      new(
        attribute,
        value,
        operator=null
      ):: std.prune(a={
        attribute: attribute,
        operator: operator,
        value: value,
      }),
    },
    '#new':: d.fn(help='\n`google.cloudfunctions2_function.event_trigger.new` constructs a new object with attributes and blocks configured for the `event_trigger`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event_type` (`string`): Required. The type of event to observe. When `null`, the `event_type` field will be omitted from the resulting object.\n  - `pubsub_topic` (`string`): The name of a Pub/Sub topic in the same project that will be used\nas the transport topic for the event delivery. When `null`, the `pubsub_topic` field will be omitted from the resulting object.\n  - `retry_policy` (`string`): Describes the retry policy in case of function&#39;s execution failure.\nRetried execution is charged as any other execution. Possible values: [&#34;RETRY_POLICY_UNSPECIFIED&#34;, &#34;RETRY_POLICY_DO_NOT_RETRY&#34;, &#34;RETRY_POLICY_RETRY&#34;] When `null`, the `retry_policy` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The email of the service account for this function. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `trigger_region` (`string`): The region that the trigger will be in. The trigger will only receive\nevents originating in this region. It can be the same\nregion as the function, a different region or multi-region, or the global\nregion. If not provided, defaults to the same region as the function. When `null`, the `trigger_region` field will be omitted from the resulting object.\n  - `event_filters` (`list[obj]`): Criteria used to filter events. When `null`, the `event_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.event_trigger.event_filters.new](#fn-eventtriggereventfiltersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `event_trigger` sub block.\n', args=[]),
    new(
      event_filters=null,
      event_type=null,
      pubsub_topic=null,
      retry_policy=null,
      service_account_email=null,
      trigger_region=null
    ):: std.prune(a={
      event_filters: event_filters,
      event_type: event_type,
      pubsub_topic: pubsub_topic,
      retry_policy: retry_policy,
      service_account_email: service_account_email,
      trigger_region: trigger_region,
    }),
  },
  '#new':: d.fn(help="\n`google.cloudfunctions2_function.new` injects a new `google_cloudfunctions2_function` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudfunctions2_function.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudfunctions2_function` using the reference:\n\n    $._ref.google_cloudfunctions2_function.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudfunctions2_function.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-provided description of a function. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs associated with this Cloud Function. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of this cloud function. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the function. Function names must\nbe unique globally and match pattern \u0026#39;projects/*/locations/*/functions/*\u0026#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `build_config` (`list[obj]`): Describes the Build step of the function that builds a container\nfrom the given source. When `null`, the `build_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.new](#fn-cloudfunctions2functionbuildconfignew) constructor.\n  - `event_trigger` (`list[obj]`): An Eventarc trigger managed by Google Cloud Functions that fires events in\nresponse to a condition in another service. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.event_trigger.new](#fn-cloudfunctions2functioneventtriggernew) constructor.\n  - `service_config` (`list[obj]`): Describes the Service being deployed. When `null`, the `service_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.new](#fn-cloudfunctions2functionserviceconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.timeouts.new](#fn-cloudfunctions2functiontimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    build_config=null,
    description=null,
    event_trigger=null,
    labels=null,
    location=null,
    project=null,
    service_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions2_function',
    label=resourceLabel,
    attrs=self.newAttrs(
      build_config=build_config,
      description=description,
      event_trigger=event_trigger,
      labels=labels,
      location=location,
      name=name,
      project=project,
      service_config=service_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudfunctions2_function.newAttrs` constructs a new object with attributes and blocks configured for the `cloudfunctions2_function`\nTerraform resource.\n\nUnlike [google.cloudfunctions2_function.new](#fn-cloudfunctions2functionnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-provided description of a function. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs associated with this Cloud Function. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of this cloud function. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the function. Function names must\nbe unique globally and match pattern &#39;projects/*/locations/*/functions/*&#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `build_config` (`list[obj]`): Describes the Build step of the function that builds a container\nfrom the given source. When `null`, the `build_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.new](#fn-cloudfunctions2functionbuildconfignew) constructor.\n  - `event_trigger` (`list[obj]`): An Eventarc trigger managed by Google Cloud Functions that fires events in\nresponse to a condition in another service. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.event_trigger.new](#fn-cloudfunctions2functioneventtriggernew) constructor.\n  - `service_config` (`list[obj]`): Describes the Service being deployed. When `null`, the `service_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.new](#fn-cloudfunctions2functionserviceconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.timeouts.new](#fn-cloudfunctions2functiontimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudfunctions2_function` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    build_config=null,
    description=null,
    event_trigger=null,
    labels=null,
    location=null,
    project=null,
    service_config=null,
    timeouts=null
  ):: std.prune(a={
    build_config: build_config,
    description: description,
    event_trigger: event_trigger,
    labels: labels,
    location: location,
    name: name,
    project: project,
    service_config: service_config,
    timeouts: timeouts,
  }),
  service_config:: {
    '#new':: d.fn(help='\n`google.cloudfunctions2_function.service_config.new` constructs a new object with attributes and blocks configured for the `service_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all_traffic_on_latest_revision` (`bool`): Whether 100% of traffic is routed to the latest revision. Defaults to true. When `null`, the `all_traffic_on_latest_revision` field will be omitted from the resulting object.\n  - `available_memory` (`string`): The amount of memory available for a function.\nDefaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is\nsupplied the value is interpreted as bytes. When `null`, the `available_memory` field will be omitted from the resulting object.\n  - `environment_variables` (`obj`): Environment variables that shall be available during function execution. When `null`, the `environment_variables` field will be omitted from the resulting object.\n  - `ingress_settings` (`string`): Available ingress settings. Defaults to &#34;ALLOW_ALL&#34; if unspecified. Default value: &#34;ALLOW_ALL&#34; Possible values: [&#34;ALLOW_ALL&#34;, &#34;ALLOW_INTERNAL_ONLY&#34;, &#34;ALLOW_INTERNAL_AND_GCLB&#34;] When `null`, the `ingress_settings` field will be omitted from the resulting object.\n  - `max_instance_count` (`number`): The limit on the maximum number of function instances that may coexist at a\ngiven time. When `null`, the `max_instance_count` field will be omitted from the resulting object.\n  - `min_instance_count` (`number`): The limit on the minimum number of function instances that may coexist at a\ngiven time. When `null`, the `min_instance_count` field will be omitted from the resulting object.\n  - `service` (`string`): Name of the service associated with a Function. When `null`, the `service` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The email of the service account for this function. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `timeout_seconds` (`number`): The function execution timeout. Execution is considered failed and\ncan be terminated if the function is not completed at the end of the\ntimeout period. Defaults to 60 seconds. When `null`, the `timeout_seconds` field will be omitted from the resulting object.\n  - `vpc_connector` (`string`): The Serverless VPC Access connector that this cloud function can connect to. When `null`, the `vpc_connector` field will be omitted from the resulting object.\n  - `vpc_connector_egress_settings` (`string`): Available egress settings. Possible values: [&#34;VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED&#34;, &#34;PRIVATE_RANGES_ONLY&#34;, &#34;ALL_TRAFFIC&#34;] When `null`, the `vpc_connector_egress_settings` field will be omitted from the resulting object.\n  - `secret_environment_variables` (`list[obj]`): Secret environment variables configuration. When `null`, the `secret_environment_variables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.secret_environment_variables.new](#fn-serviceconfigsecretenvironmentvariablesnew) constructor.\n  - `secret_volumes` (`list[obj]`): Secret volumes configuration. When `null`, the `secret_volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.secret_volumes.new](#fn-serviceconfigsecretvolumesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `service_config` sub block.\n', args=[]),
    new(
      all_traffic_on_latest_revision=null,
      available_memory=null,
      environment_variables=null,
      ingress_settings=null,
      max_instance_count=null,
      min_instance_count=null,
      secret_environment_variables=null,
      secret_volumes=null,
      service=null,
      service_account_email=null,
      timeout_seconds=null,
      vpc_connector=null,
      vpc_connector_egress_settings=null
    ):: std.prune(a={
      all_traffic_on_latest_revision: all_traffic_on_latest_revision,
      available_memory: available_memory,
      environment_variables: environment_variables,
      ingress_settings: ingress_settings,
      max_instance_count: max_instance_count,
      min_instance_count: min_instance_count,
      secret_environment_variables: secret_environment_variables,
      secret_volumes: secret_volumes,
      service: service,
      service_account_email: service_account_email,
      timeout_seconds: timeout_seconds,
      vpc_connector: vpc_connector,
      vpc_connector_egress_settings: vpc_connector_egress_settings,
    }),
    secret_environment_variables:: {
      '#new':: d.fn(help='\n`google.cloudfunctions2_function.service_config.secret_environment_variables.new` constructs a new object with attributes and blocks configured for the `secret_environment_variables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Name of the environment variable.\n  - `project_id` (`string`): Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function&#39;s project assuming that the secret exists in the same project as of the function.\n  - `secret` (`string`): Name of the secret in secret manager (not the full resource name).\n  - `version` (`string`): Version of the secret (version number or the string &#39;latest&#39;). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.\n\n**Returns**:\n  - An attribute object that represents the `secret_environment_variables` sub block.\n', args=[]),
      new(
        key,
        project_id,
        secret,
        version
      ):: std.prune(a={
        key: key,
        project_id: project_id,
        secret: secret,
        version: version,
      }),
    },
    secret_volumes:: {
      '#new':: d.fn(help='\n`google.cloudfunctions2_function.service_config.secret_volumes.new` constructs a new object with attributes and blocks configured for the `secret_volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mount_path` (`string`): The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets\n  - `project_id` (`string`): Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function&#39;s project assuming that the secret exists in the same project as of the function.\n  - `secret` (`string`): Name of the secret in secret manager (not the full resource name).\n  - `versions` (`list[obj]`): List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.&#39; When `null`, the `versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.secret_volumes.versions.new](#fn-secretvolumesversionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `secret_volumes` sub block.\n', args=[]),
      new(
        mount_path,
        project_id,
        secret,
        versions=null
      ):: std.prune(a={
        mount_path: mount_path,
        project_id: project_id,
        secret: secret,
        versions: versions,
      }),
      versions:: {
        '#new':: d.fn(help='\n`google.cloudfunctions2_function.service_config.secret_volumes.versions.new` constructs a new object with attributes and blocks configured for the `versions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mountPath as &#39;/etc/secrets&#39; and path as secret_foo would mount the secret value file at /etc/secrets/secret_foo.\n  - `version` (`string`): Version of the secret (version number or the string &#39;latest&#39;). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately.\n\n**Returns**:\n  - An attribute object that represents the `versions` sub block.\n', args=[]),
        new(
          path,
          version
        ):: std.prune(a={
          path: path,
          version: version,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudfunctions2_function.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBuildConfig':: d.fn(help='`google.cloudfunctions2_function.withBuildConfig` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the build_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `build_config` field.\n', args=[]),
  withBuildConfig(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          build_config: value,
        },
      },
    },
  },
  '#withBuildConfigMixin':: d.fn(help='`google.cloudfunctions2_function.withBuildConfigMixin` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the build_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloudfunctions2_function.withBuildConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `build_config` field.\n', args=[]),
  withBuildConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          build_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.cloudfunctions2_function.withDescription` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEventTrigger':: d.fn(help='`google.cloudfunctions2_function.withEventTrigger` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the event_trigger field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `event_trigger` field.\n', args=[]),
  withEventTrigger(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          event_trigger: value,
        },
      },
    },
  },
  '#withEventTriggerMixin':: d.fn(help='`google.cloudfunctions2_function.withEventTriggerMixin` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the event_trigger field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloudfunctions2_function.withEventTrigger](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `event_trigger` field.\n', args=[]),
  withEventTriggerMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          event_trigger+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.cloudfunctions2_function.withLabels` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.cloudfunctions2_function.withLocation` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.cloudfunctions2_function.withName` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.cloudfunctions2_function.withProject` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceConfig':: d.fn(help='`google.cloudfunctions2_function.withServiceConfig` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the service_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `service_config` field.\n', args=[]),
  withServiceConfig(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          service_config: value,
        },
      },
    },
  },
  '#withServiceConfigMixin':: d.fn(help='`google.cloudfunctions2_function.withServiceConfigMixin` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the service_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloudfunctions2_function.withServiceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `service_config` field.\n', args=[]),
  withServiceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          service_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.cloudfunctions2_function.withTimeouts` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.cloudfunctions2_function.withTimeoutsMixin` constructs a mixin object that can be merged into the `cloudfunctions2_function`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.cloudfunctions2_function.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
