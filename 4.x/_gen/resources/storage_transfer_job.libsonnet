local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_transfer_job', url='', help='`storage_transfer_job` represents the `google_storage_transfer_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.storage_transfer_job.new` injects a new `google_storage_transfer_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_transfer_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_transfer_job` using the reference:\n\n    $._ref.google_storage_transfer_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_transfer_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Unique description to identify the Transfer Job.\n  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `status` (`string`): Status of the job. Default: ENABLED. NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation. When `null`, the `status` field will be omitted from the resulting object.\n  - `notification_config` (`list[obj]`): Notification configuration. When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.notification_config.new](#fn-notification_confignew) constructor.\n  - `schedule` (`list[obj]`): Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.new](#fn-schedulenew) constructor.\n  - `transfer_spec` (`list[obj]`): Transfer specification. When `null`, the `transfer_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.new](#fn-transfer_specnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    description,
    notification_config=null,
    project=null,
    schedule=null,
    status=null,
    transfer_spec=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_transfer_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      notification_config=notification_config,
      project=project,
      schedule=schedule,
      status=status,
      transfer_spec=transfer_spec
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_transfer_job.newAttrs` constructs a new object with attributes and blocks configured for the `storage_transfer_job`\nTerraform resource.\n\nUnlike [google.storage_transfer_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Unique description to identify the Transfer Job.\n  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `status` (`string`): Status of the job. Default: ENABLED. NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation. When `null`, the `status` field will be omitted from the resulting object.\n  - `notification_config` (`list[obj]`): Notification configuration. When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.notification_config.new](#fn-notification_confignew) constructor.\n  - `schedule` (`list[obj]`): Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.new](#fn-schedulenew) constructor.\n  - `transfer_spec` (`list[obj]`): Transfer specification. When `null`, the `transfer_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.new](#fn-transfer_specnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_transfer_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    description,
    notification_config=null,
    project=null,
    schedule=null,
    status=null,
    transfer_spec=null
  ):: std.prune(a={
    description: description,
    notification_config: notification_config,
    project: project,
    schedule: schedule,
    status: status,
    transfer_spec: transfer_spec,
  }),
  notification_config:: {
    '#new':: d.fn(help='\n`google.storage_transfer_job.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event_types` (`list`): Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are &#34;TRANSFER_OPERATION_SUCCESS&#34;, &#34;TRANSFER_OPERATION_FAILED&#34;, &#34;TRANSFER_OPERATION_ABORTED&#34;. When `null`, the `event_types` field will be omitted from the resulting object.\n  - `payload_format` (`string`): The desired format of the notification message payloads. One of &#34;NONE&#34; or &#34;JSON&#34;.\n  - `pubsub_topic` (`string`): The Topic.name of the Pub/Sub topic to which to publish notifications.\n\n**Returns**:\n  - An attribute object that represents the `notification_config` sub block.\n', args=[]),
    new(
      payload_format,
      pubsub_topic,
      event_types=null
    ):: std.prune(a={
      event_types: event_types,
      payload_format: payload_format,
      pubsub_topic: pubsub_topic,
    }),
  },
  schedule:: {
    '#new':: d.fn(help='\n`google.storage_transfer_job.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repeat_interval` (`string`): Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `repeat_interval` field will be omitted from the resulting object.\n  - `schedule_end_date` (`list[obj]`): The last day the recurring transfer will be run. If schedule_end_date is the same as schedule_start_date, the transfer will be executed only once. When `null`, the `schedule_end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.schedule_end_date.new](#fn-scheduleschedule_end_datenew) constructor.\n  - `schedule_start_date` (`list[obj]`): The first day the recurring transfer is scheduled to run. If schedule_start_date is in the past, the transfer will run for the first time on the following day. When `null`, the `schedule_start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.schedule_start_date.new](#fn-scheduleschedule_start_datenew) constructor.\n  - `start_time_of_day` (`list[obj]`): The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer&#39;s start time in a day is specified in your local timezone. When `null`, the `start_time_of_day` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.schedule.start_time_of_day.new](#fn-schedulestart_time_of_daynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `schedule` sub block.\n', args=[]),
    new(
      repeat_interval=null,
      schedule_end_date=null,
      schedule_start_date=null,
      start_time_of_day=null
    ):: std.prune(a={
      repeat_interval: repeat_interval,
      schedule_end_date: schedule_end_date,
      schedule_start_date: schedule_start_date,
      start_time_of_day: start_time_of_day,
    }),
    schedule_end_date:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.schedule.schedule_end_date.new` constructs a new object with attributes and blocks configured for the `schedule_end_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month.\n  - `month` (`number`): Month of year. Must be from 1 to 12.\n  - `year` (`number`): Year of date. Must be from 1 to 9999.\n\n**Returns**:\n  - An attribute object that represents the `schedule_end_date` sub block.\n', args=[]),
      new(
        day,
        month,
        year
      ):: std.prune(a={
        day: day,
        month: month,
        year: year,
      }),
    },
    schedule_start_date:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.schedule.schedule_start_date.new` constructs a new object with attributes and blocks configured for the `schedule_start_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month.\n  - `month` (`number`): Month of year. Must be from 1 to 12.\n  - `year` (`number`): Year of date. Must be from 1 to 9999.\n\n**Returns**:\n  - An attribute object that represents the `schedule_start_date` sub block.\n', args=[]),
      new(
        day,
        month,
        year
      ):: std.prune(a={
        day: day,
        month: month,
        year: year,
      }),
    },
    start_time_of_day:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.schedule.start_time_of_day.new` constructs a new object with attributes and blocks configured for the `start_time_of_day`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59.\n\n**Returns**:\n  - An attribute object that represents the `start_time_of_day` sub block.\n', args=[]),
      new(
        hours,
        minutes,
        nanos,
        seconds
      ):: std.prune(a={
        hours: hours,
        minutes: minutes,
        nanos: nanos,
        seconds: seconds,
      }),
    },
  },
  transfer_spec:: {
    aws_s3_data_source:: {
      aws_access_key:: {
        '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.aws_s3_data_source.aws_access_key.new` constructs a new object with attributes and blocks configured for the `aws_access_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_key_id` (`string`): AWS Key ID.\n  - `secret_access_key` (`string`): AWS Secret Access Key.\n\n**Returns**:\n  - An attribute object that represents the `aws_access_key` sub block.\n', args=[]),
        new(
          access_key_id,
          secret_access_key
        ):: std.prune(a={
          access_key_id: access_key_id,
          secret_access_key: secret_access_key,
        }),
      },
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.aws_s3_data_source.new` constructs a new object with attributes and blocks configured for the `aws_s3_data_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket_name` (`string`): S3 Bucket name.\n  - `role_arn` (`string`): The Amazon Resource Name (ARN) of the role to support temporary credentials via &#39;AssumeRoleWithWebIdentity&#39;. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a &#39;AssumeRoleWithWebIdentity&#39; call for the provided role using the [GoogleServiceAccount][] for this project. When `null`, the `role_arn` field will be omitted from the resulting object.\n  - `aws_access_key` (`list[obj]`): AWS credentials block. When `null`, the `aws_access_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.aws_s3_data_source.aws_access_key.new](#fn-transfer_spectransfer_specaws_access_keynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `aws_s3_data_source` sub block.\n', args=[]),
      new(
        bucket_name,
        aws_access_key=null,
        role_arn=null
      ):: std.prune(a={
        aws_access_key: aws_access_key,
        bucket_name: bucket_name,
        role_arn: role_arn,
      }),
    },
    azure_blob_storage_data_source:: {
      azure_credentials:: {
        '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.azure_credentials.new` constructs a new object with attributes and blocks configured for the `azure_credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sas_token` (`string`): Azure shared access signature.\n\n**Returns**:\n  - An attribute object that represents the `azure_credentials` sub block.\n', args=[]),
        new(
          sas_token
        ):: std.prune(a={
          sas_token: sas_token,
        }),
      },
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.new` constructs a new object with attributes and blocks configured for the `azure_blob_storage_data_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container` (`string`): The container to transfer from the Azure Storage account.\n  - `path` (`string`): Root path to transfer objects. Must be an empty string or full path name that ends with a &#39;/&#39;. This field is treated as an object prefix. As such, it should generally not begin with a &#39;/&#39;. When `null`, the `path` field will be omitted from the resulting object.\n  - `storage_account` (`string`): The name of the Azure Storage account.\n  - `azure_credentials` (`list[obj]`):  Credentials used to authenticate API requests to Azure. When `null`, the `azure_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.azure_credentials.new](#fn-transfer_spectransfer_specazure_credentialsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `azure_blob_storage_data_source` sub block.\n', args=[]),
      new(
        container,
        storage_account,
        azure_credentials=null,
        path=null
      ):: std.prune(a={
        azure_credentials: azure_credentials,
        container: container,
        path: path,
        storage_account: storage_account,
      }),
    },
    gcs_data_sink:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.gcs_data_sink.new` constructs a new object with attributes and blocks configured for the `gcs_data_sink`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket_name` (`string`): Google Cloud Storage bucket name.\n  - `path` (`string`): Google Cloud Storage path in bucket to transfer When `null`, the `path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_data_sink` sub block.\n', args=[]),
      new(
        bucket_name,
        path=null
      ):: std.prune(a={
        bucket_name: bucket_name,
        path: path,
      }),
    },
    gcs_data_source:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.gcs_data_source.new` constructs a new object with attributes and blocks configured for the `gcs_data_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket_name` (`string`): Google Cloud Storage bucket name.\n  - `path` (`string`): Google Cloud Storage path in bucket to transfer When `null`, the `path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_data_source` sub block.\n', args=[]),
      new(
        bucket_name,
        path=null
      ):: std.prune(a={
        bucket_name: bucket_name,
        path: path,
      }),
    },
    http_data_source:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.http_data_source.new` constructs a new object with attributes and blocks configured for the `http_data_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `list_url` (`string`): The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.\n\n**Returns**:\n  - An attribute object that represents the `http_data_source` sub block.\n', args=[]),
      new(
        list_url
      ):: std.prune(a={
        list_url: list_url,
      }),
    },
    '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.new` constructs a new object with attributes and blocks configured for the `transfer_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sink_agent_pool_name` (`string`): Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used. When `null`, the `sink_agent_pool_name` field will be omitted from the resulting object.\n  - `source_agent_pool_name` (`string`): Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used. When `null`, the `source_agent_pool_name` field will be omitted from the resulting object.\n  - `aws_s3_data_source` (`list[obj]`): An AWS S3 data source. When `null`, the `aws_s3_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.aws_s3_data_source.new](#fn-transfer_specaws_s3_data_sourcenew) constructor.\n  - `azure_blob_storage_data_source` (`list[obj]`): An Azure Blob Storage data source. When `null`, the `azure_blob_storage_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.azure_blob_storage_data_source.new](#fn-transfer_specazure_blob_storage_data_sourcenew) constructor.\n  - `gcs_data_sink` (`list[obj]`): A Google Cloud Storage data sink. When `null`, the `gcs_data_sink` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.gcs_data_sink.new](#fn-transfer_specgcs_data_sinknew) constructor.\n  - `gcs_data_source` (`list[obj]`): A Google Cloud Storage data source. When `null`, the `gcs_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.gcs_data_source.new](#fn-transfer_specgcs_data_sourcenew) constructor.\n  - `http_data_source` (`list[obj]`): A HTTP URL data source. When `null`, the `http_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.http_data_source.new](#fn-transfer_spechttp_data_sourcenew) constructor.\n  - `object_conditions` (`list[obj]`): Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects&#39; last_modification_time do not exclude objects in a data sink. When `null`, the `object_conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.object_conditions.new](#fn-transfer_specobject_conditionsnew) constructor.\n  - `posix_data_sink` (`list[obj]`): A POSIX filesystem data sink. When `null`, the `posix_data_sink` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.posix_data_sink.new](#fn-transfer_specposix_data_sinknew) constructor.\n  - `posix_data_source` (`list[obj]`): A POSIX filesystem data source. When `null`, the `posix_data_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.posix_data_source.new](#fn-transfer_specposix_data_sourcenew) constructor.\n  - `transfer_options` (`list[obj]`): Characteristics of how to treat files from datasource and sink during job. If the option delete_objects_unique_in_sink is true, object conditions based on objects&#39; last_modification_time are ignored and do not exclude objects in a data source or a data sink. When `null`, the `transfer_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_job.transfer_spec.transfer_options.new](#fn-transfer_spectransfer_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transfer_spec` sub block.\n', args=[]),
    new(
      aws_s3_data_source=null,
      azure_blob_storage_data_source=null,
      gcs_data_sink=null,
      gcs_data_source=null,
      http_data_source=null,
      object_conditions=null,
      posix_data_sink=null,
      posix_data_source=null,
      sink_agent_pool_name=null,
      source_agent_pool_name=null,
      transfer_options=null
    ):: std.prune(a={
      aws_s3_data_source: aws_s3_data_source,
      azure_blob_storage_data_source: azure_blob_storage_data_source,
      gcs_data_sink: gcs_data_sink,
      gcs_data_source: gcs_data_source,
      http_data_source: http_data_source,
      object_conditions: object_conditions,
      posix_data_sink: posix_data_sink,
      posix_data_source: posix_data_source,
      sink_agent_pool_name: sink_agent_pool_name,
      source_agent_pool_name: source_agent_pool_name,
      transfer_options: transfer_options,
    }),
    object_conditions:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.object_conditions.new` constructs a new object with attributes and blocks configured for the `object_conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclude_prefixes` (`list`): exclude_prefixes must follow the requirements described for include_prefixes. When `null`, the `exclude_prefixes` field will be omitted from the resulting object.\n  - `include_prefixes` (`list`): If include_refixes is specified, objects that satisfy the object conditions must have names that start with one of the include_prefixes and that do not start with any of the exclude_prefixes. If include_prefixes is not specified, all objects except those that have names starting with one of the exclude_prefixes must satisfy the object conditions. When `null`, the `include_prefixes` field will be omitted from the resulting object.\n  - `max_time_elapsed_since_last_modification` (`string`): A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `max_time_elapsed_since_last_modification` field will be omitted from the resulting object.\n  - `min_time_elapsed_since_last_modification` (`string`): A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `min_time_elapsed_since_last_modification` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `object_conditions` sub block.\n', args=[]),
      new(
        exclude_prefixes=null,
        include_prefixes=null,
        max_time_elapsed_since_last_modification=null,
        min_time_elapsed_since_last_modification=null
      ):: std.prune(a={
        exclude_prefixes: exclude_prefixes,
        include_prefixes: include_prefixes,
        max_time_elapsed_since_last_modification: max_time_elapsed_since_last_modification,
        min_time_elapsed_since_last_modification: min_time_elapsed_since_last_modification,
      }),
    },
    posix_data_sink:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.posix_data_sink.new` constructs a new object with attributes and blocks configured for the `posix_data_sink`\nTerraform sub block.\n\n\n\n**Args**:\n  - `root_directory` (`string`): Root directory path to the filesystem.\n\n**Returns**:\n  - An attribute object that represents the `posix_data_sink` sub block.\n', args=[]),
      new(
        root_directory
      ):: std.prune(a={
        root_directory: root_directory,
      }),
    },
    posix_data_source:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.posix_data_source.new` constructs a new object with attributes and blocks configured for the `posix_data_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `root_directory` (`string`): Root directory path to the filesystem.\n\n**Returns**:\n  - An attribute object that represents the `posix_data_source` sub block.\n', args=[]),
      new(
        root_directory
      ):: std.prune(a={
        root_directory: root_directory,
      }),
    },
    transfer_options:: {
      '#new':: d.fn(help='\n`google.storage_transfer_job.transfer_spec.transfer_options.new` constructs a new object with attributes and blocks configured for the `transfer_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `delete_objects_from_source_after_transfer` (`bool`): Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and delete_objects_unique_in_sink are mutually exclusive. When `null`, the `delete_objects_from_source_after_transfer` field will be omitted from the resulting object.\n  - `delete_objects_unique_in_sink` (`bool`): Whether objects that exist only in the sink should be deleted. Note that this option and delete_objects_from_source_after_transfer are mutually exclusive. When `null`, the `delete_objects_unique_in_sink` field will be omitted from the resulting object.\n  - `overwrite_objects_already_existing_in_sink` (`bool`): Whether overwriting objects that already exist in the sink is allowed. When `null`, the `overwrite_objects_already_existing_in_sink` field will be omitted from the resulting object.\n  - `overwrite_when` (`string`): When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwriteObjectsAlreadyExistingInSink. When `null`, the `overwrite_when` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `transfer_options` sub block.\n', args=[]),
      new(
        delete_objects_from_source_after_transfer=null,
        delete_objects_unique_in_sink=null,
        overwrite_objects_already_existing_in_sink=null,
        overwrite_when=null
      ):: std.prune(a={
        delete_objects_from_source_after_transfer: delete_objects_from_source_after_transfer,
        delete_objects_unique_in_sink: delete_objects_unique_in_sink,
        overwrite_objects_already_existing_in_sink: overwrite_objects_already_existing_in_sink,
        overwrite_when: overwrite_when,
      }),
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withNotificationConfig':: d.fn(help='`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfig(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  '#withNotificationConfigMixin':: d.fn(help='`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfigMixin(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSchedule':: d.fn(help='`google.list[obj].withSchedule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schedule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withScheduleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schedule` field.\n', args=[]),
  withSchedule(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  '#withScheduleMixin':: d.fn(help='`google.list[obj].withScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schedule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSchedule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schedule` field.\n', args=[]),
  withScheduleMixin(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStatus':: d.fn(help='`google.string.withStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `status` field.\n', args=[]),
  withStatus(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  '#withTransferSpec':: d.fn(help='`google.list[obj].withTransferSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transfer_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTransferSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transfer_spec` field.\n', args=[]),
  withTransferSpec(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          transfer_spec: value,
        },
      },
    },
  },
  '#withTransferSpecMixin':: d.fn(help='`google.list[obj].withTransferSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transfer_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTransferSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transfer_spec` field.\n', args=[]),
  withTransferSpecMixin(resourceLabel, value): {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          transfer_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
