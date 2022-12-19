---
permalink: /cloud_scheduler_job/
---

# cloud_scheduler_job

`cloud_scheduler_job` represents the `google_cloud_scheduler_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppEngineHttpTarget()`](#fn-withappenginehttptarget)
* [`fn withAppEngineHttpTargetMixin()`](#fn-withappenginehttptargetmixin)
* [`fn withAttemptDeadline()`](#fn-withattemptdeadline)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withHttpTarget()`](#fn-withhttptarget)
* [`fn withHttpTargetMixin()`](#fn-withhttptargetmixin)
* [`fn withName()`](#fn-withname)
* [`fn withPaused()`](#fn-withpaused)
* [`fn withProject()`](#fn-withproject)
* [`fn withPubsubTarget()`](#fn-withpubsubtarget)
* [`fn withPubsubTargetMixin()`](#fn-withpubsubtargetmixin)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRetryConfig()`](#fn-withretryconfig)
* [`fn withRetryConfigMixin()`](#fn-withretryconfigmixin)
* [`fn withSchedule()`](#fn-withschedule)
* [`fn withTimeZone()`](#fn-withtimezone)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj app_engine_http_target`](#obj-app_engine_http_target)
  * [`fn new()`](#fn-app_engine_http_targetnew)
  * [`obj app_engine_http_target.app_engine_routing`](#obj-app_engine_http_targetapp_engine_routing)
    * [`fn new()`](#fn-app_engine_http_targetapp_engine_routingnew)
* [`obj http_target`](#obj-http_target)
  * [`fn new()`](#fn-http_targetnew)
  * [`obj http_target.oauth_token`](#obj-http_targetoauth_token)
    * [`fn new()`](#fn-http_targetoauth_tokennew)
  * [`obj http_target.oidc_token`](#obj-http_targetoidc_token)
    * [`fn new()`](#fn-http_targetoidc_tokennew)
* [`obj pubsub_target`](#obj-pubsub_target)
  * [`fn new()`](#fn-pubsub_targetnew)
* [`obj retry_config`](#obj-retry_config)
  * [`fn new()`](#fn-retry_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_scheduler_job.new` injects a new `google_cloud_scheduler_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_scheduler_job.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_scheduler_job` using the reference:

    $._ref.google_cloud_scheduler_job.some_id.get('id')

This is the same as directly entering `"${ google_cloud_scheduler_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `attempt_deadline` (`string`): The deadline for job attempts. If the request handler does not respond by this deadline then the request is
cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
The allowed duration for this deadline is:
* For HTTP targets, between 15 seconds and 30 minutes.
* For App Engine HTTP targets, between 15 seconds and 24 hours.
* **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34; When `null`, the `attempt_deadline` field will be omitted from the resulting object.
  - `description` (`string`): A human-readable description for the job. 
This string must not contain more than 500 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the job.
  - `paused` (`bool`): Sets the job to a paused state. Jobs default to being enabled when this property is not set. When `null`, the `paused` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the scheduler job resides. If it is not provided, Terraform will use the provider default. When `null`, the `region` field will be omitted from the resulting object.
  - `schedule` (`string`): Describes the schedule on which the job will be executed. When `null`, the `schedule` field will be omitted from the resulting object.
  - `time_zone` (`string`): Specifies the time zone to be used in interpreting schedule.
The value of this field must be a time zone name from the tz database. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `app_engine_http_target` (`list[obj]`): App Engine HTTP target.
If the job providers a App Engine HTTP target the cron will 
send a request to the service instance When `null`, the `app_engine_http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.app_engine_http_target.new](#fn-cloud_scheduler_jobapp_engine_http_targetnew) constructor.
  - `http_target` (`list[obj]`): HTTP target.
If the job providers a http_target the cron will 
send a request to the targeted url When `null`, the `http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.new](#fn-cloud_scheduler_jobhttp_targetnew) constructor.
  - `pubsub_target` (`list[obj]`): Pub/Sub target
If the job providers a Pub/Sub target the cron will publish
a message to the provided topic When `null`, the `pubsub_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.pubsub_target.new](#fn-cloud_scheduler_jobpubsub_targetnew) constructor.
  - `retry_config` (`list[obj]`): By default, if a job does not complete successfully, 
meaning that an acknowledgement is not received from the handler, 
then it will be retried with exponential backoff according to the settings When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.retry_config.new](#fn-cloud_scheduler_jobretry_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.timeouts.new](#fn-cloud_scheduler_jobtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_scheduler_job.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_scheduler_job`
Terraform resource.

Unlike [google.cloud_scheduler_job.new](#fn-cloud_scheduler_jobnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `attempt_deadline` (`string`): The deadline for job attempts. If the request handler does not respond by this deadline then the request is
cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
The allowed duration for this deadline is:
* For HTTP targets, between 15 seconds and 30 minutes.
* For App Engine HTTP targets, between 15 seconds and 24 hours.
* **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34; When `null`, the `attempt_deadline` field will be omitted from the resulting object.
  - `description` (`string`): A human-readable description for the job. 
This string must not contain more than 500 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the job.
  - `paused` (`bool`): Sets the job to a paused state. Jobs default to being enabled when this property is not set. When `null`, the `paused` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the scheduler job resides. If it is not provided, Terraform will use the provider default. When `null`, the `region` field will be omitted from the resulting object.
  - `schedule` (`string`): Describes the schedule on which the job will be executed. When `null`, the `schedule` field will be omitted from the resulting object.
  - `time_zone` (`string`): Specifies the time zone to be used in interpreting schedule.
The value of this field must be a time zone name from the tz database. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `app_engine_http_target` (`list[obj]`): App Engine HTTP target.
If the job providers a App Engine HTTP target the cron will 
send a request to the service instance When `null`, the `app_engine_http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.app_engine_http_target.new](#fn-cloud_scheduler_jobapp_engine_http_targetnew) constructor.
  - `http_target` (`list[obj]`): HTTP target.
If the job providers a http_target the cron will 
send a request to the targeted url When `null`, the `http_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.new](#fn-cloud_scheduler_jobhttp_targetnew) constructor.
  - `pubsub_target` (`list[obj]`): Pub/Sub target
If the job providers a Pub/Sub target the cron will publish
a message to the provided topic When `null`, the `pubsub_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.pubsub_target.new](#fn-cloud_scheduler_jobpubsub_targetnew) constructor.
  - `retry_config` (`list[obj]`): By default, if a job does not complete successfully, 
meaning that an acknowledgement is not received from the handler, 
then it will be retried with exponential backoff according to the settings When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.retry_config.new](#fn-cloud_scheduler_jobretry_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.timeouts.new](#fn-cloud_scheduler_jobtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_scheduler_job` resource into the root Terraform configuration.


### fn withAppEngineHttpTarget

```ts
withAppEngineHttpTarget()
```

`google.list[obj].withAppEngineHttpTarget` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the app_engine_http_target field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAppEngineHttpTargetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `app_engine_http_target` field.


### fn withAppEngineHttpTargetMixin

```ts
withAppEngineHttpTargetMixin()
```

`google.list[obj].withAppEngineHttpTargetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the app_engine_http_target field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAppEngineHttpTarget](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `app_engine_http_target` field.


### fn withAttemptDeadline

```ts
withAttemptDeadline()
```

`google.string.withAttemptDeadline` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the attempt_deadline field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `attempt_deadline` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withHttpTarget

```ts
withHttpTarget()
```

`google.list[obj].withHttpTarget` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http_target field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHttpTargetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http_target` field.


### fn withHttpTargetMixin

```ts
withHttpTargetMixin()
```

`google.list[obj].withHttpTargetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the http_target field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHttpTarget](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `http_target` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPaused

```ts
withPaused()
```

`google.bool.withPaused` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the paused field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `paused` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPubsubTarget

```ts
withPubsubTarget()
```

`google.list[obj].withPubsubTarget` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pubsub_target field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPubsubTargetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pubsub_target` field.


### fn withPubsubTargetMixin

```ts
withPubsubTargetMixin()
```

`google.list[obj].withPubsubTargetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pubsub_target field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPubsubTarget](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pubsub_target` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withRetryConfig

```ts
withRetryConfig()
```

`google.list[obj].withRetryConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retry_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRetryConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retry_config` field.


### fn withRetryConfigMixin

```ts
withRetryConfigMixin()
```

`google.list[obj].withRetryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retry_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRetryConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retry_config` field.


### fn withSchedule

```ts
withSchedule()
```

`google.string.withSchedule` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the schedule field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `schedule` field.


### fn withTimeZone

```ts
withTimeZone()
```

`google.string.withTimeZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the time_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `time_zone` field.


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


## obj app_engine_http_target



### fn app_engine_http_target.new

```ts
new()
```


`google.cloud_scheduler_job.app_engine_http_target.new` constructs a new object with attributes and blocks configured for the `app_engine_http_target`
Terraform sub block.



**Args**:
  - `body` (`string`): HTTP request body. 
A request body is allowed only if the HTTP method is POST or PUT. 
It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.

A base64-encoded string. When `null`, the `body` field will be omitted from the resulting object.
  - `headers` (`obj`): HTTP request headers.
This map contains the header field names and values. 
Headers can be set when the job is created. When `null`, the `headers` field will be omitted from the resulting object.
  - `http_method` (`string`): Which HTTP method to use for the request. When `null`, the `http_method` field will be omitted from the resulting object.
  - `relative_uri` (`string`): The relative URI.
The relative URL must begin with &#34;/&#34; and must be a valid HTTP relative URL. 
It can contain a path, query string arguments, and \# fragments. 
If the relative URL is empty, then the root path &#34;/&#34; will be used. 
No spaces are allowed, and the maximum length allowed is 2083 characters
  - `app_engine_routing` (`list[obj]`): App Engine Routing setting for the job. When `null`, the `app_engine_routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.app_engine_http_target.app_engine_routing.new](#fn-app_engine_http_targetapp_engine_routingnew) constructor.

**Returns**:
  - An attribute object that represents the `app_engine_http_target` sub block.


## obj app_engine_http_target.app_engine_routing



### fn app_engine_http_target.app_engine_routing.new

```ts
new()
```


`google.cloud_scheduler_job.app_engine_http_target.app_engine_routing.new` constructs a new object with attributes and blocks configured for the `app_engine_routing`
Terraform sub block.



**Args**:
  - `instance` (`string`): App instance.
By default, the job is sent to an instance which is available when the job is attempted. When `null`, the `instance` field will be omitted from the resulting object.
  - `service` (`string`): App service.
By default, the job is sent to the service which is the default service when the job is attempted. When `null`, the `service` field will be omitted from the resulting object.
  - `version` (`string`): App version.
By default, the job is sent to the version which is the default version when the job is attempted. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `app_engine_routing` sub block.


## obj http_target



### fn http_target.new

```ts
new()
```


`google.cloud_scheduler_job.http_target.new` constructs a new object with attributes and blocks configured for the `http_target`
Terraform sub block.



**Args**:
  - `body` (`string`): HTTP request body. 
A request body is allowed only if the HTTP method is POST, PUT, or PATCH. 
It is an error to set body on a job with an incompatible HttpMethod.

A base64-encoded string. When `null`, the `body` field will be omitted from the resulting object.
  - `headers` (`obj`): This map contains the header field names and values. 
Repeated headers are not supported, but a header value can contain commas. When `null`, the `headers` field will be omitted from the resulting object.
  - `http_method` (`string`): Which HTTP method to use for the request. When `null`, the `http_method` field will be omitted from the resulting object.
  - `uri` (`string`): The full URI path that the request will be sent to.
  - `oauth_token` (`list[obj]`): Contains information needed for generating an OAuth token.
This type of authorization should be used when sending requests to a GCP endpoint. When `null`, the `oauth_token` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.oauth_token.new](#fn-http_targetoauth_tokennew) constructor.
  - `oidc_token` (`list[obj]`): Contains information needed for generating an OpenID Connect token.
This type of authorization should be used when sending requests to third party endpoints or Cloud Run. When `null`, the `oidc_token` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_scheduler_job.http_target.oidc_token.new](#fn-http_targetoidc_tokennew) constructor.

**Returns**:
  - An attribute object that represents the `http_target` sub block.


## obj http_target.oauth_token



### fn http_target.oauth_token.new

```ts
new()
```


`google.cloud_scheduler_job.http_target.oauth_token.new` constructs a new object with attributes and blocks configured for the `oauth_token`
Terraform sub block.



**Args**:
  - `scope` (`string`): OAuth scope to be used for generating OAuth access token. If not specified,
&#34;https://www.googleapis.com/auth/cloud-platform&#34; will be used. When `null`, the `scope` field will be omitted from the resulting object.
  - `service_account_email` (`string`): Service account email to be used for generating OAuth token.
The service account must be within the same project as the job.

**Returns**:
  - An attribute object that represents the `oauth_token` sub block.


## obj http_target.oidc_token



### fn http_target.oidc_token.new

```ts
new()
```


`google.cloud_scheduler_job.http_target.oidc_token.new` constructs a new object with attributes and blocks configured for the `oidc_token`
Terraform sub block.



**Args**:
  - `audience` (`string`): Audience to be used when generating OIDC token. If not specified,
the URI specified in target will be used. When `null`, the `audience` field will be omitted from the resulting object.
  - `service_account_email` (`string`): Service account email to be used for generating OAuth token.
The service account must be within the same project as the job.

**Returns**:
  - An attribute object that represents the `oidc_token` sub block.


## obj pubsub_target



### fn pubsub_target.new

```ts
new()
```


`google.cloud_scheduler_job.pubsub_target.new` constructs a new object with attributes and blocks configured for the `pubsub_target`
Terraform sub block.



**Args**:
  - `attributes` (`obj`): Attributes for PubsubMessage.
Pubsub message must contain either non-empty data, or at least one attribute. When `null`, the `attributes` field will be omitted from the resulting object.
  - `data` (`string`): The message payload for PubsubMessage.
Pubsub message must contain either non-empty data, or at least one attribute.

 A base64-encoded string. When `null`, the `data` field will be omitted from the resulting object.
  - `topic_name` (`string`): The full resource name for the Cloud Pub/Sub topic to which
messages will be published when a job is delivered. ~&gt;**NOTE:**
The topic name must be in the same format as required by PubSub&#39;s
PublishRequest.name, e.g. &#39;projects/my-project/topics/my-topic&#39;.

**Returns**:
  - An attribute object that represents the `pubsub_target` sub block.


## obj retry_config



### fn retry_config.new

```ts
new()
```


`google.cloud_scheduler_job.retry_config.new` constructs a new object with attributes and blocks configured for the `retry_config`
Terraform sub block.



**Args**:
  - `max_backoff_duration` (`string`): The maximum amount of time to wait before retrying a job after it fails.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. When `null`, the `max_backoff_duration` field will be omitted from the resulting object.
  - `max_doublings` (`number`): The time between retries will double maxDoublings times.
A job&#39;s retry interval starts at minBackoffDuration, 
then doubles maxDoublings times, then increases linearly, 
and finally retries retries at intervals of maxBackoffDuration up to retryCount times. When `null`, the `max_doublings` field will be omitted from the resulting object.
  - `max_retry_duration` (`string`): The time limit for retrying a failed job, measured from time when an execution was first attempted. 
If specified with retryCount, the job will be retried until both limits are reached.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. When `null`, the `max_retry_duration` field will be omitted from the resulting object.
  - `min_backoff_duration` (`string`): The minimum amount of time to wait before retrying a job after it fails.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. When `null`, the `min_backoff_duration` field will be omitted from the resulting object.
  - `retry_count` (`number`): The number of attempts that the system will make to run a 
job using the exponential backoff procedure described by maxDoublings.
Values greater than 5 and negative values are not allowed. When `null`, the `retry_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retry_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_scheduler_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
