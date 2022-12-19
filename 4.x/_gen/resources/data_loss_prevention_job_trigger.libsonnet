local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_loss_prevention_job_trigger', url='', help='`data_loss_prevention_job_trigger` represents the `google_data_loss_prevention_job_trigger` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  inspect_job:: {
    actions:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.new` constructs a new object with attributes and blocks configured for the `actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pub_sub` (`list[obj]`): Publish a message into a given Pub/Sub topic when the job completes. When `null`, the `pub_sub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new](#fn-actionspubsubnew) constructor.\n  - `save_findings` (`list[obj]`): Schedule for triggered jobs When `null`, the `save_findings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new](#fn-actionssavefindingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `actions` sub block.\n', args=[]),
      new(
        pub_sub=null,
        save_findings=null
      ):: std.prune(a={
        pub_sub: pub_sub,
        save_findings: save_findings,
      }),
      pub_sub:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new` constructs a new object with attributes and blocks configured for the `pub_sub`\nTerraform sub block.\n\n\n\n**Args**:\n  - `topic` (`string`): Cloud Pub/Sub topic to send notifications to.\n\n**Returns**:\n  - An attribute object that represents the `pub_sub` sub block.\n', args=[]),
        new(
          topic
        ):: std.prune(a={
          topic: topic,
        }),
      },
      save_findings:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new` constructs a new object with attributes and blocks configured for the `save_findings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `output_config` (`list[obj]`): Information on where to store output When `null`, the `output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new](#fn-savefindingsoutputconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `save_findings` sub block.\n', args=[]),
        new(
          output_config=null
        ):: std.prune(a={
          output_config: output_config,
        }),
        output_config:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new` constructs a new object with attributes and blocks configured for the `output_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `output_schema` (`string`): Schema used for writing the findings for Inspect jobs. This field is only used for\nInspect and must be unspecified for Risk jobs. Columns are derived from the Finding\nobject. If appending to an existing table, any columns from the predefined schema\nthat are missing will be added. No columns in the existing table will be deleted.\n\nIf unspecified, then all available columns will be used for a new table or an (existing)\ntable with no schema, and no changes will be made to an existing table that has a schema.\nOnly for use with external storage. Possible values: [&#34;BASIC_COLUMNS&#34;, &#34;GCS_COLUMNS&#34;, &#34;DATASTORE_COLUMNS&#34;, &#34;BIG_QUERY_COLUMNS&#34;, &#34;ALL_COLUMNS&#34;] When `null`, the `output_schema` field will be omitted from the resulting object.\n  - `table` (`list[obj]`): Information on the location of the target BigQuery Table. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new](#fn-outputconfigtablenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `output_config` sub block.\n', args=[]),
          new(
            output_schema=null,
            table=null
          ):: std.prune(a={
            output_schema: output_schema,
            table: table,
          }),
          table:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new` constructs a new object with attributes and blocks configured for the `table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): Dataset ID of the table.\n  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.\n  - `table_id` (`string`): Name of the table. If is not set a new one will be generated for you with the following format:\n&#39;dlp_googleapis_yyyy_mm_dd_[dlp_job_id]&#39;. Pacific timezone will be used for generating the date details. When `null`, the `table_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `table` sub block.\n', args=[]),
            new(
              dataset_id,
              project_id,
              table_id=null
            ):: std.prune(a={
              dataset_id: dataset_id,
              project_id: project_id,
              table_id: table_id,
            }),
          },
        },
      },
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.new` constructs a new object with attributes and blocks configured for the `inspect_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `inspect_template_name` (`string`): The name of the template to run when this job is triggered.\n  - `actions` (`list[obj]`): A task to execute on the completion of a job. When `null`, the `actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.new](#fn-inspectjobactionsnew) constructor.\n  - `storage_config` (`list[obj]`): Information on where to inspect When `null`, the `storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.new](#fn-inspectjobstorageconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `inspect_job` sub block.\n', args=[]),
    new(
      inspect_template_name,
      actions=null,
      storage_config=null
    ):: std.prune(a={
      actions: actions,
      inspect_template_name: inspect_template_name,
      storage_config: storage_config,
    }),
    storage_config:: {
      big_query_options:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new` constructs a new object with attributes and blocks configured for the `big_query_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `rows_limit` (`number`): Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. \nIf not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be \nspecified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit` field will be omitted from the resulting object.\n  - `rows_limit_percent` (`number`): Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. \nMust be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of \nrowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit_percent` field will be omitted from the resulting object.\n  - `sample_method` (`string`): How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either \nrowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them. Default value: &#34;TOP&#34; Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.\n  - `table_reference` (`list[obj]`): Set of files to scan. When `null`, the `table_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new](#fn-bigqueryoptionstablereferencenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `big_query_options` sub block.\n', args=[]),
        new(
          rows_limit=null,
          rows_limit_percent=null,
          sample_method=null,
          table_reference=null
        ):: std.prune(a={
          rows_limit: rows_limit,
          rows_limit_percent: rows_limit_percent,
          sample_method: sample_method,
          table_reference: table_reference,
        }),
        table_reference:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new` constructs a new object with attributes and blocks configured for the `table_reference`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The dataset ID of the table.\n  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.\n  - `table_id` (`string`): The name of the table.\n\n**Returns**:\n  - An attribute object that represents the `table_reference` sub block.\n', args=[]),
          new(
            dataset_id,
            project_id,
            table_id
          ):: std.prune(a={
            dataset_id: dataset_id,
            project_id: project_id,
            table_id: table_id,
          }),
        },
      },
      cloud_storage_options:: {
        file_set:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new` constructs a new object with attributes and blocks configured for the `file_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The Cloud Storage url of the file(s) to scan, in the format &#39;gs://&lt;bucket&gt;/&lt;path&gt;&#39;. Trailing wildcard\nin the path is allowed.\n\nIf the url ends in a trailing slash, the bucket or directory represented by the url will be scanned\nnon-recursively (content in sub-directories will not be scanned). This means that &#39;gs://mybucket/&#39; is\nequivalent to &#39;gs://mybucket/*&#39;, and &#39;gs://mybucket/directory/&#39; is equivalent to &#39;gs://mybucket/directory/*&#39;. When `null`, the `url` field will be omitted from the resulting object.\n  - `regex_file_set` (`list[obj]`): The regex-filtered set of files to scan. When `null`, the `regex_file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new](#fn-filesetregexfilesetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file_set` sub block.\n', args=[]),
          new(
            regex_file_set=null,
            url=null
          ):: std.prune(a={
            regex_file_set: regex_file_set,
            url: url,
          }),
          regex_file_set:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new` constructs a new object with attributes and blocks configured for the `regex_file_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket_name` (`string`): The name of a Cloud Storage bucket.\n  - `exclude_regex` (`list`): A list of regular expressions matching file paths to exclude. All files in the bucket that match at\nleast one of these regular expressions will be excluded from the scan. When `null`, the `exclude_regex` field will be omitted from the resulting object.\n  - `include_regex` (`list`): A list of regular expressions matching file paths to include. All files in the bucket\nthat match at least one of these regular expressions will be included in the set of files,\nexcept for those that also match an item in excludeRegex. Leaving this field empty will\nmatch all files by default (this is equivalent to including .* in the list) When `null`, the `include_regex` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `regex_file_set` sub block.\n', args=[]),
            new(
              bucket_name,
              exclude_regex=null,
              include_regex=null
            ):: std.prune(a={
              bucket_name: bucket_name,
              exclude_regex: exclude_regex,
              include_regex: include_regex,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new` constructs a new object with attributes and blocks configured for the `cloud_storage_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bytes_limit_per_file` (`number`): Max number of bytes to scan from a file. If a scanned file&#39;s size is bigger than this value\nthen the rest of the bytes are omitted. When `null`, the `bytes_limit_per_file` field will be omitted from the resulting object.\n  - `bytes_limit_per_file_percent` (`number`): Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.\nMust be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `bytes_limit_per_file_percent` field will be omitted from the resulting object.\n  - `file_types` (`list`): List of file type groups to include in the scan. If empty, all files are scanned and available data\nformat processors are applied. In addition, the binary content of the selected files is always scanned as well.\nImages are scanned only as binary if the specified region does not support image inspection and no fileTypes were specified. Possible values: [&#34;BINARY_FILE&#34;, &#34;TEXT_FILE&#34;, &#34;IMAGE&#34;, &#34;WORD&#34;, &#34;PDF&#34;, &#34;AVRO&#34;, &#34;CSV&#34;, &#34;TSV&#34;] When `null`, the `file_types` field will be omitted from the resulting object.\n  - `files_limit_percent` (`number`): Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.\nMust be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `files_limit_percent` field will be omitted from the resulting object.\n  - `sample_method` (`string`): How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.\nIf not specified, scanning would start from the top. Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.\n  - `file_set` (`list[obj]`): Set of files to scan. When `null`, the `file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new](#fn-cloudstorageoptionsfilesetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_options` sub block.\n', args=[]),
        new(
          bytes_limit_per_file=null,
          bytes_limit_per_file_percent=null,
          file_set=null,
          file_types=null,
          files_limit_percent=null,
          sample_method=null
        ):: std.prune(a={
          bytes_limit_per_file: bytes_limit_per_file,
          bytes_limit_per_file_percent: bytes_limit_per_file_percent,
          file_set: file_set,
          file_types: file_types,
          files_limit_percent: files_limit_percent,
          sample_method: sample_method,
        }),
      },
      datastore_options:: {
        kind:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new` constructs a new object with attributes and blocks configured for the `kind`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name of the Datastore kind.\n\n**Returns**:\n  - An attribute object that represents the `kind` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new` constructs a new object with attributes and blocks configured for the `datastore_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kind` (`list[obj]`): A representation of a Datastore kind. When `null`, the `kind` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new](#fn-datastoreoptionskindnew) constructor.\n  - `partition_id` (`list[obj]`): Datastore partition ID. A partition ID identifies a grouping of entities. The grouping\nis always by project and namespace, however the namespace ID may be empty. When `null`, the `partition_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new](#fn-datastoreoptionspartitionidnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `datastore_options` sub block.\n', args=[]),
        new(
          kind=null,
          partition_id=null
        ):: std.prune(a={
          kind: kind,
          partition_id: partition_id,
        }),
        partition_id:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new` constructs a new object with attributes and blocks configured for the `partition_id`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace_id` (`string`): If not empty, the ID of the namespace to which the entities belong. When `null`, the `namespace_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the project to which the entities belong.\n\n**Returns**:\n  - An attribute object that represents the `partition_id` sub block.\n', args=[]),
          new(
            project_id,
            namespace_id=null
          ):: std.prune(a={
            namespace_id: namespace_id,
            project_id: project_id,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.new` constructs a new object with attributes and blocks configured for the `storage_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `big_query_options` (`list[obj]`): Options defining BigQuery table and row identifiers. When `null`, the `big_query_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new](#fn-storageconfigbigqueryoptionsnew) constructor.\n  - `cloud_storage_options` (`list[obj]`): Options defining a file or a set of files within a Google Cloud Storage bucket. When `null`, the `cloud_storage_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new](#fn-storageconfigcloudstorageoptionsnew) constructor.\n  - `datastore_options` (`list[obj]`): Options defining a data set within Google Cloud Datastore. When `null`, the `datastore_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new](#fn-storageconfigdatastoreoptionsnew) constructor.\n  - `timespan_config` (`list[obj]`): Information on where to inspect When `null`, the `timespan_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new](#fn-storageconfigtimespanconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `storage_config` sub block.\n', args=[]),
      new(
        big_query_options=null,
        cloud_storage_options=null,
        datastore_options=null,
        timespan_config=null
      ):: std.prune(a={
        big_query_options: big_query_options,
        cloud_storage_options: cloud_storage_options,
        datastore_options: datastore_options,
        timespan_config: timespan_config,
      }),
      timespan_config:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new` constructs a new object with attributes and blocks configured for the `timespan_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_auto_population_of_timespan_config` (`bool`): When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid\nscanning files that have not been modified since the last time the JobTrigger executed. This will\nbe based on the time of the execution of the last run of the JobTrigger. When `null`, the `enable_auto_population_of_timespan_config` field will be omitted from the resulting object.\n  - `end_time` (`string`): Exclude files or rows newer than this value. If set to zero, no upper time limit is applied. When `null`, the `end_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): Exclude files or rows older than this value. When `null`, the `start_time` field will be omitted from the resulting object.\n  - `timestamp_field` (`list[obj]`): Information on where to inspect When `null`, the `timestamp_field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new](#fn-timespanconfigtimestampfieldnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `timespan_config` sub block.\n', args=[]),
        new(
          enable_auto_population_of_timespan_config=null,
          end_time=null,
          start_time=null,
          timestamp_field=null
        ):: std.prune(a={
          enable_auto_population_of_timespan_config: enable_auto_population_of_timespan_config,
          end_time: end_time,
          start_time: start_time,
          timestamp_field: timestamp_field,
        }),
        timestamp_field:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new` constructs a new object with attributes and blocks configured for the `timestamp_field`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery.\n\nFor BigQuery: Required to filter out rows based on the given start and end times. If not specified and the table was\nmodified between the given start and end times, the entire table will be scanned. The valid data types of the timestamp\nfield are: INTEGER, DATE, TIMESTAMP, or DATETIME BigQuery column.\n\nFor Datastore. Valid data types of the timestamp field are: TIMESTAMP. Datastore entity will be scanned if the\ntimestamp property does not exist or its value is empty or invalid.\n\n**Returns**:\n  - An attribute object that represents the `timestamp_field` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
      },
    },
  },
  '#new':: d.fn(help="\n`google.data_loss_prevention_job_trigger.new` injects a new `google_data_loss_prevention_job_trigger` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_loss_prevention_job_trigger.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_loss_prevention_job_trigger` using the reference:\n\n    $._ref.google_data_loss_prevention_job_trigger.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_loss_prevention_job_trigger.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the trigger, either in the format \u0026#39;projects/{{project}}\u0026#39;\nor \u0026#39;projects/{{project}}/locations/{{location}}\u0026#39;\n  - `status` (`string`): Whether the trigger is currently active. Default value: \u0026#34;HEALTHY\u0026#34; Possible values: [\u0026#34;PAUSED\u0026#34;, \u0026#34;HEALTHY\u0026#34;, \u0026#34;CANCELLED\u0026#34;] When `null`, the `status` field will be omitted from the resulting object.\n  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-datalosspreventionjobtriggerinspectjobnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-datalosspreventionjobtriggertimeoutsnew) constructor.\n  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-datalosspreventionjobtriggertriggersnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    description=null,
    display_name=null,
    inspect_job=null,
    status=null,
    timeouts=null,
    triggers=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_job_trigger',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      inspect_job=inspect_job,
      parent=parent,
      status=status,
      timeouts=timeouts,
      triggers=triggers
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_loss_prevention_job_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_job_trigger`\nTerraform resource.\n\nUnlike [google.data_loss_prevention_job_trigger.new](#fn-datalosspreventionjobtriggernew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the trigger, either in the format &#39;projects/{{project}}&#39;\nor &#39;projects/{{project}}/locations/{{location}}&#39;\n  - `status` (`string`): Whether the trigger is currently active. Default value: &#34;HEALTHY&#34; Possible values: [&#34;PAUSED&#34;, &#34;HEALTHY&#34;, &#34;CANCELLED&#34;] When `null`, the `status` field will be omitted from the resulting object.\n  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-datalosspreventionjobtriggerinspectjobnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-datalosspreventionjobtriggertimeoutsnew) constructor.\n  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-datalosspreventionjobtriggertriggersnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_job_trigger` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    description=null,
    display_name=null,
    inspect_job=null,
    status=null,
    timeouts=null,
    triggers=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    inspect_job: inspect_job,
    parent: parent,
    status: status,
    timeouts: timeouts,
    triggers: triggers,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  triggers:: {
    '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.triggers.new` constructs a new object with attributes and blocks configured for the `triggers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schedule` (`list[obj]`): Schedule for triggered jobs When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.schedule.new](#fn-triggersschedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `triggers` sub block.\n', args=[]),
    new(
      schedule=null
    ):: std.prune(a={
      schedule: schedule,
    }),
    schedule:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.triggers.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `recurrence_period_duration` (`string`): With this option a job is started a regular periodic basis. For example: every day (86400 seconds).\n\nA scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs.\n\nThis value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `recurrence_period_duration` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schedule` sub block.\n', args=[]),
      new(
        recurrence_period_duration=null
      ):: std.prune(a={
        recurrence_period_duration: recurrence_period_duration,
      }),
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withInspectJob':: d.fn(help='`google.list[obj].withInspectJob` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the inspect_job field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInspectJobMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `inspect_job` field.\n', args=[]),
  withInspectJob(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          inspect_job: value,
        },
      },
    },
  },
  '#withInspectJobMixin':: d.fn(help='`google.list[obj].withInspectJobMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the inspect_job field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInspectJob](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `inspect_job` field.\n', args=[]),
  withInspectJobMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          inspect_job+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withStatus':: d.fn(help='`google.string.withStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `status` field.\n', args=[]),
  withStatus(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTriggers':: d.fn(help='`google.list[obj].withTriggers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the triggers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTriggersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `triggers` field.\n', args=[]),
  withTriggers(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          triggers: value,
        },
      },
    },
  },
  '#withTriggersMixin':: d.fn(help='`google.list[obj].withTriggersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the triggers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTriggers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `triggers` field.\n', args=[]),
  withTriggersMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          triggers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
