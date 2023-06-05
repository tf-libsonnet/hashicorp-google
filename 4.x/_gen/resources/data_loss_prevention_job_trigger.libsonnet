local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_loss_prevention_job_trigger', url='', help='`data_loss_prevention_job_trigger` represents the `google_data_loss_prevention_job_trigger` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  inspect_job:: {
    actions:: {
      deidentify:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.new` constructs a new object with attributes and blocks configured for the `deidentify`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_storage_output` (`string`): User settable Cloud Storage bucket and folders to store de-identified files.\n\nThis field must be set for cloud storage deidentification.\n\nThe output Cloud Storage bucket must be different from the input bucket.\n\nDe-identified files will overwrite files in the output path.\n\nForm of: gs://bucket/folder/ or gs://bucket\n  - `file_types_to_transform` (`list`): List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.\n\nIf empty, all supported files will be transformed. Supported types may be automatically added over time.\n\nIf a file type is set in this field that isn&#39;t supported by the Deidentify action then the job will fail and will not be successfully created/started. Possible values: [&#34;IMAGE&#34;, &#34;TEXT_FILE&#34;, &#34;CSV&#34;, &#34;TSV&#34;] When `null`, the `file_types_to_transform` field will be omitted from the resulting object.\n  - `transformation_config` (`list[obj]`): User specified deidentify templates and configs for structured, unstructured, and image files. When `null`, the `transformation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_config.new](#fn-inspect_jobinspect_jobactionstransformation_confignew) constructor.\n  - `transformation_details_storage_config` (`list[obj]`): Config for storing transformation details. When `null`, the `transformation_details_storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.new](#fn-inspect_jobinspect_jobactionstransformation_details_storage_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deidentify` sub block.\n', args=[]),
        new(
          cloud_storage_output,
          file_types_to_transform=null,
          transformation_config=null,
          transformation_details_storage_config=null
        ):: std.prune(a={
          cloud_storage_output: cloud_storage_output,
          file_types_to_transform: file_types_to_transform,
          transformation_config: transformation_config,
          transformation_details_storage_config: transformation_details_storage_config,
        }),
        transformation_config:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_config.new` constructs a new object with attributes and blocks configured for the `transformation_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `deidentify_template` (`string`): If this template is specified, it will serve as the default de-identify template. When `null`, the `deidentify_template` field will be omitted from the resulting object.\n  - `image_redact_template` (`string`): If this template is specified, it will serve as the de-identify template for images. When `null`, the `image_redact_template` field will be omitted from the resulting object.\n  - `structured_deidentify_template` (`string`): If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. When `null`, the `structured_deidentify_template` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `transformation_config` sub block.\n', args=[]),
          new(
            deidentify_template=null,
            image_redact_template=null,
            structured_deidentify_template=null
          ):: std.prune(a={
            deidentify_template: deidentify_template,
            image_redact_template: image_redact_template,
            structured_deidentify_template: structured_deidentify_template,
          }),
        },
        transformation_details_storage_config:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.new` constructs a new object with attributes and blocks configured for the `transformation_details_storage_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`list[obj]`): The BigQuery table in which to store the output. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.table.new](#fn-inspect_jobinspect_jobactionsdeidentifytablenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transformation_details_storage_config` sub block.\n', args=[]),
          new(
            table=null
          ):: std.prune(a={
            table: table,
          }),
          table:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.table.new` constructs a new object with attributes and blocks configured for the `table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 1,024 characters. When `null`, the `table_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `table` sub block.\n', args=[]),
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
      job_notification_emails:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.job_notification_emails.new` constructs a new object with attributes and blocks configured for the `job_notification_emails`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `job_notification_emails` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.new` constructs a new object with attributes and blocks configured for the `actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `deidentify` (`list[obj]`): Create a de-identified copy of the requested table or files. When `null`, the `deidentify` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.new](#fn-inspect_jobinspect_jobdeidentifynew) constructor.\n  - `job_notification_emails` (`list[obj]`): Sends an email when the job completes. The email goes to IAM project owners and technical Essential Contacts. When `null`, the `job_notification_emails` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.job_notification_emails.new](#fn-inspect_jobinspect_jobjob_notification_emailsnew) constructor.\n  - `pub_sub` (`list[obj]`): Publish a message into a given Pub/Sub topic when the job completes. When `null`, the `pub_sub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new](#fn-inspect_jobinspect_jobpub_subnew) constructor.\n  - `publish_findings_to_cloud_data_catalog` (`list[obj]`): Publish findings of a DlpJob to Data Catalog. When `null`, the `publish_findings_to_cloud_data_catalog` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.publish_findings_to_cloud_data_catalog.new](#fn-inspect_jobinspect_jobpublish_findings_to_cloud_data_catalognew) constructor.\n  - `publish_summary_to_cscc` (`list[obj]`): Publish the result summary of a DlpJob to the Cloud Security Command Center. When `null`, the `publish_summary_to_cscc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.publish_summary_to_cscc.new](#fn-inspect_jobinspect_jobpublish_summary_to_csccnew) constructor.\n  - `publish_to_stackdriver` (`list[obj]`): Enable Stackdriver metric dlp.googleapis.com/findingCount. When `null`, the `publish_to_stackdriver` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.publish_to_stackdriver.new](#fn-inspect_jobinspect_jobpublish_to_stackdrivernew) constructor.\n  - `save_findings` (`list[obj]`): If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk When `null`, the `save_findings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new](#fn-inspect_jobinspect_jobsave_findingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `actions` sub block.\n', args=[]),
      new(
        deidentify=null,
        job_notification_emails=null,
        pub_sub=null,
        publish_findings_to_cloud_data_catalog=null,
        publish_summary_to_cscc=null,
        publish_to_stackdriver=null,
        save_findings=null
      ):: std.prune(a={
        deidentify: deidentify,
        job_notification_emails: job_notification_emails,
        pub_sub: pub_sub,
        publish_findings_to_cloud_data_catalog: publish_findings_to_cloud_data_catalog,
        publish_summary_to_cscc: publish_summary_to_cscc,
        publish_to_stackdriver: publish_to_stackdriver,
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
      publish_findings_to_cloud_data_catalog:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.publish_findings_to_cloud_data_catalog.new` constructs a new object with attributes and blocks configured for the `publish_findings_to_cloud_data_catalog`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `publish_findings_to_cloud_data_catalog` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      publish_summary_to_cscc:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.publish_summary_to_cscc.new` constructs a new object with attributes and blocks configured for the `publish_summary_to_cscc`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `publish_summary_to_cscc` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      publish_to_stackdriver:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.publish_to_stackdriver.new` constructs a new object with attributes and blocks configured for the `publish_to_stackdriver`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `publish_to_stackdriver` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      save_findings:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new` constructs a new object with attributes and blocks configured for the `save_findings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `output_config` (`list[obj]`): Information on where to store output When `null`, the `output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new](#fn-inspect_jobinspect_jobactionsoutput_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `save_findings` sub block.\n', args=[]),
        new(
          output_config=null
        ):: std.prune(a={
          output_config: output_config,
        }),
        output_config:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new` constructs a new object with attributes and blocks configured for the `output_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `output_schema` (`string`): Schema used for writing the findings for Inspect jobs. This field is only used for\nInspect and must be unspecified for Risk jobs. Columns are derived from the Finding\nobject. If appending to an existing table, any columns from the predefined schema\nthat are missing will be added. No columns in the existing table will be deleted.\n\nIf unspecified, then all available columns will be used for a new table or an (existing)\ntable with no schema, and no changes will be made to an existing table that has a schema.\nOnly for use with external storage. Possible values: [&#34;BASIC_COLUMNS&#34;, &#34;GCS_COLUMNS&#34;, &#34;DATASTORE_COLUMNS&#34;, &#34;BIG_QUERY_COLUMNS&#34;, &#34;ALL_COLUMNS&#34;] When `null`, the `output_schema` field will be omitted from the resulting object.\n  - `table` (`list[obj]`): Information on the location of the target BigQuery Table. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new](#fn-inspect_jobinspect_jobactionssave_findingstablenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `output_config` sub block.\n', args=[]),
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
    inspect_config:: {
      custom_info_types:: {
        dictionary:: {
          cloud_storage_path:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_path` sub block.\n', args=[]),
            new(
              path
            ):: std.prune(a={
              path: path,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path.new](#fn-inspect_jobinspect_jobinspect_configcustom_info_typescloud_storage_pathnew) constructor.\n  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.word_list.new](#fn-inspect_jobinspect_jobinspect_configcustom_info_typesword_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dictionary` sub block.\n', args=[]),
          new(
            cloud_storage_path=null,
            word_list=null
          ):: std.prune(a={
            cloud_storage_path: cloud_storage_path,
            word_list: word_list,
          }),
          word_list:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one\nphrase and every phrase must contain at least 2 characters that are letters or digits.\n\n**Returns**:\n  - An attribute object that represents the `word_list` sub block.\n', args=[]),
            new(
              words
            ):: std.prune(a={
              words: words,
            }),
          },
        },
        info_type:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names\nlisted at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n  - `version` (`string`): Version of the information type to use. By default, the version is set to stable. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `info_type` sub block.\n', args=[]),
          new(
            name,
            version=null
          ):: std.prune(a={
            name: name,
            version: version,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.new` constructs a new object with attributes and blocks configured for the `custom_info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclusion_type` (`string`): If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching. Possible values: [&#34;EXCLUSION_TYPE_EXCLUDE&#34;] When `null`, the `exclusion_type` field will be omitted from the resulting object.\n  - `likelihood` (`string`): Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria\nspecified by the rule. Default value: &#34;VERY_LIKELY&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `likelihood` field will be omitted from the resulting object.\n  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.new](#fn-inspect_jobinspect_jobinspect_configdictionarynew) constructor.\n  - `info_type` (`list[obj]`): CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing\ninfoTypes and that infoType is specified in &#39;info_types&#39; field. Specifying the latter adds findings to the\none detected by the system. If built-in info type is not specified in &#39;info_types&#39; list then the name is\ntreated as a custom info type. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.info_type.new](#fn-inspect_jobinspect_jobinspect_configinfo_typenew) constructor.\n  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.regex.new](#fn-inspect_jobinspect_jobinspect_configregexnew) constructor.\n  - `stored_type` (`list[obj]`): A reference to a StoredInfoType to use with scanning. When `null`, the `stored_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.stored_type.new](#fn-inspect_jobinspect_jobinspect_configstored_typenew) constructor.\n  - `surrogate_type` (`list[obj]`): Message for detecting output from deidentification transformations that support reversing. When `null`, the `surrogate_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.surrogate_type.new](#fn-inspect_jobinspect_jobinspect_configsurrogate_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_info_types` sub block.\n', args=[]),
        new(
          dictionary=null,
          exclusion_type=null,
          info_type=null,
          likelihood=null,
          regex=null,
          stored_type=null,
          surrogate_type=null
        ):: std.prune(a={
          dictionary: dictionary,
          exclusion_type: exclusion_type,
          info_type: info_type,
          likelihood: likelihood,
          regex: regex,
          stored_type: stored_type,
          surrogate_type: surrogate_type,
        }),
        regex:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.regex.new` constructs a new object with attributes and blocks configured for the `regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression.\nIts syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.\n\n**Returns**:\n  - An attribute object that represents the `regex` sub block.\n', args=[]),
          new(
            pattern,
            group_indexes=null
          ):: std.prune(a={
            group_indexes: group_indexes,
            pattern: pattern,
          }),
        },
        stored_type:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.stored_type.new` constructs a new object with attributes and blocks configured for the `stored_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Resource name of the requested StoredInfoType, for example &#39;organizations/433245324/storedInfoTypes/432452342&#39;\nor &#39;projects/project-id/storedInfoTypes/432452342&#39;.\n\n**Returns**:\n  - An attribute object that represents the `stored_type` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        surrogate_type:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.surrogate_type.new` constructs a new object with attributes and blocks configured for the `surrogate_type`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `surrogate_type` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
      },
      info_types:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n  - `version` (`string`): Version of the information type to use. By default, the version is set to stable When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
        new(
          name,
          version=null
        ):: std.prune(a={
          name: name,
          version: version,
        }),
      },
      limits:: {
        max_findings_per_info_type:: {
          info_type:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n  - `version` (`string`): Version of the information type to use. By default, the version is set to stable When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `info_type` sub block.\n', args=[]),
            new(
              name,
              version=null
            ):: std.prune(a={
              name: name,
              version: version,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.new` constructs a new object with attributes and blocks configured for the `max_findings_per_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_findings` (`number`): Max findings limit for the given infoType. When `null`, the `max_findings` field will be omitted from the resulting object.\n  - `info_type` (`list[obj]`): Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does\nnot have an infoType, the DLP API applies the limit against all infoTypes that are found but not\nspecified in another InfoTypeLimit. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.new](#fn-inspect_jobinspect_jobinspect_configlimitsinfo_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `max_findings_per_info_type` sub block.\n', args=[]),
          new(
            info_type=null,
            max_findings=null
          ):: std.prune(a={
            info_type: info_type,
            max_findings: max_findings,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.new` constructs a new object with attributes and blocks configured for the `limits`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_findings_per_item` (`number`): Max number of findings that will be returned for each item scanned. The maximum returned is 2000. When `null`, the `max_findings_per_item` field will be omitted from the resulting object.\n  - `max_findings_per_request` (`number`): Max number of findings that will be returned per request/job. The maximum returned is 2000. When `null`, the `max_findings_per_request` field will be omitted from the resulting object.\n  - `max_findings_per_info_type` (`list[obj]`): Configuration of findings limit given for specified infoTypes. When `null`, the `max_findings_per_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.new](#fn-inspect_jobinspect_jobinspect_configmax_findings_per_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `limits` sub block.\n', args=[]),
        new(
          max_findings_per_info_type=null,
          max_findings_per_item=null,
          max_findings_per_request=null
        ):: std.prune(a={
          max_findings_per_info_type: max_findings_per_info_type,
          max_findings_per_item: max_findings_per_item,
          max_findings_per_request: max_findings_per_request,
        }),
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.new` constructs a new object with attributes and blocks configured for the `inspect_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclude_info_types` (`bool`): When true, excludes type information of the findings. When `null`, the `exclude_info_types` field will be omitted from the resulting object.\n  - `include_quote` (`bool`): When true, a contextual quote from the data that triggered a finding is included in the response. When `null`, the `include_quote` field will be omitted from the resulting object.\n  - `min_likelihood` (`string`): Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info Default value: &#34;POSSIBLE&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `min_likelihood` field will be omitted from the resulting object.\n  - `custom_info_types` (`list[obj]`): Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. When `null`, the `custom_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.new](#fn-inspect_jobinspect_jobcustom_info_typesnew) constructor.\n  - `info_types` (`list[obj]`): Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list\nor listed at https://cloud.google.com/dlp/docs/infotypes-reference.\n\nWhen no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.\nBy default this may be all types, but may change over time as detectors are updated. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.info_types.new](#fn-inspect_jobinspect_jobinfo_typesnew) constructor.\n  - `limits` (`list[obj]`): Configuration to control the number of findings returned. When `null`, the `limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.new](#fn-inspect_jobinspect_joblimitsnew) constructor.\n  - `rule_set` (`list[obj]`): Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,\nother rules are executed in the order they are specified for each info type. When `null`, the `rule_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.new](#fn-inspect_jobinspect_jobrule_setnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `inspect_config` sub block.\n', args=[]),
      new(
        custom_info_types=null,
        exclude_info_types=null,
        include_quote=null,
        info_types=null,
        limits=null,
        min_likelihood=null,
        rule_set=null
      ):: std.prune(a={
        custom_info_types: custom_info_types,
        exclude_info_types: exclude_info_types,
        include_quote: include_quote,
        info_types: info_types,
        limits: limits,
        min_likelihood: min_likelihood,
        rule_set: rule_set,
      }),
      rule_set:: {
        info_types:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n  - `version` (`string`): Version of the information type to use. By default, the version is set to stable. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
          new(
            name,
            version=null
          ):: std.prune(a={
            name: name,
            version: version,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.new` constructs a new object with attributes and blocks configured for the `rule_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_types` (`list[obj]`): List of infoTypes this rule set is applied to. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.info_types.new](#fn-inspect_jobinspect_jobinspect_configinfo_typesnew) constructor.\n  - `rules` (`list[obj]`): Set of rules to be applied to infoTypes. The rules are applied in order. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.new](#fn-inspect_jobinspect_jobinspect_configrulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rule_set` sub block.\n', args=[]),
        new(
          info_types=null,
          rules=null
        ):: std.prune(a={
          info_types: info_types,
          rules: rules,
        }),
        rules:: {
          exclusion_rule:: {
            dictionary:: {
              cloud_storage_path:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_path` sub block.\n', args=[]),
                new(
                  path
                ):: std.prune(a={
                  path: path,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_rulecloud_storage_pathnew) constructor.\n  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleword_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dictionary` sub block.\n', args=[]),
              new(
                cloud_storage_path=null,
                word_list=null
              ):: std.prune(a={
                cloud_storage_path: cloud_storage_path,
                word_list: word_list,
              }),
              word_list:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one\nphrase and every phrase must contain at least 2 characters that are letters or digits.\n\n**Returns**:\n  - An attribute object that represents the `word_list` sub block.\n', args=[]),
                new(
                  words
                ):: std.prune(a={
                  words: words,
                }),
              },
            },
            exclude_by_hotword:: {
              hotword_regex:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex.new` constructs a new object with attributes and blocks configured for the `hotword_regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified,\nthe entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression. Its syntax\n(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. When `null`, the `pattern` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `hotword_regex` sub block.\n', args=[]),
                new(
                  group_indexes=null,
                  pattern=null
                ):: std.prune(a={
                  group_indexes: group_indexes,
                  pattern: pattern,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.new` constructs a new object with attributes and blocks configured for the `exclude_by_hotword`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hotword_regex` (`list[obj]`): Regular expression pattern defining what qualifies as a hotword. When `null`, the `hotword_regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_rulehotword_regexnew) constructor.\n  - `proximity` (`list[obj]`): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot\nexceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be\nused to match substrings of the finding itself. For example, the certainty of a phone number regex\n&#39;(\\d{3}) \\d{3}-\\d{4}&#39; could be adjusted upwards if the area code is known to be the local area code of a company\noffice using the hotword regex &#39;(xxx)&#39;, where &#39;xxx&#39; is the area code in question. When `null`, the `proximity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleproximitynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclude_by_hotword` sub block.\n', args=[]),
              new(
                hotword_regex=null,
                proximity=null
              ):: std.prune(a={
                hotword_regex: hotword_regex,
                proximity: proximity,
              }),
              proximity:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity.new` constructs a new object with attributes and blocks configured for the `proximity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `window_after` (`number`): Number of characters after the finding to consider. Either this or window_before must be specified When `null`, the `window_after` field will be omitted from the resulting object.\n  - `window_before` (`number`): Number of characters before the finding to consider. Either this or window_after must be specified When `null`, the `window_before` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `proximity` sub block.\n', args=[]),
                new(
                  window_after=null,
                  window_before=null
                ):: std.prune(a={
                  window_after: window_after,
                  window_before: window_before,
                }),
              },
            },
            exclude_info_types:: {
              info_types:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n  - `version` (`string`): Version of the information type to use. By default, the version is set to stable. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
                new(
                  name,
                  version=null
                ):: std.prune(a={
                  name: name,
                  version: version,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new` constructs a new object with attributes and blocks configured for the `exclude_info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_types` (`list[obj]`): If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleinfo_typesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclude_info_types` sub block.\n', args=[]),
              new(
                info_types=null
              ):: std.prune(a={
                info_types: info_types,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.new` constructs a new object with attributes and blocks configured for the `exclusion_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `matching_type` (`string`): How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType Possible values: [&#34;MATCHING_TYPE_FULL_MATCH&#34;, &#34;MATCHING_TYPE_PARTIAL_MATCH&#34;, &#34;MATCHING_TYPE_INVERSE_MATCH&#34;]\n  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesdictionarynew) constructor.\n  - `exclude_by_hotword` (`list[obj]`): Drop if the hotword rule is contained in the proximate context. When `null`, the `exclude_by_hotword` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclude_by_hotwordnew) constructor.\n  - `exclude_info_types` (`list[obj]`): Set of infoTypes for which findings would affect this rule. When `null`, the `exclude_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclude_info_typesnew) constructor.\n  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesregexnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclusion_rule` sub block.\n', args=[]),
            new(
              matching_type,
              dictionary=null,
              exclude_by_hotword=null,
              exclude_info_types=null,
              regex=null
            ):: std.prune(a={
              dictionary: dictionary,
              exclude_by_hotword: exclude_by_hotword,
              exclude_info_types: exclude_info_types,
              matching_type: matching_type,
              regex: regex,
            }),
            regex:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex.new` constructs a new object with attributes and blocks configured for the `regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression.\nIts syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.\n\n**Returns**:\n  - An attribute object that represents the `regex` sub block.\n', args=[]),
              new(
                pattern,
                group_indexes=null
              ):: std.prune(a={
                group_indexes: group_indexes,
                pattern: pattern,
              }),
            },
          },
          hotword_rule:: {
            hotword_regex:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new` constructs a new object with attributes and blocks configured for the `hotword_regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified,\nthe entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression. Its syntax\n(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. When `null`, the `pattern` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `hotword_regex` sub block.\n', args=[]),
              new(
                group_indexes=null,
                pattern=null
              ):: std.prune(a={
                group_indexes: group_indexes,
                pattern: pattern,
              }),
            },
            likelihood_adjustment:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new` constructs a new object with attributes and blocks configured for the `likelihood_adjustment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed_likelihood` (`string`): Set the likelihood of a finding to a fixed value. Either this or relative_likelihood can be set. Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `fixed_likelihood` field will be omitted from the resulting object.\n  - `relative_likelihood` (`number`): Increase or decrease the likelihood by the specified number of levels. For example,\nif a finding would be POSSIBLE without the detection rule and relativeLikelihood is 1,\nthen it is upgraded to LIKELY, while a value of -1 would downgrade it to UNLIKELY.\nLikelihood may never drop below VERY_UNLIKELY or exceed VERY_LIKELY, so applying an\nadjustment of 1 followed by an adjustment of -1 when base likelihood is VERY_LIKELY\nwill result in a final likelihood of LIKELY. Either this or fixed_likelihood can be set. When `null`, the `relative_likelihood` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `likelihood_adjustment` sub block.\n', args=[]),
              new(
                fixed_likelihood=null,
                relative_likelihood=null
              ):: std.prune(a={
                fixed_likelihood: fixed_likelihood,
                relative_likelihood: relative_likelihood,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.new` constructs a new object with attributes and blocks configured for the `hotword_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hotword_regex` (`list[obj]`): Regular expression pattern defining what qualifies as a hotword. When `null`, the `hotword_regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new](#fn-inspect_jobinspect_jobinspect_configrule_setruleshotword_regexnew) constructor.\n  - `likelihood_adjustment` (`list[obj]`): Likelihood adjustment to apply to all matching findings. When `null`, the `likelihood_adjustment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new](#fn-inspect_jobinspect_jobinspect_configrule_setruleslikelihood_adjustmentnew) constructor.\n  - `proximity` (`list[obj]`): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot\nexceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be\nused to match substrings of the finding itself. For example, the certainty of a phone number regex\n&#39;(\\d{3}) \\d{3}-\\d{4}&#39; could be adjusted upwards if the area code is known to be the local area code of a company\noffice using the hotword regex &#39;(xxx)&#39;, where &#39;xxx&#39; is the area code in question. When `null`, the `proximity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesproximitynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hotword_rule` sub block.\n', args=[]),
            new(
              hotword_regex=null,
              likelihood_adjustment=null,
              proximity=null
            ):: std.prune(a={
              hotword_regex: hotword_regex,
              likelihood_adjustment: likelihood_adjustment,
              proximity: proximity,
            }),
            proximity:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity.new` constructs a new object with attributes and blocks configured for the `proximity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `window_after` (`number`): Number of characters after the finding to consider. Either this or window_before must be specified When `null`, the `window_after` field will be omitted from the resulting object.\n  - `window_before` (`number`): Number of characters before the finding to consider. Either this or window_after must be specified When `null`, the `window_before` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `proximity` sub block.\n', args=[]),
              new(
                window_after=null,
                window_before=null
              ):: std.prune(a={
                window_after: window_after,
                window_before: window_before,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclusion_rule` (`list[obj]`): The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results. When `null`, the `exclusion_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.new](#fn-inspect_jobinspect_jobinspect_configrule_setexclusion_rulenew) constructor.\n  - `hotword_rule` (`list[obj]`): Hotword-based detection rule. When `null`, the `hotword_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.new](#fn-inspect_jobinspect_jobinspect_configrule_sethotword_rulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
          new(
            exclusion_rule=null,
            hotword_rule=null
          ):: std.prune(a={
            exclusion_rule: exclusion_rule,
            hotword_rule: hotword_rule,
          }),
        },
      },
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.new` constructs a new object with attributes and blocks configured for the `inspect_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `inspect_template_name` (`string`): The name of the template to run when this job is triggered.\n  - `actions` (`list[obj]`): A task to execute on the completion of a job. When `null`, the `actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.new](#fn-inspect_jobactionsnew) constructor.\n  - `inspect_config` (`list[obj]`): The core content of the template. When `null`, the `inspect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.new](#fn-inspect_jobinspect_confignew) constructor.\n  - `storage_config` (`list[obj]`): Information on where to inspect When `null`, the `storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.new](#fn-inspect_jobstorage_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `inspect_job` sub block.\n', args=[]),
    new(
      inspect_template_name,
      actions=null,
      inspect_config=null,
      storage_config=null
    ):: std.prune(a={
      actions: actions,
      inspect_config: inspect_config,
      inspect_template_name: inspect_template_name,
      storage_config: storage_config,
    }),
    storage_config:: {
      big_query_options:: {
        excluded_fields:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.excluded_fields.new` constructs a new object with attributes and blocks configured for the `excluded_fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field excluded from scanning.\n\n**Returns**:\n  - An attribute object that represents the `excluded_fields` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        identifying_fields:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.identifying_fields.new` constructs a new object with attributes and blocks configured for the `identifying_fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of a BigQuery field to be returned with the findings.\n\n**Returns**:\n  - An attribute object that represents the `identifying_fields` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        included_fields:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.included_fields.new` constructs a new object with attributes and blocks configured for the `included_fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field to which scanning is limited.\n\n**Returns**:\n  - An attribute object that represents the `included_fields` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new` constructs a new object with attributes and blocks configured for the `big_query_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `rows_limit` (`number`): Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.\nIf not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be\nspecified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit` field will be omitted from the resulting object.\n  - `rows_limit_percent` (`number`): Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.\nMust be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of\nrowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit_percent` field will be omitted from the resulting object.\n  - `sample_method` (`string`): How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either\nrowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them. Default value: &#34;TOP&#34; Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.\n  - `excluded_fields` (`list[obj]`): References to fields excluded from scanning.\nThis allows you to skip inspection of entire columns which you know have no findings. When `null`, the `excluded_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.excluded_fields.new](#fn-inspect_jobinspect_jobstorage_configexcluded_fieldsnew) constructor.\n  - `identifying_fields` (`list[obj]`): Specifies the BigQuery fields that will be returned with findings.\nIf not specified, no identifying fields will be returned for findings. When `null`, the `identifying_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.identifying_fields.new](#fn-inspect_jobinspect_jobstorage_configidentifying_fieldsnew) constructor.\n  - `included_fields` (`list[obj]`): Limit scanning only to these fields. When `null`, the `included_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.included_fields.new](#fn-inspect_jobinspect_jobstorage_configincluded_fieldsnew) constructor.\n  - `table_reference` (`list[obj]`): Set of files to scan. When `null`, the `table_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new](#fn-inspect_jobinspect_jobstorage_configtable_referencenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `big_query_options` sub block.\n', args=[]),
        new(
          excluded_fields=null,
          identifying_fields=null,
          included_fields=null,
          rows_limit=null,
          rows_limit_percent=null,
          sample_method=null,
          table_reference=null
        ):: std.prune(a={
          excluded_fields: excluded_fields,
          identifying_fields: identifying_fields,
          included_fields: included_fields,
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
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new` constructs a new object with attributes and blocks configured for the `file_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The Cloud Storage url of the file(s) to scan, in the format &#39;gs://&lt;bucket&gt;/&lt;path&gt;&#39;. Trailing wildcard\nin the path is allowed.\n\nIf the url ends in a trailing slash, the bucket or directory represented by the url will be scanned\nnon-recursively (content in sub-directories will not be scanned). This means that &#39;gs://mybucket/&#39; is\nequivalent to &#39;gs://mybucket/*&#39;, and &#39;gs://mybucket/directory/&#39; is equivalent to &#39;gs://mybucket/directory/*&#39;. When `null`, the `url` field will be omitted from the resulting object.\n  - `regex_file_set` (`list[obj]`): The regex-filtered set of files to scan. When `null`, the `regex_file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new](#fn-inspect_jobinspect_jobstorage_configcloud_storage_optionsregex_file_setnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file_set` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new` constructs a new object with attributes and blocks configured for the `cloud_storage_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bytes_limit_per_file` (`number`): Max number of bytes to scan from a file. If a scanned file&#39;s size is bigger than this value\nthen the rest of the bytes are omitted. When `null`, the `bytes_limit_per_file` field will be omitted from the resulting object.\n  - `bytes_limit_per_file_percent` (`number`): Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.\nMust be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `bytes_limit_per_file_percent` field will be omitted from the resulting object.\n  - `file_types` (`list`): List of file type groups to include in the scan. If empty, all files are scanned and available data\nformat processors are applied. In addition, the binary content of the selected files is always scanned as well.\nImages are scanned only as binary if the specified region does not support image inspection and no fileTypes were specified. Possible values: [&#34;BINARY_FILE&#34;, &#34;TEXT_FILE&#34;, &#34;IMAGE&#34;, &#34;WORD&#34;, &#34;PDF&#34;, &#34;AVRO&#34;, &#34;CSV&#34;, &#34;TSV&#34;] When `null`, the `file_types` field will be omitted from the resulting object.\n  - `files_limit_percent` (`number`): Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.\nMust be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `files_limit_percent` field will be omitted from the resulting object.\n  - `sample_method` (`string`): How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.\nIf not specified, scanning would start from the top. Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.\n  - `file_set` (`list[obj]`): Set of files to scan. When `null`, the `file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new](#fn-inspect_jobinspect_jobstorage_configfile_setnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_options` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new` constructs a new object with attributes and blocks configured for the `datastore_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kind` (`list[obj]`): A representation of a Datastore kind. When `null`, the `kind` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new](#fn-inspect_jobinspect_jobstorage_configkindnew) constructor.\n  - `partition_id` (`list[obj]`): Datastore partition ID. A partition ID identifies a grouping of entities. The grouping\nis always by project and namespace, however the namespace ID may be empty. When `null`, the `partition_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new](#fn-inspect_jobinspect_jobstorage_configpartition_idnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `datastore_options` sub block.\n', args=[]),
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
      hybrid_options:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.new` constructs a new object with attributes and blocks configured for the `hybrid_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A short description of where the data is coming from. Will be stored once in the job. 256 max length. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): To organize findings, these labels will be added to each finding.\n\nLabel keys must be between 1 and 63 characters long and must conform to the following regular expression: &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;.\n\nLabel values must be between 0 and 63 characters long and must conform to the regular expression &#39;([a-z]([-a-z0-9]*[a-z0-9])?)?&#39;.\n\nNo more than 10 labels can be associated with a given finding.\n\nExamples:\n* &#39;&#34;environment&#34; : &#34;production&#34;&#39;\n* &#39;&#34;pipeline&#34; : &#34;etl&#34;&#39; When `null`, the `labels` field will be omitted from the resulting object.\n  - `required_finding_label_keys` (`list`): These are labels that each inspection request must include within their &#39;finding_labels&#39; map. Request\nmay contain others, but any missing one of these will be rejected.\n\nLabel keys must be between 1 and 63 characters long and must conform to the following regular expression: &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;.\n\nNo more than 10 keys can be required. When `null`, the `required_finding_label_keys` field will be omitted from the resulting object.\n  - `table_options` (`list[obj]`): If the container is a table, additional information to make findings meaningful such as the columns that are primary keys. When `null`, the `table_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.new](#fn-inspect_jobinspect_jobstorage_configtable_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hybrid_options` sub block.\n', args=[]),
        new(
          description=null,
          labels=null,
          required_finding_label_keys=null,
          table_options=null
        ):: std.prune(a={
          description: description,
          labels: labels,
          required_finding_label_keys: required_finding_label_keys,
          table_options: table_options,
        }),
        table_options:: {
          identifying_fields:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.identifying_fields.new` constructs a new object with attributes and blocks configured for the `identifying_fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field.\n\n**Returns**:\n  - An attribute object that represents the `identifying_fields` sub block.\n', args=[]),
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.new` constructs a new object with attributes and blocks configured for the `table_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identifying_fields` (`list[obj]`): The columns that are the primary keys for table objects included in ContentItem. A copy of this\ncell&#39;s value will stored alongside alongside each finding so that the finding can be traced to\nthe specific row it came from. No more than 3 may be provided. When `null`, the `identifying_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.identifying_fields.new](#fn-inspect_jobinspect_jobstorage_confighybrid_optionsidentifying_fieldsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `table_options` sub block.\n', args=[]),
          new(
            identifying_fields=null
          ):: std.prune(a={
            identifying_fields: identifying_fields,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.new` constructs a new object with attributes and blocks configured for the `storage_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `big_query_options` (`list[obj]`): Options defining BigQuery table and row identifiers. When `null`, the `big_query_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new](#fn-inspect_jobinspect_jobbig_query_optionsnew) constructor.\n  - `cloud_storage_options` (`list[obj]`): Options defining a file or a set of files within a Google Cloud Storage bucket. When `null`, the `cloud_storage_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new](#fn-inspect_jobinspect_jobcloud_storage_optionsnew) constructor.\n  - `datastore_options` (`list[obj]`): Options defining a data set within Google Cloud Datastore. When `null`, the `datastore_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new](#fn-inspect_jobinspect_jobdatastore_optionsnew) constructor.\n  - `hybrid_options` (`list[obj]`): Configuration to control jobs where the content being inspected is outside of Google Cloud Platform. When `null`, the `hybrid_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.new](#fn-inspect_jobinspect_jobhybrid_optionsnew) constructor.\n  - `timespan_config` (`list[obj]`): Information on where to inspect When `null`, the `timespan_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new](#fn-inspect_jobinspect_jobtimespan_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `storage_config` sub block.\n', args=[]),
      new(
        big_query_options=null,
        cloud_storage_options=null,
        datastore_options=null,
        hybrid_options=null,
        timespan_config=null
      ):: std.prune(a={
        big_query_options: big_query_options,
        cloud_storage_options: cloud_storage_options,
        datastore_options: datastore_options,
        hybrid_options: hybrid_options,
        timespan_config: timespan_config,
      }),
      timespan_config:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new` constructs a new object with attributes and blocks configured for the `timespan_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_auto_population_of_timespan_config` (`bool`): When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid\nscanning files that have not been modified since the last time the JobTrigger executed. This will\nbe based on the time of the execution of the last run of the JobTrigger. When `null`, the `enable_auto_population_of_timespan_config` field will be omitted from the resulting object.\n  - `end_time` (`string`): Exclude files or rows newer than this value. If set to zero, no upper time limit is applied. When `null`, the `end_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): Exclude files or rows older than this value. When `null`, the `start_time` field will be omitted from the resulting object.\n  - `timestamp_field` (`list[obj]`): Information on where to inspect When `null`, the `timestamp_field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new](#fn-inspect_jobinspect_jobstorage_configtimestamp_fieldnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `timespan_config` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.data_loss_prevention_job_trigger.new` injects a new `google_data_loss_prevention_job_trigger` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_loss_prevention_job_trigger.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_loss_prevention_job_trigger` using the reference:\n\n    $._ref.google_data_loss_prevention_job_trigger.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_loss_prevention_job_trigger.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the trigger, either in the format \u0026#39;projects/{{project}}\u0026#39;\nor \u0026#39;projects/{{project}}/locations/{{location}}\u0026#39;\n  - `status` (`string`): Whether the trigger is currently active. Default value: \u0026#34;HEALTHY\u0026#34; Possible values: [\u0026#34;PAUSED\u0026#34;, \u0026#34;HEALTHY\u0026#34;, \u0026#34;CANCELLED\u0026#34;] When `null`, the `status` field will be omitted from the resulting object.\n  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-inspect_jobnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-timeoutsnew) constructor.\n  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-triggersnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.data_loss_prevention_job_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_job_trigger`\nTerraform resource.\n\nUnlike [google.data_loss_prevention_job_trigger.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the trigger, either in the format &#39;projects/{{project}}&#39;\nor &#39;projects/{{project}}/locations/{{location}}&#39;\n  - `status` (`string`): Whether the trigger is currently active. Default value: &#34;HEALTHY&#34; Possible values: [&#34;PAUSED&#34;, &#34;HEALTHY&#34;, &#34;CANCELLED&#34;] When `null`, the `status` field will be omitted from the resulting object.\n  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-inspect_jobnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-timeoutsnew) constructor.\n  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-triggersnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_job_trigger` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
    manual:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.triggers.manual.new` constructs a new object with attributes and blocks configured for the `manual`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `manual` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_job_trigger.triggers.new` constructs a new object with attributes and blocks configured for the `triggers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `manual` (`list[obj]`): For use with hybrid jobs. Jobs must be manually created and finished. When `null`, the `manual` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.manual.new](#fn-triggersmanualnew) constructor.\n  - `schedule` (`list[obj]`): Schedule for triggered jobs When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.schedule.new](#fn-triggersschedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `triggers` sub block.\n', args=[]),
    new(
      manual=null,
      schedule=null
    ):: std.prune(a={
      manual: manual,
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
