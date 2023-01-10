local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_backup_backup_plan', url='', help='`gke_backup_backup_plan` represents the `google_gke_backup_backup_plan` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  backup_config:: {
    encryption_key:: {
      '#new':: d.fn(help='\n`google.gke_backup_backup_plan.backup_config.encryption_key.new` constructs a new object with attributes and blocks configured for the `encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcp_kms_encryption_key` (`string`): Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/*\n\n**Returns**:\n  - An attribute object that represents the `encryption_key` sub block.\n', args=[]),
      new(
        gcp_kms_encryption_key
      ):: std.prune(a={
        gcp_kms_encryption_key: gcp_kms_encryption_key,
      }),
    },
    '#new':: d.fn(help='\n`google.gke_backup_backup_plan.backup_config.new` constructs a new object with attributes and blocks configured for the `backup_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all_namespaces` (`bool`): If True, include all namespaced resources. When `null`, the `all_namespaces` field will be omitted from the resulting object.\n  - `include_secrets` (`bool`): This flag specifies whether Kubernetes Secret resources should be included\nwhen they fall into the scope of Backups. When `null`, the `include_secrets` field will be omitted from the resulting object.\n  - `include_volume_data` (`bool`): This flag specifies whether volume data should be backed up when PVCs are\nincluded in the scope of a Backup. When `null`, the `include_volume_data` field will be omitted from the resulting object.\n  - `encryption_key` (`list[obj]`): This defines a customer managed encryption key that will be used to encrypt the &#34;config&#34;\nportion (the Kubernetes resources) of Backups created via this plan. When `null`, the `encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.encryption_key.new](#fn-backup_configencryption_keynew) constructor.\n  - `selected_applications` (`list[obj]`): A list of namespaced Kubernetes Resources. When `null`, the `selected_applications` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.selected_applications.new](#fn-backup_configselected_applicationsnew) constructor.\n  - `selected_namespaces` (`list[obj]`): If set, include just the resources in the listed namespaces. When `null`, the `selected_namespaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.selected_namespaces.new](#fn-backup_configselected_namespacesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `backup_config` sub block.\n', args=[]),
    new(
      all_namespaces=null,
      encryption_key=null,
      include_secrets=null,
      include_volume_data=null,
      selected_applications=null,
      selected_namespaces=null
    ):: std.prune(a={
      all_namespaces: all_namespaces,
      encryption_key: encryption_key,
      include_secrets: include_secrets,
      include_volume_data: include_volume_data,
      selected_applications: selected_applications,
      selected_namespaces: selected_namespaces,
    }),
    selected_applications:: {
      namespaced_names:: {
        '#new':: d.fn(help='\n`google.gke_backup_backup_plan.backup_config.selected_applications.namespaced_names.new` constructs a new object with attributes and blocks configured for the `namespaced_names`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name of a Kubernetes Resource.\n  - `namespace` (`string`): The namespace of a Kubernetes Resource.\n\n**Returns**:\n  - An attribute object that represents the `namespaced_names` sub block.\n', args=[]),
        new(
          name,
          namespace
        ):: std.prune(a={
          name: name,
          namespace: namespace,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_backup_backup_plan.backup_config.selected_applications.new` constructs a new object with attributes and blocks configured for the `selected_applications`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespaced_names` (`list[obj]`): A list of namespaced Kubernetes resources. When `null`, the `namespaced_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.selected_applications.namespaced_names.new](#fn-backup_configbackup_confignamespaced_namesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `selected_applications` sub block.\n', args=[]),
      new(
        namespaced_names=null
      ):: std.prune(a={
        namespaced_names: namespaced_names,
      }),
    },
    selected_namespaces:: {
      '#new':: d.fn(help='\n`google.gke_backup_backup_plan.backup_config.selected_namespaces.new` constructs a new object with attributes and blocks configured for the `selected_namespaces`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespaces` (`list`): A list of Kubernetes Namespaces.\n\n**Returns**:\n  - An attribute object that represents the `selected_namespaces` sub block.\n', args=[]),
      new(
        namespaces
      ):: std.prune(a={
        namespaces: namespaces,
      }),
    },
  },
  backup_schedule:: {
    '#new':: d.fn(help='\n`google.gke_backup_backup_plan.backup_schedule.new` constructs a new object with attributes and blocks configured for the `backup_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cron_schedule` (`string`): A standard cron string that defines a repeating schedule for\ncreating Backups via this BackupPlan.\nIf this is defined, then backupRetainDays must also be defined. When `null`, the `cron_schedule` field will be omitted from the resulting object.\n  - `paused` (`bool`): This flag denotes whether automatic Backup creation is paused for this BackupPlan. When `null`, the `paused` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `backup_schedule` sub block.\n', args=[]),
    new(
      cron_schedule=null,
      paused=null
    ):: std.prune(a={
      cron_schedule: cron_schedule,
      paused: paused,
    }),
  },
  '#new':: d.fn(help="\n`google.gke_backup_backup_plan.new` injects a new `google_gke_backup_backup_plan` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_backup_backup_plan.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_backup_backup_plan` using the reference:\n\n    $._ref.google_gke_backup_backup_plan.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_backup_backup_plan.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster` (`string`): The source cluster from which Backups will be created via this BackupPlan.\n  - `deactivated` (`bool`): This flag indicates whether this BackupPlan has been deactivated.\nSetting this field to True locks the BackupPlan such that no further updates will be allowed\n(except deletes), including the deactivated field itself. It also prevents any new Backups\nfrom being created via this BackupPlan (including scheduled Backups). When `null`, the `deactivated` field will be omitted from the resulting object.\n  - `description` (`string`): User specified descriptive string for this BackupPlan. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Description: A set of custom labels supplied by the user.\nA list of key-\u0026gt;value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The region of the Backup Plan.\n  - `name` (`string`): The full name of the BackupPlan Resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `backup_config` (`list[obj]`): Defines the configuration of Backups created via this BackupPlan. When `null`, the `backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.new](#fn-backup_confignew) constructor.\n  - `backup_schedule` (`list[obj]`): Defines a schedule for automatic Backup creation via this BackupPlan. When `null`, the `backup_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_schedule.new](#fn-backup_schedulenew) constructor.\n  - `retention_policy` (`list[obj]`): RetentionPolicy governs lifecycle of Backups created under this plan. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.retention_policy.new](#fn-retention_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    location,
    name,
    backup_config=null,
    backup_schedule=null,
    deactivated=null,
    description=null,
    labels=null,
    project=null,
    retention_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_backup_backup_plan',
    label=resourceLabel,
    attrs=self.newAttrs(
      backup_config=backup_config,
      backup_schedule=backup_schedule,
      cluster=cluster,
      deactivated=deactivated,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      retention_policy=retention_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_backup_backup_plan.newAttrs` constructs a new object with attributes and blocks configured for the `gke_backup_backup_plan`\nTerraform resource.\n\nUnlike [google.gke_backup_backup_plan.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster` (`string`): The source cluster from which Backups will be created via this BackupPlan.\n  - `deactivated` (`bool`): This flag indicates whether this BackupPlan has been deactivated.\nSetting this field to True locks the BackupPlan such that no further updates will be allowed\n(except deletes), including the deactivated field itself. It also prevents any new Backups\nfrom being created via this BackupPlan (including scheduled Backups). When `null`, the `deactivated` field will be omitted from the resulting object.\n  - `description` (`string`): User specified descriptive string for this BackupPlan. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Description: A set of custom labels supplied by the user.\nA list of key-&gt;value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The region of the Backup Plan.\n  - `name` (`string`): The full name of the BackupPlan Resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `backup_config` (`list[obj]`): Defines the configuration of Backups created via this BackupPlan. When `null`, the `backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.new](#fn-backup_confignew) constructor.\n  - `backup_schedule` (`list[obj]`): Defines a schedule for automatic Backup creation via this BackupPlan. When `null`, the `backup_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_schedule.new](#fn-backup_schedulenew) constructor.\n  - `retention_policy` (`list[obj]`): RetentionPolicy governs lifecycle of Backups created under this plan. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.retention_policy.new](#fn-retention_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_backup_backup_plan` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    location,
    name,
    backup_config=null,
    backup_schedule=null,
    deactivated=null,
    description=null,
    labels=null,
    project=null,
    retention_policy=null,
    timeouts=null
  ):: std.prune(a={
    backup_config: backup_config,
    backup_schedule: backup_schedule,
    cluster: cluster,
    deactivated: deactivated,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    retention_policy: retention_policy,
    timeouts: timeouts,
  }),
  retention_policy:: {
    '#new':: d.fn(help='\n`google.gke_backup_backup_plan.retention_policy.new` constructs a new object with attributes and blocks configured for the `retention_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backup_delete_lock_days` (`number`): Minimum age for a Backup created via this BackupPlan (in days).\nMust be an integer value between 0-90 (inclusive).\nA Backup created under this BackupPlan will not be deletable\nuntil it reaches Backup&#39;s (create time &#43; backup_delete_lock_days).\nUpdating this field of a BackupPlan does not affect existing Backups.\nBackups created after a successful update will inherit this new value. When `null`, the `backup_delete_lock_days` field will be omitted from the resulting object.\n  - `backup_retain_days` (`number`): The default maximum age of a Backup created via this BackupPlan.\nThis field MUST be an integer value &gt;= 0 and &lt;= 365. If specified,\na Backup created under this BackupPlan will be automatically deleted\nafter its age reaches (createTime &#43; backupRetainDays).\nIf not specified, Backups created under this BackupPlan will NOT be\nsubject to automatic deletion. Updating this field does NOT affect\nexisting Backups under it. Backups created AFTER a successful update\nwill automatically pick up the new value.\nNOTE: backupRetainDays must be &gt;= backupDeleteLockDays.\nIf cronSchedule is defined, then this must be &lt;= 360 * the creation interval.] When `null`, the `backup_retain_days` field will be omitted from the resulting object.\n  - `locked` (`bool`): This flag denotes whether the retention policy of this BackupPlan is locked.\nIf set to True, no further update is allowed on this policy, including\nthe locked field itself. When `null`, the `locked` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retention_policy` sub block.\n', args=[]),
    new(
      backup_delete_lock_days=null,
      backup_retain_days=null,
      locked=null
    ):: std.prune(a={
      backup_delete_lock_days: backup_delete_lock_days,
      backup_retain_days: backup_retain_days,
      locked: locked,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_backup_backup_plan.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBackupConfig':: d.fn(help='`google.list[obj].withBackupConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backup_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBackupConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backup_config` field.\n', args=[]),
  withBackupConfig(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_config: value,
        },
      },
    },
  },
  '#withBackupConfigMixin':: d.fn(help='`google.list[obj].withBackupConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backup_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBackupConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backup_config` field.\n', args=[]),
  withBackupConfigMixin(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBackupSchedule':: d.fn(help='`google.list[obj].withBackupSchedule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backup_schedule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBackupScheduleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backup_schedule` field.\n', args=[]),
  withBackupSchedule(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_schedule: value,
        },
      },
    },
  },
  '#withBackupScheduleMixin':: d.fn(help='`google.list[obj].withBackupScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the backup_schedule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBackupSchedule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `backup_schedule` field.\n', args=[]),
  withBackupScheduleMixin(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withDeactivated':: d.fn(help='`google.bool.withDeactivated` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the deactivated field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `deactivated` field.\n', args=[]),
  withDeactivated(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          deactivated: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRetentionPolicy':: d.fn(help='`google.list[obj].withRetentionPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retention_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRetentionPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retention_policy` field.\n', args=[]),
  withRetentionPolicy(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          retention_policy: value,
        },
      },
    },
  },
  '#withRetentionPolicyMixin':: d.fn(help='`google.list[obj].withRetentionPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retention_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRetentionPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retention_policy` field.\n', args=[]),
  withRetentionPolicyMixin(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          retention_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
