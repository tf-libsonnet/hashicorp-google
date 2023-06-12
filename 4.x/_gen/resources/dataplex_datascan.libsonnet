local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataplex_datascan', url='', help='`dataplex_datascan` represents the `google_dataplex_datascan` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  data:: {
    '#new':: d.fn(help='\n`google.dataplex_datascan.data.new` constructs a new object with attributes and blocks configured for the `data`\nTerraform sub block.\n\n\n\n**Args**:\n  - `entity` (`string`): The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan. When `null`, the `entity` field will be omitted from the resulting object.\n  - `resource` (`string`): The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:\n(Cloud Storage bucket for DataDiscoveryScan)BigQuery table of type &#34;TABLE&#34; for DataProfileScan/DataQualityScan. When `null`, the `resource` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `data` sub block.\n', args=[]),
    new(
      entity=null,
      resource=null
    ):: std.prune(a={
      entity: entity,
      resource: resource,
    }),
  },
  data_profile_spec:: {
    '#new':: d.fn(help='\n`google.dataplex_datascan.data_profile_spec.new` constructs a new object with attributes and blocks configured for the `data_profile_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `row_filter` (`string`): A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10 When `null`, the `row_filter` field will be omitted from the resulting object.\n  - `sampling_percent` (`number`): The percentage of the records to be selected from the dataset for DataScan. When `null`, the `sampling_percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `data_profile_spec` sub block.\n', args=[]),
    new(
      row_filter=null,
      sampling_percent=null
    ):: std.prune(a={
      row_filter: row_filter,
      sampling_percent: sampling_percent,
    }),
  },
  data_quality_spec:: {
    '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.new` constructs a new object with attributes and blocks configured for the `data_quality_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `row_filter` (`string`): A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10 When `null`, the `row_filter` field will be omitted from the resulting object.\n  - `sampling_percent` (`number`): The percentage of the records to be selected from the dataset for DataScan. When `null`, the `sampling_percent` field will be omitted from the resulting object.\n  - `rules` (`list[obj]`): The list of rules to evaluate against a data source. At least one rule is required. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.new](#fn-data_quality_specrulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `data_quality_spec` sub block.\n', args=[]),
    new(
      row_filter=null,
      rules=null,
      sampling_percent=null
    ):: std.prune(a={
      row_filter: row_filter,
      rules: rules,
      sampling_percent: sampling_percent,
    }),
    rules:: {
      '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): The unnested column which this rule is evaluated against. When `null`, the `column` field will be omitted from the resulting object.\n  - `dimension` (`string`): The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are [&#34;COMPLETENESS&#34;, &#34;ACCURACY&#34;, &#34;CONSISTENCY&#34;, &#34;VALIDITY&#34;, &#34;UNIQUENESS&#34;, &#34;INTEGRITY&#34;]\n  - `ignore_null` (`bool`): Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules. When `null`, the `ignore_null` field will be omitted from the resulting object.\n  - `threshold` (`number`): The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). When `null`, the `threshold` field will be omitted from the resulting object.\n  - `non_null_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value is null. When `null`, the `non_null_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.non_null_expectation.new](#fn-data_quality_specdata_quality_specnon_null_expectationnew) constructor.\n  - `range_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value lies between a specified range. When `null`, the `range_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.range_expectation.new](#fn-data_quality_specdata_quality_specrange_expectationnew) constructor.\n  - `regex_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value matches a specified regex. When `null`, the `regex_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.regex_expectation.new](#fn-data_quality_specdata_quality_specregex_expectationnew) constructor.\n  - `row_condition_expectation` (`list[obj]`): Table rule which evaluates whether each row passes the specified condition. When `null`, the `row_condition_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.row_condition_expectation.new](#fn-data_quality_specdata_quality_specrow_condition_expectationnew) constructor.\n  - `set_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value is contained by a specified set. When `null`, the `set_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.set_expectation.new](#fn-data_quality_specdata_quality_specset_expectationnew) constructor.\n  - `statistic_range_expectation` (`list[obj]`): ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range. When `null`, the `statistic_range_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.statistic_range_expectation.new](#fn-data_quality_specdata_quality_specstatistic_range_expectationnew) constructor.\n  - `table_condition_expectation` (`list[obj]`): Table rule which evaluates whether the provided expression is true. When `null`, the `table_condition_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.table_condition_expectation.new](#fn-data_quality_specdata_quality_spectable_condition_expectationnew) constructor.\n  - `uniqueness_expectation` (`list[obj]`): ColumnAggregate rule which evaluates whether the column has duplicates. When `null`, the `uniqueness_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.uniqueness_expectation.new](#fn-data_quality_specdata_quality_specuniqueness_expectationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
      new(
        dimension,
        column=null,
        ignore_null=null,
        non_null_expectation=null,
        range_expectation=null,
        regex_expectation=null,
        row_condition_expectation=null,
        set_expectation=null,
        statistic_range_expectation=null,
        table_condition_expectation=null,
        threshold=null,
        uniqueness_expectation=null
      ):: std.prune(a={
        column: column,
        dimension: dimension,
        ignore_null: ignore_null,
        non_null_expectation: non_null_expectation,
        range_expectation: range_expectation,
        regex_expectation: regex_expectation,
        row_condition_expectation: row_condition_expectation,
        set_expectation: set_expectation,
        statistic_range_expectation: statistic_range_expectation,
        table_condition_expectation: table_condition_expectation,
        threshold: threshold,
        uniqueness_expectation: uniqueness_expectation,
      }),
      non_null_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.non_null_expectation.new` constructs a new object with attributes and blocks configured for the `non_null_expectation`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `non_null_expectation` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      range_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.range_expectation.new` constructs a new object with attributes and blocks configured for the `range_expectation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_value` (`string`): The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided. When `null`, the `max_value` field will be omitted from the resulting object.\n  - `min_value` (`string`): The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided. When `null`, the `min_value` field will be omitted from the resulting object.\n  - `strict_max_enabled` (`bool`): Whether each value needs to be strictly lesser than (&#39;&lt;&#39;) the maximum, or if equality is allowed.\nOnly relevant if a maxValue has been defined. Default = false. When `null`, the `strict_max_enabled` field will be omitted from the resulting object.\n  - `strict_min_enabled` (`bool`): Whether each value needs to be strictly greater than (&#39;&gt;&#39;) the minimum, or if equality is allowed.\nOnly relevant if a minValue has been defined. Default = false. When `null`, the `strict_min_enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `range_expectation` sub block.\n', args=[]),
        new(
          max_value=null,
          min_value=null,
          strict_max_enabled=null,
          strict_min_enabled=null
        ):: std.prune(a={
          max_value: max_value,
          min_value: min_value,
          strict_max_enabled: strict_max_enabled,
          strict_min_enabled: strict_min_enabled,
        }),
      },
      regex_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.regex_expectation.new` constructs a new object with attributes and blocks configured for the `regex_expectation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `regex` (`string`): A regular expression the column value is expected to match.\n\n**Returns**:\n  - An attribute object that represents the `regex_expectation` sub block.\n', args=[]),
        new(
          regex
        ):: std.prune(a={
          regex: regex,
        }),
      },
      row_condition_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.row_condition_expectation.new` constructs a new object with attributes and blocks configured for the `row_condition_expectation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sql_expression` (`string`): The SQL expression.\n\n**Returns**:\n  - An attribute object that represents the `row_condition_expectation` sub block.\n', args=[]),
        new(
          sql_expression
        ):: std.prune(a={
          sql_expression: sql_expression,
        }),
      },
      set_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.set_expectation.new` constructs a new object with attributes and blocks configured for the `set_expectation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `values` (`list`): Expected values for the column value.\n\n**Returns**:\n  - An attribute object that represents the `set_expectation` sub block.\n', args=[]),
        new(
          values
        ):: std.prune(a={
          values: values,
        }),
      },
      statistic_range_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.statistic_range_expectation.new` constructs a new object with attributes and blocks configured for the `statistic_range_expectation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_value` (`string`): The maximum column statistic value allowed for a row to pass this validation.\nAt least one of minValue and maxValue need to be provided. When `null`, the `max_value` field will be omitted from the resulting object.\n  - `min_value` (`string`): The minimum column statistic value allowed for a row to pass this validation.\nAt least one of minValue and maxValue need to be provided. When `null`, the `min_value` field will be omitted from the resulting object.\n  - `statistic` (`string`): column statistics. Possible values: [&#34;STATISTIC_UNDEFINED&#34;, &#34;MEAN&#34;, &#34;MIN&#34;, &#34;MAX&#34;]\n  - `strict_max_enabled` (`bool`): Whether column statistic needs to be strictly lesser than (&#39;&lt;&#39;) the maximum, or if equality is allowed.\nOnly relevant if a maxValue has been defined. Default = false. When `null`, the `strict_max_enabled` field will be omitted from the resulting object.\n  - `strict_min_enabled` (`bool`): Whether column statistic needs to be strictly greater than (&#39;&gt;&#39;) the minimum, or if equality is allowed.\nOnly relevant if a minValue has been defined. Default = false. When `null`, the `strict_min_enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `statistic_range_expectation` sub block.\n', args=[]),
        new(
          statistic,
          max_value=null,
          min_value=null,
          strict_max_enabled=null,
          strict_min_enabled=null
        ):: std.prune(a={
          max_value: max_value,
          min_value: min_value,
          statistic: statistic,
          strict_max_enabled: strict_max_enabled,
          strict_min_enabled: strict_min_enabled,
        }),
      },
      table_condition_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.table_condition_expectation.new` constructs a new object with attributes and blocks configured for the `table_condition_expectation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sql_expression` (`string`): The SQL expression.\n\n**Returns**:\n  - An attribute object that represents the `table_condition_expectation` sub block.\n', args=[]),
        new(
          sql_expression
        ):: std.prune(a={
          sql_expression: sql_expression,
        }),
      },
      uniqueness_expectation:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.data_quality_spec.rules.uniqueness_expectation.new` constructs a new object with attributes and blocks configured for the `uniqueness_expectation`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `uniqueness_expectation` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
    },
  },
  execution_spec:: {
    '#new':: d.fn(help='\n`google.dataplex_datascan.execution_spec.new` constructs a new object with attributes and blocks configured for the `execution_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `field` (`string`): The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time. If not specified, a data scan will run for all data in the table. When `null`, the `field` field will be omitted from the resulting object.\n  - `trigger` (`list[obj]`): Spec related to how often and when a scan should be triggered. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.trigger.new](#fn-execution_spectriggernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `execution_spec` sub block.\n', args=[]),
    new(
      field=null,
      trigger=null
    ):: std.prune(a={
      field: field,
      trigger: trigger,
    }),
    trigger:: {
      '#new':: d.fn(help='\n`google.dataplex_datascan.execution_spec.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`\nTerraform sub block.\n\n\n\n**Args**:\n  - `on_demand` (`list[obj]`): The scan runs once via dataScans.run API. When `null`, the `on_demand` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.trigger.on_demand.new](#fn-execution_specexecution_specon_demandnew) constructor.\n  - `schedule` (`list[obj]`): The scan is scheduled to run periodically. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.trigger.schedule.new](#fn-execution_specexecution_specschedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger` sub block.\n', args=[]),
      new(
        on_demand=null,
        schedule=null
      ):: std.prune(a={
        on_demand: on_demand,
        schedule: schedule,
      }),
      on_demand:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.execution_spec.trigger.on_demand.new` constructs a new object with attributes and blocks configured for the `on_demand`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `on_demand` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      schedule:: {
        '#new':: d.fn(help='\n`google.dataplex_datascan.execution_spec.trigger.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cron` (`string`): Cron schedule for running scans periodically. This field is required for Schedule scans.\n\n**Returns**:\n  - An attribute object that represents the `schedule` sub block.\n', args=[]),
        new(
          cron
        ):: std.prune(a={
          cron: cron,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.dataplex_datascan.new` injects a new `google_dataplex_datascan` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataplex_datascan.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataplex_datascan` using the reference:\n\n    $._ref.google_dataplex_datascan.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataplex_datascan.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `data_scan_id` (`string`): DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.\n  - `description` (`string`): Description of the scan. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the scan. A list of key-\u0026gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the data scan should reside.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `data` (`list[obj]`): The data source for DataScan. When `null`, the `data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data.new](#fn-datanew) constructor.\n  - `data_profile_spec` (`list[obj]`): DataProfileScan related setting. When `null`, the `data_profile_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.new](#fn-data_profile_specnew) constructor.\n  - `data_quality_spec` (`list[obj]`): DataQualityScan related setting. When `null`, the `data_quality_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.new](#fn-data_quality_specnew) constructor.\n  - `execution_spec` (`list[obj]`): DataScan execution settings. When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.new](#fn-execution_specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    data_scan_id,
    location,
    data=null,
    data_profile_spec=null,
    data_quality_spec=null,
    description=null,
    display_name=null,
    execution_spec=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataplex_datascan',
    label=resourceLabel,
    attrs=self.newAttrs(
      data=data,
      data_profile_spec=data_profile_spec,
      data_quality_spec=data_quality_spec,
      data_scan_id=data_scan_id,
      description=description,
      display_name=display_name,
      execution_spec=execution_spec,
      labels=labels,
      location=location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataplex_datascan.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_datascan`\nTerraform resource.\n\nUnlike [google.dataplex_datascan.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `data_scan_id` (`string`): DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.\n  - `description` (`string`): Description of the scan. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the scan. A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the data scan should reside.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `data` (`list[obj]`): The data source for DataScan. When `null`, the `data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data.new](#fn-datanew) constructor.\n  - `data_profile_spec` (`list[obj]`): DataProfileScan related setting. When `null`, the `data_profile_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.new](#fn-data_profile_specnew) constructor.\n  - `data_quality_spec` (`list[obj]`): DataQualityScan related setting. When `null`, the `data_quality_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.new](#fn-data_quality_specnew) constructor.\n  - `execution_spec` (`list[obj]`): DataScan execution settings. When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.new](#fn-execution_specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_datascan` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    data_scan_id,
    location,
    data=null,
    data_profile_spec=null,
    data_quality_spec=null,
    description=null,
    display_name=null,
    execution_spec=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    data: data,
    data_profile_spec: data_profile_spec,
    data_quality_spec: data_quality_spec,
    data_scan_id: data_scan_id,
    description: description,
    display_name: display_name,
    execution_spec: execution_spec,
    labels: labels,
    location: location,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataplex_datascan.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withData':: d.fn(help='`google.list[obj].withData` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data` field.\n', args=[]),
  withData(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data: value,
        },
      },
    },
  },
  '#withDataMixin':: d.fn(help='`google.list[obj].withDataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withData](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data` field.\n', args=[]),
  withDataMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataProfileSpec':: d.fn(help='`google.list[obj].withDataProfileSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_profile_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDataProfileSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_profile_spec` field.\n', args=[]),
  withDataProfileSpec(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data_profile_spec: value,
        },
      },
    },
  },
  '#withDataProfileSpecMixin':: d.fn(help='`google.list[obj].withDataProfileSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_profile_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDataProfileSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_profile_spec` field.\n', args=[]),
  withDataProfileSpecMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data_profile_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataQualitySpec':: d.fn(help='`google.list[obj].withDataQualitySpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_quality_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDataQualitySpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_quality_spec` field.\n', args=[]),
  withDataQualitySpec(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data_quality_spec: value,
        },
      },
    },
  },
  '#withDataQualitySpecMixin':: d.fn(help='`google.list[obj].withDataQualitySpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_quality_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDataQualitySpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_quality_spec` field.\n', args=[]),
  withDataQualitySpecMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data_quality_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataScanId':: d.fn(help='`google.string.withDataScanId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the data_scan_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `data_scan_id` field.\n', args=[]),
  withDataScanId(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          data_scan_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withExecutionSpec':: d.fn(help='`google.list[obj].withExecutionSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the execution_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExecutionSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `execution_spec` field.\n', args=[]),
  withExecutionSpec(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          execution_spec: value,
        },
      },
    },
  },
  '#withExecutionSpecMixin':: d.fn(help='`google.list[obj].withExecutionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the execution_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExecutionSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `execution_spec` field.\n', args=[]),
  withExecutionSpecMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          execution_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_datascan+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
