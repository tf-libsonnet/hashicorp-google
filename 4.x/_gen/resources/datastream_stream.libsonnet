local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='datastream_stream', url='', help='`datastream_stream` represents the `google_datastream_stream` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  backfill_all:: {
    mysql_excluded_objects:: {
      mysql_databases:: {
        mysql_tables:: {
          mysql_columns:: {
            '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns.new` constructs a new object with attributes and blocks configured for the `mysql_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `collation` (`string`): Column collation. When `null`, the `collation` field will be omitted from the resulting object.\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The MySQL data type. Full data types list can be found here:\nhttps://dev.mysql.com/doc/refman/8.0/en/data-types.html When `null`, the `data_type` field will be omitted from the resulting object.\n  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.\n  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.\n  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `mysql_columns` sub block.\n', args=[]),
            new(
              collation=null,
              column=null,
              data_type=null,
              nullable=null,
              ordinal_position=null,
              primary_key=null
            ):: std.prune(a={
              collation: collation,
              column: column,
              data_type: data_type,
              nullable: nullable,
              ordinal_position: ordinal_position,
              primary_key: primary_key,
            }),
          },
          '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.new` constructs a new object with attributes and blocks configured for the `mysql_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `mysql_columns` (`list[obj]`): MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `mysql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns.new](#fn-backfill_allbackfill_allmysql_excluded_objectsmysql_databasesmysql_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_tables` sub block.\n', args=[]),
          new(
            table,
            mysql_columns=null
          ):: std.prune(a={
            mysql_columns: mysql_columns,
            table: table,
          }),
        },
        '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.new` constructs a new object with attributes and blocks configured for the `mysql_databases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): Database name.\n  - `mysql_tables` (`list[obj]`): Tables in the database. When `null`, the `mysql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.new](#fn-backfill_allbackfill_allmysql_excluded_objectsmysql_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_databases` sub block.\n', args=[]),
        new(
          database,
          mysql_tables=null
        ):: std.prune(a={
          database: database,
          mysql_tables: mysql_tables,
        }),
      },
      '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.mysql_excluded_objects.new` constructs a new object with attributes and blocks configured for the `mysql_excluded_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mysql_databases` (`list[obj]`): MySQL databases on the server When `null`, the `mysql_databases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.new](#fn-backfill_allbackfill_allmysql_databasesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_excluded_objects` sub block.\n', args=[]),
      new(
        mysql_databases=null
      ):: std.prune(a={
        mysql_databases: mysql_databases,
      }),
    },
    '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.new` constructs a new object with attributes and blocks configured for the `backfill_all`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mysql_excluded_objects` (`list[obj]`): MySQL data source objects to avoid backfilling. When `null`, the `mysql_excluded_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.new](#fn-backfill_allmysql_excluded_objectsnew) constructor.\n  - `oracle_excluded_objects` (`list[obj]`): PostgreSQL data source objects to avoid backfilling. When `null`, the `oracle_excluded_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.oracle_excluded_objects.new](#fn-backfill_alloracle_excluded_objectsnew) constructor.\n  - `postgresql_excluded_objects` (`list[obj]`): PostgreSQL data source objects to avoid backfilling. When `null`, the `postgresql_excluded_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.postgresql_excluded_objects.new](#fn-backfill_allpostgresql_excluded_objectsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `backfill_all` sub block.\n', args=[]),
    new(
      mysql_excluded_objects=null,
      oracle_excluded_objects=null,
      postgresql_excluded_objects=null
    ):: std.prune(a={
      mysql_excluded_objects: mysql_excluded_objects,
      oracle_excluded_objects: oracle_excluded_objects,
      postgresql_excluded_objects: postgresql_excluded_objects,
    }),
    oracle_excluded_objects:: {
      '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.oracle_excluded_objects.new` constructs a new object with attributes and blocks configured for the `oracle_excluded_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `oracle_schemas` (`list[obj]`): Oracle schemas/databases in the database server When `null`, the `oracle_schemas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.oracle_excluded_objects.oracle_schemas.new](#fn-backfill_allbackfill_alloracle_schemasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_excluded_objects` sub block.\n', args=[]),
      new(
        oracle_schemas=null
      ):: std.prune(a={
        oracle_schemas: oracle_schemas,
      }),
      oracle_schemas:: {
        '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.oracle_excluded_objects.oracle_schemas.new` constructs a new object with attributes and blocks configured for the `oracle_schemas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schema` (`string`): Schema name.\n  - `oracle_tables` (`list[obj]`): Tables in the database. When `null`, the `oracle_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables.new](#fn-backfill_allbackfill_alloracle_excluded_objectsoracle_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_schemas` sub block.\n', args=[]),
        new(
          schema,
          oracle_tables=null
        ):: std.prune(a={
          oracle_tables: oracle_tables,
          schema: schema,
        }),
        oracle_tables:: {
          '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables.new` constructs a new object with attributes and blocks configured for the `oracle_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `oracle_columns` (`list[obj]`): Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `oracle_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables.oracle_columns.new](#fn-backfill_allbackfill_alloracle_excluded_objectsoracle_schemasoracle_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_tables` sub block.\n', args=[]),
          new(
            table,
            oracle_columns=null
          ):: std.prune(a={
            oracle_columns: oracle_columns,
            table: table,
          }),
          oracle_columns:: {
            '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables.oracle_columns.new` constructs a new object with attributes and blocks configured for the `oracle_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The Oracle data type. Full data types list can be found here:\nhttps://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html When `null`, the `data_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `oracle_columns` sub block.\n', args=[]),
            new(
              column=null,
              data_type=null
            ):: std.prune(a={
              column: column,
              data_type: data_type,
            }),
          },
        },
      },
    },
    postgresql_excluded_objects:: {
      '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.postgresql_excluded_objects.new` constructs a new object with attributes and blocks configured for the `postgresql_excluded_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `postgresql_schemas` (`list[obj]`): PostgreSQL schemas on the server When `null`, the `postgresql_schemas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.postgresql_excluded_objects.postgresql_schemas.new](#fn-backfill_allbackfill_allpostgresql_schemasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_excluded_objects` sub block.\n', args=[]),
      new(
        postgresql_schemas=null
      ):: std.prune(a={
        postgresql_schemas: postgresql_schemas,
      }),
      postgresql_schemas:: {
        '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.postgresql_excluded_objects.postgresql_schemas.new` constructs a new object with attributes and blocks configured for the `postgresql_schemas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schema` (`string`): Database name.\n  - `postgresql_tables` (`list[obj]`): Tables in the schema. When `null`, the `postgresql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables.new](#fn-backfill_allbackfill_allpostgresql_excluded_objectspostgresql_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_schemas` sub block.\n', args=[]),
        new(
          schema,
          postgresql_tables=null
        ):: std.prune(a={
          postgresql_tables: postgresql_tables,
          schema: schema,
        }),
        postgresql_tables:: {
          '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables.new` constructs a new object with attributes and blocks configured for the `postgresql_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `postgresql_columns` (`list[obj]`): PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `postgresql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables.postgresql_columns.new](#fn-backfill_allbackfill_allpostgresql_excluded_objectspostgresql_schemaspostgresql_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_tables` sub block.\n', args=[]),
          new(
            table,
            postgresql_columns=null
          ):: std.prune(a={
            postgresql_columns: postgresql_columns,
            table: table,
          }),
          postgresql_columns:: {
            '#new':: d.fn(help='\n`google.datastream_stream.backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables.postgresql_columns.new` constructs a new object with attributes and blocks configured for the `postgresql_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The PostgreSQL data type. Full data types list can be found here:\nhttps://www.postgresql.org/docs/current/datatype.html When `null`, the `data_type` field will be omitted from the resulting object.\n  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.\n  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.\n  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_columns` sub block.\n', args=[]),
            new(
              column=null,
              data_type=null,
              nullable=null,
              ordinal_position=null,
              primary_key=null
            ):: std.prune(a={
              column: column,
              data_type: data_type,
              nullable: nullable,
              ordinal_position: ordinal_position,
              primary_key: primary_key,
            }),
          },
        },
      },
    },
  },
  backfill_none:: {
    '#new':: d.fn(help='\n`google.datastream_stream.backfill_none.new` constructs a new object with attributes and blocks configured for the `backfill_none`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `backfill_none` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  destination_config:: {
    bigquery_destination_config:: {
      '#new':: d.fn(help='\n`google.datastream_stream.destination_config.bigquery_destination_config.new` constructs a new object with attributes and blocks configured for the `bigquery_destination_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `data_freshness` (`string`): The guaranteed data freshness (in seconds) when querying tables created by the stream.\nEditing this field will only affect new tables created in the future, but existing tables\nwill not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. Defaults to 900s. When `null`, the `data_freshness` field will be omitted from the resulting object.\n  - `single_target_dataset` (`list[obj]`): A single target dataset to which all data will be streamed. When `null`, the `single_target_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.single_target_dataset.new](#fn-destination_configdestination_configsingle_target_datasetnew) constructor.\n  - `source_hierarchy_datasets` (`list[obj]`): Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy. When `null`, the `source_hierarchy_datasets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.new](#fn-destination_configdestination_configsource_hierarchy_datasetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bigquery_destination_config` sub block.\n', args=[]),
      new(
        data_freshness=null,
        single_target_dataset=null,
        source_hierarchy_datasets=null
      ):: std.prune(a={
        data_freshness: data_freshness,
        single_target_dataset: single_target_dataset,
        source_hierarchy_datasets: source_hierarchy_datasets,
      }),
      single_target_dataset:: {
        '#new':: d.fn(help='\n`google.datastream_stream.destination_config.bigquery_destination_config.single_target_dataset.new` constructs a new object with attributes and blocks configured for the `single_target_dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): Dataset ID in the format projects/{project}/datasets/{dataset_id} or\n{project}:{dataset_id}\n\n**Returns**:\n  - An attribute object that represents the `single_target_dataset` sub block.\n', args=[]),
        new(
          dataset_id
        ):: std.prune(a={
          dataset_id: dataset_id,
        }),
      },
      source_hierarchy_datasets:: {
        dataset_template:: {
          '#new':: d.fn(help='\n`google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template.new` constructs a new object with attributes and blocks configured for the `dataset_template`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id_prefix` (`string`): If supplied, every created dataset will have its name prefixed by the provided value.\nThe prefix and name will be separated by an underscore. i.e. _. When `null`, the `dataset_id_prefix` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery\ntable. The BigQuery Service Account associated with your project requires access to this\nencryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}.\nSee https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the dataset should reside.\nSee https://cloud.google.com/bigquery/docs/locations for supported locations.\n\n**Returns**:\n  - An attribute object that represents the `dataset_template` sub block.\n', args=[]),
          new(
            location,
            dataset_id_prefix=null,
            kms_key_name=null
          ):: std.prune(a={
            dataset_id_prefix: dataset_id_prefix,
            kms_key_name: kms_key_name,
            location: location,
          }),
        },
        '#new':: d.fn(help='\n`google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.new` constructs a new object with attributes and blocks configured for the `source_hierarchy_datasets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_template` (`list[obj]`): Dataset template used for dynamic dataset creation. When `null`, the `dataset_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template.new](#fn-destination_configdestination_configbigquery_destination_configdataset_templatenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source_hierarchy_datasets` sub block.\n', args=[]),
        new(
          dataset_template=null
        ):: std.prune(a={
          dataset_template: dataset_template,
        }),
      },
    },
    gcs_destination_config:: {
      avro_file_format:: {
        '#new':: d.fn(help='\n`google.datastream_stream.destination_config.gcs_destination_config.avro_file_format.new` constructs a new object with attributes and blocks configured for the `avro_file_format`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `avro_file_format` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      json_file_format:: {
        '#new':: d.fn(help='\n`google.datastream_stream.destination_config.gcs_destination_config.json_file_format.new` constructs a new object with attributes and blocks configured for the `json_file_format`\nTerraform sub block.\n\n\n\n**Args**:\n  - `compression` (`string`): Compression of the loaded JSON file. Possible values: [&#34;NO_COMPRESSION&#34;, &#34;GZIP&#34;] When `null`, the `compression` field will be omitted from the resulting object.\n  - `schema_file_format` (`string`): The schema file format along JSON data files. Possible values: [&#34;NO_SCHEMA_FILE&#34;, &#34;AVRO_SCHEMA_FILE&#34;] When `null`, the `schema_file_format` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `json_file_format` sub block.\n', args=[]),
        new(
          compression=null,
          schema_file_format=null
        ):: std.prune(a={
          compression: compression,
          schema_file_format: schema_file_format,
        }),
      },
      '#new':: d.fn(help='\n`google.datastream_stream.destination_config.gcs_destination_config.new` constructs a new object with attributes and blocks configured for the `gcs_destination_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `file_rotation_interval` (`string`): The maximum duration for which new events are added before a file is closed and a new file is created.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. Defaults to 900s. When `null`, the `file_rotation_interval` field will be omitted from the resulting object.\n  - `file_rotation_mb` (`number`): The maximum file size to be saved in the bucket. When `null`, the `file_rotation_mb` field will be omitted from the resulting object.\n  - `path` (`string`): Path inside the Cloud Storage bucket to write data to. When `null`, the `path` field will be omitted from the resulting object.\n  - `avro_file_format` (`list[obj]`): AVRO file format configuration. When `null`, the `avro_file_format` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.gcs_destination_config.avro_file_format.new](#fn-destination_configdestination_configavro_file_formatnew) constructor.\n  - `json_file_format` (`list[obj]`): JSON file format configuration. When `null`, the `json_file_format` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.gcs_destination_config.json_file_format.new](#fn-destination_configdestination_configjson_file_formatnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gcs_destination_config` sub block.\n', args=[]),
      new(
        avro_file_format=null,
        file_rotation_interval=null,
        file_rotation_mb=null,
        json_file_format=null,
        path=null
      ):: std.prune(a={
        avro_file_format: avro_file_format,
        file_rotation_interval: file_rotation_interval,
        file_rotation_mb: file_rotation_mb,
        json_file_format: json_file_format,
        path: path,
      }),
    },
    '#new':: d.fn(help='\n`google.datastream_stream.destination_config.new` constructs a new object with attributes and blocks configured for the `destination_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `destination_connection_profile` (`string`): Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}\n  - `bigquery_destination_config` (`list[obj]`): A configuration for how data should be loaded to Cloud Storage. When `null`, the `bigquery_destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.new](#fn-destination_configbigquery_destination_confignew) constructor.\n  - `gcs_destination_config` (`list[obj]`): A configuration for how data should be loaded to Cloud Storage. When `null`, the `gcs_destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.gcs_destination_config.new](#fn-destination_configgcs_destination_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `destination_config` sub block.\n', args=[]),
    new(
      destination_connection_profile,
      bigquery_destination_config=null,
      gcs_destination_config=null
    ):: std.prune(a={
      bigquery_destination_config: bigquery_destination_config,
      destination_connection_profile: destination_connection_profile,
      gcs_destination_config: gcs_destination_config,
    }),
  },
  '#new':: d.fn(help="\n`google.datastream_stream.new` injects a new `google_datastream_stream` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.datastream_stream.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.datastream_stream` using the reference:\n\n    $._ref.google_datastream_stream.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_datastream_stream.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `customer_managed_encryption_key` (`string`): A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data\nwill be encrypted using an internal Stream-specific encryption key provisioned through KMS. When `null`, the `customer_managed_encryption_key` field will be omitted from the resulting object.\n  - `desired_state` (`string`): Desired state of the Stream. Set this field to \u0026#39;RUNNING\u0026#39; to start the stream, and \u0026#39;PAUSED\u0026#39; to pause the stream. When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name.\n  - `labels` (`obj`): Labels.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this stream is located in.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `stream_id` (`string`): The stream identifier.\n  - `backfill_all` (`list[obj]`): Backfill strategy to automatically backfill the Stream\u0026#39;s objects. Specific objects can be excluded. When `null`, the `backfill_all` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.new](#fn-backfill_allnew) constructor.\n  - `backfill_none` (`list[obj]`): Backfill strategy to disable automatic backfill for the Stream\u0026#39;s objects. When `null`, the `backfill_none` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_none.new](#fn-backfill_nonenew) constructor.\n  - `destination_config` (`list[obj]`): Destination connection profile configuration. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.new](#fn-destination_confignew) constructor.\n  - `source_config` (`list[obj]`): Source connection profile configuration. When `null`, the `source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.new](#fn-source_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    location,
    stream_id,
    backfill_all=null,
    backfill_none=null,
    customer_managed_encryption_key=null,
    desired_state=null,
    destination_config=null,
    labels=null,
    project=null,
    source_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_datastream_stream',
    label=resourceLabel,
    attrs=self.newAttrs(
      backfill_all=backfill_all,
      backfill_none=backfill_none,
      customer_managed_encryption_key=customer_managed_encryption_key,
      desired_state=desired_state,
      destination_config=destination_config,
      display_name=display_name,
      labels=labels,
      location=location,
      project=project,
      source_config=source_config,
      stream_id=stream_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.datastream_stream.newAttrs` constructs a new object with attributes and blocks configured for the `datastream_stream`\nTerraform resource.\n\nUnlike [google.datastream_stream.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `customer_managed_encryption_key` (`string`): A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data\nwill be encrypted using an internal Stream-specific encryption key provisioned through KMS. When `null`, the `customer_managed_encryption_key` field will be omitted from the resulting object.\n  - `desired_state` (`string`): Desired state of the Stream. Set this field to &#39;RUNNING&#39; to start the stream, and &#39;PAUSED&#39; to pause the stream. When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name.\n  - `labels` (`obj`): Labels.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this stream is located in.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `stream_id` (`string`): The stream identifier.\n  - `backfill_all` (`list[obj]`): Backfill strategy to automatically backfill the Stream&#39;s objects. Specific objects can be excluded. When `null`, the `backfill_all` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.new](#fn-backfill_allnew) constructor.\n  - `backfill_none` (`list[obj]`): Backfill strategy to disable automatic backfill for the Stream&#39;s objects. When `null`, the `backfill_none` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_none.new](#fn-backfill_nonenew) constructor.\n  - `destination_config` (`list[obj]`): Destination connection profile configuration. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.new](#fn-destination_confignew) constructor.\n  - `source_config` (`list[obj]`): Source connection profile configuration. When `null`, the `source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.new](#fn-source_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastream_stream` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    location,
    stream_id,
    backfill_all=null,
    backfill_none=null,
    customer_managed_encryption_key=null,
    desired_state=null,
    destination_config=null,
    labels=null,
    project=null,
    source_config=null,
    timeouts=null
  ):: std.prune(a={
    backfill_all: backfill_all,
    backfill_none: backfill_none,
    customer_managed_encryption_key: customer_managed_encryption_key,
    desired_state: desired_state,
    destination_config: destination_config,
    display_name: display_name,
    labels: labels,
    location: location,
    project: project,
    source_config: source_config,
    stream_id: stream_id,
    timeouts: timeouts,
  }),
  source_config:: {
    mysql_source_config:: {
      exclude_objects:: {
        mysql_databases:: {
          mysql_tables:: {
            mysql_columns:: {
              '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns.new` constructs a new object with attributes and blocks configured for the `mysql_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `collation` (`string`): Column collation. When `null`, the `collation` field will be omitted from the resulting object.\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The MySQL data type. Full data types list can be found here:\nhttps://dev.mysql.com/doc/refman/8.0/en/data-types.html When `null`, the `data_type` field will be omitted from the resulting object.\n  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.\n  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.\n  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `mysql_columns` sub block.\n', args=[]),
              new(
                collation=null,
                column=null,
                data_type=null,
                nullable=null,
                ordinal_position=null,
                primary_key=null
              ):: std.prune(a={
                collation: collation,
                column: column,
                data_type: data_type,
                nullable: nullable,
                ordinal_position: ordinal_position,
                primary_key: primary_key,
              }),
            },
            '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.new` constructs a new object with attributes and blocks configured for the `mysql_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `mysql_columns` (`list[obj]`): MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `mysql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns.new](#fn-source_configsource_configmysql_source_configexclude_objectsmysql_databasesmysql_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_tables` sub block.\n', args=[]),
            new(
              table,
              mysql_columns=null
            ):: std.prune(a={
              mysql_columns: mysql_columns,
              table: table,
            }),
          },
          '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.new` constructs a new object with attributes and blocks configured for the `mysql_databases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): Database name.\n  - `mysql_tables` (`list[obj]`): Tables in the database. When `null`, the `mysql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.new](#fn-source_configsource_configmysql_source_configexclude_objectsmysql_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_databases` sub block.\n', args=[]),
          new(
            database,
            mysql_tables=null
          ):: std.prune(a={
            database: database,
            mysql_tables: mysql_tables,
          }),
        },
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.exclude_objects.new` constructs a new object with attributes and blocks configured for the `exclude_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mysql_databases` (`list[obj]`): MySQL databases on the server When `null`, the `mysql_databases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.new](#fn-source_configsource_configmysql_source_configmysql_databasesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclude_objects` sub block.\n', args=[]),
        new(
          mysql_databases=null
        ):: std.prune(a={
          mysql_databases: mysql_databases,
        }),
      },
      include_objects:: {
        mysql_databases:: {
          mysql_tables:: {
            mysql_columns:: {
              '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns.new` constructs a new object with attributes and blocks configured for the `mysql_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `collation` (`string`): Column collation. When `null`, the `collation` field will be omitted from the resulting object.\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The MySQL data type. Full data types list can be found here:\nhttps://dev.mysql.com/doc/refman/8.0/en/data-types.html When `null`, the `data_type` field will be omitted from the resulting object.\n  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.\n  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.\n  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `mysql_columns` sub block.\n', args=[]),
              new(
                collation=null,
                column=null,
                data_type=null,
                nullable=null,
                ordinal_position=null,
                primary_key=null
              ):: std.prune(a={
                collation: collation,
                column: column,
                data_type: data_type,
                nullable: nullable,
                ordinal_position: ordinal_position,
                primary_key: primary_key,
              }),
            },
            '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.new` constructs a new object with attributes and blocks configured for the `mysql_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `mysql_columns` (`list[obj]`): MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `mysql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns.new](#fn-source_configsource_configmysql_source_configinclude_objectsmysql_databasesmysql_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_tables` sub block.\n', args=[]),
            new(
              table,
              mysql_columns=null
            ):: std.prune(a={
              mysql_columns: mysql_columns,
              table: table,
            }),
          },
          '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.new` constructs a new object with attributes and blocks configured for the `mysql_databases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): Database name.\n  - `mysql_tables` (`list[obj]`): Tables in the database. When `null`, the `mysql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.new](#fn-source_configsource_configmysql_source_configinclude_objectsmysql_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_databases` sub block.\n', args=[]),
          new(
            database,
            mysql_tables=null
          ):: std.prune(a={
            database: database,
            mysql_tables: mysql_tables,
          }),
        },
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.include_objects.new` constructs a new object with attributes and blocks configured for the `include_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mysql_databases` (`list[obj]`): MySQL databases on the server When `null`, the `mysql_databases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.new](#fn-source_configsource_configmysql_source_configmysql_databasesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `include_objects` sub block.\n', args=[]),
        new(
          mysql_databases=null
        ):: std.prune(a={
          mysql_databases: mysql_databases,
        }),
      },
      '#new':: d.fn(help='\n`google.datastream_stream.source_config.mysql_source_config.new` constructs a new object with attributes and blocks configured for the `mysql_source_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_concurrent_backfill_tasks` (`number`): Maximum number of concurrent backfill tasks. The number should be non negative.\nIf not set (or set to 0), the system&#39;s default value will be used. When `null`, the `max_concurrent_backfill_tasks` field will be omitted from the resulting object.\n  - `max_concurrent_cdc_tasks` (`number`): Maximum number of concurrent CDC tasks. The number should be non negative.\nIf not set (or set to 0), the system&#39;s default value will be used. When `null`, the `max_concurrent_cdc_tasks` field will be omitted from the resulting object.\n  - `exclude_objects` (`list[obj]`): MySQL objects to exclude from the stream. When `null`, the `exclude_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.new](#fn-source_configsource_configexclude_objectsnew) constructor.\n  - `include_objects` (`list[obj]`): MySQL objects to retrieve from the source. When `null`, the `include_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.new](#fn-source_configsource_configinclude_objectsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_source_config` sub block.\n', args=[]),
      new(
        exclude_objects=null,
        include_objects=null,
        max_concurrent_backfill_tasks=null,
        max_concurrent_cdc_tasks=null
      ):: std.prune(a={
        exclude_objects: exclude_objects,
        include_objects: include_objects,
        max_concurrent_backfill_tasks: max_concurrent_backfill_tasks,
        max_concurrent_cdc_tasks: max_concurrent_cdc_tasks,
      }),
    },
    '#new':: d.fn(help='\n`google.datastream_stream.source_config.new` constructs a new object with attributes and blocks configured for the `source_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `source_connection_profile` (`string`): Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}\n  - `mysql_source_config` (`list[obj]`): MySQL data source configuration. When `null`, the `mysql_source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.new](#fn-source_configmysql_source_confignew) constructor.\n  - `oracle_source_config` (`list[obj]`): MySQL data source configuration. When `null`, the `oracle_source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.new](#fn-source_configoracle_source_confignew) constructor.\n  - `postgresql_source_config` (`list[obj]`): PostgreSQL data source configuration. When `null`, the `postgresql_source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.new](#fn-source_configpostgresql_source_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source_config` sub block.\n', args=[]),
    new(
      source_connection_profile,
      mysql_source_config=null,
      oracle_source_config=null,
      postgresql_source_config=null
    ):: std.prune(a={
      mysql_source_config: mysql_source_config,
      oracle_source_config: oracle_source_config,
      postgresql_source_config: postgresql_source_config,
      source_connection_profile: source_connection_profile,
    }),
    oracle_source_config:: {
      drop_large_objects:: {
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.drop_large_objects.new` constructs a new object with attributes and blocks configured for the `drop_large_objects`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `drop_large_objects` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
      exclude_objects:: {
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.exclude_objects.new` constructs a new object with attributes and blocks configured for the `exclude_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `oracle_schemas` (`list[obj]`): Oracle schemas/databases in the database server When `null`, the `oracle_schemas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.exclude_objects.oracle_schemas.new](#fn-source_configsource_configoracle_source_configoracle_schemasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclude_objects` sub block.\n', args=[]),
        new(
          oracle_schemas=null
        ):: std.prune(a={
          oracle_schemas: oracle_schemas,
        }),
        oracle_schemas:: {
          '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.exclude_objects.oracle_schemas.new` constructs a new object with attributes and blocks configured for the `oracle_schemas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schema` (`string`): Schema name.\n  - `oracle_tables` (`list[obj]`): Tables in the database. When `null`, the `oracle_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.exclude_objects.oracle_schemas.oracle_tables.new](#fn-source_configsource_configoracle_source_configexclude_objectsoracle_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_schemas` sub block.\n', args=[]),
          new(
            schema,
            oracle_tables=null
          ):: std.prune(a={
            oracle_tables: oracle_tables,
            schema: schema,
          }),
          oracle_tables:: {
            '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.exclude_objects.oracle_schemas.oracle_tables.new` constructs a new object with attributes and blocks configured for the `oracle_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `oracle_columns` (`list[obj]`): Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `oracle_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.exclude_objects.oracle_schemas.oracle_tables.oracle_columns.new](#fn-source_configsource_configoracle_source_configexclude_objectsoracle_schemasoracle_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_tables` sub block.\n', args=[]),
            new(
              table,
              oracle_columns=null
            ):: std.prune(a={
              oracle_columns: oracle_columns,
              table: table,
            }),
            oracle_columns:: {
              '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.exclude_objects.oracle_schemas.oracle_tables.oracle_columns.new` constructs a new object with attributes and blocks configured for the `oracle_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The Oracle data type. Full data types list can be found here:\nhttps://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html When `null`, the `data_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `oracle_columns` sub block.\n', args=[]),
              new(
                column=null,
                data_type=null
              ):: std.prune(a={
                column: column,
                data_type: data_type,
              }),
            },
          },
        },
      },
      include_objects:: {
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.include_objects.new` constructs a new object with attributes and blocks configured for the `include_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `oracle_schemas` (`list[obj]`): Oracle schemas/databases in the database server When `null`, the `oracle_schemas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.include_objects.oracle_schemas.new](#fn-source_configsource_configoracle_source_configoracle_schemasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `include_objects` sub block.\n', args=[]),
        new(
          oracle_schemas=null
        ):: std.prune(a={
          oracle_schemas: oracle_schemas,
        }),
        oracle_schemas:: {
          '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.include_objects.oracle_schemas.new` constructs a new object with attributes and blocks configured for the `oracle_schemas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schema` (`string`): Schema name.\n  - `oracle_tables` (`list[obj]`): Tables in the database. When `null`, the `oracle_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.include_objects.oracle_schemas.oracle_tables.new](#fn-source_configsource_configoracle_source_configinclude_objectsoracle_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_schemas` sub block.\n', args=[]),
          new(
            schema,
            oracle_tables=null
          ):: std.prune(a={
            oracle_tables: oracle_tables,
            schema: schema,
          }),
          oracle_tables:: {
            '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.include_objects.oracle_schemas.oracle_tables.new` constructs a new object with attributes and blocks configured for the `oracle_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `oracle_columns` (`list[obj]`): Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `oracle_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.include_objects.oracle_schemas.oracle_tables.oracle_columns.new](#fn-source_configsource_configoracle_source_configinclude_objectsoracle_schemasoracle_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_tables` sub block.\n', args=[]),
            new(
              table,
              oracle_columns=null
            ):: std.prune(a={
              oracle_columns: oracle_columns,
              table: table,
            }),
            oracle_columns:: {
              '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.include_objects.oracle_schemas.oracle_tables.oracle_columns.new` constructs a new object with attributes and blocks configured for the `oracle_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The Oracle data type. Full data types list can be found here:\nhttps://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html When `null`, the `data_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `oracle_columns` sub block.\n', args=[]),
              new(
                column=null,
                data_type=null
              ):: std.prune(a={
                column: column,
                data_type: data_type,
              }),
            },
          },
        },
      },
      '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.new` constructs a new object with attributes and blocks configured for the `oracle_source_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_concurrent_backfill_tasks` (`number`): Maximum number of concurrent backfill tasks. The number should be non negative.\nIf not set (or set to 0), the system&#39;s default value will be used. When `null`, the `max_concurrent_backfill_tasks` field will be omitted from the resulting object.\n  - `max_concurrent_cdc_tasks` (`number`): Maximum number of concurrent CDC tasks. The number should be non negative.\nIf not set (or set to 0), the system&#39;s default value will be used. When `null`, the `max_concurrent_cdc_tasks` field will be omitted from the resulting object.\n  - `drop_large_objects` (`list[obj]`): Configuration to drop large object values. When `null`, the `drop_large_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.drop_large_objects.new](#fn-source_configsource_configdrop_large_objectsnew) constructor.\n  - `exclude_objects` (`list[obj]`): Oracle objects to exclude from the stream. When `null`, the `exclude_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.exclude_objects.new](#fn-source_configsource_configexclude_objectsnew) constructor.\n  - `include_objects` (`list[obj]`): Oracle objects to retrieve from the source. When `null`, the `include_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.include_objects.new](#fn-source_configsource_configinclude_objectsnew) constructor.\n  - `stream_large_objects` (`list[obj]`): Configuration to drop large object values. When `null`, the `stream_large_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.oracle_source_config.stream_large_objects.new](#fn-source_configsource_configstream_large_objectsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oracle_source_config` sub block.\n', args=[]),
      new(
        drop_large_objects=null,
        exclude_objects=null,
        include_objects=null,
        max_concurrent_backfill_tasks=null,
        max_concurrent_cdc_tasks=null,
        stream_large_objects=null
      ):: std.prune(a={
        drop_large_objects: drop_large_objects,
        exclude_objects: exclude_objects,
        include_objects: include_objects,
        max_concurrent_backfill_tasks: max_concurrent_backfill_tasks,
        max_concurrent_cdc_tasks: max_concurrent_cdc_tasks,
        stream_large_objects: stream_large_objects,
      }),
      stream_large_objects:: {
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.oracle_source_config.stream_large_objects.new` constructs a new object with attributes and blocks configured for the `stream_large_objects`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `stream_large_objects` sub block.\n', args=[]),
        new(

        ):: std.prune(a={}),
      },
    },
    postgresql_source_config:: {
      exclude_objects:: {
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.exclude_objects.new` constructs a new object with attributes and blocks configured for the `exclude_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `postgresql_schemas` (`list[obj]`): PostgreSQL schemas on the server When `null`, the `postgresql_schemas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.exclude_objects.postgresql_schemas.new](#fn-source_configsource_configpostgresql_source_configpostgresql_schemasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclude_objects` sub block.\n', args=[]),
        new(
          postgresql_schemas=null
        ):: std.prune(a={
          postgresql_schemas: postgresql_schemas,
        }),
        postgresql_schemas:: {
          '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.exclude_objects.postgresql_schemas.new` constructs a new object with attributes and blocks configured for the `postgresql_schemas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schema` (`string`): Database name.\n  - `postgresql_tables` (`list[obj]`): Tables in the schema. When `null`, the `postgresql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.exclude_objects.postgresql_schemas.postgresql_tables.new](#fn-source_configsource_configpostgresql_source_configexclude_objectspostgresql_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_schemas` sub block.\n', args=[]),
          new(
            schema,
            postgresql_tables=null
          ):: std.prune(a={
            postgresql_tables: postgresql_tables,
            schema: schema,
          }),
          postgresql_tables:: {
            '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.exclude_objects.postgresql_schemas.postgresql_tables.new` constructs a new object with attributes and blocks configured for the `postgresql_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `postgresql_columns` (`list[obj]`): PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `postgresql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.exclude_objects.postgresql_schemas.postgresql_tables.postgresql_columns.new](#fn-source_configsource_configpostgresql_source_configexclude_objectspostgresql_schemaspostgresql_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_tables` sub block.\n', args=[]),
            new(
              table,
              postgresql_columns=null
            ):: std.prune(a={
              postgresql_columns: postgresql_columns,
              table: table,
            }),
            postgresql_columns:: {
              '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.exclude_objects.postgresql_schemas.postgresql_tables.postgresql_columns.new` constructs a new object with attributes and blocks configured for the `postgresql_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The PostgreSQL data type. Full data types list can be found here:\nhttps://www.postgresql.org/docs/current/datatype.html When `null`, the `data_type` field will be omitted from the resulting object.\n  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.\n  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.\n  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_columns` sub block.\n', args=[]),
              new(
                column=null,
                data_type=null,
                nullable=null,
                ordinal_position=null,
                primary_key=null
              ):: std.prune(a={
                column: column,
                data_type: data_type,
                nullable: nullable,
                ordinal_position: ordinal_position,
                primary_key: primary_key,
              }),
            },
          },
        },
      },
      include_objects:: {
        '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.include_objects.new` constructs a new object with attributes and blocks configured for the `include_objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `postgresql_schemas` (`list[obj]`): PostgreSQL schemas on the server When `null`, the `postgresql_schemas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.include_objects.postgresql_schemas.new](#fn-source_configsource_configpostgresql_source_configpostgresql_schemasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `include_objects` sub block.\n', args=[]),
        new(
          postgresql_schemas=null
        ):: std.prune(a={
          postgresql_schemas: postgresql_schemas,
        }),
        postgresql_schemas:: {
          '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.include_objects.postgresql_schemas.new` constructs a new object with attributes and blocks configured for the `postgresql_schemas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schema` (`string`): Database name.\n  - `postgresql_tables` (`list[obj]`): Tables in the schema. When `null`, the `postgresql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.include_objects.postgresql_schemas.postgresql_tables.new](#fn-source_configsource_configpostgresql_source_configinclude_objectspostgresql_tablesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_schemas` sub block.\n', args=[]),
          new(
            schema,
            postgresql_tables=null
          ):: std.prune(a={
            postgresql_tables: postgresql_tables,
            schema: schema,
          }),
          postgresql_tables:: {
            '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.include_objects.postgresql_schemas.postgresql_tables.new` constructs a new object with attributes and blocks configured for the `postgresql_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `table` (`string`): Table name.\n  - `postgresql_columns` (`list[obj]`): PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `postgresql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.include_objects.postgresql_schemas.postgresql_tables.postgresql_columns.new](#fn-source_configsource_configpostgresql_source_configinclude_objectspostgresql_schemaspostgresql_columnsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_tables` sub block.\n', args=[]),
            new(
              table,
              postgresql_columns=null
            ):: std.prune(a={
              postgresql_columns: postgresql_columns,
              table: table,
            }),
            postgresql_columns:: {
              '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.include_objects.postgresql_schemas.postgresql_tables.postgresql_columns.new` constructs a new object with attributes and blocks configured for the `postgresql_columns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.\n  - `data_type` (`string`): The PostgreSQL data type. Full data types list can be found here:\nhttps://www.postgresql.org/docs/current/datatype.html When `null`, the `data_type` field will be omitted from the resulting object.\n  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.\n  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.\n  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_columns` sub block.\n', args=[]),
              new(
                column=null,
                data_type=null,
                nullable=null,
                ordinal_position=null,
                primary_key=null
              ):: std.prune(a={
                column: column,
                data_type: data_type,
                nullable: nullable,
                ordinal_position: ordinal_position,
                primary_key: primary_key,
              }),
            },
          },
        },
      },
      '#new':: d.fn(help='\n`google.datastream_stream.source_config.postgresql_source_config.new` constructs a new object with attributes and blocks configured for the `postgresql_source_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_concurrent_backfill_tasks` (`number`): Maximum number of concurrent backfill tasks. The number should be non\nnegative. If not set (or set to 0), the system&#39;s default value will be used. When `null`, the `max_concurrent_backfill_tasks` field will be omitted from the resulting object.\n  - `publication` (`string`): The name of the publication that includes the set of all tables\nthat are defined in the stream&#39;s include_objects.\n  - `replication_slot` (`string`): The name of the logical replication slot that&#39;s configured with\nthe pgoutput plugin.\n  - `exclude_objects` (`list[obj]`): PostgreSQL objects to exclude from the stream. When `null`, the `exclude_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.exclude_objects.new](#fn-source_configsource_configexclude_objectsnew) constructor.\n  - `include_objects` (`list[obj]`): PostgreSQL objects to retrieve from the source. When `null`, the `include_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.postgresql_source_config.include_objects.new](#fn-source_configsource_configinclude_objectsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_source_config` sub block.\n', args=[]),
      new(
        publication,
        replication_slot,
        exclude_objects=null,
        include_objects=null,
        max_concurrent_backfill_tasks=null
      ):: std.prune(a={
        exclude_objects: exclude_objects,
        include_objects: include_objects,
        max_concurrent_backfill_tasks: max_concurrent_backfill_tasks,
        publication: publication,
        replication_slot: replication_slot,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.datastream_stream.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBackfillAll':: d.fn(help='`google.list[obj].withBackfillAll` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backfill_all field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBackfillAllMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backfill_all` field.\n', args=[]),
  withBackfillAll(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          backfill_all: value,
        },
      },
    },
  },
  '#withBackfillAllMixin':: d.fn(help='`google.list[obj].withBackfillAllMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backfill_all field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBackfillAll](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backfill_all` field.\n', args=[]),
  withBackfillAllMixin(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          backfill_all+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBackfillNone':: d.fn(help='`google.list[obj].withBackfillNone` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backfill_none field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBackfillNoneMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backfill_none` field.\n', args=[]),
  withBackfillNone(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          backfill_none: value,
        },
      },
    },
  },
  '#withBackfillNoneMixin':: d.fn(help='`google.list[obj].withBackfillNoneMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backfill_none field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBackfillNone](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backfill_none` field.\n', args=[]),
  withBackfillNoneMixin(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          backfill_none+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCustomerManagedEncryptionKey':: d.fn(help='`google.string.withCustomerManagedEncryptionKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the customer_managed_encryption_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `customer_managed_encryption_key` field.\n', args=[]),
  withCustomerManagedEncryptionKey(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          customer_managed_encryption_key: value,
        },
      },
    },
  },
  '#withDesiredState':: d.fn(help='`google.string.withDesiredState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the desired_state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `desired_state` field.\n', args=[]),
  withDesiredState(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          desired_state: value,
        },
      },
    },
  },
  '#withDestinationConfig':: d.fn(help='`google.list[obj].withDestinationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDestinationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination_config` field.\n', args=[]),
  withDestinationConfig(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          destination_config: value,
        },
      },
    },
  },
  '#withDestinationConfigMixin':: d.fn(help='`google.list[obj].withDestinationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDestinationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination_config` field.\n', args=[]),
  withDestinationConfigMixin(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          destination_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSourceConfig':: d.fn(help='`google.list[obj].withSourceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_config` field.\n', args=[]),
  withSourceConfig(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          source_config: value,
        },
      },
    },
  },
  '#withSourceConfigMixin':: d.fn(help='`google.list[obj].withSourceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_config` field.\n', args=[]),
  withSourceConfigMixin(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          source_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStreamId':: d.fn(help='`google.string.withStreamId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the stream_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `stream_id` field.\n', args=[]),
  withStreamId(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          stream_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_datastream_stream+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
