---
permalink: /storage_transfer_job/
---

# storage_transfer_job

`storage_transfer_job` represents the `google_storage_transfer_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withNotificationConfig()`](#fn-withnotificationconfig)
* [`fn withNotificationConfigMixin()`](#fn-withnotificationconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withSchedule()`](#fn-withschedule)
* [`fn withScheduleMixin()`](#fn-withschedulemixin)
* [`fn withStatus()`](#fn-withstatus)
* [`fn withTransferSpec()`](#fn-withtransferspec)
* [`fn withTransferSpecMixin()`](#fn-withtransferspecmixin)
* [`obj notification_config`](#obj-notification_config)
  * [`fn new()`](#fn-notification_confignew)
* [`obj schedule`](#obj-schedule)
  * [`fn new()`](#fn-schedulenew)
  * [`obj schedule.schedule_end_date`](#obj-scheduleschedule_end_date)
    * [`fn new()`](#fn-scheduleschedule_end_datenew)
  * [`obj schedule.schedule_start_date`](#obj-scheduleschedule_start_date)
    * [`fn new()`](#fn-scheduleschedule_start_datenew)
  * [`obj schedule.start_time_of_day`](#obj-schedulestart_time_of_day)
    * [`fn new()`](#fn-schedulestart_time_of_daynew)
* [`obj transfer_spec`](#obj-transfer_spec)
  * [`fn new()`](#fn-transfer_specnew)
  * [`obj transfer_spec.aws_s3_data_source`](#obj-transfer_specaws_s3_data_source)
    * [`fn new()`](#fn-transfer_specaws_s3_data_sourcenew)
    * [`obj transfer_spec.aws_s3_data_source.aws_access_key`](#obj-transfer_specaws_s3_data_sourceaws_access_key)
      * [`fn new()`](#fn-transfer_specaws_s3_data_sourceaws_access_keynew)
  * [`obj transfer_spec.azure_blob_storage_data_source`](#obj-transfer_specazure_blob_storage_data_source)
    * [`fn new()`](#fn-transfer_specazure_blob_storage_data_sourcenew)
    * [`obj transfer_spec.azure_blob_storage_data_source.azure_credentials`](#obj-transfer_specazure_blob_storage_data_sourceazure_credentials)
      * [`fn new()`](#fn-transfer_specazure_blob_storage_data_sourceazure_credentialsnew)
  * [`obj transfer_spec.gcs_data_sink`](#obj-transfer_specgcs_data_sink)
    * [`fn new()`](#fn-transfer_specgcs_data_sinknew)
  * [`obj transfer_spec.gcs_data_source`](#obj-transfer_specgcs_data_source)
    * [`fn new()`](#fn-transfer_specgcs_data_sourcenew)
  * [`obj transfer_spec.http_data_source`](#obj-transfer_spechttp_data_source)
    * [`fn new()`](#fn-transfer_spechttp_data_sourcenew)
  * [`obj transfer_spec.object_conditions`](#obj-transfer_specobject_conditions)
    * [`fn new()`](#fn-transfer_specobject_conditionsnew)
  * [`obj transfer_spec.posix_data_sink`](#obj-transfer_specposix_data_sink)
    * [`fn new()`](#fn-transfer_specposix_data_sinknew)
  * [`obj transfer_spec.posix_data_source`](#obj-transfer_specposix_data_source)
    * [`fn new()`](#fn-transfer_specposix_data_sourcenew)
  * [`obj transfer_spec.transfer_options`](#obj-transfer_spectransfer_options)
    * [`fn new()`](#fn-transfer_spectransfer_optionsnew)

## Fields

### fn new

```ts
new()
```


`google.storage_transfer_job.new` injects a new `google_storage_transfer_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_transfer_job.new('some_id')

You can get the reference to the `id` field of the created `google.storage_transfer_job` using the reference:

    $._ref.google_storage_transfer_job.some_id.get('id')

This is the same as directly entering `"${ google_storage_transfer_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Unique description to identify the Transfer Job.
  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `status` (`string`): Status of the job. Default: ENABLED. NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation. When `null`, the `status` field will be omitted from the resulting object.
  - `notification_config` (`list[obj]`): Notification configuration. When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.notification_config.new](#fn-notification_confignew) constructor.
  - `schedule` (`list[obj]`): Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.new](#fn-schedulenew) constructor.
  - `transfer_spec` (`list[obj]`): Transfer specification. When `null`, the `transfer_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.new](#fn-transfer_specnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_transfer_job.newAttrs` constructs a new object with attributes and blocks configured for the `storage_transfer_job`
Terraform resource.

Unlike [google.storage_transfer_job.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Unique description to identify the Transfer Job.
  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `status` (`string`): Status of the job. Default: ENABLED. NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation. When `null`, the `status` field will be omitted from the resulting object.
  - `notification_config` (`list[obj]`): Notification configuration. When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.notification_config.new](#fn-notification_confignew) constructor.
  - `schedule` (`list[obj]`): Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.new](#fn-schedulenew) constructor.
  - `transfer_spec` (`list[obj]`): Transfer specification. When `null`, the `transfer_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.new](#fn-transfer_specnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_transfer_job` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withNotificationConfig

```ts
withNotificationConfig()
```

`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withNotificationConfigMixin

```ts
withNotificationConfigMixin()
```

`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSchedule

```ts
withSchedule()
```

`google.list[obj].withSchedule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withScheduleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule` field.


### fn withScheduleMixin

```ts
withScheduleMixin()
```

`google.list[obj].withScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSchedule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule` field.


### fn withStatus

```ts
withStatus()
```

`google.string.withStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `status` field.


### fn withTransferSpec

```ts
withTransferSpec()
```

`google.list[obj].withTransferSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the transfer_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTransferSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `transfer_spec` field.


### fn withTransferSpecMixin

```ts
withTransferSpecMixin()
```

`google.list[obj].withTransferSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the transfer_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTransferSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `transfer_spec` field.


## obj notification_config



### fn notification_config.new

```ts
new()
```


`google.storage_transfer_job.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`
Terraform sub block.



**Args**:
  - `event_types` (`list`): Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are &#34;TRANSFER_OPERATION_SUCCESS&#34;, &#34;TRANSFER_OPERATION_FAILED&#34;, &#34;TRANSFER_OPERATION_ABORTED&#34;. When `null`, the `event_types` field will be omitted from the resulting object.
  - `payload_format` (`string`): The desired format of the notification message payloads. One of &#34;NONE&#34; or &#34;JSON&#34;.
  - `pubsub_topic` (`string`): The Topic.name of the Pub/Sub topic to which to publish notifications.

**Returns**:
  - An attribute object that represents the `notification_config` sub block.


## obj schedule



### fn schedule.new

```ts
new()
```


`google.storage_transfer_job.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`
Terraform sub block.



**Args**:
  - `repeat_interval` (`string`): Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `repeat_interval` field will be omitted from the resulting object.
  - `schedule_end_date` (`list[obj]`): The last day the recurring transfer will be run. If schedule_end_date is the same as schedule_start_date, the transfer will be executed only once. When `null`, the `schedule_end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.schedule_end_date.new](#fn-storage_transfer_jobschedule_end_datenew) constructor.
  - `schedule_start_date` (`list[obj]`): The first day the recurring transfer is scheduled to run. If schedule_start_date is in the past, the transfer will run for the first time on the following day. When `null`, the `schedule_start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.schedule_start_date.new](#fn-storage_transfer_jobschedule_start_datenew) constructor.
  - `start_time_of_day` (`list[obj]`): The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer&#39;s start time in a day is specified in your local timezone. When `null`, the `start_time_of_day` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.start_time_of_day.new](#fn-storage_transfer_jobstart_time_of_daynew) constructor.

**Returns**:
  - An attribute object that represents the `schedule` sub block.


## obj schedule.schedule_end_date



### fn schedule.schedule_end_date.new

```ts
new()
```


`google.storage_transfer_job.schedule.schedule_end_date.new` constructs a new object with attributes and blocks configured for the `schedule_end_date`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month.
  - `month` (`number`): Month of year. Must be from 1 to 12.
  - `year` (`number`): Year of date. Must be from 1 to 9999.

**Returns**:
  - An attribute object that represents the `schedule_end_date` sub block.


## obj schedule.schedule_start_date



### fn schedule.schedule_start_date.new

```ts
new()
```


`google.storage_transfer_job.schedule.schedule_start_date.new` constructs a new object with attributes and blocks configured for the `schedule_start_date`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month.
  - `month` (`number`): Month of year. Must be from 1 to 12.
  - `year` (`number`): Year of date. Must be from 1 to 9999.

**Returns**:
  - An attribute object that represents the `schedule_start_date` sub block.


## obj schedule.start_time_of_day



### fn schedule.start_time_of_day.new

```ts
new()
```


`google.storage_transfer_job.schedule.start_time_of_day.new` constructs a new object with attributes and blocks configured for the `start_time_of_day`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.
  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59.

**Returns**:
  - An attribute object that represents the `start_time_of_day` sub block.


## obj transfer_spec



### fn transfer_spec.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.new` constructs a new object with attributes and blocks configured for the `transfer_spec`
Terraform sub block.



**Args**:
  - `aws_s3_data_source` (`list[obj]`): An AWS S3 data source. When `null`, the `aws_s3_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.aws_s3_data_source.new](#fn-storage_transfer_jobaws_s3_data_sourcenew) constructor.
  - `azure_blob_storage_data_source` (`list[obj]`): An Azure Blob Storage data source. When `null`, the `azure_blob_storage_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.new](#fn-storage_transfer_jobazure_blob_storage_data_sourcenew) constructor.
  - `gcs_data_sink` (`list[obj]`): A Google Cloud Storage data sink. When `null`, the `gcs_data_sink` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.gcs_data_sink.new](#fn-storage_transfer_jobgcs_data_sinknew) constructor.
  - `gcs_data_source` (`list[obj]`): A Google Cloud Storage data source. When `null`, the `gcs_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.gcs_data_source.new](#fn-storage_transfer_jobgcs_data_sourcenew) constructor.
  - `http_data_source` (`list[obj]`): A HTTP URL data source. When `null`, the `http_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.http_data_source.new](#fn-storage_transfer_jobhttp_data_sourcenew) constructor.
  - `object_conditions` (`list[obj]`): Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects&#39; last_modification_time do not exclude objects in a data sink. When `null`, the `object_conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.object_conditions.new](#fn-storage_transfer_jobobject_conditionsnew) constructor.
  - `posix_data_sink` (`list[obj]`): A POSIX filesystem data sink. When `null`, the `posix_data_sink` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.posix_data_sink.new](#fn-storage_transfer_jobposix_data_sinknew) constructor.
  - `posix_data_source` (`list[obj]`): A POSIX filesystem data source. When `null`, the `posix_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.posix_data_source.new](#fn-storage_transfer_jobposix_data_sourcenew) constructor.
  - `transfer_options` (`list[obj]`): Characteristics of how to treat files from datasource and sink during job. If the option delete_objects_unique_in_sink is true, object conditions based on objects&#39; last_modification_time are ignored and do not exclude objects in a data source or a data sink. When `null`, the `transfer_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.transfer_options.new](#fn-storage_transfer_jobtransfer_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `transfer_spec` sub block.


## obj transfer_spec.aws_s3_data_source



### fn transfer_spec.aws_s3_data_source.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.aws_s3_data_source.new` constructs a new object with attributes and blocks configured for the `aws_s3_data_source`
Terraform sub block.



**Args**:
  - `bucket_name` (`string`): S3 Bucket name.
  - `role_arn` (`string`): The Amazon Resource Name (ARN) of the role to support temporary credentials via &#39;AssumeRoleWithWebIdentity&#39;. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a &#39;AssumeRoleWithWebIdentity&#39; call for the provided role using the [GoogleServiceAccount][] for this project. When `null`, the `role_arn` field will be omitted from the resulting object.
  - `aws_access_key` (`list[obj]`): AWS credentials block. When `null`, the `aws_access_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.aws_s3_data_source.aws_access_key.new](#fn-storage_transfer_jobtransfer_specaws_access_keynew) constructor.

**Returns**:
  - An attribute object that represents the `aws_s3_data_source` sub block.


## obj transfer_spec.aws_s3_data_source.aws_access_key



### fn transfer_spec.aws_s3_data_source.aws_access_key.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.aws_s3_data_source.aws_access_key.new` constructs a new object with attributes and blocks configured for the `aws_access_key`
Terraform sub block.



**Args**:
  - `access_key_id` (`string`): AWS Key ID.
  - `secret_access_key` (`string`): AWS Secret Access Key.

**Returns**:
  - An attribute object that represents the `aws_access_key` sub block.


## obj transfer_spec.azure_blob_storage_data_source



### fn transfer_spec.azure_blob_storage_data_source.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.new` constructs a new object with attributes and blocks configured for the `azure_blob_storage_data_source`
Terraform sub block.



**Args**:
  - `container` (`string`): The container to transfer from the Azure Storage account.
  - `path` (`string`): Root path to transfer objects. Must be an empty string or full path name that ends with a &#39;/&#39;. This field is treated as an object prefix. As such, it should generally not begin with a &#39;/&#39;. When `null`, the `path` field will be omitted from the resulting object.
  - `storage_account` (`string`): The name of the Azure Storage account.
  - `azure_credentials` (`list[obj]`):  Credentials used to authenticate API requests to Azure. When `null`, the `azure_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.azure_credentials.new](#fn-storage_transfer_jobtransfer_specazure_credentialsnew) constructor.

**Returns**:
  - An attribute object that represents the `azure_blob_storage_data_source` sub block.


## obj transfer_spec.azure_blob_storage_data_source.azure_credentials



### fn transfer_spec.azure_blob_storage_data_source.azure_credentials.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.azure_credentials.new` constructs a new object with attributes and blocks configured for the `azure_credentials`
Terraform sub block.



**Args**:
  - `sas_token` (`string`): Azure shared access signature.

**Returns**:
  - An attribute object that represents the `azure_credentials` sub block.


## obj transfer_spec.gcs_data_sink



### fn transfer_spec.gcs_data_sink.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.gcs_data_sink.new` constructs a new object with attributes and blocks configured for the `gcs_data_sink`
Terraform sub block.



**Args**:
  - `bucket_name` (`string`): Google Cloud Storage bucket name.
  - `path` (`string`): Google Cloud Storage path in bucket to transfer When `null`, the `path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gcs_data_sink` sub block.


## obj transfer_spec.gcs_data_source



### fn transfer_spec.gcs_data_source.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.gcs_data_source.new` constructs a new object with attributes and blocks configured for the `gcs_data_source`
Terraform sub block.



**Args**:
  - `bucket_name` (`string`): Google Cloud Storage bucket name.
  - `path` (`string`): Google Cloud Storage path in bucket to transfer When `null`, the `path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gcs_data_source` sub block.


## obj transfer_spec.http_data_source



### fn transfer_spec.http_data_source.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.http_data_source.new` constructs a new object with attributes and blocks configured for the `http_data_source`
Terraform sub block.



**Args**:
  - `list_url` (`string`): The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.

**Returns**:
  - An attribute object that represents the `http_data_source` sub block.


## obj transfer_spec.object_conditions



### fn transfer_spec.object_conditions.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.object_conditions.new` constructs a new object with attributes and blocks configured for the `object_conditions`
Terraform sub block.



**Args**:
  - `exclude_prefixes` (`list`): exclude_prefixes must follow the requirements described for include_prefixes. When `null`, the `exclude_prefixes` field will be omitted from the resulting object.
  - `include_prefixes` (`list`): If include_refixes is specified, objects that satisfy the object conditions must have names that start with one of the include_prefixes and that do not start with any of the exclude_prefixes. If include_prefixes is not specified, all objects except those that have names starting with one of the exclude_prefixes must satisfy the object conditions. When `null`, the `include_prefixes` field will be omitted from the resulting object.
  - `max_time_elapsed_since_last_modification` (`string`): A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `max_time_elapsed_since_last_modification` field will be omitted from the resulting object.
  - `min_time_elapsed_since_last_modification` (`string`): A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `min_time_elapsed_since_last_modification` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `object_conditions` sub block.


## obj transfer_spec.posix_data_sink



### fn transfer_spec.posix_data_sink.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.posix_data_sink.new` constructs a new object with attributes and blocks configured for the `posix_data_sink`
Terraform sub block.



**Args**:
  - `root_directory` (`string`): Root directory path to the filesystem.

**Returns**:
  - An attribute object that represents the `posix_data_sink` sub block.


## obj transfer_spec.posix_data_source



### fn transfer_spec.posix_data_source.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.posix_data_source.new` constructs a new object with attributes and blocks configured for the `posix_data_source`
Terraform sub block.



**Args**:
  - `root_directory` (`string`): Root directory path to the filesystem.

**Returns**:
  - An attribute object that represents the `posix_data_source` sub block.


## obj transfer_spec.transfer_options



### fn transfer_spec.transfer_options.new

```ts
new()
```


`google.storage_transfer_job.transfer_spec.transfer_options.new` constructs a new object with attributes and blocks configured for the `transfer_options`
Terraform sub block.



**Args**:
  - `delete_objects_from_source_after_transfer` (`bool`): Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and delete_objects_unique_in_sink are mutually exclusive. When `null`, the `delete_objects_from_source_after_transfer` field will be omitted from the resulting object.
  - `delete_objects_unique_in_sink` (`bool`): Whether objects that exist only in the sink should be deleted. Note that this option and delete_objects_from_source_after_transfer are mutually exclusive. When `null`, the `delete_objects_unique_in_sink` field will be omitted from the resulting object.
  - `overwrite_objects_already_existing_in_sink` (`bool`): Whether overwriting objects that already exist in the sink is allowed. When `null`, the `overwrite_objects_already_existing_in_sink` field will be omitted from the resulting object.
  - `overwrite_when` (`string`): When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwriteObjectsAlreadyExistingInSink. When `null`, the `overwrite_when` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `transfer_options` sub block.
