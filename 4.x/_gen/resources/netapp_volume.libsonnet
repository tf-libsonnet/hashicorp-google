local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='netapp_volume', url='', help='`netapp_volume` represents the `google_netapp_volume` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  export_policy:: {
    '#new':: d.fn(help='\n`google.netapp_volume.export_policy.new` constructs a new object with attributes and blocks configured for the `export_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `rules` (`list[obj]`): Export rules (up to 5) control NFS volume access. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.export_policy.rules.new](#fn-export_policyrulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `export_policy` sub block.\n', args=[]),
    new(
      rules=null
    ):: std.prune(a={
      rules: rules,
    }),
    rules:: {
      '#new':: d.fn(help='\n`google.netapp_volume.export_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_type` (`string`): Defines the access type for clients matching the &#39;allowedClients&#39; specification. Possible values: [&#34;READ_ONLY&#34;, &#34;READ_WRITE&#34;, &#34;READ_NONE&#34;] When `null`, the `access_type` field will be omitted from the resulting object.\n  - `allowed_clients` (`string`): Defines the client ingress specification (allowed clients) as a comma seperated list with IPv4 CIDRs or IPv4 host addresses. When `null`, the `allowed_clients` field will be omitted from the resulting object.\n  - `has_root_access` (`string`): If enabled, the root user (UID = 0) of the specified clients doesn&#39;t get mapped to nobody (UID = 65534). This is also known as no_root_squash. When `null`, the `has_root_access` field will be omitted from the resulting object.\n  - `kerberos5_read_only` (`bool`): If enabled (true) the rule defines a read only access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;authentication&#39; kerberos security mode. When `null`, the `kerberos5_read_only` field will be omitted from the resulting object.\n  - `kerberos5_read_write` (`bool`): If enabled (true) the rule defines read and write access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;authentication&#39; kerberos security mode. The &#39;kerberos5ReadOnly&#39; value is ignored if this is enabled. When `null`, the `kerberos5_read_write` field will be omitted from the resulting object.\n  - `kerberos5i_read_only` (`bool`): If enabled (true) the rule defines a read only access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;integrity&#39; kerberos security mode. When `null`, the `kerberos5i_read_only` field will be omitted from the resulting object.\n  - `kerberos5i_read_write` (`bool`): If enabled (true) the rule defines read and write access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;integrity&#39; kerberos security mode. The &#39;kerberos5iReadOnly&#39; value is ignored if this is enabled. When `null`, the `kerberos5i_read_write` field will be omitted from the resulting object.\n  - `kerberos5p_read_only` (`bool`): If enabled (true) the rule defines a read only access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;privacy&#39; kerberos security mode. When `null`, the `kerberos5p_read_only` field will be omitted from the resulting object.\n  - `kerberos5p_read_write` (`bool`): If enabled (true) the rule defines read and write access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;privacy&#39; kerberos security mode. The &#39;kerberos5pReadOnly&#39; value is ignored if this is enabled. When `null`, the `kerberos5p_read_write` field will be omitted from the resulting object.\n  - `nfsv3` (`bool`): Enable to apply the export rule to NFSV3 clients. When `null`, the `nfsv3` field will be omitted from the resulting object.\n  - `nfsv4` (`bool`): Enable to apply the export rule to NFSV4.1 clients. When `null`, the `nfsv4` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
      new(
        access_type=null,
        allowed_clients=null,
        has_root_access=null,
        kerberos5_read_only=null,
        kerberos5_read_write=null,
        kerberos5i_read_only=null,
        kerberos5i_read_write=null,
        kerberos5p_read_only=null,
        kerberos5p_read_write=null,
        nfsv3=null,
        nfsv4=null
      ):: std.prune(a={
        access_type: access_type,
        allowed_clients: allowed_clients,
        has_root_access: has_root_access,
        kerberos5_read_only: kerberos5_read_only,
        kerberos5_read_write: kerberos5_read_write,
        kerberos5i_read_only: kerberos5i_read_only,
        kerberos5i_read_write: kerberos5i_read_write,
        kerberos5p_read_only: kerberos5p_read_only,
        kerberos5p_read_write: kerberos5p_read_write,
        nfsv3: nfsv3,
        nfsv4: nfsv4,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.netapp_volume.new` injects a new `google_netapp_volume` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.netapp_volume.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.netapp_volume` using the reference:\n\n    $._ref.google_netapp_volume.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_netapp_volume.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `capacity_gib` (`string`): Capacity of the volume (in GiB).\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `kerberos_enabled` (`bool`): Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p). When `null`, the `kerberos_enabled` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: \u0026#39;{ \u0026#34;owner\u0026#34;: \u0026#34;Bob\u0026#34;, \u0026#34;department\u0026#34;: \u0026#34;finance\u0026#34;, \u0026#34;purpose\u0026#34;: \u0026#34;testing\u0026#34; }\u0026#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.\n  - `name` (`string`): The name of the volume. Needs to be unique per location.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `protocols` (`list`): The protocol of the volume. Allowed combinations are \u0026#39;[\u0026#39;NFSV3\u0026#39;]\u0026#39;, \u0026#39;[\u0026#39;NFSV4\u0026#39;]\u0026#39;, \u0026#39;[\u0026#39;SMB\u0026#39;]\u0026#39;, \u0026#39;[\u0026#39;NFSV3\u0026#39;, \u0026#39;NFSV4\u0026#39;]\u0026#39;, \u0026#39;[\u0026#39;SMB\u0026#39;, \u0026#39;NFSV3\u0026#39;]\u0026#39; and \u0026#39;[\u0026#39;SMB\u0026#39;, \u0026#39;NFSV4\u0026#39;]\u0026#39;. Possible values: [\u0026#34;NFSV3\u0026#34;, \u0026#34;NFSV4\u0026#34;, \u0026#34;SMB\u0026#34;]\n  - `restricted_actions` (`list`): List of actions that are restricted on this volume. Possible values: [\u0026#34;DELETE\u0026#34;] When `null`, the `restricted_actions` field will be omitted from the resulting object.\n  - `security_style` (`string`): Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.\nUse NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol. Possible values: [\u0026#34;NTFS\u0026#34;, \u0026#34;UNIX\u0026#34;] When `null`, the `security_style` field will be omitted from the resulting object.\n  - `share_name` (`string`): Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.\n  - `smb_settings` (`list`): Settings for volumes with SMB access. Possible values: [\u0026#34;ENCRYPT_DATA\u0026#34;, \u0026#34;BROWSABLE\u0026#34;, \u0026#34;CHANGE_NOTIFY\u0026#34;, \u0026#34;NON_BROWSABLE\u0026#34;, \u0026#34;OPLOCKS\u0026#34;, \u0026#34;SHOW_SNAPSHOT\u0026#34;, \u0026#34;SHOW_PREVIOUS_VERSIONS\u0026#34;, \u0026#34;ACCESS_BASED_ENUMERATION\u0026#34;, \u0026#34;CONTINUOUSLY_AVAILABLE\u0026#34;] When `null`, the `smb_settings` field will be omitted from the resulting object.\n  - `snapshot_directory` (`bool`): If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume\u0026#39;s snapshots. Will enable \u0026#34;Previous Versions\u0026#34; support for SMB. When `null`, the `snapshot_directory` field will be omitted from the resulting object.\n  - `storage_pool` (`string`): Name of the storage pool to create the volume in. Pool needs enough spare capacity to accomodate the volume.\n  - `unix_permissions` (`string`): Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only. When `null`, the `unix_permissions` field will be omitted from the resulting object.\n  - `export_policy` (`list[obj]`): Export policy of the volume for NFSV3 and/or NFSV4.1 access. When `null`, the `export_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.export_policy.new](#fn-export_policynew) constructor.\n  - `snapshot_policy` (`list[obj]`): Snapshot policy defines the schedule for automatic snapshot creation.\nTo disable automatic snapshot creation you have to remove the whole snapshot_policy block. When `null`, the `snapshot_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.new](#fn-snapshot_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    capacity_gib,
    location,
    name,
    protocols,
    share_name,
    storage_pool,
    description=null,
    export_policy=null,
    kerberos_enabled=null,
    labels=null,
    project=null,
    restricted_actions=null,
    security_style=null,
    smb_settings=null,
    snapshot_directory=null,
    snapshot_policy=null,
    timeouts=null,
    unix_permissions=null,
    _meta={}
  ):: tf.withResource(
    type='google_netapp_volume',
    label=resourceLabel,
    attrs=self.newAttrs(
      capacity_gib=capacity_gib,
      description=description,
      export_policy=export_policy,
      kerberos_enabled=kerberos_enabled,
      labels=labels,
      location=location,
      name=name,
      project=project,
      protocols=protocols,
      restricted_actions=restricted_actions,
      security_style=security_style,
      share_name=share_name,
      smb_settings=smb_settings,
      snapshot_directory=snapshot_directory,
      snapshot_policy=snapshot_policy,
      storage_pool=storage_pool,
      timeouts=timeouts,
      unix_permissions=unix_permissions
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.netapp_volume.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_volume`\nTerraform resource.\n\nUnlike [google.netapp_volume.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `capacity_gib` (`string`): Capacity of the volume (in GiB).\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `kerberos_enabled` (`bool`): Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p). When `null`, the `kerberos_enabled` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.\n  - `name` (`string`): The name of the volume. Needs to be unique per location.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `protocols` (`list`): The protocol of the volume. Allowed combinations are &#39;[&#39;NFSV3&#39;]&#39;, &#39;[&#39;NFSV4&#39;]&#39;, &#39;[&#39;SMB&#39;]&#39;, &#39;[&#39;NFSV3&#39;, &#39;NFSV4&#39;]&#39;, &#39;[&#39;SMB&#39;, &#39;NFSV3&#39;]&#39; and &#39;[&#39;SMB&#39;, &#39;NFSV4&#39;]&#39;. Possible values: [&#34;NFSV3&#34;, &#34;NFSV4&#34;, &#34;SMB&#34;]\n  - `restricted_actions` (`list`): List of actions that are restricted on this volume. Possible values: [&#34;DELETE&#34;] When `null`, the `restricted_actions` field will be omitted from the resulting object.\n  - `security_style` (`string`): Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.\nUse NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol. Possible values: [&#34;NTFS&#34;, &#34;UNIX&#34;] When `null`, the `security_style` field will be omitted from the resulting object.\n  - `share_name` (`string`): Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.\n  - `smb_settings` (`list`): Settings for volumes with SMB access. Possible values: [&#34;ENCRYPT_DATA&#34;, &#34;BROWSABLE&#34;, &#34;CHANGE_NOTIFY&#34;, &#34;NON_BROWSABLE&#34;, &#34;OPLOCKS&#34;, &#34;SHOW_SNAPSHOT&#34;, &#34;SHOW_PREVIOUS_VERSIONS&#34;, &#34;ACCESS_BASED_ENUMERATION&#34;, &#34;CONTINUOUSLY_AVAILABLE&#34;] When `null`, the `smb_settings` field will be omitted from the resulting object.\n  - `snapshot_directory` (`bool`): If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume&#39;s snapshots. Will enable &#34;Previous Versions&#34; support for SMB. When `null`, the `snapshot_directory` field will be omitted from the resulting object.\n  - `storage_pool` (`string`): Name of the storage pool to create the volume in. Pool needs enough spare capacity to accomodate the volume.\n  - `unix_permissions` (`string`): Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only. When `null`, the `unix_permissions` field will be omitted from the resulting object.\n  - `export_policy` (`list[obj]`): Export policy of the volume for NFSV3 and/or NFSV4.1 access. When `null`, the `export_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.export_policy.new](#fn-export_policynew) constructor.\n  - `snapshot_policy` (`list[obj]`): Snapshot policy defines the schedule for automatic snapshot creation.\nTo disable automatic snapshot creation you have to remove the whole snapshot_policy block. When `null`, the `snapshot_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.new](#fn-snapshot_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_volume` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    capacity_gib,
    location,
    name,
    protocols,
    share_name,
    storage_pool,
    description=null,
    export_policy=null,
    kerberos_enabled=null,
    labels=null,
    project=null,
    restricted_actions=null,
    security_style=null,
    smb_settings=null,
    snapshot_directory=null,
    snapshot_policy=null,
    timeouts=null,
    unix_permissions=null
  ):: std.prune(a={
    capacity_gib: capacity_gib,
    description: description,
    export_policy: export_policy,
    kerberos_enabled: kerberos_enabled,
    labels: labels,
    location: location,
    name: name,
    project: project,
    protocols: protocols,
    restricted_actions: restricted_actions,
    security_style: security_style,
    share_name: share_name,
    smb_settings: smb_settings,
    snapshot_directory: snapshot_directory,
    snapshot_policy: snapshot_policy,
    storage_pool: storage_pool,
    timeouts: timeouts,
    unix_permissions: unix_permissions,
  }),
  snapshot_policy:: {
    daily_schedule:: {
      '#new':: d.fn(help='\n`google.netapp_volume.snapshot_policy.daily_schedule.new` constructs a new object with attributes and blocks configured for the `daily_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hour` (`number`): Set the hour to create the snapshot (0-23), defaults to midnight (0). When `null`, the `hour` field will be omitted from the resulting object.\n  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.\n  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the daily schedule.\n\n**Returns**:\n  - An attribute object that represents the `daily_schedule` sub block.\n', args=[]),
      new(
        snapshots_to_keep,
        hour=null,
        minute=null
      ):: std.prune(a={
        hour: hour,
        minute: minute,
        snapshots_to_keep: snapshots_to_keep,
      }),
    },
    hourly_schedule:: {
      '#new':: d.fn(help='\n`google.netapp_volume.snapshot_policy.hourly_schedule.new` constructs a new object with attributes and blocks configured for the `hourly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.\n  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the hourly schedule.\n\n**Returns**:\n  - An attribute object that represents the `hourly_schedule` sub block.\n', args=[]),
      new(
        snapshots_to_keep,
        minute=null
      ):: std.prune(a={
        minute: minute,
        snapshots_to_keep: snapshots_to_keep,
      }),
    },
    monthly_schedule:: {
      '#new':: d.fn(help='\n`google.netapp_volume.snapshot_policy.monthly_schedule.new` constructs a new object with attributes and blocks configured for the `monthly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `days_of_month` (`string`): Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to &#39;1&#39;. When `null`, the `days_of_month` field will be omitted from the resulting object.\n  - `hour` (`number`): Set the hour to create the snapshot (0-23), defaults to midnight (0). When `null`, the `hour` field will be omitted from the resulting object.\n  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.\n  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the monthly schedule\n\n**Returns**:\n  - An attribute object that represents the `monthly_schedule` sub block.\n', args=[]),
      new(
        snapshots_to_keep,
        days_of_month=null,
        hour=null,
        minute=null
      ):: std.prune(a={
        days_of_month: days_of_month,
        hour: hour,
        minute: minute,
        snapshots_to_keep: snapshots_to_keep,
      }),
    },
    '#new':: d.fn(help='\n`google.netapp_volume.snapshot_policy.new` constructs a new object with attributes and blocks configured for the `snapshot_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Enables automated snapshot creation according to defined schedule. Default is false.\nTo disable automatic snapshot creation you have to remove the whole snapshot_policy block. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `daily_schedule` (`list[obj]`): Daily schedule policy. When `null`, the `daily_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.daily_schedule.new](#fn-snapshot_policydaily_schedulenew) constructor.\n  - `hourly_schedule` (`list[obj]`): Hourly schedule policy. When `null`, the `hourly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.hourly_schedule.new](#fn-snapshot_policyhourly_schedulenew) constructor.\n  - `monthly_schedule` (`list[obj]`): Monthly schedule policy. When `null`, the `monthly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.monthly_schedule.new](#fn-snapshot_policymonthly_schedulenew) constructor.\n  - `weekly_schedule` (`list[obj]`): Weekly schedule policy. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.weekly_schedule.new](#fn-snapshot_policyweekly_schedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `snapshot_policy` sub block.\n', args=[]),
    new(
      daily_schedule=null,
      enabled=null,
      hourly_schedule=null,
      monthly_schedule=null,
      weekly_schedule=null
    ):: std.prune(a={
      daily_schedule: daily_schedule,
      enabled: enabled,
      hourly_schedule: hourly_schedule,
      monthly_schedule: monthly_schedule,
      weekly_schedule: weekly_schedule,
    }),
    weekly_schedule:: {
      '#new':: d.fn(help='\n`google.netapp_volume.snapshot_policy.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`string`): Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. Defaults to &#39;Sunday&#39;. When `null`, the `day` field will be omitted from the resulting object.\n  - `hour` (`number`): Set the hour to create the snapshot (0-23), defaults to midnight (0). When `null`, the `hour` field will be omitted from the resulting object.\n  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.\n  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the weekly schedule.\n\n**Returns**:\n  - An attribute object that represents the `weekly_schedule` sub block.\n', args=[]),
      new(
        snapshots_to_keep,
        day=null,
        hour=null,
        minute=null
      ):: std.prune(a={
        day: day,
        hour: hour,
        minute: minute,
        snapshots_to_keep: snapshots_to_keep,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.netapp_volume.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCapacityGib':: d.fn(help='`google.string.withCapacityGib` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the capacity_gib field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `capacity_gib` field.\n', args=[]),
  withCapacityGib(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          capacity_gib: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withExportPolicy':: d.fn(help='`google.list[obj].withExportPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the export_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExportPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `export_policy` field.\n', args=[]),
  withExportPolicy(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          export_policy: value,
        },
      },
    },
  },
  '#withExportPolicyMixin':: d.fn(help='`google.list[obj].withExportPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the export_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExportPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `export_policy` field.\n', args=[]),
  withExportPolicyMixin(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          export_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withKerberosEnabled':: d.fn(help='`google.bool.withKerberosEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the kerberos_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `kerberos_enabled` field.\n', args=[]),
  withKerberosEnabled(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          kerberos_enabled: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProtocols':: d.fn(help='`google.list.withProtocols` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the protocols field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `protocols` field.\n', args=[]),
  withProtocols(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          protocols: value,
        },
      },
    },
  },
  '#withRestrictedActions':: d.fn(help='`google.list.withRestrictedActions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the restricted_actions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `restricted_actions` field.\n', args=[]),
  withRestrictedActions(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          restricted_actions: value,
        },
      },
    },
  },
  '#withSecurityStyle':: d.fn(help='`google.string.withSecurityStyle` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the security_style field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `security_style` field.\n', args=[]),
  withSecurityStyle(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          security_style: value,
        },
      },
    },
  },
  '#withShareName':: d.fn(help='`google.string.withShareName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the share_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `share_name` field.\n', args=[]),
  withShareName(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          share_name: value,
        },
      },
    },
  },
  '#withSmbSettings':: d.fn(help='`google.list.withSmbSettings` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the smb_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `smb_settings` field.\n', args=[]),
  withSmbSettings(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          smb_settings: value,
        },
      },
    },
  },
  '#withSnapshotDirectory':: d.fn(help='`google.bool.withSnapshotDirectory` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the snapshot_directory field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `snapshot_directory` field.\n', args=[]),
  withSnapshotDirectory(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          snapshot_directory: value,
        },
      },
    },
  },
  '#withSnapshotPolicy':: d.fn(help='`google.list[obj].withSnapshotPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the snapshot_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSnapshotPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `snapshot_policy` field.\n', args=[]),
  withSnapshotPolicy(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          snapshot_policy: value,
        },
      },
    },
  },
  '#withSnapshotPolicyMixin':: d.fn(help='`google.list[obj].withSnapshotPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the snapshot_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSnapshotPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `snapshot_policy` field.\n', args=[]),
  withSnapshotPolicyMixin(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          snapshot_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStoragePool':: d.fn(help='`google.string.withStoragePool` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the storage_pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `storage_pool` field.\n', args=[]),
  withStoragePool(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          storage_pool: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUnixPermissions':: d.fn(help='`google.string.withUnixPermissions` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the unix_permissions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `unix_permissions` field.\n', args=[]),
  withUnixPermissions(resourceLabel, value): {
    resource+: {
      google_netapp_volume+: {
        [resourceLabel]+: {
          unix_permissions: value,
        },
      },
    },
  },
}
