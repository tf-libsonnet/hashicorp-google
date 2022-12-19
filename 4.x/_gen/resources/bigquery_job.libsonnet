local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_job', url='', help='`bigquery_job` represents the `google_bigquery_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  copy:: {
    destination_encryption_configuration:: {
      '#new':: d.fn(help='\n`google.bigquery_job.copy.destination_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `destination_encryption_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.\nThe BigQuery Service Account associated with your project requires access to this encryption key.\n\n**Returns**:\n  - An attribute object that represents the `destination_encryption_configuration` sub block.\n', args=[]),
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    destination_table:: {
      '#new':: d.fn(help='\n`google.bigquery_job.copy.destination_table.new` constructs a new object with attributes and blocks configured for the `destination_table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,\nor of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.\n\n**Returns**:\n  - An attribute object that represents the `destination_table` sub block.\n', args=[]),
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_job.copy.new` constructs a new object with attributes and blocks configured for the `copy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create_disposition` (`string`): Specifies whether the job is allowed to create new tables. The following values are supported:\nCREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.\nCREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result.\nCreation, truncation and append actions occur as one atomic update upon job completion Default value: &#34;CREATE_IF_NEEDED&#34; Possible values: [&#34;CREATE_IF_NEEDED&#34;, &#34;CREATE_NEVER&#34;] When `null`, the `create_disposition` field will be omitted from the resulting object.\n  - `write_disposition` (`string`): Specifies the action that occurs if the destination table already exists. The following values are supported:\nWRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.\nWRITE_APPEND: If the table already exists, BigQuery appends the data to the table.\nWRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result.\nEach action is atomic and only occurs if BigQuery is able to complete the job successfully.\nCreation, truncation and append actions occur as one atomic update upon job completion. Default value: &#34;WRITE_EMPTY&#34; Possible values: [&#34;WRITE_TRUNCATE&#34;, &#34;WRITE_APPEND&#34;, &#34;WRITE_EMPTY&#34;] When `null`, the `write_disposition` field will be omitted from the resulting object.\n  - `destination_encryption_configuration` (`list[obj]`): Custom encryption configuration (e.g., Cloud KMS keys) When `null`, the `destination_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.destination_encryption_configuration.new](#fn-copydestination_encryption_configurationnew) constructor.\n  - `destination_table` (`list[obj]`): The destination table. When `null`, the `destination_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.destination_table.new](#fn-copydestination_tablenew) constructor.\n  - `source_tables` (`list[obj]`): Source tables to copy. When `null`, the `source_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.source_tables.new](#fn-copysource_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `copy` sub block.\n', args=[]),
    new(
      create_disposition=null,
      destination_encryption_configuration=null,
      destination_table=null,
      source_tables=null,
      write_disposition=null
    ):: std.prune(a={
      create_disposition: create_disposition,
      destination_encryption_configuration: destination_encryption_configuration,
      destination_table: destination_table,
      source_tables: source_tables,
      write_disposition: write_disposition,
    }),
    source_tables:: {
      '#new':: d.fn(help='\n`google.bigquery_job.copy.source_tables.new` constructs a new object with attributes and blocks configured for the `source_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,\nor of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.\n\n**Returns**:\n  - An attribute object that represents the `source_tables` sub block.\n', args=[]),
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
  },
  extract:: {
    '#new':: d.fn(help='\n`google.bigquery_job.extract.new` constructs a new object with attributes and blocks configured for the `extract`\nTerraform sub block.\n\n\n\n**Args**:\n  - `compression` (`string`): The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.\nThe default value is NONE. DEFLATE and SNAPPY are only supported for Avro. When `null`, the `compression` field will be omitted from the resulting object.\n  - `destination_format` (`string`): The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.\nThe default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV.\nThe default value for models is SAVED_MODEL. When `null`, the `destination_format` field will be omitted from the resulting object.\n  - `destination_uris` (`list`): A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.\n  - `field_delimiter` (`string`): When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.\nDefault is &#39;,&#39; When `null`, the `field_delimiter` field will be omitted from the resulting object.\n  - `print_header` (`bool`): Whether to print out a header row in the results. Default is true. When `null`, the `print_header` field will be omitted from the resulting object.\n  - `use_avro_logical_types` (`bool`): Whether to use logical types when extracting to AVRO format. When `null`, the `use_avro_logical_types` field will be omitted from the resulting object.\n  - `source_model` (`list[obj]`): A reference to the model being exported. When `null`, the `source_model` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.source_model.new](#fn-extractsource_modelnew) constructor.\n  - `source_table` (`list[obj]`): A reference to the table being exported. When `null`, the `source_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.source_table.new](#fn-extractsource_tablenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `extract` sub block.\n', args=[]),
    new(
      destination_uris,
      compression=null,
      destination_format=null,
      field_delimiter=null,
      print_header=null,
      source_model=null,
      source_table=null,
      use_avro_logical_types=null
    ):: std.prune(a={
      compression: compression,
      destination_format: destination_format,
      destination_uris: destination_uris,
      field_delimiter: field_delimiter,
      print_header: print_header,
      source_model: source_model,
      source_table: source_table,
      use_avro_logical_types: use_avro_logical_types,
    }),
    source_model:: {
      '#new':: d.fn(help='\n`google.bigquery_job.extract.source_model.new` constructs a new object with attributes and blocks configured for the `source_model`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this model.\n  - `model_id` (`string`): The ID of the model.\n  - `project_id` (`string`): The ID of the project containing this model.\n\n**Returns**:\n  - An attribute object that represents the `source_model` sub block.\n', args=[]),
      new(
        dataset_id,
        model_id,
        project_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        model_id: model_id,
        project_id: project_id,
      }),
    },
    source_table:: {
      '#new':: d.fn(help='\n`google.bigquery_job.extract.source_table.new` constructs a new object with attributes and blocks configured for the `source_table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,\nor of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.\n\n**Returns**:\n  - An attribute object that represents the `source_table` sub block.\n', args=[]),
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
  },
  load:: {
    destination_encryption_configuration:: {
      '#new':: d.fn(help='\n`google.bigquery_job.load.destination_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `destination_encryption_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.\nThe BigQuery Service Account associated with your project requires access to this encryption key.\n\n**Returns**:\n  - An attribute object that represents the `destination_encryption_configuration` sub block.\n', args=[]),
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    destination_table:: {
      '#new':: d.fn(help='\n`google.bigquery_job.load.destination_table.new` constructs a new object with attributes and blocks configured for the `destination_table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,\nor of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.\n\n**Returns**:\n  - An attribute object that represents the `destination_table` sub block.\n', args=[]),
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_job.load.new` constructs a new object with attributes and blocks configured for the `load`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_jagged_rows` (`bool`): Accept rows that are missing trailing optional columns. The missing values are treated as nulls.\nIf false, records with missing trailing columns are treated as bad records, and if there are too many bad records,\nan invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats. When `null`, the `allow_jagged_rows` field will be omitted from the resulting object.\n  - `allow_quoted_newlines` (`bool`): Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file.\nThe default value is false. When `null`, the `allow_quoted_newlines` field will be omitted from the resulting object.\n  - `autodetect` (`bool`): Indicates if we should automatically infer the options and schema for CSV and JSON sources. When `null`, the `autodetect` field will be omitted from the resulting object.\n  - `create_disposition` (`string`): Specifies whether the job is allowed to create new tables. The following values are supported:\nCREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.\nCREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result.\nCreation, truncation and append actions occur as one atomic update upon job completion Default value: &#34;CREATE_IF_NEEDED&#34; Possible values: [&#34;CREATE_IF_NEEDED&#34;, &#34;CREATE_NEVER&#34;] When `null`, the `create_disposition` field will be omitted from the resulting object.\n  - `encoding` (`string`): The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.\nThe default value is UTF-8. BigQuery decodes the data after the raw, binary data\nhas been split using the values of the quote and fieldDelimiter properties. When `null`, the `encoding` field will be omitted from the resulting object.\n  - `field_delimiter` (`string`): The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character.\nTo use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts\nthe string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the\ndata in its raw, binary state. BigQuery also supports the escape sequence &#34;\\t&#34; to specify a tab separator.\nThe default value is a comma (&#39;,&#39;). When `null`, the `field_delimiter` field will be omitted from the resulting object.\n  - `ignore_unknown_values` (`bool`): Indicates if BigQuery should allow extra values that are not represented in the table schema.\nIf true, the extra values are ignored. If false, records with extra columns are treated as bad records,\nand if there are too many bad records, an invalid error is returned in the job result.\nThe default value is false. The sourceFormat property determines what BigQuery treats as an extra value:\nCSV: Trailing columns\nJSON: Named values that don&#39;t match any column names When `null`, the `ignore_unknown_values` field will be omitted from the resulting object.\n  - `json_extension` (`string`): If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON.\nFor a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited\nGeoJSON: set to GEOJSON. When `null`, the `json_extension` field will be omitted from the resulting object.\n  - `max_bad_records` (`number`): The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value,\nan invalid error is returned in the job result. The default value is 0, which requires that all records are valid. When `null`, the `max_bad_records` field will be omitted from the resulting object.\n  - `null_marker` (`string`): Specifies a string that represents a null value in a CSV file. For example, if you specify &#34;\\N&#34;, BigQuery interprets &#34;\\N&#34; as a null value\nwhen loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an\nempty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as\nan empty value. When `null`, the `null_marker` field will be omitted from the resulting object.\n  - `projection_fields` (`list`): If sourceFormat is set to &#34;DATASTORE_BACKUP&#34;, indicates which entity properties to load into BigQuery from a Cloud Datastore backup.\nProperty names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties.\nIf any named property isn&#39;t found in the Cloud Datastore backup, an invalid error is returned in the job result. When `null`, the `projection_fields` field will be omitted from the resulting object.\n  - `quote` (`string`): The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding,\nand then uses the first byte of the encoded string to split the data in its raw, binary state.\nThe default value is a double-quote (&#39;&#34;&#39;). If your data does not contain quoted sections, set the property value to an empty string.\nIf your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. When `null`, the `quote` field will be omitted from the resulting object.\n  - `schema_update_options` (`list`): Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or\nsupplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;\nwhen writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators.\nFor normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified:\nALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.\nALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. When `null`, the `schema_update_options` field will be omitted from the resulting object.\n  - `skip_leading_rows` (`number`): The number of rows at the top of a CSV file that BigQuery will skip when loading the data.\nThe default value is 0. This property is useful if you have header rows in the file that should be skipped.\nWhen autodetect is on, the behavior is the following:\nskipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected,\nthe row is read as data. Otherwise data is read starting from the second row.\nskipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row.\nskipLeadingRows = N &gt; 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected,\nrow N is just skipped. Otherwise row N is used to extract column names for the detected schema. When `null`, the `skip_leading_rows` field will be omitted from the resulting object.\n  - `source_format` (`string`): The format of the data files. For CSV files, specify &#34;CSV&#34;. For datastore backups, specify &#34;DATASTORE_BACKUP&#34;.\nFor newline-delimited JSON, specify &#34;NEWLINE_DELIMITED_JSON&#34;. For Avro, specify &#34;AVRO&#34;. For parquet, specify &#34;PARQUET&#34;.\nFor orc, specify &#34;ORC&#34;. [Beta] For Bigtable, specify &#34;BIGTABLE&#34;.\nThe default value is CSV. When `null`, the `source_format` field will be omitted from the resulting object.\n  - `source_uris` (`list`): The fully-qualified URIs that point to your data in Google Cloud.\nFor Google Cloud Storage URIs: Each URI can contain one &#39;\\*&#39; wildcard character\nand it must come after the &#39;bucket&#39; name. Size limits related to load jobs apply\nto external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be\nspecified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table.\nFor Google Cloud Datastore backups: Exactly one URI can be specified. Also, the &#39;\\*&#39; wildcard character is not allowed.\n  - `write_disposition` (`string`): Specifies the action that occurs if the destination table already exists. The following values are supported:\nWRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.\nWRITE_APPEND: If the table already exists, BigQuery appends the data to the table.\nWRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result.\nEach action is atomic and only occurs if BigQuery is able to complete the job successfully.\nCreation, truncation and append actions occur as one atomic update upon job completion. Default value: &#34;WRITE_EMPTY&#34; Possible values: [&#34;WRITE_TRUNCATE&#34;, &#34;WRITE_APPEND&#34;, &#34;WRITE_EMPTY&#34;] When `null`, the `write_disposition` field will be omitted from the resulting object.\n  - `destination_encryption_configuration` (`list[obj]`): Custom encryption configuration (e.g., Cloud KMS keys) When `null`, the `destination_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.destination_encryption_configuration.new](#fn-loaddestination_encryption_configurationnew) constructor.\n  - `destination_table` (`list[obj]`): The destination table to load the data into. When `null`, the `destination_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.destination_table.new](#fn-loaddestination_tablenew) constructor.\n  - `time_partitioning` (`list[obj]`): Time-based partitioning specification for the destination table. When `null`, the `time_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.time_partitioning.new](#fn-loadtime_partitioningnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `load` sub block.\n', args=[]),
    new(
      source_uris,
      allow_jagged_rows=null,
      allow_quoted_newlines=null,
      autodetect=null,
      create_disposition=null,
      destination_encryption_configuration=null,
      destination_table=null,
      encoding=null,
      field_delimiter=null,
      ignore_unknown_values=null,
      json_extension=null,
      max_bad_records=null,
      null_marker=null,
      projection_fields=null,
      quote=null,
      schema_update_options=null,
      skip_leading_rows=null,
      source_format=null,
      time_partitioning=null,
      write_disposition=null
    ):: std.prune(a={
      allow_jagged_rows: allow_jagged_rows,
      allow_quoted_newlines: allow_quoted_newlines,
      autodetect: autodetect,
      create_disposition: create_disposition,
      destination_encryption_configuration: destination_encryption_configuration,
      destination_table: destination_table,
      encoding: encoding,
      field_delimiter: field_delimiter,
      ignore_unknown_values: ignore_unknown_values,
      json_extension: json_extension,
      max_bad_records: max_bad_records,
      null_marker: null_marker,
      projection_fields: projection_fields,
      quote: quote,
      schema_update_options: schema_update_options,
      skip_leading_rows: skip_leading_rows,
      source_format: source_format,
      source_uris: source_uris,
      time_partitioning: time_partitioning,
      write_disposition: write_disposition,
    }),
    time_partitioning:: {
      '#new':: d.fn(help='\n`google.bigquery_job.load.time_partitioning.new` constructs a new object with attributes and blocks configured for the `time_partitioning`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expiration_ms` (`string`): Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value. When `null`, the `expiration_ms` field will be omitted from the resulting object.\n  - `field` (`string`): If not set, the table is partitioned by pseudo column &#39;_PARTITIONTIME&#39;; if set, the table is partitioned by this field.\nThe field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.\nA wrapper is used here because an empty string is an invalid value. When `null`, the `field` field will be omitted from the resulting object.\n  - `type` (`string`): The only type supported is DAY, which will generate one partition per day. Providing an empty string used to cause an error,\nbut in OnePlatform the field will be treated as unset.\n\n**Returns**:\n  - An attribute object that represents the `time_partitioning` sub block.\n', args=[]),
      new(
        type,
        expiration_ms=null,
        field=null
      ):: std.prune(a={
        expiration_ms: expiration_ms,
        field: field,
        type: type,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.bigquery_job.new` injects a new `google_bigquery_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_job` using the reference:\n\n    $._ref.google_bigquery_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `job_id` (`string`): The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.\n  - `job_timeout_ms` (`string`): Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job. When `null`, the `job_timeout_ms` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this job. You can use these to organize and group your jobs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location of the job. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `copy` (`list[obj]`): Copies a table. When `null`, the `copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.new](#fn-copynew) constructor.\n  - `extract` (`list[obj]`): Configures an extract job. When `null`, the `extract` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.new](#fn-extractnew) constructor.\n  - `load` (`list[obj]`): Configures a load job. When `null`, the `load` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.new](#fn-loadnew) constructor.\n  - `query` (`list[obj]`): Configures a query job. When `null`, the `query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.new](#fn-querynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    job_id,
    copy=null,
    extract=null,
    job_timeout_ms=null,
    labels=null,
    load=null,
    location=null,
    project=null,
    query=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      copy=copy,
      extract=extract,
      job_id=job_id,
      job_timeout_ms=job_timeout_ms,
      labels=labels,
      load=load,
      location=location,
      project=project,
      query=query,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_job.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_job`\nTerraform resource.\n\nUnlike [google.bigquery_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `job_id` (`string`): The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.\n  - `job_timeout_ms` (`string`): Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job. When `null`, the `job_timeout_ms` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this job. You can use these to organize and group your jobs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location of the job. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `copy` (`list[obj]`): Copies a table. When `null`, the `copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.new](#fn-copynew) constructor.\n  - `extract` (`list[obj]`): Configures an extract job. When `null`, the `extract` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.new](#fn-extractnew) constructor.\n  - `load` (`list[obj]`): Configures a load job. When `null`, the `load` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.new](#fn-loadnew) constructor.\n  - `query` (`list[obj]`): Configures a query job. When `null`, the `query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.new](#fn-querynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    job_id,
    copy=null,
    extract=null,
    job_timeout_ms=null,
    labels=null,
    load=null,
    location=null,
    project=null,
    query=null,
    timeouts=null
  ):: std.prune(a={
    copy: copy,
    extract: extract,
    job_id: job_id,
    job_timeout_ms: job_timeout_ms,
    labels: labels,
    load: load,
    location: location,
    project: project,
    query: query,
    timeouts: timeouts,
  }),
  query:: {
    default_dataset:: {
      '#new':: d.fn(help='\n`google.bigquery_job.query.default_dataset.new` constructs a new object with attributes and blocks configured for the `default_dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The dataset. Can be specified &#39;{{dataset_id}}&#39; if &#39;project_id&#39; is also set,\nor of the form &#39;projects/{{project}}/datasets/{{dataset_id}}&#39; if not.\n  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `default_dataset` sub block.\n', args=[]),
      new(
        dataset_id,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
      }),
    },
    destination_encryption_configuration:: {
      '#new':: d.fn(help='\n`google.bigquery_job.query.destination_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `destination_encryption_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.\nThe BigQuery Service Account associated with your project requires access to this encryption key.\n\n**Returns**:\n  - An attribute object that represents the `destination_encryption_configuration` sub block.\n', args=[]),
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    destination_table:: {
      '#new':: d.fn(help='\n`google.bigquery_job.query.destination_table.new` constructs a new object with attributes and blocks configured for the `destination_table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,\nor of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.\n\n**Returns**:\n  - An attribute object that represents the `destination_table` sub block.\n', args=[]),
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_job.query.new` constructs a new object with attributes and blocks configured for the `query`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_large_results` (`bool`): If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.\nRequires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed.\nHowever, you must still set destinationTable when result size exceeds the allowed maximum response size. When `null`, the `allow_large_results` field will be omitted from the resulting object.\n  - `create_disposition` (`string`): Specifies whether the job is allowed to create new tables. The following values are supported:\nCREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.\nCREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result.\nCreation, truncation and append actions occur as one atomic update upon job completion Default value: &#34;CREATE_IF_NEEDED&#34; Possible values: [&#34;CREATE_IF_NEEDED&#34;, &#34;CREATE_NEVER&#34;] When `null`, the `create_disposition` field will be omitted from the resulting object.\n  - `flatten_results` (`bool`): If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.\nallowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened. When `null`, the `flatten_results` field will be omitted from the resulting object.\n  - `maximum_billing_tier` (`number`): Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).\nIf unspecified, this will be set to your project default. When `null`, the `maximum_billing_tier` field will be omitted from the resulting object.\n  - `maximum_bytes_billed` (`string`): Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).\nIf unspecified, this will be set to your project default. When `null`, the `maximum_bytes_billed` field will be omitted from the resulting object.\n  - `parameter_mode` (`string`): Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query. When `null`, the `parameter_mode` field will be omitted from the resulting object.\n  - `priority` (`string`): Specifies a priority for the query. Default value: &#34;INTERACTIVE&#34; Possible values: [&#34;INTERACTIVE&#34;, &#34;BATCH&#34;] When `null`, the `priority` field will be omitted from the resulting object.\n  - `query` (`string`): SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.\n*NOTE*: queries containing [DML language](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language)\n(&#39;DELETE&#39;, &#39;UPDATE&#39;, &#39;MERGE&#39;, &#39;INSERT&#39;) must specify &#39;create_disposition = &#34;&#34;&#39; and &#39;write_disposition = &#34;&#34;&#39;.\n  - `schema_update_options` (`list`): Allows the schema of the destination table to be updated as a side effect of the query job.\nSchema update options are supported in two cases: when writeDisposition is WRITE_APPEND;\nwhen writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table,\nspecified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema.\nOne or more of the following values are specified:\nALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.\nALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. When `null`, the `schema_update_options` field will be omitted from the resulting object.\n  - `use_legacy_sql` (`bool`): Specifies whether to use BigQuery&#39;s legacy SQL dialect for this query. The default value is true.\nIf set to false, the query will use BigQuery&#39;s standard SQL. When `null`, the `use_legacy_sql` field will be omitted from the resulting object.\n  - `use_query_cache` (`bool`): Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever\ntables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified.\nThe default value is true. When `null`, the `use_query_cache` field will be omitted from the resulting object.\n  - `write_disposition` (`string`): Specifies the action that occurs if the destination table already exists. The following values are supported:\nWRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.\nWRITE_APPEND: If the table already exists, BigQuery appends the data to the table.\nWRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result.\nEach action is atomic and only occurs if BigQuery is able to complete the job successfully.\nCreation, truncation and append actions occur as one atomic update upon job completion. Default value: &#34;WRITE_EMPTY&#34; Possible values: [&#34;WRITE_TRUNCATE&#34;, &#34;WRITE_APPEND&#34;, &#34;WRITE_EMPTY&#34;] When `null`, the `write_disposition` field will be omitted from the resulting object.\n  - `default_dataset` (`list[obj]`): Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names. When `null`, the `default_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.default_dataset.new](#fn-querydefault_datasetnew) constructor.\n  - `destination_encryption_configuration` (`list[obj]`): Custom encryption configuration (e.g., Cloud KMS keys) When `null`, the `destination_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.destination_encryption_configuration.new](#fn-querydestination_encryption_configurationnew) constructor.\n  - `destination_table` (`list[obj]`): Describes the table where the query results should be stored.\nThis property must be set for large results that exceed the maximum response size.\nFor queries that produce anonymous (cached) results, this field will be populated by BigQuery. When `null`, the `destination_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.destination_table.new](#fn-querydestination_tablenew) constructor.\n  - `script_options` (`list[obj]`): Options controlling the execution of scripts. When `null`, the `script_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.script_options.new](#fn-queryscript_optionsnew) constructor.\n  - `user_defined_function_resources` (`list[obj]`): Describes user-defined function resources used in the query. When `null`, the `user_defined_function_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.user_defined_function_resources.new](#fn-queryuser_defined_function_resourcesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `query` sub block.\n', args=[]),
    new(
      query,
      allow_large_results=null,
      create_disposition=null,
      default_dataset=null,
      destination_encryption_configuration=null,
      destination_table=null,
      flatten_results=null,
      maximum_billing_tier=null,
      maximum_bytes_billed=null,
      parameter_mode=null,
      priority=null,
      schema_update_options=null,
      script_options=null,
      use_legacy_sql=null,
      use_query_cache=null,
      user_defined_function_resources=null,
      write_disposition=null
    ):: std.prune(a={
      allow_large_results: allow_large_results,
      create_disposition: create_disposition,
      default_dataset: default_dataset,
      destination_encryption_configuration: destination_encryption_configuration,
      destination_table: destination_table,
      flatten_results: flatten_results,
      maximum_billing_tier: maximum_billing_tier,
      maximum_bytes_billed: maximum_bytes_billed,
      parameter_mode: parameter_mode,
      priority: priority,
      query: query,
      schema_update_options: schema_update_options,
      script_options: script_options,
      use_legacy_sql: use_legacy_sql,
      use_query_cache: use_query_cache,
      user_defined_function_resources: user_defined_function_resources,
      write_disposition: write_disposition,
    }),
    script_options:: {
      '#new':: d.fn(help='\n`google.bigquery_job.query.script_options.new` constructs a new object with attributes and blocks configured for the `script_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key_result_statement` (`string`): Determines which statement in the script represents the &#34;key result&#34;,\nused to populate the schema and query results of the script job. Possible values: [&#34;LAST&#34;, &#34;FIRST_SELECT&#34;] When `null`, the `key_result_statement` field will be omitted from the resulting object.\n  - `statement_byte_budget` (`string`): Limit on the number of bytes billed per statement. Exceeding this budget results in an error. When `null`, the `statement_byte_budget` field will be omitted from the resulting object.\n  - `statement_timeout_ms` (`string`): Timeout period for each statement in a script. When `null`, the `statement_timeout_ms` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `script_options` sub block.\n', args=[]),
      new(
        key_result_statement=null,
        statement_byte_budget=null,
        statement_timeout_ms=null
      ):: std.prune(a={
        key_result_statement: key_result_statement,
        statement_byte_budget: statement_byte_budget,
        statement_timeout_ms: statement_timeout_ms,
      }),
    },
    user_defined_function_resources:: {
      '#new':: d.fn(help='\n`google.bigquery_job.query.user_defined_function_resources.new` constructs a new object with attributes and blocks configured for the `user_defined_function_resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `inline_code` (`string`): An inline resource that contains code for a user-defined function (UDF).\nProviding a inline code resource is equivalent to providing a URI for a file containing the same code. When `null`, the `inline_code` field will be omitted from the resulting object.\n  - `resource_uri` (`string`): A code resource to load from a Google Cloud Storage URI (gs://bucket/path). When `null`, the `resource_uri` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `user_defined_function_resources` sub block.\n', args=[]),
      new(
        inline_code=null,
        resource_uri=null
      ):: std.prune(a={
        inline_code: inline_code,
        resource_uri: resource_uri,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCopy':: d.fn(help='`google.list[obj].withCopy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the copy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCopyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `copy` field.\n', args=[]),
  withCopy(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          copy: value,
        },
      },
    },
  },
  '#withCopyMixin':: d.fn(help='`google.list[obj].withCopyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the copy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCopy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `copy` field.\n', args=[]),
  withCopyMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          copy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withExtract':: d.fn(help='`google.list[obj].withExtract` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the extract field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExtractMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `extract` field.\n', args=[]),
  withExtract(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          extract: value,
        },
      },
    },
  },
  '#withExtractMixin':: d.fn(help='`google.list[obj].withExtractMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the extract field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExtract](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `extract` field.\n', args=[]),
  withExtractMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          extract+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withJobId':: d.fn(help='`google.string.withJobId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the job_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `job_id` field.\n', args=[]),
  withJobId(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          job_id: value,
        },
      },
    },
  },
  '#withJobTimeoutMs':: d.fn(help='`google.string.withJobTimeoutMs` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the job_timeout_ms field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `job_timeout_ms` field.\n', args=[]),
  withJobTimeoutMs(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          job_timeout_ms: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLoad':: d.fn(help='`google.list[obj].withLoad` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the load field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLoadMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `load` field.\n', args=[]),
  withLoad(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          load: value,
        },
      },
    },
  },
  '#withLoadMixin':: d.fn(help='`google.list[obj].withLoadMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the load field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLoad](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `load` field.\n', args=[]),
  withLoadMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          load+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withQuery':: d.fn(help='`google.list[obj].withQuery` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the query field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withQueryMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `query` field.\n', args=[]),
  withQuery(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          query: value,
        },
      },
    },
  },
  '#withQueryMixin':: d.fn(help='`google.list[obj].withQueryMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the query field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withQuery](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `query` field.\n', args=[]),
  withQueryMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          query+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
