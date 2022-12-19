---
permalink: /bigquery_data_transfer_config/
---

# bigquery_data_transfer_config

`bigquery_data_transfer_config` represents the `google_bigquery_data_transfer_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataRefreshWindowDays()`](#fn-withdatarefreshwindowdays)
* [`fn withDataSourceId()`](#fn-withdatasourceid)
* [`fn withDestinationDatasetId()`](#fn-withdestinationdatasetid)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEmailPreferences()`](#fn-withemailpreferences)
* [`fn withEmailPreferencesMixin()`](#fn-withemailpreferencesmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withNotificationPubsubTopic()`](#fn-withnotificationpubsubtopic)
* [`fn withParams()`](#fn-withparams)
* [`fn withProject()`](#fn-withproject)
* [`fn withSchedule()`](#fn-withschedule)
* [`fn withScheduleOptions()`](#fn-withscheduleoptions)
* [`fn withScheduleOptionsMixin()`](#fn-withscheduleoptionsmixin)
* [`fn withSensitiveParams()`](#fn-withsensitiveparams)
* [`fn withSensitiveParamsMixin()`](#fn-withsensitiveparamsmixin)
* [`fn withServiceAccountName()`](#fn-withserviceaccountname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj email_preferences`](#obj-email_preferences)
  * [`fn new()`](#fn-email_preferencesnew)
* [`obj schedule_options`](#obj-schedule_options)
  * [`fn new()`](#fn-schedule_optionsnew)
* [`obj sensitive_params`](#obj-sensitive_params)
  * [`fn new()`](#fn-sensitive_paramsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_data_transfer_config.new` injects a new `google_bigquery_data_transfer_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_data_transfer_config.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_data_transfer_config` using the reference:

    $._ref.google_bigquery_data_transfer_config.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_data_transfer_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `data_refresh_window_days` (`number`): The number of days to look back to automatically refresh the data.
For example, if dataRefreshWindowDays = 10, then every day BigQuery
reingests data for [today-10, today-1], rather than ingesting data for
just [today-1]. Only valid if the data source supports the feature.
Set the value to 0 to use the default value. When `null`, the `data_refresh_window_days` field will be omitted from the resulting object.
  - `data_source_id` (`string`): The data source id. Cannot be changed once the transfer config is created.
  - `destination_dataset_id` (`string`): The BigQuery target dataset id. When `null`, the `destination_dataset_id` field will be omitted from the resulting object.
  - `disabled` (`bool`): When set to true, no runs are scheduled for a given transfer. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): The user specified display name for the transfer config.
  - `location` (`string`): The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `notification_pubsub_topic` (`string`): Pub/Sub topic where notifications will be sent after transfer runs
associated with this transfer config finish. When `null`, the `notification_pubsub_topic` field will be omitted from the resulting object.
  - `params` (`obj`): Parameters specific to each data source. For more information see the bq tab in the &#39;Setting up a data transfer&#39;
section for each data source. For example the parameters for Cloud Storage transfers are listed here:
https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq

**NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) [please force recreation of the resource](https://www.terraform.io/cli/state/taint#forcing-re-creation-of-resources).
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `schedule` (`string`): Data transfer schedule. If the data source does not support a custom
schedule, this should be empty. If it is empty, the default value for
the data source will be used. The specified times are in UTC. Examples
of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
jun 13:15, and first sunday of quarter 00:00. See more explanation
about the format here:
https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
NOTE: the granularity should be at least 8 hours, or less frequent. When `null`, the `schedule` field will be omitted from the resulting object.
  - `service_account_name` (`string`): Service account email. If this field is set, transfer config will
be created with this service account credentials. It requires that
requesting user calling this API has permissions to act as this service account. When `null`, the `service_account_name` field will be omitted from the resulting object.
  - `email_preferences` (`list[obj]`): Email notifications will be sent according to these preferences to the
email address of the user who owns this transfer config. When `null`, the `email_preferences` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.email_preferences.new](#fn-bigquery_data_transfer_configemail_preferencesnew) constructor.
  - `schedule_options` (`list[obj]`): Options customizing the data transfer schedule. When `null`, the `schedule_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.schedule_options.new](#fn-bigquery_data_transfer_configschedule_optionsnew) constructor.
  - `sensitive_params` (`list[obj]`): Different parameters are configured primarily using the the &#39;params&#39; field on this
resource. This block contains the parameters which contain secrets or passwords so that they can be marked
sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
in the &#39;params&#39; map in the api request.

Credentials may not be specified in both locations and will cause an error. Changing from one location
to a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.sensitive_params.new](#fn-bigquery_data_transfer_configsensitive_paramsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.timeouts.new](#fn-bigquery_data_transfer_configtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_data_transfer_config.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_data_transfer_config`
Terraform resource.

Unlike [google.bigquery_data_transfer_config.new](#fn-bigquery_data_transfer_confignew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `data_refresh_window_days` (`number`): The number of days to look back to automatically refresh the data.
For example, if dataRefreshWindowDays = 10, then every day BigQuery
reingests data for [today-10, today-1], rather than ingesting data for
just [today-1]. Only valid if the data source supports the feature.
Set the value to 0 to use the default value. When `null`, the `data_refresh_window_days` field will be omitted from the resulting object.
  - `data_source_id` (`string`): The data source id. Cannot be changed once the transfer config is created.
  - `destination_dataset_id` (`string`): The BigQuery target dataset id. When `null`, the `destination_dataset_id` field will be omitted from the resulting object.
  - `disabled` (`bool`): When set to true, no runs are scheduled for a given transfer. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): The user specified display name for the transfer config.
  - `location` (`string`): The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `notification_pubsub_topic` (`string`): Pub/Sub topic where notifications will be sent after transfer runs
associated with this transfer config finish. When `null`, the `notification_pubsub_topic` field will be omitted from the resulting object.
  - `params` (`obj`): Parameters specific to each data source. For more information see the bq tab in the &#39;Setting up a data transfer&#39;
section for each data source. For example the parameters for Cloud Storage transfers are listed here:
https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq

**NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) [please force recreation of the resource](https://www.terraform.io/cli/state/taint#forcing-re-creation-of-resources).
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `schedule` (`string`): Data transfer schedule. If the data source does not support a custom
schedule, this should be empty. If it is empty, the default value for
the data source will be used. The specified times are in UTC. Examples
of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
jun 13:15, and first sunday of quarter 00:00. See more explanation
about the format here:
https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
NOTE: the granularity should be at least 8 hours, or less frequent. When `null`, the `schedule` field will be omitted from the resulting object.
  - `service_account_name` (`string`): Service account email. If this field is set, transfer config will
be created with this service account credentials. It requires that
requesting user calling this API has permissions to act as this service account. When `null`, the `service_account_name` field will be omitted from the resulting object.
  - `email_preferences` (`list[obj]`): Email notifications will be sent according to these preferences to the
email address of the user who owns this transfer config. When `null`, the `email_preferences` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.email_preferences.new](#fn-bigquery_data_transfer_configemail_preferencesnew) constructor.
  - `schedule_options` (`list[obj]`): Options customizing the data transfer schedule. When `null`, the `schedule_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.schedule_options.new](#fn-bigquery_data_transfer_configschedule_optionsnew) constructor.
  - `sensitive_params` (`list[obj]`): Different parameters are configured primarily using the the &#39;params&#39; field on this
resource. This block contains the parameters which contain secrets or passwords so that they can be marked
sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
in the &#39;params&#39; map in the api request.

Credentials may not be specified in both locations and will cause an error. Changing from one location
to a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.sensitive_params.new](#fn-bigquery_data_transfer_configsensitive_paramsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.timeouts.new](#fn-bigquery_data_transfer_configtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_data_transfer_config` resource into the root Terraform configuration.


### fn withDataRefreshWindowDays

```ts
withDataRefreshWindowDays()
```

`google.number.withDataRefreshWindowDays` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the data_refresh_window_days field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `data_refresh_window_days` field.


### fn withDataSourceId

```ts
withDataSourceId()
```

`google.string.withDataSourceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_source_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_source_id` field.


### fn withDestinationDatasetId

```ts
withDestinationDatasetId()
```

`google.string.withDestinationDatasetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the destination_dataset_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `destination_dataset_id` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEmailPreferences

```ts
withEmailPreferences()
```

`google.list[obj].withEmailPreferences` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the email_preferences field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEmailPreferencesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `email_preferences` field.


### fn withEmailPreferencesMixin

```ts
withEmailPreferencesMixin()
```

`google.list[obj].withEmailPreferencesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the email_preferences field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEmailPreferences](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `email_preferences` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withNotificationPubsubTopic

```ts
withNotificationPubsubTopic()
```

`google.string.withNotificationPubsubTopic` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the notification_pubsub_topic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `notification_pubsub_topic` field.


### fn withParams

```ts
withParams()
```

`google.obj.withParams` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the params field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `params` field.


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

`google.string.withSchedule` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the schedule field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `schedule` field.


### fn withScheduleOptions

```ts
withScheduleOptions()
```

`google.list[obj].withScheduleOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withScheduleOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule_options` field.


### fn withScheduleOptionsMixin

```ts
withScheduleOptionsMixin()
```

`google.list[obj].withScheduleOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withScheduleOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule_options` field.


### fn withSensitiveParams

```ts
withSensitiveParams()
```

`google.list[obj].withSensitiveParams` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sensitive_params field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSensitiveParamsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sensitive_params` field.


### fn withSensitiveParamsMixin

```ts
withSensitiveParamsMixin()
```

`google.list[obj].withSensitiveParamsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sensitive_params field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSensitiveParams](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sensitive_params` field.


### fn withServiceAccountName

```ts
withServiceAccountName()
```

`google.string.withServiceAccountName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account_name` field.


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


## obj email_preferences



### fn email_preferences.new

```ts
new()
```


`google.bigquery_data_transfer_config.email_preferences.new` constructs a new object with attributes and blocks configured for the `email_preferences`
Terraform sub block.



**Args**:
  - `enable_failure_email` (`bool`): If true, email notifications will be sent on transfer run failures.

**Returns**:
  - An attribute object that represents the `email_preferences` sub block.


## obj schedule_options



### fn schedule_options.new

```ts
new()
```


`google.bigquery_data_transfer_config.schedule_options.new` constructs a new object with attributes and blocks configured for the `schedule_options`
Terraform sub block.



**Args**:
  - `disable_auto_scheduling` (`bool`): If true, automatic scheduling of data transfer runs for this
configuration will be disabled. The runs can be started on ad-hoc
basis using transferConfigs.startManualRuns API. When automatic
scheduling is disabled, the TransferConfig.schedule field will
be ignored. When `null`, the `disable_auto_scheduling` field will be omitted from the resulting object.
  - `end_time` (`string`): Defines time to stop scheduling transfer runs. A transfer run cannot be
scheduled at or after the end time. The end time can be changed at any
moment. The time when a data transfer can be triggered manually is not
limited by this option. When `null`, the `end_time` field will be omitted from the resulting object.
  - `start_time` (`string`): Specifies time to start scheduling transfer runs. The first run will be
scheduled at or after the start time according to a recurrence pattern
defined in the schedule string. The start time can be changed at any
moment. The time when a data transfer can be triggered manually is not
limited by this option. When `null`, the `start_time` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schedule_options` sub block.


## obj sensitive_params



### fn sensitive_params.new

```ts
new()
```


`google.bigquery_data_transfer_config.sensitive_params.new` constructs a new object with attributes and blocks configured for the `sensitive_params`
Terraform sub block.



**Args**:
  - `secret_access_key` (`string`): The Secret Access Key of the AWS account transferring data from.

**Returns**:
  - An attribute object that represents the `sensitive_params` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_data_transfer_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
