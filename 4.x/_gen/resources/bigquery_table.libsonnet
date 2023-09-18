local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_table', url='', help='`bigquery_table` represents the `google_bigquery_table` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_configuration:: {
    '#new':: d.fn(help='\n`google.bigquery_table.encryption_configuration.new` constructs a new object with attributes and blocks configured for the `encryption_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the google_bigquery_default_service_account datasource and the google_kms_crypto_key_iam_binding resource.\n\n**Returns**:\n  - An attribute object that represents the `encryption_configuration` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  external_data_configuration:: {
    avro_options:: {
      '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.avro_options.new` constructs a new object with attributes and blocks configured for the `avro_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `use_avro_logical_types` (`bool`): If sourceFormat is set to &#34;AVRO&#34;, indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).\n\n**Returns**:\n  - An attribute object that represents the `avro_options` sub block.\n', args=[]),
      new(
        use_avro_logical_types
      ):: std.prune(a={
        use_avro_logical_types: use_avro_logical_types,
      }),
    },
    csv_options:: {
      '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.csv_options.new` constructs a new object with attributes and blocks configured for the `csv_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_jagged_rows` (`bool`): Indicates if BigQuery should accept rows that are missing trailing optional columns. When `null`, the `allow_jagged_rows` field will be omitted from the resulting object.\n  - `allow_quoted_newlines` (`bool`): Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. When `null`, the `allow_quoted_newlines` field will be omitted from the resulting object.\n  - `encoding` (`string`): The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. When `null`, the `encoding` field will be omitted from the resulting object.\n  - `field_delimiter` (`string`): The separator for fields in a CSV file. When `null`, the `field_delimiter` field will be omitted from the resulting object.\n  - `quote` (`string`): The value that is used to quote data sections in a CSV file. If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allow_quoted_newlines property to true. The API-side default is &#34;, specified in Terraform escaped as \\&#34;. Due to limitations with Terraform default values, this value is required to be explicitly set.\n  - `skip_leading_rows` (`number`): The number of rows at the top of a CSV file that BigQuery will skip when reading the data. When `null`, the `skip_leading_rows` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `csv_options` sub block.\n', args=[]),
      new(
        quote,
        allow_jagged_rows=null,
        allow_quoted_newlines=null,
        encoding=null,
        field_delimiter=null,
        skip_leading_rows=null
      ):: std.prune(a={
        allow_jagged_rows: allow_jagged_rows,
        allow_quoted_newlines: allow_quoted_newlines,
        encoding: encoding,
        field_delimiter: field_delimiter,
        quote: quote,
        skip_leading_rows: skip_leading_rows,
      }),
    },
    google_sheets_options:: {
      '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.google_sheets_options.new` constructs a new object with attributes and blocks configured for the `google_sheets_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `range` (`string`): Range of a sheet to query from. Only used when non-empty. At least one of range or skip_leading_rows must be set. Typical format: &#34;sheet_name!top_left_cell_id:bottom_right_cell_id&#34; For example: &#34;sheet1!A1:B20&#34; When `null`, the `range` field will be omitted from the resulting object.\n  - `skip_leading_rows` (`number`): The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or skip_leading_rows must be set. When `null`, the `skip_leading_rows` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `google_sheets_options` sub block.\n', args=[]),
      new(
        range=null,
        skip_leading_rows=null
      ):: std.prune(a={
        range: range,
        skip_leading_rows: skip_leading_rows,
      }),
    },
    hive_partitioning_options:: {
      '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.hive_partitioning_options.new` constructs a new object with attributes and blocks configured for the `hive_partitioning_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): When set, what mode of hive partitioning to use when reading data. When `null`, the `mode` field will be omitted from the resulting object.\n  - `require_partition_filter` (`bool`): If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. When `null`, the `require_partition_filter` field will be omitted from the resulting object.\n  - `source_uri_prefix` (`string`): When hive partition detection is requested, a common for all source uris must be required. The prefix must end immediately before the partition key encoding begins. When `null`, the `source_uri_prefix` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `hive_partitioning_options` sub block.\n', args=[]),
      new(
        mode=null,
        require_partition_filter=null,
        source_uri_prefix=null
      ):: std.prune(a={
        mode: mode,
        require_partition_filter: require_partition_filter,
        source_uri_prefix: source_uri_prefix,
      }),
    },
    json_options:: {
      '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.json_options.new` constructs a new object with attributes and blocks configured for the `json_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `encoding` (`string`): The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8. When `null`, the `encoding` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `json_options` sub block.\n', args=[]),
      new(
        encoding=null
      ):: std.prune(a={
        encoding: encoding,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.new` constructs a new object with attributes and blocks configured for the `external_data_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `autodetect` (`bool`): Let BigQuery try to autodetect the schema and format of the table.\n  - `compression` (`string`): The compression type of the data source. Valid values are &#34;NONE&#34; or &#34;GZIP&#34;. When `null`, the `compression` field will be omitted from the resulting object.\n  - `connection_id` (`string`): The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form &#34;{{project}}.{{location}}.{{connection_id}}&#34; or &#34;projects/{{project}}/locations/{{location}}/connections/{{connection_id}}&#34;. When `null`, the `connection_id` field will be omitted from the resulting object.\n  - `file_set_spec_type` (`string`): Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems. When `null`, the `file_set_spec_type` field will be omitted from the resulting object.\n  - `ignore_unknown_values` (`bool`): Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. When `null`, the `ignore_unknown_values` field will be omitted from the resulting object.\n  - `max_bad_records` (`number`): The maximum number of bad records that BigQuery can ignore when reading data. When `null`, the `max_bad_records` field will be omitted from the resulting object.\n  - `metadata_cache_mode` (`string`): Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. When `null`, the `metadata_cache_mode` field will be omitted from the resulting object.\n  - `object_metadata` (`string`): Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted. When `null`, the `object_metadata` field will be omitted from the resulting object.\n  - `reference_file_schema_uri` (`string`): When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC. When `null`, the `reference_file_schema_uri` field will be omitted from the resulting object.\n  - `schema` (`string`): A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables. When `null`, the `schema` field will be omitted from the resulting object.\n  - `source_format` (`string`):  Please see sourceFormat under ExternalDataConfiguration in Bigquery&#39;s public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use &#34;GOOGLE_SHEETS&#34; the scopes must include &#34;googleapis.com/auth/drive.readonly&#34;. When `null`, the `source_format` field will be omitted from the resulting object.\n  - `source_uris` (`list`): A list of the fully-qualified URIs that point to your data in Google Cloud.\n  - `avro_options` (`list[obj]`): Additional options if source_format is set to &#34;AVRO&#34; When `null`, the `avro_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.avro_options.new](#fn-external_data_configurationavro_optionsnew) constructor.\n  - `csv_options` (`list[obj]`): Additional properties to set if source_format is set to &#34;CSV&#34;. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.csv_options.new](#fn-external_data_configurationcsv_optionsnew) constructor.\n  - `google_sheets_options` (`list[obj]`): Additional options if source_format is set to &#34;GOOGLE_SHEETS&#34;. When `null`, the `google_sheets_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.google_sheets_options.new](#fn-external_data_configurationgoogle_sheets_optionsnew) constructor.\n  - `hive_partitioning_options` (`list[obj]`): When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification. When `null`, the `hive_partitioning_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.hive_partitioning_options.new](#fn-external_data_configurationhive_partitioning_optionsnew) constructor.\n  - `json_options` (`list[obj]`): Additional properties to set if sourceFormat is set to JSON.&#34; When `null`, the `json_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.json_options.new](#fn-external_data_configurationjson_optionsnew) constructor.\n  - `parquet_options` (`list[obj]`): Additional properties to set if sourceFormat is set to PARQUET.&#34; When `null`, the `parquet_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.parquet_options.new](#fn-external_data_configurationparquet_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `external_data_configuration` sub block.\n', args=[]),
    new(
      autodetect,
      source_uris,
      avro_options=null,
      compression=null,
      connection_id=null,
      csv_options=null,
      file_set_spec_type=null,
      google_sheets_options=null,
      hive_partitioning_options=null,
      ignore_unknown_values=null,
      json_options=null,
      max_bad_records=null,
      metadata_cache_mode=null,
      object_metadata=null,
      parquet_options=null,
      reference_file_schema_uri=null,
      schema=null,
      source_format=null
    ):: std.prune(a={
      autodetect: autodetect,
      avro_options: avro_options,
      compression: compression,
      connection_id: connection_id,
      csv_options: csv_options,
      file_set_spec_type: file_set_spec_type,
      google_sheets_options: google_sheets_options,
      hive_partitioning_options: hive_partitioning_options,
      ignore_unknown_values: ignore_unknown_values,
      json_options: json_options,
      max_bad_records: max_bad_records,
      metadata_cache_mode: metadata_cache_mode,
      object_metadata: object_metadata,
      parquet_options: parquet_options,
      reference_file_schema_uri: reference_file_schema_uri,
      schema: schema,
      source_format: source_format,
      source_uris: source_uris,
    }),
    parquet_options:: {
      '#new':: d.fn(help='\n`google.bigquery_table.external_data_configuration.parquet_options.new` constructs a new object with attributes and blocks configured for the `parquet_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_list_inference` (`bool`): Indicates whether to use schema inference specifically for Parquet LIST logical type. When `null`, the `enable_list_inference` field will be omitted from the resulting object.\n  - `enum_as_string` (`bool`): Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default. When `null`, the `enum_as_string` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `parquet_options` sub block.\n', args=[]),
      new(
        enable_list_inference=null,
        enum_as_string=null
      ):: std.prune(a={
        enable_list_inference: enable_list_inference,
        enum_as_string: enum_as_string,
      }),
    },
  },
  materialized_view:: {
    '#new':: d.fn(help='\n`google.bigquery_table.materialized_view.new` constructs a new object with attributes and blocks configured for the `materialized_view`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_non_incremental_definition` (`bool`): Allow non incremental materialized view definition. The default value is false. When `null`, the `allow_non_incremental_definition` field will be omitted from the resulting object.\n  - `enable_refresh` (`bool`): Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true. When `null`, the `enable_refresh` field will be omitted from the resulting object.\n  - `query` (`string`): A query whose result is persisted.\n  - `refresh_interval_ms` (`number`): Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000 When `null`, the `refresh_interval_ms` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `materialized_view` sub block.\n', args=[]),
    new(
      query,
      allow_non_incremental_definition=null,
      enable_refresh=null,
      refresh_interval_ms=null
    ):: std.prune(a={
      allow_non_incremental_definition: allow_non_incremental_definition,
      enable_refresh: enable_refresh,
      query: query,
      refresh_interval_ms: refresh_interval_ms,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_table.new` injects a new `google_bigquery_table` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_table.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_table` using the reference:\n\n    $._ref.google_bigquery_table.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_table.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `clustering` (`list`): Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order. When `null`, the `clustering` field will be omitted from the resulting object.\n  - `dataset_id` (`string`): The dataset ID to create the table in. Changing this forces a new resource to be created.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `description` (`string`): The field description. When `null`, the `description` field will be omitted from the resulting object.\n  - `expiration_time` (`number`): The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `friendly_name` (`string`): A descriptive name for the table. When `null`, the `friendly_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `max_staleness` (`string`): The maximum staleness of data that could be returned when the table (or stale MV) is queried. Staleness encoded as a string encoding of sql IntervalValue type. When `null`, the `max_staleness` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.\n  - `schema` (`string`): A JSON schema for the table. When `null`, the `schema` field will be omitted from the resulting object.\n  - `table_id` (`string`): A unique ID for the resource. Changing this forces a new resource to be created.\n  - `encryption_configuration` (`list[obj]`): Specifies how the table should be encrypted. If left blank, the table will be encrypted with a Google-managed key; that process is transparent to the user. When `null`, the `encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.encryption_configuration.new](#fn-encryption_configurationnew) constructor.\n  - `external_data_configuration` (`list[obj]`): Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. When `null`, the `external_data_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.new](#fn-external_data_configurationnew) constructor.\n  - `materialized_view` (`list[obj]`): If specified, configures this table as a materialized view. When `null`, the `materialized_view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.materialized_view.new](#fn-materialized_viewnew) constructor.\n  - `range_partitioning` (`list[obj]`): If specified, configures range-based partitioning for this table. When `null`, the `range_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.range_partitioning.new](#fn-range_partitioningnew) constructor.\n  - `table_constraints` (`list[obj]`): Defines the primary key and foreign keys. When `null`, the `table_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.table_constraints.new](#fn-table_constraintsnew) constructor.\n  - `time_partitioning` (`list[obj]`): If specified, configures time-based partitioning for this table. When `null`, the `time_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.time_partitioning.new](#fn-time_partitioningnew) constructor.\n  - `view` (`list[obj]`): If specified, configures this table as a view. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.view.new](#fn-viewnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset_id,
    table_id,
    clustering=null,
    deletion_protection=null,
    description=null,
    encryption_configuration=null,
    expiration_time=null,
    external_data_configuration=null,
    friendly_name=null,
    labels=null,
    materialized_view=null,
    max_staleness=null,
    project=null,
    range_partitioning=null,
    schema=null,
    table_constraints=null,
    time_partitioning=null,
    view=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_table',
    label=resourceLabel,
    attrs=self.newAttrs(
      clustering=clustering,
      dataset_id=dataset_id,
      deletion_protection=deletion_protection,
      description=description,
      encryption_configuration=encryption_configuration,
      expiration_time=expiration_time,
      external_data_configuration=external_data_configuration,
      friendly_name=friendly_name,
      labels=labels,
      materialized_view=materialized_view,
      max_staleness=max_staleness,
      project=project,
      range_partitioning=range_partitioning,
      schema=schema,
      table_constraints=table_constraints,
      table_id=table_id,
      time_partitioning=time_partitioning,
      view=view
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_table.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_table`\nTerraform resource.\n\nUnlike [google.bigquery_table.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `clustering` (`list`): Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order. When `null`, the `clustering` field will be omitted from the resulting object.\n  - `dataset_id` (`string`): The dataset ID to create the table in. Changing this forces a new resource to be created.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `description` (`string`): The field description. When `null`, the `description` field will be omitted from the resulting object.\n  - `expiration_time` (`number`): The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `friendly_name` (`string`): A descriptive name for the table. When `null`, the `friendly_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `max_staleness` (`string`): The maximum staleness of data that could be returned when the table (or stale MV) is queried. Staleness encoded as a string encoding of sql IntervalValue type. When `null`, the `max_staleness` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.\n  - `schema` (`string`): A JSON schema for the table. When `null`, the `schema` field will be omitted from the resulting object.\n  - `table_id` (`string`): A unique ID for the resource. Changing this forces a new resource to be created.\n  - `encryption_configuration` (`list[obj]`): Specifies how the table should be encrypted. If left blank, the table will be encrypted with a Google-managed key; that process is transparent to the user. When `null`, the `encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.encryption_configuration.new](#fn-encryption_configurationnew) constructor.\n  - `external_data_configuration` (`list[obj]`): Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. When `null`, the `external_data_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.new](#fn-external_data_configurationnew) constructor.\n  - `materialized_view` (`list[obj]`): If specified, configures this table as a materialized view. When `null`, the `materialized_view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.materialized_view.new](#fn-materialized_viewnew) constructor.\n  - `range_partitioning` (`list[obj]`): If specified, configures range-based partitioning for this table. When `null`, the `range_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.range_partitioning.new](#fn-range_partitioningnew) constructor.\n  - `table_constraints` (`list[obj]`): Defines the primary key and foreign keys. When `null`, the `table_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.table_constraints.new](#fn-table_constraintsnew) constructor.\n  - `time_partitioning` (`list[obj]`): If specified, configures time-based partitioning for this table. When `null`, the `time_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.time_partitioning.new](#fn-time_partitioningnew) constructor.\n  - `view` (`list[obj]`): If specified, configures this table as a view. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.view.new](#fn-viewnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_table` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset_id,
    table_id,
    clustering=null,
    deletion_protection=null,
    description=null,
    encryption_configuration=null,
    expiration_time=null,
    external_data_configuration=null,
    friendly_name=null,
    labels=null,
    materialized_view=null,
    max_staleness=null,
    project=null,
    range_partitioning=null,
    schema=null,
    table_constraints=null,
    time_partitioning=null,
    view=null
  ):: std.prune(a={
    clustering: clustering,
    dataset_id: dataset_id,
    deletion_protection: deletion_protection,
    description: description,
    encryption_configuration: encryption_configuration,
    expiration_time: expiration_time,
    external_data_configuration: external_data_configuration,
    friendly_name: friendly_name,
    labels: labels,
    materialized_view: materialized_view,
    max_staleness: max_staleness,
    project: project,
    range_partitioning: range_partitioning,
    schema: schema,
    table_constraints: table_constraints,
    table_id: table_id,
    time_partitioning: time_partitioning,
    view: view,
  }),
  range_partitioning:: {
    '#new':: d.fn(help='\n`google.bigquery_table.range_partitioning.new` constructs a new object with attributes and blocks configured for the `range_partitioning`\nTerraform sub block.\n\n\n\n**Args**:\n  - `field` (`string`): The field used to determine how to create a range-based partition.\n  - `range` (`list[obj]`): Information required to partition based on ranges. Structure is documented below. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.range_partitioning.range.new](#fn-range_partitioningrangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `range_partitioning` sub block.\n', args=[]),
    new(
      field,
      range=null
    ):: std.prune(a={
      field: field,
      range: range,
    }),
    range:: {
      '#new':: d.fn(help='\n`google.bigquery_table.range_partitioning.range.new` constructs a new object with attributes and blocks configured for the `range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end` (`number`): End of the range partitioning, exclusive.\n  - `interval` (`number`): The width of each range within the partition.\n  - `start` (`number`): Start of the range partitioning, inclusive.\n\n**Returns**:\n  - An attribute object that represents the `range` sub block.\n', args=[]),
      new(
        end,
        interval,
        start
      ):: std.prune(a={
        end: end,
        interval: interval,
        start: start,
      }),
    },
  },
  table_constraints:: {
    foreign_keys:: {
      column_references:: {
        '#new':: d.fn(help='\n`google.bigquery_table.table_constraints.foreign_keys.column_references.new` constructs a new object with attributes and blocks configured for the `column_references`\nTerraform sub block.\n\n\n\n**Args**:\n  - `referenced_column` (`string`): The column in the primary key that are referenced by the referencingColumn.\n  - `referencing_column` (`string`): The column that composes the foreign key.\n\n**Returns**:\n  - An attribute object that represents the `column_references` sub block.\n', args=[]),
        new(
          referenced_column,
          referencing_column
        ):: std.prune(a={
          referenced_column: referenced_column,
          referencing_column: referencing_column,
        }),
      },
      '#new':: d.fn(help='\n`google.bigquery_table.table_constraints.foreign_keys.new` constructs a new object with attributes and blocks configured for the `foreign_keys`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Set only if the foreign key constraint is named. When `null`, the `name` field will be omitted from the resulting object.\n  - `column_references` (`list[obj]`): The pair of the foreign key column and primary key column. When `null`, the `column_references` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.table_constraints.foreign_keys.column_references.new](#fn-table_constraintstable_constraintscolumn_referencesnew) constructor.\n  - `referenced_table` (`list[obj]`): The table that holds the primary key and is referenced by this foreign key. When `null`, the `referenced_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.table_constraints.foreign_keys.referenced_table.new](#fn-table_constraintstable_constraintsreferenced_tablenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `foreign_keys` sub block.\n', args=[]),
      new(
        column_references=null,
        name=null,
        referenced_table=null
      ):: std.prune(a={
        column_references: column_references,
        name: name,
        referenced_table: referenced_table,
      }),
      referenced_table:: {
        '#new':: d.fn(help='\n`google.bigquery_table.table_constraints.foreign_keys.referenced_table.new` constructs a new object with attributes and blocks configured for the `referenced_table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters. Certain operations allow suffixing of the table ID with a partition decorator, such as sample_table$20190123.\n\n**Returns**:\n  - An attribute object that represents the `referenced_table` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.bigquery_table.table_constraints.new` constructs a new object with attributes and blocks configured for the `table_constraints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `foreign_keys` (`list[obj]`): Present only if the table has a foreign key. The foreign key is not enforced. When `null`, the `foreign_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.table_constraints.foreign_keys.new](#fn-table_constraintsforeign_keysnew) constructor.\n  - `primary_key` (`list[obj]`): Represents a primary key constraint on a table&#39;s columns. Present only if the table has a primary key. The primary key is not enforced. When `null`, the `primary_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.table_constraints.primary_key.new](#fn-table_constraintsprimary_keynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `table_constraints` sub block.\n', args=[]),
    new(
      foreign_keys=null,
      primary_key=null
    ):: std.prune(a={
      foreign_keys: foreign_keys,
      primary_key: primary_key,
    }),
    primary_key:: {
      '#new':: d.fn(help='\n`google.bigquery_table.table_constraints.primary_key.new` constructs a new object with attributes and blocks configured for the `primary_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `columns` (`list`): The columns that are composed of the primary key constraint.\n\n**Returns**:\n  - An attribute object that represents the `primary_key` sub block.\n', args=[]),
      new(
        columns
      ):: std.prune(a={
        columns: columns,
      }),
    },
  },
  time_partitioning:: {
    '#new':: d.fn(help='\n`google.bigquery_table.time_partitioning.new` constructs a new object with attributes and blocks configured for the `time_partitioning`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expiration_ms` (`number`): Number of milliseconds for which to keep the storage for a partition. When `null`, the `expiration_ms` field will be omitted from the resulting object.\n  - `field` (`string`): The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time. When `null`, the `field` field will be omitted from the resulting object.\n  - `require_partition_filter` (`bool`): If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. When `null`, the `require_partition_filter` field will be omitted from the resulting object.\n  - `type` (`string`): The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.\n\n**Returns**:\n  - An attribute object that represents the `time_partitioning` sub block.\n', args=[]),
    new(
      type,
      expiration_ms=null,
      field=null,
      require_partition_filter=null
    ):: std.prune(a={
      expiration_ms: expiration_ms,
      field: field,
      require_partition_filter: require_partition_filter,
      type: type,
    }),
  },
  view:: {
    '#new':: d.fn(help='\n`google.bigquery_table.view.new` constructs a new object with attributes and blocks configured for the `view`\nTerraform sub block.\n\n\n\n**Args**:\n  - `query` (`string`): A query that BigQuery executes when the view is referenced.\n  - `use_legacy_sql` (`bool`): Specifies whether to use BigQuery&#39;s legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery&#39;s standard SQL When `null`, the `use_legacy_sql` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `view` sub block.\n', args=[]),
    new(
      query,
      use_legacy_sql=null
    ):: std.prune(a={
      query: query,
      use_legacy_sql: use_legacy_sql,
    }),
  },
  '#withClustering':: d.fn(help='`google.list.withClustering` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the clustering field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `clustering` field.\n', args=[]),
  withClustering(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          clustering: value,
        },
      },
    },
  },
  '#withDatasetId':: d.fn(help='`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset_id` field.\n', args=[]),
  withDatasetId(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEncryptionConfiguration':: d.fn(help='`google.list[obj].withEncryptionConfiguration` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_configuration field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionConfigurationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_configuration` field.\n', args=[]),
  withEncryptionConfiguration(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          encryption_configuration: value,
        },
      },
    },
  },
  '#withEncryptionConfigurationMixin':: d.fn(help='`google.list[obj].withEncryptionConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_configuration field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfiguration](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_configuration` field.\n', args=[]),
  withEncryptionConfigurationMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          encryption_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withExpirationTime':: d.fn(help='`google.number.withExpirationTime` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the expiration_time field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `expiration_time` field.\n', args=[]),
  withExpirationTime(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          expiration_time: value,
        },
      },
    },
  },
  '#withExternalDataConfiguration':: d.fn(help='`google.list[obj].withExternalDataConfiguration` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the external_data_configuration field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExternalDataConfigurationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `external_data_configuration` field.\n', args=[]),
  withExternalDataConfiguration(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          external_data_configuration: value,
        },
      },
    },
  },
  '#withExternalDataConfigurationMixin':: d.fn(help='`google.list[obj].withExternalDataConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the external_data_configuration field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExternalDataConfiguration](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `external_data_configuration` field.\n', args=[]),
  withExternalDataConfigurationMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          external_data_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFriendlyName':: d.fn(help='`google.string.withFriendlyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the friendly_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `friendly_name` field.\n', args=[]),
  withFriendlyName(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          friendly_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMaterializedView':: d.fn(help='`google.list[obj].withMaterializedView` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the materialized_view field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaterializedViewMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `materialized_view` field.\n', args=[]),
  withMaterializedView(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          materialized_view: value,
        },
      },
    },
  },
  '#withMaterializedViewMixin':: d.fn(help='`google.list[obj].withMaterializedViewMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the materialized_view field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaterializedView](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `materialized_view` field.\n', args=[]),
  withMaterializedViewMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          materialized_view+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMaxStaleness':: d.fn(help='`google.string.withMaxStaleness` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the max_staleness field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `max_staleness` field.\n', args=[]),
  withMaxStaleness(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          max_staleness: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRangePartitioning':: d.fn(help='`google.list[obj].withRangePartitioning` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the range_partitioning field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRangePartitioningMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `range_partitioning` field.\n', args=[]),
  withRangePartitioning(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          range_partitioning: value,
        },
      },
    },
  },
  '#withRangePartitioningMixin':: d.fn(help='`google.list[obj].withRangePartitioningMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the range_partitioning field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRangePartitioning](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `range_partitioning` field.\n', args=[]),
  withRangePartitioningMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          range_partitioning+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSchema':: d.fn(help='`google.string.withSchema` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the schema field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `schema` field.\n', args=[]),
  withSchema(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          schema: value,
        },
      },
    },
  },
  '#withTableConstraints':: d.fn(help='`google.list[obj].withTableConstraints` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the table_constraints field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTableConstraintsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `table_constraints` field.\n', args=[]),
  withTableConstraints(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          table_constraints: value,
        },
      },
    },
  },
  '#withTableConstraintsMixin':: d.fn(help='`google.list[obj].withTableConstraintsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the table_constraints field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTableConstraints](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `table_constraints` field.\n', args=[]),
  withTableConstraintsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          table_constraints+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTableId':: d.fn(help='`google.string.withTableId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the table_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `table_id` field.\n', args=[]),
  withTableId(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          table_id: value,
        },
      },
    },
  },
  '#withTimePartitioning':: d.fn(help='`google.list[obj].withTimePartitioning` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the time_partitioning field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTimePartitioningMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `time_partitioning` field.\n', args=[]),
  withTimePartitioning(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          time_partitioning: value,
        },
      },
    },
  },
  '#withTimePartitioningMixin':: d.fn(help='`google.list[obj].withTimePartitioningMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the time_partitioning field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTimePartitioning](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `time_partitioning` field.\n', args=[]),
  withTimePartitioningMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          time_partitioning+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withView':: d.fn(help='`google.list[obj].withView` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the view field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withViewMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `view` field.\n', args=[]),
  withView(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          view: value,
        },
      },
    },
  },
  '#withViewMixin':: d.fn(help='`google.list[obj].withViewMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the view field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withView](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `view` field.\n', args=[]),
  withViewMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          view+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
