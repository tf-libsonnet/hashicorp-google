local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_data_transfer_config', url='', help='`bigquery_data_transfer_config` represents the `google_bigquery_data_transfer_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  email_preferences:: {
    '#new':: d.fn(help='\n`google.bigquery_data_transfer_config.email_preferences.new` constructs a new object with attributes and blocks configured for the `email_preferences`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_failure_email` (`bool`): If true, email notifications will be sent on transfer run failures.\n\n**Returns**:\n  - An attribute object that represents the `email_preferences` sub block.\n', args=[]),
    new(
      enable_failure_email
    ):: std.prune(a={
      enable_failure_email: enable_failure_email,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_data_transfer_config.new` injects a new `google_bigquery_data_transfer_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_data_transfer_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_data_transfer_config` using the reference:\n\n    $._ref.google_bigquery_data_transfer_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_data_transfer_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `data_refresh_window_days` (`number`): The number of days to look back to automatically refresh the data.\nFor example, if dataRefreshWindowDays = 10, then every day BigQuery\nreingests data for [today-10, today-1], rather than ingesting data for\njust [today-1]. Only valid if the data source supports the feature.\nSet the value to 0 to use the default value. When `null`, the `data_refresh_window_days` field will be omitted from the resulting object.\n  - `data_source_id` (`string`): The data source id. Cannot be changed once the transfer config is created.\n  - `destination_dataset_id` (`string`): The BigQuery target dataset id. When `null`, the `destination_dataset_id` field will be omitted from the resulting object.\n  - `disabled` (`bool`): When set to true, no runs are scheduled for a given transfer. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user specified display name for the transfer config.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `notification_pubsub_topic` (`string`): Pub/Sub topic where notifications will be sent after transfer runs\nassociated with this transfer config finish. When `null`, the `notification_pubsub_topic` field will be omitted from the resulting object.\n  - `params` (`obj`): Parameters specific to each data source. For more information see the bq tab in the \u0026#39;Setting up a data transfer\u0026#39;\nsection for each data source. For example the parameters for Cloud Storage transfers are listed here:\nhttps://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq\n\n**NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) [please force recreation of the resource](https://www.terraform.io/cli/state/taint#forcing-re-creation-of-resources).\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `schedule` (`string`): Data transfer schedule. If the data source does not support a custom\nschedule, this should be empty. If it is empty, the default value for\nthe data source will be used. The specified times are in UTC. Examples\nof valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,\njun 13:15, and first sunday of quarter 00:00. See more explanation\nabout the format here:\nhttps://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format\nNOTE: the granularity should be at least 8 hours, or less frequent. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `service_account_name` (`string`): Service account email. If this field is set, transfer config will\nbe created with this service account credentials. It requires that\nrequesting user calling this API has permissions to act as this service account. When `null`, the `service_account_name` field will be omitted from the resulting object.\n  - `email_preferences` (`list[obj]`): Email notifications will be sent according to these preferences to the\nemail address of the user who owns this transfer config. When `null`, the `email_preferences` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.email_preferences.new](#fn-bigquerydatatransferconfigemailpreferencesnew) constructor.\n  - `schedule_options` (`list[obj]`): Options customizing the data transfer schedule. When `null`, the `schedule_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.schedule_options.new](#fn-bigquerydatatransferconfigscheduleoptionsnew) constructor.\n  - `sensitive_params` (`list[obj]`): Different parameters are configured primarily using the the \u0026#39;params\u0026#39; field on this\nresource. This block contains the parameters which contain secrets or passwords so that they can be marked\nsensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key\nin the \u0026#39;params\u0026#39; map in the api request.\n\nCredentials may not be specified in both locations and will cause an error. Changing from one location\nto a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.sensitive_params.new](#fn-bigquerydatatransferconfigsensitiveparamsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.timeouts.new](#fn-bigquerydatatransferconfigtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    data_source_id,
    display_name,
    params,
    data_refresh_window_days=null,
    destination_dataset_id=null,
    disabled=null,
    email_preferences=null,
    location=null,
    notification_pubsub_topic=null,
    project=null,
    schedule=null,
    schedule_options=null,
    sensitive_params=null,
    service_account_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_data_transfer_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_refresh_window_days=data_refresh_window_days,
      data_source_id=data_source_id,
      destination_dataset_id=destination_dataset_id,
      disabled=disabled,
      display_name=display_name,
      email_preferences=email_preferences,
      location=location,
      notification_pubsub_topic=notification_pubsub_topic,
      params=params,
      project=project,
      schedule=schedule,
      schedule_options=schedule_options,
      sensitive_params=sensitive_params,
      service_account_name=service_account_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_data_transfer_config.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_data_transfer_config`\nTerraform resource.\n\nUnlike [google.bigquery_data_transfer_config.new](#fn-bigquerydatatransferconfignew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `data_refresh_window_days` (`number`): The number of days to look back to automatically refresh the data.\nFor example, if dataRefreshWindowDays = 10, then every day BigQuery\nreingests data for [today-10, today-1], rather than ingesting data for\njust [today-1]. Only valid if the data source supports the feature.\nSet the value to 0 to use the default value. When `null`, the `data_refresh_window_days` field will be omitted from the resulting object.\n  - `data_source_id` (`string`): The data source id. Cannot be changed once the transfer config is created.\n  - `destination_dataset_id` (`string`): The BigQuery target dataset id. When `null`, the `destination_dataset_id` field will be omitted from the resulting object.\n  - `disabled` (`bool`): When set to true, no runs are scheduled for a given transfer. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user specified display name for the transfer config.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `notification_pubsub_topic` (`string`): Pub/Sub topic where notifications will be sent after transfer runs\nassociated with this transfer config finish. When `null`, the `notification_pubsub_topic` field will be omitted from the resulting object.\n  - `params` (`obj`): Parameters specific to each data source. For more information see the bq tab in the &#39;Setting up a data transfer&#39;\nsection for each data source. For example the parameters for Cloud Storage transfers are listed here:\nhttps://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq\n\n**NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) [please force recreation of the resource](https://www.terraform.io/cli/state/taint#forcing-re-creation-of-resources).\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `schedule` (`string`): Data transfer schedule. If the data source does not support a custom\nschedule, this should be empty. If it is empty, the default value for\nthe data source will be used. The specified times are in UTC. Examples\nof valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,\njun 13:15, and first sunday of quarter 00:00. See more explanation\nabout the format here:\nhttps://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format\nNOTE: the granularity should be at least 8 hours, or less frequent. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `service_account_name` (`string`): Service account email. If this field is set, transfer config will\nbe created with this service account credentials. It requires that\nrequesting user calling this API has permissions to act as this service account. When `null`, the `service_account_name` field will be omitted from the resulting object.\n  - `email_preferences` (`list[obj]`): Email notifications will be sent according to these preferences to the\nemail address of the user who owns this transfer config. When `null`, the `email_preferences` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.email_preferences.new](#fn-bigquerydatatransferconfigemailpreferencesnew) constructor.\n  - `schedule_options` (`list[obj]`): Options customizing the data transfer schedule. When `null`, the `schedule_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.schedule_options.new](#fn-bigquerydatatransferconfigscheduleoptionsnew) constructor.\n  - `sensitive_params` (`list[obj]`): Different parameters are configured primarily using the the &#39;params&#39; field on this\nresource. This block contains the parameters which contain secrets or passwords so that they can be marked\nsensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key\nin the &#39;params&#39; map in the api request.\n\nCredentials may not be specified in both locations and will cause an error. Changing from one location\nto a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.sensitive_params.new](#fn-bigquerydatatransferconfigsensitiveparamsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_data_transfer_config.timeouts.new](#fn-bigquerydatatransferconfigtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_data_transfer_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    data_source_id,
    display_name,
    params,
    data_refresh_window_days=null,
    destination_dataset_id=null,
    disabled=null,
    email_preferences=null,
    location=null,
    notification_pubsub_topic=null,
    project=null,
    schedule=null,
    schedule_options=null,
    sensitive_params=null,
    service_account_name=null,
    timeouts=null
  ):: std.prune(a={
    data_refresh_window_days: data_refresh_window_days,
    data_source_id: data_source_id,
    destination_dataset_id: destination_dataset_id,
    disabled: disabled,
    display_name: display_name,
    email_preferences: email_preferences,
    location: location,
    notification_pubsub_topic: notification_pubsub_topic,
    params: params,
    project: project,
    schedule: schedule,
    schedule_options: schedule_options,
    sensitive_params: sensitive_params,
    service_account_name: service_account_name,
    timeouts: timeouts,
  }),
  schedule_options:: {
    '#new':: d.fn(help='\n`google.bigquery_data_transfer_config.schedule_options.new` constructs a new object with attributes and blocks configured for the `schedule_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disable_auto_scheduling` (`bool`): If true, automatic scheduling of data transfer runs for this\nconfiguration will be disabled. The runs can be started on ad-hoc\nbasis using transferConfigs.startManualRuns API. When automatic\nscheduling is disabled, the TransferConfig.schedule field will\nbe ignored. When `null`, the `disable_auto_scheduling` field will be omitted from the resulting object.\n  - `end_time` (`string`): Defines time to stop scheduling transfer runs. A transfer run cannot be\nscheduled at or after the end time. The end time can be changed at any\nmoment. The time when a data transfer can be triggered manually is not\nlimited by this option. When `null`, the `end_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): Specifies time to start scheduling transfer runs. The first run will be\nscheduled at or after the start time according to a recurrence pattern\ndefined in the schedule string. The start time can be changed at any\nmoment. The time when a data transfer can be triggered manually is not\nlimited by this option. When `null`, the `start_time` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schedule_options` sub block.\n', args=[]),
    new(
      disable_auto_scheduling=null,
      end_time=null,
      start_time=null
    ):: std.prune(a={
      disable_auto_scheduling: disable_auto_scheduling,
      end_time: end_time,
      start_time: start_time,
    }),
  },
  sensitive_params:: {
    '#new':: d.fn(help='\n`google.bigquery_data_transfer_config.sensitive_params.new` constructs a new object with attributes and blocks configured for the `sensitive_params`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_access_key` (`string`): The Secret Access Key of the AWS account transferring data from.\n\n**Returns**:\n  - An attribute object that represents the `sensitive_params` sub block.\n', args=[]),
    new(
      secret_access_key
    ):: std.prune(a={
      secret_access_key: secret_access_key,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_data_transfer_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDataRefreshWindowDays':: d.fn(help='`google.bigquery_data_transfer_config.withDataRefreshWindowDays` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the data_refresh_window_days field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `data_refresh_window_days` field.\n', args=[]),
  withDataRefreshWindowDays(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          data_refresh_window_days: value,
        },
      },
    },
  },
  '#withDataSourceId':: d.fn(help='`google.bigquery_data_transfer_config.withDataSourceId` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the data_source_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `data_source_id` field.\n', args=[]),
  withDataSourceId(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          data_source_id: value,
        },
      },
    },
  },
  '#withDestinationDatasetId':: d.fn(help='`google.bigquery_data_transfer_config.withDestinationDatasetId` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the destination_dataset_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `destination_dataset_id` field.\n', args=[]),
  withDestinationDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          destination_dataset_id: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bigquery_data_transfer_config.withDisabled` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.bigquery_data_transfer_config.withDisplayName` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEmailPreferences':: d.fn(help='`google.bigquery_data_transfer_config.withEmailPreferences` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the email_preferences field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `email_preferences` field.\n', args=[]),
  withEmailPreferences(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          email_preferences: value,
        },
      },
    },
  },
  '#withEmailPreferencesMixin':: d.fn(help='`google.bigquery_data_transfer_config.withEmailPreferencesMixin` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the email_preferences field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.bigquery_data_transfer_config.withEmailPreferences](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `email_preferences` field.\n', args=[]),
  withEmailPreferencesMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          email_preferences+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.bigquery_data_transfer_config.withLocation` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withNotificationPubsubTopic':: d.fn(help='`google.bigquery_data_transfer_config.withNotificationPubsubTopic` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the notification_pubsub_topic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `notification_pubsub_topic` field.\n', args=[]),
  withNotificationPubsubTopic(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          notification_pubsub_topic: value,
        },
      },
    },
  },
  '#withParams':: d.fn(help='`google.bigquery_data_transfer_config.withParams` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the params field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `params` field.\n', args=[]),
  withParams(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          params: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.bigquery_data_transfer_config.withProject` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSchedule':: d.fn(help='`google.bigquery_data_transfer_config.withSchedule` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the schedule field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `schedule` field.\n', args=[]),
  withSchedule(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  '#withScheduleOptions':: d.fn(help='`google.bigquery_data_transfer_config.withScheduleOptions` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the schedule_options field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `schedule_options` field.\n', args=[]),
  withScheduleOptions(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          schedule_options: value,
        },
      },
    },
  },
  '#withScheduleOptionsMixin':: d.fn(help='`google.bigquery_data_transfer_config.withScheduleOptionsMixin` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the schedule_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.bigquery_data_transfer_config.withScheduleOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `schedule_options` field.\n', args=[]),
  withScheduleOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          schedule_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSensitiveParams':: d.fn(help='`google.bigquery_data_transfer_config.withSensitiveParams` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the sensitive_params field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `sensitive_params` field.\n', args=[]),
  withSensitiveParams(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          sensitive_params: value,
        },
      },
    },
  },
  '#withSensitiveParamsMixin':: d.fn(help='`google.bigquery_data_transfer_config.withSensitiveParamsMixin` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the sensitive_params field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.bigquery_data_transfer_config.withSensitiveParams](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `sensitive_params` field.\n', args=[]),
  withSensitiveParamsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          sensitive_params+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccountName':: d.fn(help='`google.bigquery_data_transfer_config.withServiceAccountName` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the service_account_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `service_account_name` field.\n', args=[]),
  withServiceAccountName(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          service_account_name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.bigquery_data_transfer_config.withTimeouts` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.bigquery_data_transfer_config.withTimeoutsMixin` constructs a mixin object that can be merged into the `bigquery_data_transfer_config`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.bigquery_data_transfer_config.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
