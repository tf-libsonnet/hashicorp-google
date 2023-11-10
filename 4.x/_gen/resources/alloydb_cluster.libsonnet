local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_cluster', url='', help='`alloydb_cluster` represents the `google_alloydb_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  automated_backup_policy:: {
    encryption_config:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
      new(
        kms_key_name=null
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.new` constructs a new object with attributes and blocks configured for the `automated_backup_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backup_window` (`string`): The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.\n\nThe backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `backup_window` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether automated backups are enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to backups created using this configuration. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. When `null`, the `location` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.encryption_config.new](#fn-automated_backup_policyencryption_confignew) constructor.\n  - `quantity_based_retention` (`list[obj]`): Quantity-based Backup retention policy to retain recent backups. Conflicts with &#39;time_based_retention&#39;, both can&#39;t be set together. When `null`, the `quantity_based_retention` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.quantity_based_retention.new](#fn-automated_backup_policyquantity_based_retentionnew) constructor.\n  - `time_based_retention` (`list[obj]`): Time-based Backup retention policy. Conflicts with &#39;quantity_based_retention&#39;, both can&#39;t be set together. When `null`, the `time_based_retention` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.time_based_retention.new](#fn-automated_backup_policytime_based_retentionnew) constructor.\n  - `weekly_schedule` (`list[obj]`): Weekly schedule for the Backup. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.weekly_schedule.new](#fn-automated_backup_policyweekly_schedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `automated_backup_policy` sub block.\n', args=[]),
    new(
      backup_window=null,
      enabled=null,
      encryption_config=null,
      labels=null,
      location=null,
      quantity_based_retention=null,
      time_based_retention=null,
      weekly_schedule=null
    ):: std.prune(a={
      backup_window: backup_window,
      enabled: enabled,
      encryption_config: encryption_config,
      labels: labels,
      location: location,
      quantity_based_retention: quantity_based_retention,
      time_based_retention: time_based_retention,
      weekly_schedule: weekly_schedule,
    }),
    quantity_based_retention:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.quantity_based_retention.new` constructs a new object with attributes and blocks configured for the `quantity_based_retention`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The number of backups to retain. When `null`, the `count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `quantity_based_retention` sub block.\n', args=[]),
      new(
        count=null
      ):: std.prune(a={
        count: count,
      }),
    },
    time_based_retention:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.time_based_retention.new` constructs a new object with attributes and blocks configured for the `time_based_retention`\nTerraform sub block.\n\n\n\n**Args**:\n  - `retention_period` (`string`): The retention period.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `retention_period` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_based_retention` sub block.\n', args=[]),
      new(
        retention_period=null
      ):: std.prune(a={
        retention_period: retention_period,
      }),
    },
    weekly_schedule:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `days_of_week` (`list`): The days of the week to perform a backup. At least one day of the week must be provided. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `days_of_week` field will be omitted from the resulting object.\n  - `start_times` (`list[obj]`): The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). When `null`, the `start_times` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.weekly_schedule.start_times.new](#fn-automated_backup_policyautomated_backup_policystart_timesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weekly_schedule` sub block.\n', args=[]),
      new(
        days_of_week=null,
        start_times=null
      ):: std.prune(a={
        days_of_week: days_of_week,
        start_times: start_times,
      }),
      start_times:: {
        '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.weekly_schedule.start_times.new` constructs a new object with attributes and blocks configured for the `start_times`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Currently, only the value 0 is supported. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Currently, only the value 0 is supported. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Currently, only the value 0 is supported. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `start_times` sub block.\n', args=[]),
        new(
          hours=null,
          minutes=null,
          nanos=null,
          seconds=null
        ):: std.prune(a={
          hours: hours,
          minutes: minutes,
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
  },
  continuous_backup_config:: {
    encryption_config:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.continuous_backup_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
      new(
        kms_key_name=null
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    '#new':: d.fn(help='\n`google.alloydb_cluster.continuous_backup_config.new` constructs a new object with attributes and blocks configured for the `continuous_backup_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether continuous backup recovery is enabled. If not set, defaults to true. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `recovery_window_days` (`number`): The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.\n\nIf not set, defaults to 14 days. When `null`, the `recovery_window_days` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.continuous_backup_config.encryption_config.new](#fn-continuous_backup_configencryption_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `continuous_backup_config` sub block.\n', args=[]),
    new(
      enabled=null,
      encryption_config=null,
      recovery_window_days=null
    ):: std.prune(a={
      enabled: enabled,
      encryption_config: encryption_config,
      recovery_window_days: recovery_window_days,
    }),
  },
  encryption_config:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
    new(
      kms_key_name=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  initial_user:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.initial_user.new` constructs a new object with attributes and blocks configured for the `initial_user`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): The initial password for the user.\n  - `user` (`string`): The database username. When `null`, the `user` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `initial_user` sub block.\n', args=[]),
    new(
      password,
      user=null
    ):: std.prune(a={
      password: password,
      user: user,
    }),
  },
  network_config:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allocated_ip_range` (`string`): The name of the allocated IP range for the private IP AlloyDB cluster. For example: &#34;google-managed-services-default&#34;.\nIf set, the instance IPs for this cluster will be created in the allocated range. When `null`, the `allocated_ip_range` field will be omitted from the resulting object.\n  - `network` (`string`): The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.\nIt is specified in the form: &#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      allocated_ip_range=null,
      network=null
    ):: std.prune(a={
      allocated_ip_range: allocated_ip_range,
      network: network,
    }),
  },
  '#new':: d.fn(help="\n`google.alloydb_cluster.new` injects a new `google_alloydb_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_cluster` using the reference:\n\n    $._ref.google_alloydb_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The ID of the alloydb cluster.\n  - `cluster_type` (`string`): The type of cluster. If not set, defaults to PRIMARY. Default value: \u0026#34;PRIMARY\u0026#34; Possible values: [\u0026#34;PRIMARY\u0026#34;, \u0026#34;SECONDARY\u0026#34;] When `null`, the `cluster_type` field will be omitted from the resulting object.\n  - `deletion_policy` (`string`): Policy to determine if the cluster should be deleted forcefully.\nDeleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.\nDeleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = \u0026#34;FORCE\u0026#34; otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Cluster. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `etag` (`string`): For Resource freshness validation (https://google.aip.dev/154) When `null`, the `etag` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb cluster.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb cluster should reside.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:\n\n\u0026#34;projects/{projectNumber}/global/networks/{network_id}\u0026#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `automated_backup_policy` (`list[obj]`): The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default. When `null`, the `automated_backup_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.new](#fn-automated_backup_policynew) constructor.\n  - `continuous_backup_config` (`list[obj]`): The continuous backup config for this cluster.\n\nIf no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days. When `null`, the `continuous_backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.continuous_backup_config.new](#fn-continuous_backup_confignew) constructor.\n  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `initial_user` (`list[obj]`): Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.initial_user.new](#fn-initial_usernew) constructor.\n  - `network_config` (`list[obj]`): Metadata related to network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.network_config.new](#fn-network_confignew) constructor.\n  - `restore_backup_source` (`list[obj]`): The source when restoring from a backup. Conflicts with \u0026#39;restore_continuous_backup_source\u0026#39;, both can\u0026#39;t be set together. When `null`, the `restore_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_backup_source.new](#fn-restore_backup_sourcenew) constructor.\n  - `restore_continuous_backup_source` (`list[obj]`): The source when restoring via point in time recovery (PITR). Conflicts with \u0026#39;restore_backup_source\u0026#39;, both can\u0026#39;t be set together. When `null`, the `restore_continuous_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_continuous_backup_source.new](#fn-restore_continuous_backup_sourcenew) constructor.\n  - `secondary_config` (`list[obj]`): Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY. When `null`, the `secondary_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.secondary_config.new](#fn-secondary_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    location,
    annotations=null,
    automated_backup_policy=null,
    cluster_type=null,
    continuous_backup_config=null,
    deletion_policy=null,
    display_name=null,
    encryption_config=null,
    etag=null,
    initial_user=null,
    labels=null,
    network=null,
    network_config=null,
    project=null,
    restore_backup_source=null,
    restore_continuous_backup_source=null,
    secondary_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      automated_backup_policy=automated_backup_policy,
      cluster_id=cluster_id,
      cluster_type=cluster_type,
      continuous_backup_config=continuous_backup_config,
      deletion_policy=deletion_policy,
      display_name=display_name,
      encryption_config=encryption_config,
      etag=etag,
      initial_user=initial_user,
      labels=labels,
      location=location,
      network=network,
      network_config=network_config,
      project=project,
      restore_backup_source=restore_backup_source,
      restore_continuous_backup_source=restore_continuous_backup_source,
      secondary_config=secondary_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_cluster`\nTerraform resource.\n\nUnlike [google.alloydb_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The ID of the alloydb cluster.\n  - `cluster_type` (`string`): The type of cluster. If not set, defaults to PRIMARY. Default value: &#34;PRIMARY&#34; Possible values: [&#34;PRIMARY&#34;, &#34;SECONDARY&#34;] When `null`, the `cluster_type` field will be omitted from the resulting object.\n  - `deletion_policy` (`string`): Policy to determine if the cluster should be deleted forcefully.\nDeleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.\nDeleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = &#34;FORCE&#34; otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Cluster. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `etag` (`string`): For Resource freshness validation (https://google.aip.dev/154) When `null`, the `etag` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb cluster.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb cluster should reside.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:\n\n&#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `automated_backup_policy` (`list[obj]`): The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default. When `null`, the `automated_backup_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.new](#fn-automated_backup_policynew) constructor.\n  - `continuous_backup_config` (`list[obj]`): The continuous backup config for this cluster.\n\nIf no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days. When `null`, the `continuous_backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.continuous_backup_config.new](#fn-continuous_backup_confignew) constructor.\n  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `initial_user` (`list[obj]`): Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.initial_user.new](#fn-initial_usernew) constructor.\n  - `network_config` (`list[obj]`): Metadata related to network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.network_config.new](#fn-network_confignew) constructor.\n  - `restore_backup_source` (`list[obj]`): The source when restoring from a backup. Conflicts with &#39;restore_continuous_backup_source&#39;, both can&#39;t be set together. When `null`, the `restore_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_backup_source.new](#fn-restore_backup_sourcenew) constructor.\n  - `restore_continuous_backup_source` (`list[obj]`): The source when restoring via point in time recovery (PITR). Conflicts with &#39;restore_backup_source&#39;, both can&#39;t be set together. When `null`, the `restore_continuous_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_continuous_backup_source.new](#fn-restore_continuous_backup_sourcenew) constructor.\n  - `secondary_config` (`list[obj]`): Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY. When `null`, the `secondary_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.secondary_config.new](#fn-secondary_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    location,
    annotations=null,
    automated_backup_policy=null,
    cluster_type=null,
    continuous_backup_config=null,
    deletion_policy=null,
    display_name=null,
    encryption_config=null,
    etag=null,
    initial_user=null,
    labels=null,
    network=null,
    network_config=null,
    project=null,
    restore_backup_source=null,
    restore_continuous_backup_source=null,
    secondary_config=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    automated_backup_policy: automated_backup_policy,
    cluster_id: cluster_id,
    cluster_type: cluster_type,
    continuous_backup_config: continuous_backup_config,
    deletion_policy: deletion_policy,
    display_name: display_name,
    encryption_config: encryption_config,
    etag: etag,
    initial_user: initial_user,
    labels: labels,
    location: location,
    network: network,
    network_config: network_config,
    project: project,
    restore_backup_source: restore_backup_source,
    restore_continuous_backup_source: restore_continuous_backup_source,
    secondary_config: secondary_config,
    timeouts: timeouts,
  }),
  restore_backup_source:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.restore_backup_source.new` constructs a new object with attributes and blocks configured for the `restore_backup_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backup_name` (`string`): The name of the backup that this cluster is restored from.\n\n**Returns**:\n  - An attribute object that represents the `restore_backup_source` sub block.\n', args=[]),
    new(
      backup_name
    ):: std.prune(a={
      backup_name: backup_name,
    }),
  },
  restore_continuous_backup_source:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.restore_continuous_backup_source.new` constructs a new object with attributes and blocks configured for the `restore_continuous_backup_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster` (`string`): The name of the source cluster that this cluster is restored from.\n  - `point_in_time` (`string`): The point in time that this cluster is restored to, in RFC 3339 format.\n\n**Returns**:\n  - An attribute object that represents the `restore_continuous_backup_source` sub block.\n', args=[]),
    new(
      cluster,
      point_in_time
    ):: std.prune(a={
      cluster: cluster,
      point_in_time: point_in_time,
    }),
  },
  secondary_config:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.secondary_config.new` constructs a new object with attributes and blocks configured for the `secondary_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `primary_cluster_name` (`string`): Name of the primary cluster must be in the format\n&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;\n\n**Returns**:\n  - An attribute object that represents the `secondary_config` sub block.\n', args=[]),
    new(
      primary_cluster_name
    ):: std.prune(a={
      primary_cluster_name: primary_cluster_name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAutomatedBackupPolicy':: d.fn(help='`google.list[obj].withAutomatedBackupPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automated_backup_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutomatedBackupPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automated_backup_policy` field.\n', args=[]),
  withAutomatedBackupPolicy(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          automated_backup_policy: value,
        },
      },
    },
  },
  '#withAutomatedBackupPolicyMixin':: d.fn(help='`google.list[obj].withAutomatedBackupPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automated_backup_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutomatedBackupPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automated_backup_policy` field.\n', args=[]),
  withAutomatedBackupPolicyMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          automated_backup_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterId':: d.fn(help='`google.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withClusterType':: d.fn(help='`google.string.withClusterType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_type` field.\n', args=[]),
  withClusterType(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          cluster_type: value,
        },
      },
    },
  },
  '#withContinuousBackupConfig':: d.fn(help='`google.list[obj].withContinuousBackupConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the continuous_backup_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withContinuousBackupConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `continuous_backup_config` field.\n', args=[]),
  withContinuousBackupConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          continuous_backup_config: value,
        },
      },
    },
  },
  '#withContinuousBackupConfigMixin':: d.fn(help='`google.list[obj].withContinuousBackupConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the continuous_backup_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withContinuousBackupConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `continuous_backup_config` field.\n', args=[]),
  withContinuousBackupConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          continuous_backup_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeletionPolicy':: d.fn(help='`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEncryptionConfig':: d.fn(help='`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  '#withEncryptionConfigMixin':: d.fn(help='`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEtag':: d.fn(help='`google.string.withEtag` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the etag field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `etag` field.\n', args=[]),
  withEtag(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          etag: value,
        },
      },
    },
  },
  '#withInitialUser':: d.fn(help='`google.list[obj].withInitialUser` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the initial_user field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInitialUserMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `initial_user` field.\n', args=[]),
  withInitialUser(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          initial_user: value,
        },
      },
    },
  },
  '#withInitialUserMixin':: d.fn(help='`google.list[obj].withInitialUserMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the initial_user field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInitialUser](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `initial_user` field.\n', args=[]),
  withInitialUserMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          initial_user+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRestoreBackupSource':: d.fn(help='`google.list[obj].withRestoreBackupSource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_backup_source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRestoreBackupSourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_backup_source` field.\n', args=[]),
  withRestoreBackupSource(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          restore_backup_source: value,
        },
      },
    },
  },
  '#withRestoreBackupSourceMixin':: d.fn(help='`google.list[obj].withRestoreBackupSourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_backup_source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreBackupSource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_backup_source` field.\n', args=[]),
  withRestoreBackupSourceMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          restore_backup_source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRestoreContinuousBackupSource':: d.fn(help='`google.list[obj].withRestoreContinuousBackupSource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_continuous_backup_source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRestoreContinuousBackupSourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_continuous_backup_source` field.\n', args=[]),
  withRestoreContinuousBackupSource(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          restore_continuous_backup_source: value,
        },
      },
    },
  },
  '#withRestoreContinuousBackupSourceMixin':: d.fn(help='`google.list[obj].withRestoreContinuousBackupSourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_continuous_backup_source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreContinuousBackupSource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_continuous_backup_source` field.\n', args=[]),
  withRestoreContinuousBackupSourceMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          restore_continuous_backup_source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSecondaryConfig':: d.fn(help='`google.list[obj].withSecondaryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secondary_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecondaryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secondary_config` field.\n', args=[]),
  withSecondaryConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          secondary_config: value,
        },
      },
    },
  },
  '#withSecondaryConfigMixin':: d.fn(help='`google.list[obj].withSecondaryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secondary_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecondaryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secondary_config` field.\n', args=[]),
  withSecondaryConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          secondary_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
