local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='looker_instance', url='', help='`looker_instance` represents the `google_looker_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  admin_settings:: {
    '#new':: d.fn(help='\n`google.looker_instance.admin_settings.new` constructs a new object with attributes and blocks configured for the `admin_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_email_domains` (`list`): Email domain allowlist for the instance.\n\nDefine the email domains to which your users can deliver Looker (Google Cloud core) content.\nUpdating this list will restart the instance. Updating the allowed email domains from terraform\nmeans the value provided will be considered as the entire list and not an amendment to the\nexisting list of allowed email domains. When `null`, the `allowed_email_domains` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `admin_settings` sub block.\n', args=[]),
    new(
      allowed_email_domains=null
    ):: std.prune(a={
      allowed_email_domains: allowed_email_domains,
    }),
  },
  deny_maintenance_period:: {
    end_date:: {
      '#new':: d.fn(help='\n`google.looker_instance.deny_maintenance_period.end_date.new` constructs a new object with attributes and blocks configured for the `end_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0\nto specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a\nmonth and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without\na year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `end_date` sub block.\n', args=[]),
      new(
        day=null,
        month=null,
        year=null
      ):: std.prune(a={
        day: day,
        month: month,
        year: year,
      }),
    },
    '#new':: d.fn(help='\n`google.looker_instance.deny_maintenance_period.new` constructs a new object with attributes and blocks configured for the `deny_maintenance_period`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_date` (`list[obj]`): Required. Start date of the deny maintenance period When `null`, the `end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.end_date.new](#fn-deny_maintenance_periodend_datenew) constructor.\n  - `start_date` (`list[obj]`): Required. Start date of the deny maintenance period When `null`, the `start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.start_date.new](#fn-deny_maintenance_periodstart_datenew) constructor.\n  - `time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.time.new](#fn-deny_maintenance_periodtimenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deny_maintenance_period` sub block.\n', args=[]),
    new(
      end_date=null,
      start_date=null,
      time=null
    ):: std.prune(a={
      end_date: end_date,
      start_date: start_date,
      time: time,
    }),
    start_date:: {
      '#new':: d.fn(help='\n`google.looker_instance.deny_maintenance_period.start_date.new` constructs a new object with attributes and blocks configured for the `start_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0\nto specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a\nmonth and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without\na year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `start_date` sub block.\n', args=[]),
      new(
        day=null,
        month=null,
        year=null
      ):: std.prune(a={
        day: day,
        month: month,
        year: year,
      }),
    },
    time:: {
      '#new':: d.fn(help='\n`google.looker_instance.deny_maintenance_period.time.new` constructs a new object with attributes and blocks configured for the `time`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time` sub block.\n', args=[]),
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
  encryption_config:: {
    '#new':: d.fn(help='\n`google.looker_instance.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Name of the customer managed encryption key (CMEK) in KMS. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
    new(
      kms_key_name=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  maintenance_window:: {
    '#new':: d.fn(help='\n`google.looker_instance.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day_of_week` (`string`): Required. Day of the week for this MaintenanceWindow (in UTC).\n\n- MONDAY: Monday\n- TUESDAY: Tuesday\n- WEDNESDAY: Wednesday\n- THURSDAY: Thursday\n- FRIDAY: Friday\n- SATURDAY: Saturday\n- SUNDAY: Sunday Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n  - `start_time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `start_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.maintenance_window.start_time.new](#fn-maintenance_windowstart_timenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_window` sub block.\n', args=[]),
    new(
      day_of_week,
      start_time=null
    ):: std.prune(a={
      day_of_week: day_of_week,
      start_time: start_time,
    }),
    start_time:: {
      '#new':: d.fn(help='\n`google.looker_instance.maintenance_window.start_time.new` constructs a new object with attributes and blocks configured for the `start_time`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `start_time` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.looker_instance.new` injects a new `google_looker_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.looker_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.looker_instance` using the reference:\n\n    $._ref.google_looker_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_looker_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `consumer_network` (`string`): Network name in the consumer project in the format of: projects/{project}/global/networks/{network}\nNote that the consumer network may be in a different GCP project than the consumer\nproject that is hosting the Looker Instance. When `null`, the `consumer_network` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.\n  - `platform_edition` (`string`): Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:\n- LOOKER_CORE_TRIAL: trial instance\n- LOOKER_CORE_STANDARD: pay as you go standard instance\n- LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance\n- LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance\n- LOOKER_CORE_EMBED_ANNUAL: subscription embed instance Default value: \u0026#34;LOOKER_CORE_TRIAL\u0026#34; Possible values: [\u0026#34;LOOKER_CORE_TRIAL\u0026#34;, \u0026#34;LOOKER_CORE_STANDARD\u0026#34;, \u0026#34;LOOKER_CORE_STANDARD_ANNUAL\u0026#34;, \u0026#34;LOOKER_CORE_ENTERPRISE_ANNUAL\u0026#34;, \u0026#34;LOOKER_CORE_EMBED_ANNUAL\u0026#34;] When `null`, the `platform_edition` field will be omitted from the resulting object.\n  - `private_ip_enabled` (`bool`): Whether private IP is enabled on the Looker instance. When `null`, the `private_ip_enabled` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `public_ip_enabled` (`bool`): Whether public IP is enabled on the Looker instance. When `null`, the `public_ip_enabled` field will be omitted from the resulting object.\n  - `region` (`string`): The name of the Looker region of the instance. When `null`, the `region` field will be omitted from the resulting object.\n  - `reserved_range` (`string`): Name of a reserved IP address range within the consumer network, to be used for\nprivate service access connection. User may or may not specify this in a request. When `null`, the `reserved_range` field will be omitted from the resulting object.\n  - `admin_settings` (`list[obj]`): Looker instance Admin settings. When `null`, the `admin_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.admin_settings.new](#fn-admin_settingsnew) constructor.\n  - `deny_maintenance_period` (`list[obj]`): Maintenance denial period for this instance.\n\nYou must allow at least 14 days of maintenance availability\nbetween any two deny maintenance periods. When `null`, the `deny_maintenance_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.new](#fn-deny_maintenance_periodnew) constructor.\n  - `encryption_config` (`list[obj]`): Looker instance encryption settings. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `maintenance_window` (`list[obj]`): Maintenance window for an instance.\n\nMaintenance of your instance takes place once a month, and will require\nyour instance to be restarted during updates, which will temporarily\ndisrupt service. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.maintenance_window.new](#fn-maintenance_windownew) constructor.\n  - `oauth_config` (`list[obj]`): Looker Instance OAuth login settings. When `null`, the `oauth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.oauth_config.new](#fn-oauth_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.timeouts.new](#fn-timeoutsnew) constructor.\n  - `user_metadata` (`list[obj]`): Metadata about users for a Looker instance.\n\nThese settings are only available when platform edition LOOKER_CORE_STANDARD is set.\n\nThere are ten Standard and two Developer users included in the cost of the product.\nYou can allocate additional Standard, Viewer, and Developer users for this instance.\nIt is an optional step and can be modified later.\n\nWith the Standard edition of Looker (Google Cloud core), you can provision up to 50\ntotal users, distributed across Viewer, Standard, and Developer. When `null`, the `user_metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.user_metadata.new](#fn-user_metadatanew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    admin_settings=null,
    consumer_network=null,
    deny_maintenance_period=null,
    encryption_config=null,
    maintenance_window=null,
    oauth_config=null,
    platform_edition=null,
    private_ip_enabled=null,
    project=null,
    public_ip_enabled=null,
    region=null,
    reserved_range=null,
    timeouts=null,
    user_metadata=null,
    _meta={}
  ):: tf.withResource(
    type='google_looker_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin_settings=admin_settings,
      consumer_network=consumer_network,
      deny_maintenance_period=deny_maintenance_period,
      encryption_config=encryption_config,
      maintenance_window=maintenance_window,
      name=name,
      oauth_config=oauth_config,
      platform_edition=platform_edition,
      private_ip_enabled=private_ip_enabled,
      project=project,
      public_ip_enabled=public_ip_enabled,
      region=region,
      reserved_range=reserved_range,
      timeouts=timeouts,
      user_metadata=user_metadata
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.looker_instance.newAttrs` constructs a new object with attributes and blocks configured for the `looker_instance`\nTerraform resource.\n\nUnlike [google.looker_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `consumer_network` (`string`): Network name in the consumer project in the format of: projects/{project}/global/networks/{network}\nNote that the consumer network may be in a different GCP project than the consumer\nproject that is hosting the Looker Instance. When `null`, the `consumer_network` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.\n  - `platform_edition` (`string`): Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:\n- LOOKER_CORE_TRIAL: trial instance\n- LOOKER_CORE_STANDARD: pay as you go standard instance\n- LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance\n- LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance\n- LOOKER_CORE_EMBED_ANNUAL: subscription embed instance Default value: &#34;LOOKER_CORE_TRIAL&#34; Possible values: [&#34;LOOKER_CORE_TRIAL&#34;, &#34;LOOKER_CORE_STANDARD&#34;, &#34;LOOKER_CORE_STANDARD_ANNUAL&#34;, &#34;LOOKER_CORE_ENTERPRISE_ANNUAL&#34;, &#34;LOOKER_CORE_EMBED_ANNUAL&#34;] When `null`, the `platform_edition` field will be omitted from the resulting object.\n  - `private_ip_enabled` (`bool`): Whether private IP is enabled on the Looker instance. When `null`, the `private_ip_enabled` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `public_ip_enabled` (`bool`): Whether public IP is enabled on the Looker instance. When `null`, the `public_ip_enabled` field will be omitted from the resulting object.\n  - `region` (`string`): The name of the Looker region of the instance. When `null`, the `region` field will be omitted from the resulting object.\n  - `reserved_range` (`string`): Name of a reserved IP address range within the consumer network, to be used for\nprivate service access connection. User may or may not specify this in a request. When `null`, the `reserved_range` field will be omitted from the resulting object.\n  - `admin_settings` (`list[obj]`): Looker instance Admin settings. When `null`, the `admin_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.admin_settings.new](#fn-admin_settingsnew) constructor.\n  - `deny_maintenance_period` (`list[obj]`): Maintenance denial period for this instance.\n\nYou must allow at least 14 days of maintenance availability\nbetween any two deny maintenance periods. When `null`, the `deny_maintenance_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.new](#fn-deny_maintenance_periodnew) constructor.\n  - `encryption_config` (`list[obj]`): Looker instance encryption settings. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `maintenance_window` (`list[obj]`): Maintenance window for an instance.\n\nMaintenance of your instance takes place once a month, and will require\nyour instance to be restarted during updates, which will temporarily\ndisrupt service. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.maintenance_window.new](#fn-maintenance_windownew) constructor.\n  - `oauth_config` (`list[obj]`): Looker Instance OAuth login settings. When `null`, the `oauth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.oauth_config.new](#fn-oauth_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.timeouts.new](#fn-timeoutsnew) constructor.\n  - `user_metadata` (`list[obj]`): Metadata about users for a Looker instance.\n\nThese settings are only available when platform edition LOOKER_CORE_STANDARD is set.\n\nThere are ten Standard and two Developer users included in the cost of the product.\nYou can allocate additional Standard, Viewer, and Developer users for this instance.\nIt is an optional step and can be modified later.\n\nWith the Standard edition of Looker (Google Cloud core), you can provision up to 50\ntotal users, distributed across Viewer, Standard, and Developer. When `null`, the `user_metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.user_metadata.new](#fn-user_metadatanew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `looker_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    admin_settings=null,
    consumer_network=null,
    deny_maintenance_period=null,
    encryption_config=null,
    maintenance_window=null,
    oauth_config=null,
    platform_edition=null,
    private_ip_enabled=null,
    project=null,
    public_ip_enabled=null,
    region=null,
    reserved_range=null,
    timeouts=null,
    user_metadata=null
  ):: std.prune(a={
    admin_settings: admin_settings,
    consumer_network: consumer_network,
    deny_maintenance_period: deny_maintenance_period,
    encryption_config: encryption_config,
    maintenance_window: maintenance_window,
    name: name,
    oauth_config: oauth_config,
    platform_edition: platform_edition,
    private_ip_enabled: private_ip_enabled,
    project: project,
    public_ip_enabled: public_ip_enabled,
    region: region,
    reserved_range: reserved_range,
    timeouts: timeouts,
    user_metadata: user_metadata,
  }),
  oauth_config:: {
    '#new':: d.fn(help='\n`google.looker_instance.oauth_config.new` constructs a new object with attributes and blocks configured for the `oauth_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_id` (`string`): The client ID for the Oauth config.\n  - `client_secret` (`string`): The client secret for the Oauth config.\n\n**Returns**:\n  - An attribute object that represents the `oauth_config` sub block.\n', args=[]),
    new(
      client_id,
      client_secret
    ):: std.prune(a={
      client_id: client_id,
      client_secret: client_secret,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.looker_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  user_metadata:: {
    '#new':: d.fn(help='\n`google.looker_instance.user_metadata.new` constructs a new object with attributes and blocks configured for the `user_metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `additional_developer_user_count` (`number`): Number of additional Developer Users to allocate to the Looker Instance. When `null`, the `additional_developer_user_count` field will be omitted from the resulting object.\n  - `additional_standard_user_count` (`number`): Number of additional Standard Users to allocate to the Looker Instance. When `null`, the `additional_standard_user_count` field will be omitted from the resulting object.\n  - `additional_viewer_user_count` (`number`): Number of additional Viewer Users to allocate to the Looker Instance. When `null`, the `additional_viewer_user_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `user_metadata` sub block.\n', args=[]),
    new(
      additional_developer_user_count=null,
      additional_standard_user_count=null,
      additional_viewer_user_count=null
    ):: std.prune(a={
      additional_developer_user_count: additional_developer_user_count,
      additional_standard_user_count: additional_standard_user_count,
      additional_viewer_user_count: additional_viewer_user_count,
    }),
  },
  '#withAdminSettings':: d.fn(help='`google.list[obj].withAdminSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the admin_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAdminSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `admin_settings` field.\n', args=[]),
  withAdminSettings(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          admin_settings: value,
        },
      },
    },
  },
  '#withAdminSettingsMixin':: d.fn(help='`google.list[obj].withAdminSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the admin_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdminSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `admin_settings` field.\n', args=[]),
  withAdminSettingsMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          admin_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConsumerNetwork':: d.fn(help='`google.string.withConsumerNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the consumer_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `consumer_network` field.\n', args=[]),
  withConsumerNetwork(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          consumer_network: value,
        },
      },
    },
  },
  '#withDenyMaintenancePeriod':: d.fn(help='`google.list[obj].withDenyMaintenancePeriod` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deny_maintenance_period field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDenyMaintenancePeriodMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deny_maintenance_period` field.\n', args=[]),
  withDenyMaintenancePeriod(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          deny_maintenance_period: value,
        },
      },
    },
  },
  '#withDenyMaintenancePeriodMixin':: d.fn(help='`google.list[obj].withDenyMaintenancePeriodMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deny_maintenance_period field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDenyMaintenancePeriod](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deny_maintenance_period` field.\n', args=[]),
  withDenyMaintenancePeriodMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          deny_maintenance_period+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEncryptionConfig':: d.fn(help='`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfig(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  '#withEncryptionConfigMixin':: d.fn(help='`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfigMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMaintenanceWindow':: d.fn(help='`google.list[obj].withMaintenanceWindow` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenanceWindowMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindow(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          maintenance_window: value,
        },
      },
    },
  },
  '#withMaintenanceWindowMixin':: d.fn(help='`google.list[obj].withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceWindow](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindowMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          maintenance_window+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOauthConfig':: d.fn(help='`google.list[obj].withOauthConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oauth_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOauthConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oauth_config` field.\n', args=[]),
  withOauthConfig(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          oauth_config: value,
        },
      },
    },
  },
  '#withOauthConfigMixin':: d.fn(help='`google.list[obj].withOauthConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oauth_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOauthConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oauth_config` field.\n', args=[]),
  withOauthConfigMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          oauth_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPlatformEdition':: d.fn(help='`google.string.withPlatformEdition` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the platform_edition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `platform_edition` field.\n', args=[]),
  withPlatformEdition(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          platform_edition: value,
        },
      },
    },
  },
  '#withPrivateIpEnabled':: d.fn(help='`google.bool.withPrivateIpEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the private_ip_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `private_ip_enabled` field.\n', args=[]),
  withPrivateIpEnabled(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          private_ip_enabled: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublicIpEnabled':: d.fn(help='`google.bool.withPublicIpEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the public_ip_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `public_ip_enabled` field.\n', args=[]),
  withPublicIpEnabled(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          public_ip_enabled: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReservedRange':: d.fn(help='`google.string.withReservedRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the reserved_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `reserved_range` field.\n', args=[]),
  withReservedRange(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          reserved_range: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserMetadata':: d.fn(help='`google.list[obj].withUserMetadata` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the user_metadata field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withUserMetadataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `user_metadata` field.\n', args=[]),
  withUserMetadata(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          user_metadata: value,
        },
      },
    },
  },
  '#withUserMetadataMixin':: d.fn(help='`google.list[obj].withUserMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the user_metadata field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withUserMetadata](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `user_metadata` field.\n', args=[]),
  withUserMetadataMixin(resourceLabel, value): {
    resource+: {
      google_looker_instance+: {
        [resourceLabel]+: {
          user_metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
