local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='redis_instance', url='', help='`redis_instance` represents the `google_redis_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  maintenance_policy:: {
    '#new':: d.fn(help='\n`google.redis_instance.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Optional. Description of what this policy is for.\nCreate/Update methods return INVALID_ARGUMENT if the\nlength is greater than 512. When `null`, the `description` field will be omitted from the resulting object.\n  - `weekly_maintenance_window` (`list[obj]`): Optional. Maintenance window that is applied to resources covered by this policy.\nMinimum 1. For the current version, the maximum number\nof weekly_window is expected to be one. When `null`, the `weekly_maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.weekly_maintenance_window.new](#fn-maintenance_policyweekly_maintenance_windownew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_policy` sub block.\n', args=[]),
    new(
      description=null,
      weekly_maintenance_window=null
    ):: std.prune(a={
      description: description,
      weekly_maintenance_window: weekly_maintenance_window,
    }),
    weekly_maintenance_window:: {
      '#new':: d.fn(help='\n`google.redis_instance.maintenance_policy.weekly_maintenance_window.new` constructs a new object with attributes and blocks configured for the `weekly_maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`string`): Required. The day of week that maintenance updates occur.\n\n- DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.\n- MONDAY: Monday\n- TUESDAY: Tuesday\n- WEDNESDAY: Wednesday\n- THURSDAY: Thursday\n- FRIDAY: Friday\n- SATURDAY: Saturday\n- SUNDAY: Sunday Possible values: [&#34;DAY_OF_WEEK_UNSPECIFIED&#34;, &#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n  - `start_time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `start_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.weekly_maintenance_window.start_time.new](#fn-maintenance_policymaintenance_policystart_timenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weekly_maintenance_window` sub block.\n', args=[]),
      new(
        day,
        start_time=null
      ):: std.prune(a={
        day: day,
        start_time: start_time,
      }),
      start_time:: {
        '#new':: d.fn(help='\n`google.redis_instance.maintenance_policy.weekly_maintenance_window.start_time.new` constructs a new object with attributes and blocks configured for the `start_time`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.\nAn API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59.\nAn API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `start_time` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.redis_instance.new` injects a new `google_redis_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.redis_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.redis_instance` using the reference:\n\n    $._ref.google_redis_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_redis_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `alternative_location_id` (`string`): Only applicable to STANDARD_HA tier which protects the instance\nagainst zonal failures by provisioning it across two zones.\nIf provided, it must be a different zone from the one provided in\n[locationId]. When `null`, the `alternative_location_id` field will be omitted from the resulting object.\n  - `auth_enabled` (`bool`): Optional. Indicates whether OSS Redis AUTH is enabled for the\ninstance. If set to \u0026#34;true\u0026#34; AUTH is enabled on the instance.\nDefault value is \u0026#34;false\u0026#34; meaning AUTH is disabled. When `null`, the `auth_enabled` field will be omitted from the resulting object.\n  - `authorized_network` (`string`): The full name of the Google Compute Engine network to which the\ninstance is connected. If left unspecified, the default network\nwill be used. When `null`, the `authorized_network` field will be omitted from the resulting object.\n  - `connect_mode` (`string`): The connection mode of the Redis instance. Default value: \u0026#34;DIRECT_PEERING\u0026#34; Possible values: [\u0026#34;DIRECT_PEERING\u0026#34;, \u0026#34;PRIVATE_SERVICE_ACCESS\u0026#34;] When `null`, the `connect_mode` field will be omitted from the resulting object.\n  - `customer_managed_key` (`string`): Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis\ninstance. If this is provided, CMEK is enabled. When `null`, the `customer_managed_key` field will be omitted from the resulting object.\n  - `display_name` (`string`): An arbitrary and optional user-provided name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location_id` (`string`): The zone where the instance will be provisioned. If not provided,\nthe service will choose a zone for the instance. For STANDARD_HA tier,\ninstances will be created across two zones for protection against\nzonal failures. If [alternativeLocationId] is also provided, it must\nbe different from [locationId]. When `null`, the `location_id` field will be omitted from the resulting object.\n  - `memory_size_gb` (`number`): Redis memory size in GiB.\n  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `read_replicas_mode` (`string`): Optional. Read replica mode. Can only be specified when trying to create the instance.\nIf not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.\n- READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the\ninstance cannot scale up or down the number of replicas.\n- READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance\ncan scale up and down the number of replicas. Possible values: [\u0026#34;READ_REPLICAS_DISABLED\u0026#34;, \u0026#34;READ_REPLICAS_ENABLED\u0026#34;] When `null`, the `read_replicas_mode` field will be omitted from the resulting object.\n  - `redis_configs` (`obj`): Redis configuration parameters, according to http://redis.io/topics/config.\nPlease check Memorystore documentation for the list of supported parameters:\nhttps://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs When `null`, the `redis_configs` field will be omitted from the resulting object.\n  - `redis_version` (`string`): The version of Redis software. If not provided, latest supported\nversion will be used. Please check the API documentation linked\nat the top for the latest valid values. When `null`, the `redis_version` field will be omitted from the resulting object.\n  - `region` (`string`): The name of the Redis region of the instance. When `null`, the `region` field will be omitted from the resulting object.\n  - `replica_count` (`number`): Optional. The number of replica nodes. The valid range for the Standard Tier with\nread replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled\nfor a Standard Tier instance, the only valid value is 1 and the default is 1.\nThe valid value for basic tier is 0 and the default is also 0. When `null`, the `replica_count` field will be omitted from the resulting object.\n  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this\ninstance. If not provided, the service will choose an unused /29\nblock, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be\nunique and non-overlapping with existing subnets in an authorized\nnetwork. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.\n  - `secondary_ip_range` (`string`): Optional. Additional IP range for node placement. Required when enabling read replicas on\nan existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or\n\u0026#34;auto\u0026#34;. For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address\nrange associated with the private service access connection, or \u0026#34;auto\u0026#34;. When `null`, the `secondary_ip_range` field will be omitted from the resulting object.\n  - `tier` (`string`): The service tier of the instance. Must be one of these values:\n\n- BASIC: standalone instance\n- STANDARD_HA: highly available primary/replica instances Default value: \u0026#34;BASIC\u0026#34; Possible values: [\u0026#34;BASIC\u0026#34;, \u0026#34;STANDARD_HA\u0026#34;] When `null`, the `tier` field will be omitted from the resulting object.\n  - `transit_encryption_mode` (`string`): The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.\n\n- SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication Default value: \u0026#34;DISABLED\u0026#34; Possible values: [\u0026#34;SERVER_AUTHENTICATION\u0026#34;, \u0026#34;DISABLED\u0026#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.\n  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `persistence_config` (`list[obj]`): Persistence configuration for an instance. When `null`, the `persistence_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.persistence_config.new](#fn-persistence_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    memory_size_gb,
    name,
    alternative_location_id=null,
    auth_enabled=null,
    authorized_network=null,
    connect_mode=null,
    customer_managed_key=null,
    display_name=null,
    labels=null,
    location_id=null,
    maintenance_policy=null,
    persistence_config=null,
    project=null,
    read_replicas_mode=null,
    redis_configs=null,
    redis_version=null,
    region=null,
    replica_count=null,
    reserved_ip_range=null,
    secondary_ip_range=null,
    tier=null,
    timeouts=null,
    transit_encryption_mode=null,
    _meta={}
  ):: tf.withResource(
    type='google_redis_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      alternative_location_id=alternative_location_id,
      auth_enabled=auth_enabled,
      authorized_network=authorized_network,
      connect_mode=connect_mode,
      customer_managed_key=customer_managed_key,
      display_name=display_name,
      labels=labels,
      location_id=location_id,
      maintenance_policy=maintenance_policy,
      memory_size_gb=memory_size_gb,
      name=name,
      persistence_config=persistence_config,
      project=project,
      read_replicas_mode=read_replicas_mode,
      redis_configs=redis_configs,
      redis_version=redis_version,
      region=region,
      replica_count=replica_count,
      reserved_ip_range=reserved_ip_range,
      secondary_ip_range=secondary_ip_range,
      tier=tier,
      timeouts=timeouts,
      transit_encryption_mode=transit_encryption_mode
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.redis_instance.newAttrs` constructs a new object with attributes and blocks configured for the `redis_instance`\nTerraform resource.\n\nUnlike [google.redis_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `alternative_location_id` (`string`): Only applicable to STANDARD_HA tier which protects the instance\nagainst zonal failures by provisioning it across two zones.\nIf provided, it must be a different zone from the one provided in\n[locationId]. When `null`, the `alternative_location_id` field will be omitted from the resulting object.\n  - `auth_enabled` (`bool`): Optional. Indicates whether OSS Redis AUTH is enabled for the\ninstance. If set to &#34;true&#34; AUTH is enabled on the instance.\nDefault value is &#34;false&#34; meaning AUTH is disabled. When `null`, the `auth_enabled` field will be omitted from the resulting object.\n  - `authorized_network` (`string`): The full name of the Google Compute Engine network to which the\ninstance is connected. If left unspecified, the default network\nwill be used. When `null`, the `authorized_network` field will be omitted from the resulting object.\n  - `connect_mode` (`string`): The connection mode of the Redis instance. Default value: &#34;DIRECT_PEERING&#34; Possible values: [&#34;DIRECT_PEERING&#34;, &#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `connect_mode` field will be omitted from the resulting object.\n  - `customer_managed_key` (`string`): Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis\ninstance. If this is provided, CMEK is enabled. When `null`, the `customer_managed_key` field will be omitted from the resulting object.\n  - `display_name` (`string`): An arbitrary and optional user-provided name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location_id` (`string`): The zone where the instance will be provisioned. If not provided,\nthe service will choose a zone for the instance. For STANDARD_HA tier,\ninstances will be created across two zones for protection against\nzonal failures. If [alternativeLocationId] is also provided, it must\nbe different from [locationId]. When `null`, the `location_id` field will be omitted from the resulting object.\n  - `memory_size_gb` (`number`): Redis memory size in GiB.\n  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `read_replicas_mode` (`string`): Optional. Read replica mode. Can only be specified when trying to create the instance.\nIf not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.\n- READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the\ninstance cannot scale up or down the number of replicas.\n- READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance\ncan scale up and down the number of replicas. Possible values: [&#34;READ_REPLICAS_DISABLED&#34;, &#34;READ_REPLICAS_ENABLED&#34;] When `null`, the `read_replicas_mode` field will be omitted from the resulting object.\n  - `redis_configs` (`obj`): Redis configuration parameters, according to http://redis.io/topics/config.\nPlease check Memorystore documentation for the list of supported parameters:\nhttps://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs When `null`, the `redis_configs` field will be omitted from the resulting object.\n  - `redis_version` (`string`): The version of Redis software. If not provided, latest supported\nversion will be used. Please check the API documentation linked\nat the top for the latest valid values. When `null`, the `redis_version` field will be omitted from the resulting object.\n  - `region` (`string`): The name of the Redis region of the instance. When `null`, the `region` field will be omitted from the resulting object.\n  - `replica_count` (`number`): Optional. The number of replica nodes. The valid range for the Standard Tier with\nread replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled\nfor a Standard Tier instance, the only valid value is 1 and the default is 1.\nThe valid value for basic tier is 0 and the default is also 0. When `null`, the `replica_count` field will be omitted from the resulting object.\n  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this\ninstance. If not provided, the service will choose an unused /29\nblock, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be\nunique and non-overlapping with existing subnets in an authorized\nnetwork. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.\n  - `secondary_ip_range` (`string`): Optional. Additional IP range for node placement. Required when enabling read replicas on\nan existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or\n&#34;auto&#34;. For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address\nrange associated with the private service access connection, or &#34;auto&#34;. When `null`, the `secondary_ip_range` field will be omitted from the resulting object.\n  - `tier` (`string`): The service tier of the instance. Must be one of these values:\n\n- BASIC: standalone instance\n- STANDARD_HA: highly available primary/replica instances Default value: &#34;BASIC&#34; Possible values: [&#34;BASIC&#34;, &#34;STANDARD_HA&#34;] When `null`, the `tier` field will be omitted from the resulting object.\n  - `transit_encryption_mode` (`string`): The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.\n\n- SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication Default value: &#34;DISABLED&#34; Possible values: [&#34;SERVER_AUTHENTICATION&#34;, &#34;DISABLED&#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.\n  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `persistence_config` (`list[obj]`): Persistence configuration for an instance. When `null`, the `persistence_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.persistence_config.new](#fn-persistence_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `redis_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    memory_size_gb,
    name,
    alternative_location_id=null,
    auth_enabled=null,
    authorized_network=null,
    connect_mode=null,
    customer_managed_key=null,
    display_name=null,
    labels=null,
    location_id=null,
    maintenance_policy=null,
    persistence_config=null,
    project=null,
    read_replicas_mode=null,
    redis_configs=null,
    redis_version=null,
    region=null,
    replica_count=null,
    reserved_ip_range=null,
    secondary_ip_range=null,
    tier=null,
    timeouts=null,
    transit_encryption_mode=null
  ):: std.prune(a={
    alternative_location_id: alternative_location_id,
    auth_enabled: auth_enabled,
    authorized_network: authorized_network,
    connect_mode: connect_mode,
    customer_managed_key: customer_managed_key,
    display_name: display_name,
    labels: labels,
    location_id: location_id,
    maintenance_policy: maintenance_policy,
    memory_size_gb: memory_size_gb,
    name: name,
    persistence_config: persistence_config,
    project: project,
    read_replicas_mode: read_replicas_mode,
    redis_configs: redis_configs,
    redis_version: redis_version,
    region: region,
    replica_count: replica_count,
    reserved_ip_range: reserved_ip_range,
    secondary_ip_range: secondary_ip_range,
    tier: tier,
    timeouts: timeouts,
    transit_encryption_mode: transit_encryption_mode,
  }),
  persistence_config:: {
    '#new':: d.fn(help='\n`google.redis_instance.persistence_config.new` constructs a new object with attributes and blocks configured for the `persistence_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `persistence_mode` (`string`): Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.\n\n- DISABLED: \tPersistence is disabled for the instance, and any existing snapshots are deleted.\n- RDB: RDB based Persistence is enabled. Possible values: [&#34;DISABLED&#34;, &#34;RDB&#34;] When `null`, the `persistence_mode` field will be omitted from the resulting object.\n  - `rdb_snapshot_period` (`string`): Optional. Available snapshot periods for scheduling.\n\n- ONE_HOUR:\tSnapshot every 1 hour.\n- SIX_HOURS:\tSnapshot every 6 hours.\n- TWELVE_HOURS:\tSnapshot every 12 hours.\n- TWENTY_FOUR_HOURS:\tSnapshot every 24 hours. Possible values: [&#34;ONE_HOUR&#34;, &#34;SIX_HOURS&#34;, &#34;TWELVE_HOURS&#34;, &#34;TWENTY_FOUR_HOURS&#34;] When `null`, the `rdb_snapshot_period` field will be omitted from the resulting object.\n  - `rdb_snapshot_start_time` (`string`): Optional. Date and time that the first snapshot was/will be attempted,\nand to which future snapshots will be aligned. If not provided,\nthe current time will be used.\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution\nand up to nine fractional digits.\nExamples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `rdb_snapshot_start_time` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `persistence_config` sub block.\n', args=[]),
    new(
      persistence_mode=null,
      rdb_snapshot_period=null,
      rdb_snapshot_start_time=null
    ):: std.prune(a={
      persistence_mode: persistence_mode,
      rdb_snapshot_period: rdb_snapshot_period,
      rdb_snapshot_start_time: rdb_snapshot_start_time,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.redis_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAlternativeLocationId':: d.fn(help='`google.string.withAlternativeLocationId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the alternative_location_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `alternative_location_id` field.\n', args=[]),
  withAlternativeLocationId(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          alternative_location_id: value,
        },
      },
    },
  },
  '#withAuthEnabled':: d.fn(help='`google.bool.withAuthEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the auth_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `auth_enabled` field.\n', args=[]),
  withAuthEnabled(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          auth_enabled: value,
        },
      },
    },
  },
  '#withAuthorizedNetwork':: d.fn(help='`google.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorized_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorized_network` field.\n', args=[]),
  withAuthorizedNetwork(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  '#withConnectMode':: d.fn(help='`google.string.withConnectMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connect_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connect_mode` field.\n', args=[]),
  withConnectMode(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          connect_mode: value,
        },
      },
    },
  },
  '#withCustomerManagedKey':: d.fn(help='`google.string.withCustomerManagedKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the customer_managed_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `customer_managed_key` field.\n', args=[]),
  withCustomerManagedKey(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          customer_managed_key: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocationId':: d.fn(help='`google.string.withLocationId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location_id` field.\n', args=[]),
  withLocationId(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          location_id: value,
        },
      },
    },
  },
  '#withMaintenancePolicy':: d.fn(help='`google.list[obj].withMaintenancePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenancePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicy(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  '#withMaintenancePolicyMixin':: d.fn(help='`google.list[obj].withMaintenancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenancePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicyMixin(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMemorySizeGb':: d.fn(help='`google.number.withMemorySizeGb` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the memory_size_gb field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `memory_size_gb` field.\n', args=[]),
  withMemorySizeGb(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          memory_size_gb: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPersistenceConfig':: d.fn(help='`google.list[obj].withPersistenceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the persistence_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPersistenceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `persistence_config` field.\n', args=[]),
  withPersistenceConfig(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          persistence_config: value,
        },
      },
    },
  },
  '#withPersistenceConfigMixin':: d.fn(help='`google.list[obj].withPersistenceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the persistence_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPersistenceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `persistence_config` field.\n', args=[]),
  withPersistenceConfigMixin(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          persistence_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReadReplicasMode':: d.fn(help='`google.string.withReadReplicasMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the read_replicas_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `read_replicas_mode` field.\n', args=[]),
  withReadReplicasMode(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          read_replicas_mode: value,
        },
      },
    },
  },
  '#withRedisConfigs':: d.fn(help='`google.obj.withRedisConfigs` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the redis_configs field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `redis_configs` field.\n', args=[]),
  withRedisConfigs(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          redis_configs: value,
        },
      },
    },
  },
  '#withRedisVersion':: d.fn(help='`google.string.withRedisVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the redis_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `redis_version` field.\n', args=[]),
  withRedisVersion(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          redis_version: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReplicaCount':: d.fn(help='`google.number.withReplicaCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the replica_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `replica_count` field.\n', args=[]),
  withReplicaCount(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          replica_count: value,
        },
      },
    },
  },
  '#withReservedIpRange':: d.fn(help='`google.string.withReservedIpRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the reserved_ip_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `reserved_ip_range` field.\n', args=[]),
  withReservedIpRange(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          reserved_ip_range: value,
        },
      },
    },
  },
  '#withSecondaryIpRange':: d.fn(help='`google.string.withSecondaryIpRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the secondary_ip_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `secondary_ip_range` field.\n', args=[]),
  withSecondaryIpRange(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          secondary_ip_range: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`google.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransitEncryptionMode':: d.fn(help='`google.string.withTransitEncryptionMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the transit_encryption_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `transit_encryption_mode` field.\n', args=[]),
  withTransitEncryptionMode(resourceLabel, value): {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          transit_encryption_mode: value,
        },
      },
    },
  },
}
