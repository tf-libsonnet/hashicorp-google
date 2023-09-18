local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_insights_report_config', url='', help='`storage_insights_report_config` represents the `google_storage_insights_report_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  csv_options:: {
    '#new':: d.fn(help='\n`google.storage_insights_report_config.csv_options.new` constructs a new object with attributes and blocks configured for the `csv_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `delimiter` (`string`): The delimiter used to separate the fields in the inventory report CSV file. When `null`, the `delimiter` field will be omitted from the resulting object.\n  - `header_required` (`bool`): The boolean that indicates whether or not headers are included in the inventory report CSV file. When `null`, the `header_required` field will be omitted from the resulting object.\n  - `record_separator` (`string`): The character used to separate the records in the inventory report CSV file. When `null`, the `record_separator` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `csv_options` sub block.\n', args=[]),
    new(
      delimiter=null,
      header_required=null,
      record_separator=null
    ):: std.prune(a={
      delimiter: delimiter,
      header_required: header_required,
      record_separator: record_separator,
    }),
  },
  frequency_options:: {
    end_date:: {
      '#new':: d.fn(help='\n`google.storage_insights_report_config.frequency_options.end_date.new` constructs a new object with attributes and blocks configured for the `end_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): The day of the month to stop generating inventory reports.\n  - `month` (`number`): The month to stop generating inventory reports.\n  - `year` (`number`): The year to stop generating inventory reports\n\n**Returns**:\n  - An attribute object that represents the `end_date` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.storage_insights_report_config.frequency_options.new` constructs a new object with attributes and blocks configured for the `frequency_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `frequency` (`string`): The frequency in which inventory reports are generated. Values are DAILY or WEEKLY. Possible values: [&#34;DAILY&#34;, &#34;WEEKLY&#34;]\n  - `end_date` (`list[obj]`): The date to stop generating inventory reports. For example, {&#34;day&#34;: 15, &#34;month&#34;: 9, &#34;year&#34;: 2022}. When `null`, the `end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.end_date.new](#fn-frequency_optionsend_datenew) constructor.\n  - `start_date` (`list[obj]`): The date to start generating inventory reports. For example, {&#34;day&#34;: 15, &#34;month&#34;: 8, &#34;year&#34;: 2022}. When `null`, the `start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.start_date.new](#fn-frequency_optionsstart_datenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `frequency_options` sub block.\n', args=[]),
    new(
      frequency,
      end_date=null,
      start_date=null
    ):: std.prune(a={
      end_date: end_date,
      frequency: frequency,
      start_date: start_date,
    }),
    start_date:: {
      '#new':: d.fn(help='\n`google.storage_insights_report_config.frequency_options.start_date.new` constructs a new object with attributes and blocks configured for the `start_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): The day of the month to start generating inventory reports.\n  - `month` (`number`): The month to start generating inventory reports.\n  - `year` (`number`): The year to start generating inventory reports\n\n**Returns**:\n  - An attribute object that represents the `start_date` sub block.\n', args=[]),
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
  },
  '#new':: d.fn(help="\n`google.storage_insights_report_config.new` injects a new `google_storage_insights_report_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_insights_report_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_insights_report_config` using the reference:\n\n    $._ref.google_storage_insights_report_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_insights_report_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the ReportConfig. The source and destination buckets specified in the ReportConfig\nmust be in the same location.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `csv_options` (`list[obj]`): Options for configuring the format of the inventory report CSV file. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.csv_options.new](#fn-csv_optionsnew) constructor.\n  - `frequency_options` (`list[obj]`): Options for configuring how inventory reports are generated. When `null`, the `frequency_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.new](#fn-frequency_optionsnew) constructor.\n  - `object_metadata_report_options` (`list[obj]`): Options for including metadata in an inventory report. When `null`, the `object_metadata_report_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.new](#fn-object_metadata_report_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    csv_options=null,
    display_name=null,
    frequency_options=null,
    object_metadata_report_options=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_insights_report_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      csv_options=csv_options,
      display_name=display_name,
      frequency_options=frequency_options,
      location=location,
      object_metadata_report_options=object_metadata_report_options,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_insights_report_config.newAttrs` constructs a new object with attributes and blocks configured for the `storage_insights_report_config`\nTerraform resource.\n\nUnlike [google.storage_insights_report_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the ReportConfig. The source and destination buckets specified in the ReportConfig\nmust be in the same location.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `csv_options` (`list[obj]`): Options for configuring the format of the inventory report CSV file. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.csv_options.new](#fn-csv_optionsnew) constructor.\n  - `frequency_options` (`list[obj]`): Options for configuring how inventory reports are generated. When `null`, the `frequency_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.new](#fn-frequency_optionsnew) constructor.\n  - `object_metadata_report_options` (`list[obj]`): Options for including metadata in an inventory report. When `null`, the `object_metadata_report_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.new](#fn-object_metadata_report_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_insights_report_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    csv_options=null,
    display_name=null,
    frequency_options=null,
    object_metadata_report_options=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    csv_options: csv_options,
    display_name: display_name,
    frequency_options: frequency_options,
    location: location,
    object_metadata_report_options: object_metadata_report_options,
    project: project,
    timeouts: timeouts,
  }),
  object_metadata_report_options:: {
    '#new':: d.fn(help='\n`google.storage_insights_report_config.object_metadata_report_options.new` constructs a new object with attributes and blocks configured for the `object_metadata_report_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata_fields` (`list`): The metadata fields included in an inventory report.\n  - `storage_destination_options` (`list[obj]`): Options for where the inventory reports are stored. When `null`, the `storage_destination_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.storage_destination_options.new](#fn-object_metadata_report_optionsstorage_destination_optionsnew) constructor.\n  - `storage_filters` (`list[obj]`): A nested object resource When `null`, the `storage_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.storage_filters.new](#fn-object_metadata_report_optionsstorage_filtersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `object_metadata_report_options` sub block.\n', args=[]),
    new(
      metadata_fields,
      storage_destination_options=null,
      storage_filters=null
    ):: std.prune(a={
      metadata_fields: metadata_fields,
      storage_destination_options: storage_destination_options,
      storage_filters: storage_filters,
    }),
    storage_destination_options:: {
      '#new':: d.fn(help='\n`google.storage_insights_report_config.object_metadata_report_options.storage_destination_options.new` constructs a new object with attributes and blocks configured for the `storage_destination_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): The destination bucket that stores the generated inventory reports.\n  - `destination_path` (`string`): The path within the destination bucket to store generated inventory reports. When `null`, the `destination_path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `storage_destination_options` sub block.\n', args=[]),
      new(
        bucket,
        destination_path=null
      ):: std.prune(a={
        bucket: bucket,
        destination_path: destination_path,
      }),
    },
    storage_filters:: {
      '#new':: d.fn(help='\n`google.storage_insights_report_config.object_metadata_report_options.storage_filters.new` constructs a new object with attributes and blocks configured for the `storage_filters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): The filter to use when specifying which bucket to generate inventory reports for. When `null`, the `bucket` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `storage_filters` sub block.\n', args=[]),
      new(
        bucket=null
      ):: std.prune(a={
        bucket: bucket,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.storage_insights_report_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCsvOptions':: d.fn(help='`google.list[obj].withCsvOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the csv_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCsvOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `csv_options` field.\n', args=[]),
  withCsvOptions(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          csv_options: value,
        },
      },
    },
  },
  '#withCsvOptionsMixin':: d.fn(help='`google.list[obj].withCsvOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the csv_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCsvOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `csv_options` field.\n', args=[]),
  withCsvOptionsMixin(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          csv_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withFrequencyOptions':: d.fn(help='`google.list[obj].withFrequencyOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the frequency_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFrequencyOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `frequency_options` field.\n', args=[]),
  withFrequencyOptions(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          frequency_options: value,
        },
      },
    },
  },
  '#withFrequencyOptionsMixin':: d.fn(help='`google.list[obj].withFrequencyOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the frequency_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFrequencyOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `frequency_options` field.\n', args=[]),
  withFrequencyOptionsMixin(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          frequency_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withObjectMetadataReportOptions':: d.fn(help='`google.list[obj].withObjectMetadataReportOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the object_metadata_report_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withObjectMetadataReportOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `object_metadata_report_options` field.\n', args=[]),
  withObjectMetadataReportOptions(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          object_metadata_report_options: value,
        },
      },
    },
  },
  '#withObjectMetadataReportOptionsMixin':: d.fn(help='`google.list[obj].withObjectMetadataReportOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the object_metadata_report_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withObjectMetadataReportOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `object_metadata_report_options` field.\n', args=[]),
  withObjectMetadataReportOptionsMixin(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          object_metadata_report_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_storage_insights_report_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
