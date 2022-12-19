local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_scheduler_job', url='', help='`cloud_scheduler_job` represents the `google_cloud_scheduler_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  app_engine_http_target:: {
    app_engine_routing:: {
      '#new':: d.fn(help='\n`google.cloud_scheduler_job.app_engine_http_target.app_engine_routing.new` constructs a new object with attributes and blocks configured for the `app_engine_routing`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance` (`string`): App instance.\nBy default, the job is sent to an instance which is available when the job is attempted. When `null`, the `instance` field will be omitted from the resulting object.\n  - `service` (`string`): App service.\nBy default, the job is sent to the service which is the default service when the job is attempted. When `null`, the `service` field will be omitted from the resulting object.\n  - `version` (`string`): App version.\nBy default, the job is sent to the version which is the default version when the job is attempted. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `app_engine_routing` sub block.\n', args=[]),
      new(
        instance=null,
        service=null,
        version=null
      ):: std.prune(a={
        instance: instance,
        service: service,
        version: version,
      }),
    },
    '#new':: d.fn(help='\n`google.cloud_scheduler_job.app_engine_http_target.new` constructs a new object with attributes and blocks configured for the `app_engine_http_target`\nTerraform sub block.\n\n\n\n**Args**:\n  - `body` (`string`): HTTP request body. \nA request body is allowed only if the HTTP method is POST or PUT. \nIt will result in invalid argument error to set a body on a job with an incompatible HttpMethod.\n\nA base64-encoded string. When `null`, the `body` field will be omitted from the resulting object.\n  - `headers` (`obj`): HTTP request headers.\nThis map contains the header field names and values. \nHeaders can be set when the job is created. When `null`, the `headers` field will be omitted from the resulting object.\n  - `http_method` (`string`): Which HTTP method to use for the request. When `null`, the `http_method` field will be omitted from the resulting object.\n  - `relative_uri` (`string`): The relative URI.\nThe relative URL must begin with &#34;/&#34; and must be a valid HTTP relative URL. \nIt can contain a path, query string arguments, and \\# fragments. \nIf the relative URL is empty, then the root path &#34;/&#34; will be used. \nNo spaces are allowed, and the maximum length allowed is 2083 characters\n  - `app_engine_routing` (`list[obj]`): App Engine Routing setting for the job. When `null`, the `app_engine_routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.app_engine_http_target.app_engine_routing.new](#fn-appenginehttptargetappengineroutingnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `app_engine_http_target` sub block.\n', args=[]),
    new(
      relative_uri,
      app_engine_routing=null,
      body=null,
      headers=null,
      http_method=null
    ):: std.prune(a={
      app_engine_routing: app_engine_routing,
      body: body,
      headers: headers,
      http_method: http_method,
      relative_uri: relative_uri,
    }),
  },
  http_target:: {
    '#new':: d.fn(help='\n`google.cloud_scheduler_job.http_target.new` constructs a new object with attributes and blocks configured for the `http_target`\nTerraform sub block.\n\n\n\n**Args**:\n  - `body` (`string`): HTTP request body. \nA request body is allowed only if the HTTP method is POST, PUT, or PATCH. \nIt is an error to set body on a job with an incompatible HttpMethod.\n\nA base64-encoded string. When `null`, the `body` field will be omitted from the resulting object.\n  - `headers` (`obj`): This map contains the header field names and values. \nRepeated headers are not supported, but a header value can contain commas. When `null`, the `headers` field will be omitted from the resulting object.\n  - `http_method` (`string`): Which HTTP method to use for the request. When `null`, the `http_method` field will be omitted from the resulting object.\n  - `uri` (`string`): The full URI path that the request will be sent to.\n  - `oauth_token` (`list[obj]`): Contains information needed for generating an OAuth token.\nThis type of authorization should be used when sending requests to a GCP endpoint. When `null`, the `oauth_token` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.oauth_token.new](#fn-httptargetoauthtokennew) constructor.\n  - `oidc_token` (`list[obj]`): Contains information needed for generating an OpenID Connect token.\nThis type of authorization should be used when sending requests to third party endpoints or Cloud Run. When `null`, the `oidc_token` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.oidc_token.new](#fn-httptargetoidctokennew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `http_target` sub block.\n', args=[]),
    new(
      uri,
      body=null,
      headers=null,
      http_method=null,
      oauth_token=null,
      oidc_token=null
    ):: std.prune(a={
      body: body,
      headers: headers,
      http_method: http_method,
      oauth_token: oauth_token,
      oidc_token: oidc_token,
      uri: uri,
    }),
    oauth_token:: {
      '#new':: d.fn(help='\n`google.cloud_scheduler_job.http_target.oauth_token.new` constructs a new object with attributes and blocks configured for the `oauth_token`\nTerraform sub block.\n\n\n\n**Args**:\n  - `scope` (`string`): OAuth scope to be used for generating OAuth access token. If not specified,\n&#34;https://www.googleapis.com/auth/cloud-platform&#34; will be used. When `null`, the `scope` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): Service account email to be used for generating OAuth token.\nThe service account must be within the same project as the job.\n\n**Returns**:\n  - An attribute object that represents the `oauth_token` sub block.\n', args=[]),
      new(
        service_account_email,
        scope=null
      ):: std.prune(a={
        scope: scope,
        service_account_email: service_account_email,
      }),
    },
    oidc_token:: {
      '#new':: d.fn(help='\n`google.cloud_scheduler_job.http_target.oidc_token.new` constructs a new object with attributes and blocks configured for the `oidc_token`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audience` (`string`): Audience to be used when generating OIDC token. If not specified,\nthe URI specified in target will be used. When `null`, the `audience` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): Service account email to be used for generating OAuth token.\nThe service account must be within the same project as the job.\n\n**Returns**:\n  - An attribute object that represents the `oidc_token` sub block.\n', args=[]),
      new(
        service_account_email,
        audience=null
      ):: std.prune(a={
        audience: audience,
        service_account_email: service_account_email,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.cloud_scheduler_job.new` injects a new `google_cloud_scheduler_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloud_scheduler_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloud_scheduler_job` using the reference:\n\n    $._ref.google_cloud_scheduler_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloud_scheduler_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `attempt_deadline` (`string`): The deadline for job attempts. If the request handler does not respond by this deadline then the request is\ncancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in\nexecution logs. Cloud Scheduler will retry the job according to the RetryConfig.\nThe allowed duration for this deadline is:\n* For HTTP targets, between 15 seconds and 30 minutes.\n* For App Engine HTTP targets, between 15 seconds and 24 hours.\n* **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.\nA duration in seconds with up to nine fractional digits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34; When `null`, the `attempt_deadline` field will be omitted from the resulting object.\n  - `description` (`string`): A human-readable description for the job. \nThis string must not contain more than 500 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the job.\n  - `paused` (`bool`): Sets the job to a paused state. Jobs default to being enabled when this property is not set. When `null`, the `paused` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the scheduler job resides. If it is not provided, Terraform will use the provider default. When `null`, the `region` field will be omitted from the resulting object.\n  - `schedule` (`string`): Describes the schedule on which the job will be executed. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Specifies the time zone to be used in interpreting schedule.\nThe value of this field must be a time zone name from the tz database. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `app_engine_http_target` (`list[obj]`): App Engine HTTP target.\nIf the job providers a App Engine HTTP target the cron will \nsend a request to the service instance When `null`, the `app_engine_http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.app_engine_http_target.new](#fn-cloudschedulerjobappenginehttptargetnew) constructor.\n  - `http_target` (`list[obj]`): HTTP target.\nIf the job providers a http_target the cron will \nsend a request to the targeted url When `null`, the `http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.new](#fn-cloudschedulerjobhttptargetnew) constructor.\n  - `pubsub_target` (`list[obj]`): Pub/Sub target\nIf the job providers a Pub/Sub target the cron will publish\na message to the provided topic When `null`, the `pubsub_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.pubsub_target.new](#fn-cloudschedulerjobpubsubtargetnew) constructor.\n  - `retry_config` (`list[obj]`): By default, if a job does not complete successfully, \nmeaning that an acknowledgement is not received from the handler, \nthen it will be retried with exponential backoff according to the settings When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.retry_config.new](#fn-cloudschedulerjobretryconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.timeouts.new](#fn-cloudschedulerjobtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    app_engine_http_target=null,
    attempt_deadline=null,
    description=null,
    http_target=null,
    paused=null,
    project=null,
    pubsub_target=null,
    region=null,
    retry_config=null,
    schedule=null,
    time_zone=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_scheduler_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine_http_target=app_engine_http_target,
      attempt_deadline=attempt_deadline,
      description=description,
      http_target=http_target,
      name=name,
      paused=paused,
      project=project,
      pubsub_target=pubsub_target,
      region=region,
      retry_config=retry_config,
      schedule=schedule,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloud_scheduler_job.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_scheduler_job`\nTerraform resource.\n\nUnlike [google.cloud_scheduler_job.new](#fn-cloudschedulerjobnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `attempt_deadline` (`string`): The deadline for job attempts. If the request handler does not respond by this deadline then the request is\ncancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in\nexecution logs. Cloud Scheduler will retry the job according to the RetryConfig.\nThe allowed duration for this deadline is:\n* For HTTP targets, between 15 seconds and 30 minutes.\n* For App Engine HTTP targets, between 15 seconds and 24 hours.\n* **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34; When `null`, the `attempt_deadline` field will be omitted from the resulting object.\n  - `description` (`string`): A human-readable description for the job. \nThis string must not contain more than 500 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the job.\n  - `paused` (`bool`): Sets the job to a paused state. Jobs default to being enabled when this property is not set. When `null`, the `paused` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the scheduler job resides. If it is not provided, Terraform will use the provider default. When `null`, the `region` field will be omitted from the resulting object.\n  - `schedule` (`string`): Describes the schedule on which the job will be executed. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Specifies the time zone to be used in interpreting schedule.\nThe value of this field must be a time zone name from the tz database. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `app_engine_http_target` (`list[obj]`): App Engine HTTP target.\nIf the job providers a App Engine HTTP target the cron will \nsend a request to the service instance When `null`, the `app_engine_http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.app_engine_http_target.new](#fn-cloudschedulerjobappenginehttptargetnew) constructor.\n  - `http_target` (`list[obj]`): HTTP target.\nIf the job providers a http_target the cron will \nsend a request to the targeted url When `null`, the `http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.new](#fn-cloudschedulerjobhttptargetnew) constructor.\n  - `pubsub_target` (`list[obj]`): Pub/Sub target\nIf the job providers a Pub/Sub target the cron will publish\na message to the provided topic When `null`, the `pubsub_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.pubsub_target.new](#fn-cloudschedulerjobpubsubtargetnew) constructor.\n  - `retry_config` (`list[obj]`): By default, if a job does not complete successfully, \nmeaning that an acknowledgement is not received from the handler, \nthen it will be retried with exponential backoff according to the settings When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.retry_config.new](#fn-cloudschedulerjobretryconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.timeouts.new](#fn-cloudschedulerjobtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_scheduler_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    app_engine_http_target=null,
    attempt_deadline=null,
    description=null,
    http_target=null,
    paused=null,
    project=null,
    pubsub_target=null,
    region=null,
    retry_config=null,
    schedule=null,
    time_zone=null,
    timeouts=null
  ):: std.prune(a={
    app_engine_http_target: app_engine_http_target,
    attempt_deadline: attempt_deadline,
    description: description,
    http_target: http_target,
    name: name,
    paused: paused,
    project: project,
    pubsub_target: pubsub_target,
    region: region,
    retry_config: retry_config,
    schedule: schedule,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  pubsub_target:: {
    '#new':: d.fn(help='\n`google.cloud_scheduler_job.pubsub_target.new` constructs a new object with attributes and blocks configured for the `pubsub_target`\nTerraform sub block.\n\n\n\n**Args**:\n  - `attributes` (`obj`): Attributes for PubsubMessage.\nPubsub message must contain either non-empty data, or at least one attribute. When `null`, the `attributes` field will be omitted from the resulting object.\n  - `data` (`string`): The message payload for PubsubMessage.\nPubsub message must contain either non-empty data, or at least one attribute.\n\n A base64-encoded string. When `null`, the `data` field will be omitted from the resulting object.\n  - `topic_name` (`string`): The full resource name for the Cloud Pub/Sub topic to which\nmessages will be published when a job is delivered. ~&gt;**NOTE:**\nThe topic name must be in the same format as required by PubSub&#39;s\nPublishRequest.name, e.g. &#39;projects/my-project/topics/my-topic&#39;.\n\n**Returns**:\n  - An attribute object that represents the `pubsub_target` sub block.\n', args=[]),
    new(
      topic_name,
      attributes=null,
      data=null
    ):: std.prune(a={
      attributes: attributes,
      data: data,
      topic_name: topic_name,
    }),
  },
  retry_config:: {
    '#new':: d.fn(help='\n`google.cloud_scheduler_job.retry_config.new` constructs a new object with attributes and blocks configured for the `retry_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_backoff_duration` (`string`): The maximum amount of time to wait before retrying a job after it fails.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. When `null`, the `max_backoff_duration` field will be omitted from the resulting object.\n  - `max_doublings` (`number`): The time between retries will double maxDoublings times.\nA job&#39;s retry interval starts at minBackoffDuration, \nthen doubles maxDoublings times, then increases linearly, \nand finally retries retries at intervals of maxBackoffDuration up to retryCount times. When `null`, the `max_doublings` field will be omitted from the resulting object.\n  - `max_retry_duration` (`string`): The time limit for retrying a failed job, measured from time when an execution was first attempted. \nIf specified with retryCount, the job will be retried until both limits are reached.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. When `null`, the `max_retry_duration` field will be omitted from the resulting object.\n  - `min_backoff_duration` (`string`): The minimum amount of time to wait before retrying a job after it fails.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. When `null`, the `min_backoff_duration` field will be omitted from the resulting object.\n  - `retry_count` (`number`): The number of attempts that the system will make to run a \njob using the exponential backoff procedure described by maxDoublings.\nValues greater than 5 and negative values are not allowed. When `null`, the `retry_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retry_config` sub block.\n', args=[]),
    new(
      max_backoff_duration=null,
      max_doublings=null,
      max_retry_duration=null,
      min_backoff_duration=null,
      retry_count=null
    ):: std.prune(a={
      max_backoff_duration: max_backoff_duration,
      max_doublings: max_doublings,
      max_retry_duration: max_retry_duration,
      min_backoff_duration: min_backoff_duration,
      retry_count: retry_count,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloud_scheduler_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAppEngineHttpTarget':: d.fn(help='`google.cloud_scheduler_job.withAppEngineHttpTarget` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the app_engine_http_target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `app_engine_http_target` field.\n', args=[]),
  withAppEngineHttpTarget(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          app_engine_http_target: value,
        },
      },
    },
  },
  '#withAppEngineHttpTargetMixin':: d.fn(help='`google.cloud_scheduler_job.withAppEngineHttpTargetMixin` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the app_engine_http_target field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloud_scheduler_job.withAppEngineHttpTarget](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `app_engine_http_target` field.\n', args=[]),
  withAppEngineHttpTargetMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          app_engine_http_target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAttemptDeadline':: d.fn(help='`google.cloud_scheduler_job.withAttemptDeadline` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the attempt_deadline field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `attempt_deadline` field.\n', args=[]),
  withAttemptDeadline(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          attempt_deadline: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.cloud_scheduler_job.withDescription` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withHttpTarget':: d.fn(help='`google.cloud_scheduler_job.withHttpTarget` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the http_target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `http_target` field.\n', args=[]),
  withHttpTarget(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          http_target: value,
        },
      },
    },
  },
  '#withHttpTargetMixin':: d.fn(help='`google.cloud_scheduler_job.withHttpTargetMixin` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the http_target field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloud_scheduler_job.withHttpTarget](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `http_target` field.\n', args=[]),
  withHttpTargetMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          http_target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.cloud_scheduler_job.withName` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPaused':: d.fn(help='`google.cloud_scheduler_job.withPaused` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the paused field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `paused` field.\n', args=[]),
  withPaused(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          paused: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.cloud_scheduler_job.withProject` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPubsubTarget':: d.fn(help='`google.cloud_scheduler_job.withPubsubTarget` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the pubsub_target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `pubsub_target` field.\n', args=[]),
  withPubsubTarget(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          pubsub_target: value,
        },
      },
    },
  },
  '#withPubsubTargetMixin':: d.fn(help='`google.cloud_scheduler_job.withPubsubTargetMixin` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the pubsub_target field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloud_scheduler_job.withPubsubTarget](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `pubsub_target` field.\n', args=[]),
  withPubsubTargetMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          pubsub_target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.cloud_scheduler_job.withRegion` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRetryConfig':: d.fn(help='`google.cloud_scheduler_job.withRetryConfig` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the retry_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `retry_config` field.\n', args=[]),
  withRetryConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          retry_config: value,
        },
      },
    },
  },
  '#withRetryConfigMixin':: d.fn(help='`google.cloud_scheduler_job.withRetryConfigMixin` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the retry_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloud_scheduler_job.withRetryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `retry_config` field.\n', args=[]),
  withRetryConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          retry_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSchedule':: d.fn(help='`google.cloud_scheduler_job.withSchedule` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the schedule field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `schedule` field.\n', args=[]),
  withSchedule(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google.cloud_scheduler_job.withTimeZone` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.cloud_scheduler_job.withTimeouts` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.cloud_scheduler_job.withTimeoutsMixin` constructs a mixin object that can be merged into the `cloud_scheduler_job`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.cloud_scheduler_job.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
