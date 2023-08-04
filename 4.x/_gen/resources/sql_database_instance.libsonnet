local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sql_database_instance', url='', help='`sql_database_instance` represents the `google_sql_database_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  clone:: {
    '#new':: d.fn(help='\n`google.sql_database_instance.clone.new` constructs a new object with attributes and blocks configured for the `clone`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allocated_ip_range` (`string`): The name of the allocated ip range for the private ip CloudSQL instance. For example: &#34;google-managed-services-default&#34;. If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. When `null`, the `allocated_ip_range` field will be omitted from the resulting object.\n  - `database_names` (`list`): (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty. When `null`, the `database_names` field will be omitted from the resulting object.\n  - `point_in_time` (`string`): The timestamp of the point in time that should be restored. When `null`, the `point_in_time` field will be omitted from the resulting object.\n  - `source_instance_name` (`string`): The name of the instance from which the point in time should be restored.\n\n**Returns**:\n  - An attribute object that represents the `clone` sub block.\n', args=[]),
    new(
      source_instance_name,
      allocated_ip_range=null,
      database_names=null,
      point_in_time=null
    ):: std.prune(a={
      allocated_ip_range: allocated_ip_range,
      database_names: database_names,
      point_in_time: point_in_time,
      source_instance_name: source_instance_name,
    }),
  },
  '#new':: d.fn(help="\n`google.sql_database_instance.new` injects a new `google_sql_database_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sql_database_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sql_database_instance` using the reference:\n\n    $._ref.google_sql_database_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sql_database_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `database_version` (`string`): The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions.\n  - `deletion_protection` (`bool`): Used to block Terraform from deleting a SQL Instance. Defaults to true. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `encryption_key_name` (`string`): Set the `encryption_key_name` field on the resulting resource block. When `null`, the `encryption_key_name` field will be omitted from the resulting object.\n  - `instance_type` (`string`): The type of the instance. The valid values are:- \u0026#39;SQL_INSTANCE_TYPE_UNSPECIFIED\u0026#39;, \u0026#39;CLOUD_SQL_INSTANCE\u0026#39;, \u0026#39;ON_PREMISES_INSTANCE\u0026#39; and \u0026#39;READ_REPLICA_INSTANCE\u0026#39;. When `null`, the `instance_type` field will be omitted from the resulting object.\n  - `maintenance_version` (`string`): Maintenance version. When `null`, the `maintenance_version` field will be omitted from the resulting object.\n  - `master_instance_name` (`string`): The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups. When `null`, the `master_instance_name` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region the instance will sit in. Note, Cloud SQL is not available in all regions. A valid region must be provided to use this resource. If a region is not provided in the resource definition, the provider region will be used instead, but this will be an apply-time error for instances if the provider region is not supported with Cloud SQL. If you choose not to provide the region argument for this resource, make sure you understand this. When `null`, the `region` field will be omitted from the resulting object.\n  - `root_password` (`string`): Initial root password. Required for MS SQL Server. When `null`, the `root_password` field will be omitted from the resulting object.\n  - `clone` (`list[obj]`): Configuration for creating a new instance as a clone of another instance. When `null`, the `clone` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.clone.new](#fn-clonenew) constructor.\n  - `replica_configuration` (`list[obj]`): The configuration for replication. When `null`, the `replica_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.replica_configuration.new](#fn-replica_configurationnew) constructor.\n  - `restore_backup_context` (`list[obj]`): Set the `restore_backup_context` field on the resulting resource block. When `null`, the `restore_backup_context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.restore_backup_context.new](#fn-restore_backup_contextnew) constructor.\n  - `settings` (`list[obj]`): The settings to use for the database. The configuration is detailed below. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.new](#fn-settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    database_version,
    clone=null,
    deletion_protection=null,
    encryption_key_name=null,
    instance_type=null,
    maintenance_version=null,
    master_instance_name=null,
    name=null,
    project=null,
    region=null,
    replica_configuration=null,
    restore_backup_context=null,
    root_password=null,
    settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_database_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      clone=clone,
      database_version=database_version,
      deletion_protection=deletion_protection,
      encryption_key_name=encryption_key_name,
      instance_type=instance_type,
      maintenance_version=maintenance_version,
      master_instance_name=master_instance_name,
      name=name,
      project=project,
      region=region,
      replica_configuration=replica_configuration,
      restore_backup_context=restore_backup_context,
      root_password=root_password,
      settings=settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sql_database_instance.newAttrs` constructs a new object with attributes and blocks configured for the `sql_database_instance`\nTerraform resource.\n\nUnlike [google.sql_database_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database_version` (`string`): The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions.\n  - `deletion_protection` (`bool`): Used to block Terraform from deleting a SQL Instance. Defaults to true. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `encryption_key_name` (`string`): Set the `encryption_key_name` field on the resulting object. When `null`, the `encryption_key_name` field will be omitted from the resulting object.\n  - `instance_type` (`string`): The type of the instance. The valid values are:- &#39;SQL_INSTANCE_TYPE_UNSPECIFIED&#39;, &#39;CLOUD_SQL_INSTANCE&#39;, &#39;ON_PREMISES_INSTANCE&#39; and &#39;READ_REPLICA_INSTANCE&#39;. When `null`, the `instance_type` field will be omitted from the resulting object.\n  - `maintenance_version` (`string`): Maintenance version. When `null`, the `maintenance_version` field will be omitted from the resulting object.\n  - `master_instance_name` (`string`): The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups. When `null`, the `master_instance_name` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region the instance will sit in. Note, Cloud SQL is not available in all regions. A valid region must be provided to use this resource. If a region is not provided in the resource definition, the provider region will be used instead, but this will be an apply-time error for instances if the provider region is not supported with Cloud SQL. If you choose not to provide the region argument for this resource, make sure you understand this. When `null`, the `region` field will be omitted from the resulting object.\n  - `root_password` (`string`): Initial root password. Required for MS SQL Server. When `null`, the `root_password` field will be omitted from the resulting object.\n  - `clone` (`list[obj]`): Configuration for creating a new instance as a clone of another instance. When `null`, the `clone` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.clone.new](#fn-clonenew) constructor.\n  - `replica_configuration` (`list[obj]`): The configuration for replication. When `null`, the `replica_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.replica_configuration.new](#fn-replica_configurationnew) constructor.\n  - `restore_backup_context` (`list[obj]`): Set the `restore_backup_context` field on the resulting object. When `null`, the `restore_backup_context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.restore_backup_context.new](#fn-restore_backup_contextnew) constructor.\n  - `settings` (`list[obj]`): The settings to use for the database. The configuration is detailed below. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.new](#fn-settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_database_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    database_version,
    clone=null,
    deletion_protection=null,
    encryption_key_name=null,
    instance_type=null,
    maintenance_version=null,
    master_instance_name=null,
    name=null,
    project=null,
    region=null,
    replica_configuration=null,
    restore_backup_context=null,
    root_password=null,
    settings=null,
    timeouts=null
  ):: std.prune(a={
    clone: clone,
    database_version: database_version,
    deletion_protection: deletion_protection,
    encryption_key_name: encryption_key_name,
    instance_type: instance_type,
    maintenance_version: maintenance_version,
    master_instance_name: master_instance_name,
    name: name,
    project: project,
    region: region,
    replica_configuration: replica_configuration,
    restore_backup_context: restore_backup_context,
    root_password: root_password,
    settings: settings,
    timeouts: timeouts,
  }),
  replica_configuration:: {
    '#new':: d.fn(help='\n`google.sql_database_instance.replica_configuration.new` constructs a new object with attributes and blocks configured for the `replica_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ca_certificate` (`string`): PEM representation of the trusted CA&#39;s x509 certificate. When `null`, the `ca_certificate` field will be omitted from the resulting object.\n  - `client_certificate` (`string`): PEM representation of the replica&#39;s x509 certificate. When `null`, the `client_certificate` field will be omitted from the resulting object.\n  - `client_key` (`string`): PEM representation of the replica&#39;s private key. The corresponding public key in encoded in the client_certificate. When `null`, the `client_key` field will be omitted from the resulting object.\n  - `connect_retry_interval` (`number`): The number of seconds between connect retries. MySQL&#39;s default is 60 seconds. When `null`, the `connect_retry_interval` field will be omitted from the resulting object.\n  - `dump_file_path` (`string`): Path to a SQL file in Google Cloud Storage from which replica instances are created. Format is gs://bucket/filename. When `null`, the `dump_file_path` field will be omitted from the resulting object.\n  - `failover_target` (`bool`): Specifies if the replica is the failover target. If the field is set to true the replica will be designated as a failover replica. If the master instance fails, the replica instance will be promoted as the new master instance. Not supported for Postgres When `null`, the `failover_target` field will be omitted from the resulting object.\n  - `master_heartbeat_period` (`number`): Time in ms between replication heartbeats. When `null`, the `master_heartbeat_period` field will be omitted from the resulting object.\n  - `password` (`string`): Password for the replication connection. When `null`, the `password` field will be omitted from the resulting object.\n  - `ssl_cipher` (`string`): Permissible ciphers for use in SSL encryption. When `null`, the `ssl_cipher` field will be omitted from the resulting object.\n  - `username` (`string`): Username for replication connection. When `null`, the `username` field will be omitted from the resulting object.\n  - `verify_server_certificate` (`bool`): True if the master&#39;s common name value is checked during the SSL handshake. When `null`, the `verify_server_certificate` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `replica_configuration` sub block.\n', args=[]),
    new(
      ca_certificate=null,
      client_certificate=null,
      client_key=null,
      connect_retry_interval=null,
      dump_file_path=null,
      failover_target=null,
      master_heartbeat_period=null,
      password=null,
      ssl_cipher=null,
      username=null,
      verify_server_certificate=null
    ):: std.prune(a={
      ca_certificate: ca_certificate,
      client_certificate: client_certificate,
      client_key: client_key,
      connect_retry_interval: connect_retry_interval,
      dump_file_path: dump_file_path,
      failover_target: failover_target,
      master_heartbeat_period: master_heartbeat_period,
      password: password,
      ssl_cipher: ssl_cipher,
      username: username,
      verify_server_certificate: verify_server_certificate,
    }),
  },
  restore_backup_context:: {
    '#new':: d.fn(help='\n`google.sql_database_instance.restore_backup_context.new` constructs a new object with attributes and blocks configured for the `restore_backup_context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backup_run_id` (`number`): The ID of the backup run to restore from.\n  - `instance_id` (`string`): The ID of the instance that the backup was taken from. When `null`, the `instance_id` field will be omitted from the resulting object.\n  - `project` (`string`): The full project ID of the source instance. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `restore_backup_context` sub block.\n', args=[]),
    new(
      backup_run_id,
      instance_id=null,
      project=null
    ):: std.prune(a={
      backup_run_id: backup_run_id,
      instance_id: instance_id,
      project: project,
    }),
  },
  settings:: {
    active_directory_config:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.active_directory_config.new` constructs a new object with attributes and blocks configured for the `active_directory_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `domain` (`string`): Domain name of the Active Directory for SQL Server (e.g., mydomain.com).\n\n**Returns**:\n  - An attribute object that represents the `active_directory_config` sub block.\n', args=[]),
      new(
        domain
      ):: std.prune(a={
        domain: domain,
      }),
    },
    advanced_machine_features:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threads_per_core` (`number`): The number of threads per physical core. Can be 1 or 2. When `null`, the `threads_per_core` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `advanced_machine_features` sub block.\n', args=[]),
      new(
        threads_per_core=null
      ):: std.prune(a={
        threads_per_core: threads_per_core,
      }),
    },
    backup_configuration:: {
      backup_retention_settings:: {
        '#new':: d.fn(help='\n`google.sql_database_instance.settings.backup_configuration.backup_retention_settings.new` constructs a new object with attributes and blocks configured for the `backup_retention_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `retained_backups` (`number`): Number of backups to retain.\n  - `retention_unit` (`string`): The unit that &#39;retainedBackups&#39; represents. Defaults to COUNT When `null`, the `retention_unit` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `backup_retention_settings` sub block.\n', args=[]),
        new(
          retained_backups,
          retention_unit=null
        ):: std.prune(a={
          retained_backups: retained_backups,
          retention_unit: retention_unit,
        }),
      },
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.backup_configuration.new` constructs a new object with attributes and blocks configured for the `backup_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `binary_log_enabled` (`bool`): True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Can only be used with MySQL. When `null`, the `binary_log_enabled` field will be omitted from the resulting object.\n  - `enabled` (`bool`): True if backup configuration is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the backup configuration. When `null`, the `location` field will be omitted from the resulting object.\n  - `point_in_time_recovery_enabled` (`bool`): True if Point-in-time recovery is enabled. When `null`, the `point_in_time_recovery_enabled` field will be omitted from the resulting object.\n  - `start_time` (`string`): HH:MM format time indicating when backup configuration starts. When `null`, the `start_time` field will be omitted from the resulting object.\n  - `transaction_log_retention_days` (`number`): The number of days of transaction logs we retain for point in time restore, from 1-7. When `null`, the `transaction_log_retention_days` field will be omitted from the resulting object.\n  - `backup_retention_settings` (`list[obj]`): Set the `backup_retention_settings` field on the resulting object. When `null`, the `backup_retention_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.backup_configuration.backup_retention_settings.new](#fn-settingssettingsbackup_retention_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `backup_configuration` sub block.\n', args=[]),
      new(
        backup_retention_settings=null,
        binary_log_enabled=null,
        enabled=null,
        location=null,
        point_in_time_recovery_enabled=null,
        start_time=null,
        transaction_log_retention_days=null
      ):: std.prune(a={
        backup_retention_settings: backup_retention_settings,
        binary_log_enabled: binary_log_enabled,
        enabled: enabled,
        location: location,
        point_in_time_recovery_enabled: point_in_time_recovery_enabled,
        start_time: start_time,
        transaction_log_retention_days: transaction_log_retention_days,
      }),
    },
    data_cache_config:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.data_cache_config.new` constructs a new object with attributes and blocks configured for the `data_cache_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `data_cache_enabled` (`bool`): Whether data cache is enabled for the instance. When `null`, the `data_cache_enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `data_cache_config` sub block.\n', args=[]),
      new(
        data_cache_enabled=null
      ):: std.prune(a={
        data_cache_enabled: data_cache_enabled,
      }),
    },
    database_flags:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.database_flags.new` constructs a new object with attributes and blocks configured for the `database_flags`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the flag.\n  - `value` (`string`): Value of the flag.\n\n**Returns**:\n  - An attribute object that represents the `database_flags` sub block.\n', args=[]),
      new(
        name,
        value
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
    deny_maintenance_period:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.deny_maintenance_period.new` constructs a new object with attributes and blocks configured for the `deny_maintenance_period`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_date` (`string`): End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01\n  - `start_date` (`string`): Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01\n  - `time` (`string`): Time in UTC when the &#34;deny maintenance period&#34; starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00\n\n**Returns**:\n  - An attribute object that represents the `deny_maintenance_period` sub block.\n', args=[]),
      new(
        end_date,
        start_date,
        time
      ):: std.prune(a={
        end_date: end_date,
        start_date: start_date,
        time: time,
      }),
    },
    insights_config:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.insights_config.new` constructs a new object with attributes and blocks configured for the `insights_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `query_insights_enabled` (`bool`): True if Query Insights feature is enabled. When `null`, the `query_insights_enabled` field will be omitted from the resulting object.\n  - `query_plans_per_minute` (`number`): Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. When `null`, the `query_plans_per_minute` field will be omitted from the resulting object.\n  - `query_string_length` (`number`): Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. When `null`, the `query_string_length` field will be omitted from the resulting object.\n  - `record_application_tags` (`bool`): True if Query Insights will record application tags from query when enabled. When `null`, the `record_application_tags` field will be omitted from the resulting object.\n  - `record_client_address` (`bool`): True if Query Insights will record client address when enabled. When `null`, the `record_client_address` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `insights_config` sub block.\n', args=[]),
      new(
        query_insights_enabled=null,
        query_plans_per_minute=null,
        query_string_length=null,
        record_application_tags=null,
        record_client_address=null
      ):: std.prune(a={
        query_insights_enabled: query_insights_enabled,
        query_plans_per_minute: query_plans_per_minute,
        query_string_length: query_string_length,
        record_application_tags: record_application_tags,
        record_client_address: record_client_address,
      }),
    },
    ip_configuration:: {
      authorized_networks:: {
        '#new':: d.fn(help='\n`google.sql_database_instance.settings.ip_configuration.authorized_networks.new` constructs a new object with attributes and blocks configured for the `authorized_networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expiration_time` (`string`): Set the `expiration_time` field on the resulting object. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `name` (`string`): Set the `name` field on the resulting object. When `null`, the `name` field will be omitted from the resulting object.\n  - `value` (`string`): Set the `value` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `authorized_networks` sub block.\n', args=[]),
        new(
          value,
          expiration_time=null,
          name=null
        ):: std.prune(a={
          expiration_time: expiration_time,
          name: name,
          value: value,
        }),
      },
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.ip_configuration.new` constructs a new object with attributes and blocks configured for the `ip_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allocated_ip_range` (`string`): The name of the allocated ip range for the private ip CloudSQL instance. For example: &#34;google-managed-services-default&#34;. If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. When `null`, the `allocated_ip_range` field will be omitted from the resulting object.\n  - `enable_private_path_for_google_cloud_services` (`bool`): Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported. When `null`, the `enable_private_path_for_google_cloud_services` field will be omitted from the resulting object.\n  - `ipv4_enabled` (`bool`): Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4_enabled must be enabled or a private_network must be configured. When `null`, the `ipv4_enabled` field will be omitted from the resulting object.\n  - `private_network` (`string`): The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4_enabled must be enabled or a private_network must be configured. This setting can be updated, but it cannot be removed after it is set. When `null`, the `private_network` field will be omitted from the resulting object.\n  - `require_ssl` (`bool`): Set the `require_ssl` field on the resulting object. When `null`, the `require_ssl` field will be omitted from the resulting object.\n  - `authorized_networks` (`list[obj]`): Set the `authorized_networks` field on the resulting object. When `null`, the `authorized_networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.ip_configuration.authorized_networks.new](#fn-settingssettingsauthorized_networksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ip_configuration` sub block.\n', args=[]),
      new(
        allocated_ip_range=null,
        authorized_networks=null,
        enable_private_path_for_google_cloud_services=null,
        ipv4_enabled=null,
        private_network=null,
        require_ssl=null
      ):: std.prune(a={
        allocated_ip_range: allocated_ip_range,
        authorized_networks: authorized_networks,
        enable_private_path_for_google_cloud_services: enable_private_path_for_google_cloud_services,
        ipv4_enabled: ipv4_enabled,
        private_network: private_network,
        require_ssl: require_ssl,
      }),
    },
    location_preference:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.location_preference.new` constructs a new object with attributes and blocks configured for the `location_preference`\nTerraform sub block.\n\n\n\n**Args**:\n  - `follow_gae_application` (`string`): A Google App Engine application whose zone to remain in. Must be in the same region as this instance. When `null`, the `follow_gae_application` field will be omitted from the resulting object.\n  - `secondary_zone` (`string`): The preferred Compute Engine zone for the secondary/failover When `null`, the `secondary_zone` field will be omitted from the resulting object.\n  - `zone` (`string`): The preferred compute engine zone. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `location_preference` sub block.\n', args=[]),
      new(
        follow_gae_application=null,
        secondary_zone=null,
        zone=null
      ):: std.prune(a={
        follow_gae_application: follow_gae_application,
        secondary_zone: secondary_zone,
        zone: zone,
      }),
    },
    maintenance_window:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of week (1-7), starting on Monday When `null`, the `day` field will be omitted from the resulting object.\n  - `hour` (`number`): Hour of day (0-23), ignored if day not set When `null`, the `hour` field will be omitted from the resulting object.\n  - `update_track` (`string`): Receive updates earlier (canary) or later (stable) When `null`, the `update_track` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_window` sub block.\n', args=[]),
      new(
        day=null,
        hour=null,
        update_track=null
      ):: std.prune(a={
        day: day,
        hour: hour,
        update_track: update_track,
      }),
    },
    '#new':: d.fn(help='\n`google.sql_database_instance.settings.new` constructs a new object with attributes and blocks configured for the `settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `activation_policy` (`string`): This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND. When `null`, the `activation_policy` field will be omitted from the resulting object.\n  - `availability_type` (`string`): The availability type of the Cloud SQL instance, high availability\n(REGIONAL) or single zone (ZONAL). For all instances, ensure that\nsettings.backup_configuration.enabled is set to true.\nFor MySQL instances, ensure that settings.backup_configuration.binary_log_enabled is set to true.\nFor Postgres instances, ensure that settings.backup_configuration.point_in_time_recovery_enabled\nis set to true. Defaults to ZONAL. When `null`, the `availability_type` field will be omitted from the resulting object.\n  - `collation` (`string`): The name of server instance collation. When `null`, the `collation` field will be omitted from the resulting object.\n  - `connector_enforcement` (`string`): Specifies if connections must use Cloud SQL connectors. When `null`, the `connector_enforcement` field will be omitted from the resulting object.\n  - `deletion_protection_enabled` (`bool`): Configuration to protect against accidental instance deletion. When `null`, the `deletion_protection_enabled` field will be omitted from the resulting object.\n  - `disk_autoresize` (`bool`): Enables auto-resizing of the storage size. Defaults to true. When `null`, the `disk_autoresize` field will be omitted from the resulting object.\n  - `disk_autoresize_limit` (`number`): The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. When `null`, the `disk_autoresize_limit` field will be omitted from the resulting object.\n  - `disk_size` (`number`): The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB. When `null`, the `disk_size` field will be omitted from the resulting object.\n  - `disk_type` (`string`): The type of data disk: PD_SSD or PD_HDD. Defaults to PD_SSD. When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `edition` (`string`): The edition of the instance, can be ENTERPRISE or ENTERPRISE_PLUS. When `null`, the `edition` field will be omitted from the resulting object.\n  - `pricing_plan` (`string`): Pricing plan for this instance, can only be PER_USE. When `null`, the `pricing_plan` field will be omitted from the resulting object.\n  - `tier` (`string`): The machine type to use. See tiers for more details and supported versions. Postgres supports only shared-core machine types, and custom machine types such as db-custom-2-13312. See the Custom Machine Type Documentation to learn about specifying custom machine types.\n  - `time_zone` (`string`): The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format. When `null`, the `time_zone` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): A set of key/value user label pairs to assign to the instance. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `active_directory_config` (`list[obj]`): Set the `active_directory_config` field on the resulting object. When `null`, the `active_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.active_directory_config.new](#fn-settingsactive_directory_confignew) constructor.\n  - `advanced_machine_features` (`list[obj]`): Set the `advanced_machine_features` field on the resulting object. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.advanced_machine_features.new](#fn-settingsadvanced_machine_featuresnew) constructor.\n  - `backup_configuration` (`list[obj]`): Set the `backup_configuration` field on the resulting object. When `null`, the `backup_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.backup_configuration.new](#fn-settingsbackup_configurationnew) constructor.\n  - `data_cache_config` (`list[obj]`): Data cache configurations. When `null`, the `data_cache_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.data_cache_config.new](#fn-settingsdata_cache_confignew) constructor.\n  - `database_flags` (`list[obj]`): Set the `database_flags` field on the resulting object. When `null`, the `database_flags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.database_flags.new](#fn-settingsdatabase_flagsnew) constructor.\n  - `deny_maintenance_period` (`list[obj]`): Set the `deny_maintenance_period` field on the resulting object. When `null`, the `deny_maintenance_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.deny_maintenance_period.new](#fn-settingsdeny_maintenance_periodnew) constructor.\n  - `insights_config` (`list[obj]`): Configuration of Query Insights. When `null`, the `insights_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.insights_config.new](#fn-settingsinsights_confignew) constructor.\n  - `ip_configuration` (`list[obj]`): Set the `ip_configuration` field on the resulting object. When `null`, the `ip_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.ip_configuration.new](#fn-settingsip_configurationnew) constructor.\n  - `location_preference` (`list[obj]`): Set the `location_preference` field on the resulting object. When `null`, the `location_preference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.location_preference.new](#fn-settingslocation_preferencenew) constructor.\n  - `maintenance_window` (`list[obj]`): Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.maintenance_window.new](#fn-settingsmaintenance_windownew) constructor.\n  - `password_validation_policy` (`list[obj]`): Set the `password_validation_policy` field on the resulting object. When `null`, the `password_validation_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.password_validation_policy.new](#fn-settingspassword_validation_policynew) constructor.\n  - `sql_server_audit_config` (`list[obj]`): Set the `sql_server_audit_config` field on the resulting object. When `null`, the `sql_server_audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.sql_server_audit_config.new](#fn-settingssql_server_audit_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `settings` sub block.\n', args=[]),
    new(
      tier,
      activation_policy=null,
      active_directory_config=null,
      advanced_machine_features=null,
      availability_type=null,
      backup_configuration=null,
      collation=null,
      connector_enforcement=null,
      data_cache_config=null,
      database_flags=null,
      deletion_protection_enabled=null,
      deny_maintenance_period=null,
      disk_autoresize=null,
      disk_autoresize_limit=null,
      disk_size=null,
      disk_type=null,
      edition=null,
      insights_config=null,
      ip_configuration=null,
      location_preference=null,
      maintenance_window=null,
      password_validation_policy=null,
      pricing_plan=null,
      sql_server_audit_config=null,
      time_zone=null,
      user_labels=null
    ):: std.prune(a={
      activation_policy: activation_policy,
      active_directory_config: active_directory_config,
      advanced_machine_features: advanced_machine_features,
      availability_type: availability_type,
      backup_configuration: backup_configuration,
      collation: collation,
      connector_enforcement: connector_enforcement,
      data_cache_config: data_cache_config,
      database_flags: database_flags,
      deletion_protection_enabled: deletion_protection_enabled,
      deny_maintenance_period: deny_maintenance_period,
      disk_autoresize: disk_autoresize,
      disk_autoresize_limit: disk_autoresize_limit,
      disk_size: disk_size,
      disk_type: disk_type,
      edition: edition,
      insights_config: insights_config,
      ip_configuration: ip_configuration,
      location_preference: location_preference,
      maintenance_window: maintenance_window,
      password_validation_policy: password_validation_policy,
      pricing_plan: pricing_plan,
      sql_server_audit_config: sql_server_audit_config,
      tier: tier,
      time_zone: time_zone,
      user_labels: user_labels,
    }),
    password_validation_policy:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.password_validation_policy.new` constructs a new object with attributes and blocks configured for the `password_validation_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `complexity` (`string`): Password complexity. When `null`, the `complexity` field will be omitted from the resulting object.\n  - `disallow_username_substring` (`bool`): Disallow username as a part of the password. When `null`, the `disallow_username_substring` field will be omitted from the resulting object.\n  - `enable_password_policy` (`bool`): Whether the password policy is enabled or not.\n  - `min_length` (`number`): Minimum number of characters allowed. When `null`, the `min_length` field will be omitted from the resulting object.\n  - `password_change_interval` (`string`): Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL. When `null`, the `password_change_interval` field will be omitted from the resulting object.\n  - `reuse_interval` (`number`): Number of previous passwords that cannot be reused. When `null`, the `reuse_interval` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `password_validation_policy` sub block.\n', args=[]),
      new(
        enable_password_policy,
        complexity=null,
        disallow_username_substring=null,
        min_length=null,
        password_change_interval=null,
        reuse_interval=null
      ):: std.prune(a={
        complexity: complexity,
        disallow_username_substring: disallow_username_substring,
        enable_password_policy: enable_password_policy,
        min_length: min_length,
        password_change_interval: password_change_interval,
        reuse_interval: reuse_interval,
      }),
    },
    sql_server_audit_config:: {
      '#new':: d.fn(help='\n`google.sql_database_instance.settings.sql_server_audit_config.new` constructs a new object with attributes and blocks configured for the `sql_server_audit_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): The name of the destination bucket (e.g., gs://mybucket). When `null`, the `bucket` field will be omitted from the resulting object.\n  - `retention_interval` (`string`): How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;.. When `null`, the `retention_interval` field will be omitted from the resulting object.\n  - `upload_interval` (`string`): How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `upload_interval` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sql_server_audit_config` sub block.\n', args=[]),
      new(
        bucket=null,
        retention_interval=null,
        upload_interval=null
      ):: std.prune(a={
        bucket: bucket,
        retention_interval: retention_interval,
        upload_interval: upload_interval,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.sql_database_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withClone':: d.fn(help='`google.list[obj].withClone` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the clone field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloneMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `clone` field.\n', args=[]),
  withClone(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          clone: value,
        },
      },
    },
  },
  '#withCloneMixin':: d.fn(help='`google.list[obj].withCloneMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the clone field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withClone](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `clone` field.\n', args=[]),
  withCloneMixin(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          clone+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatabaseVersion':: d.fn(help='`google.string.withDatabaseVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database_version` field.\n', args=[]),
  withDatabaseVersion(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          database_version: value,
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withEncryptionKeyName':: d.fn(help='`google.string.withEncryptionKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the encryption_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `encryption_key_name` field.\n', args=[]),
  withEncryptionKeyName(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          encryption_key_name: value,
        },
      },
    },
  },
  '#withInstanceType':: d.fn(help='`google.string.withInstanceType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_type` field.\n', args=[]),
  withInstanceType(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          instance_type: value,
        },
      },
    },
  },
  '#withMaintenanceVersion':: d.fn(help='`google.string.withMaintenanceVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the maintenance_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `maintenance_version` field.\n', args=[]),
  withMaintenanceVersion(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          maintenance_version: value,
        },
      },
    },
  },
  '#withMasterInstanceName':: d.fn(help='`google.string.withMasterInstanceName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the master_instance_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `master_instance_name` field.\n', args=[]),
  withMasterInstanceName(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          master_instance_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReplicaConfiguration':: d.fn(help='`google.list[obj].withReplicaConfiguration` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the replica_configuration field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReplicaConfigurationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `replica_configuration` field.\n', args=[]),
  withReplicaConfiguration(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          replica_configuration: value,
        },
      },
    },
  },
  '#withReplicaConfigurationMixin':: d.fn(help='`google.list[obj].withReplicaConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the replica_configuration field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReplicaConfiguration](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `replica_configuration` field.\n', args=[]),
  withReplicaConfigurationMixin(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          replica_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRestoreBackupContext':: d.fn(help='`google.list[obj].withRestoreBackupContext` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_backup_context field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRestoreBackupContextMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_backup_context` field.\n', args=[]),
  withRestoreBackupContext(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          restore_backup_context: value,
        },
      },
    },
  },
  '#withRestoreBackupContextMixin':: d.fn(help='`google.list[obj].withRestoreBackupContextMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_backup_context field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreBackupContext](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_backup_context` field.\n', args=[]),
  withRestoreBackupContextMixin(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          restore_backup_context+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRootPassword':: d.fn(help='`google.string.withRootPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the root_password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `root_password` field.\n', args=[]),
  withRootPassword(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          root_password: value,
        },
      },
    },
  },
  '#withSettings':: d.fn(help='`google.list[obj].withSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `settings` field.\n', args=[]),
  withSettings(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          settings: value,
        },
      },
    },
  },
  '#withSettingsMixin':: d.fn(help='`google.list[obj].withSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `settings` field.\n', args=[]),
  withSettingsMixin(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
