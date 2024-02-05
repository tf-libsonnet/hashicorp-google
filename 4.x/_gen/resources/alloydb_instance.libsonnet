local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_instance', url='', help='`alloydb_instance` represents the `google_alloydb_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  client_connection_config:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.client_connection_config.new` constructs a new object with attributes and blocks configured for the `client_connection_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `require_connectors` (`bool`): Configuration to enforce connectors only (ex: AuthProxy) connections to the database. When `null`, the `require_connectors` field will be omitted from the resulting object.\n  - `ssl_config` (`list[obj]`): SSL config option for this instance. When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.client_connection_config.ssl_config.new](#fn-client_connection_configssl_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `client_connection_config` sub block.\n', args=[]),
    new(
      require_connectors=null,
      ssl_config=null
    ):: std.prune(a={
      require_connectors: require_connectors,
      ssl_config: ssl_config,
    }),
    ssl_config:: {
      '#new':: d.fn(help='\n`google.alloydb_instance.client_connection_config.ssl_config.new` constructs a new object with attributes and blocks configured for the `ssl_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssl_mode` (`string`): SSL mode. Specifies client-server SSL/TLS connection behavior. Possible values: [&#34;ENCRYPTED_ONLY&#34;, &#34;ALLOW_UNENCRYPTED_AND_ENCRYPTED&#34;] When `null`, the `ssl_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ssl_config` sub block.\n', args=[]),
      new(
        ssl_mode=null
      ):: std.prune(a={
        ssl_mode: ssl_mode,
      }),
    },
  },
  machine_config:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.machine_config.new` constructs a new object with attributes and blocks configured for the `machine_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_count` (`number`): The number of CPU&#39;s in the VM instance. When `null`, the `cpu_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `machine_config` sub block.\n', args=[]),
    new(
      cpu_count=null
    ):: std.prune(a={
      cpu_count: cpu_count,
    }),
  },
  '#new':: d.fn(help="\n`google.alloydb_instance.new` injects a new `google_alloydb_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_instance` using the reference:\n\n    $._ref.google_alloydb_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `availability_type` (`string`): \u0026#39;Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.\nNote that primary and read instances can have different availability types.\nOnly READ_POOL instance supports ZONAL type. Users can\u0026#39;t specify the zone for READ_POOL instance.\nZone is automatically chosen from the list of zones in the region specified.\nRead pool of size 1 can only have zonal availability. Read pools with node count of 2 or more\ncan have regional availability (nodes are present in 2 or more zones in a region).\u0026#39; Possible values: [\u0026#34;AVAILABILITY_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;ZONAL\u0026#34;, \u0026#34;REGIONAL\u0026#34;] When `null`, the `availability_type` field will be omitted from the resulting object.\n  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/clusters/{cluster_id}\u0026#39;\n  - `database_flags` (`obj`): Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. When `null`, the `database_flags` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gce_zone` (`string`): The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. When `null`, the `gce_zone` field will be omitted from the resulting object.\n  - `instance_id` (`string`): The ID of the alloydb instance.\n  - `instance_type` (`string`): The type of the instance.\nIf the instance type is READ_POOL, provide the associated PRIMARY/SECONDARY instance in the \u0026#39;depends_on\u0026#39; meta-data attribute.\nIf the instance type is SECONDARY, point to the cluster_type of the associated secondary cluster instead of mentioning SECONDARY.\nExample: {instance_type = google_alloydb_cluster.\u0026lt;secondary_cluster_name\u0026gt;.cluster_type} instead of {instance_type = SECONDARY}\nIf the instance type is SECONDARY, the terraform delete instance operation does not delete the secondary instance but abandons it instead.\nUse deletion_policy = \u0026#34;FORCE\u0026#34; in the associated secondary cluster and delete the cluster forcefully to delete the secondary cluster as well its associated secondary instance.\nUsers can undo the delete secondary instance action by importing the deleted secondary instance by calling terraform import. Possible values: [\u0026#34;PRIMARY\u0026#34;, \u0026#34;READ_POOL\u0026#34;, \u0026#34;SECONDARY\u0026#34;]\n  - `labels` (`obj`): User-defined labels for the alloydb instance.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `client_connection_config` (`list[obj]`): Client connection specific configurations. When `null`, the `client_connection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.client_connection_config.new](#fn-client_connection_confignew) constructor.\n  - `machine_config` (`list[obj]`): Configurations for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.machine_config.new](#fn-machine_confignew) constructor.\n  - `query_insights_config` (`list[obj]`): Configuration for query insights. When `null`, the `query_insights_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.query_insights_config.new](#fn-query_insights_confignew) constructor.\n  - `read_pool_config` (`list[obj]`): Read pool specific config. If the instance type is READ_POOL, this configuration must be provided. When `null`, the `read_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.read_pool_config.new](#fn-read_pool_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    instance_id,
    instance_type,
    annotations=null,
    availability_type=null,
    client_connection_config=null,
    database_flags=null,
    display_name=null,
    gce_zone=null,
    labels=null,
    machine_config=null,
    query_insights_config=null,
    read_pool_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      availability_type=availability_type,
      client_connection_config=client_connection_config,
      cluster=cluster,
      database_flags=database_flags,
      display_name=display_name,
      gce_zone=gce_zone,
      instance_id=instance_id,
      instance_type=instance_type,
      labels=labels,
      machine_config=machine_config,
      query_insights_config=query_insights_config,
      read_pool_config=read_pool_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_instance.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_instance`\nTerraform resource.\n\nUnlike [google.alloydb_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `availability_type` (`string`): &#39;Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.\nNote that primary and read instances can have different availability types.\nOnly READ_POOL instance supports ZONAL type. Users can&#39;t specify the zone for READ_POOL instance.\nZone is automatically chosen from the list of zones in the region specified.\nRead pool of size 1 can only have zonal availability. Read pools with node count of 2 or more\ncan have regional availability (nodes are present in 2 or more zones in a region).&#39; Possible values: [&#34;AVAILABILITY_TYPE_UNSPECIFIED&#34;, &#34;ZONAL&#34;, &#34;REGIONAL&#34;] When `null`, the `availability_type` field will be omitted from the resulting object.\n  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format\n&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;\n  - `database_flags` (`obj`): Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. When `null`, the `database_flags` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gce_zone` (`string`): The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. When `null`, the `gce_zone` field will be omitted from the resulting object.\n  - `instance_id` (`string`): The ID of the alloydb instance.\n  - `instance_type` (`string`): The type of the instance.\nIf the instance type is READ_POOL, provide the associated PRIMARY/SECONDARY instance in the &#39;depends_on&#39; meta-data attribute.\nIf the instance type is SECONDARY, point to the cluster_type of the associated secondary cluster instead of mentioning SECONDARY.\nExample: {instance_type = google_alloydb_cluster.&lt;secondary_cluster_name&gt;.cluster_type} instead of {instance_type = SECONDARY}\nIf the instance type is SECONDARY, the terraform delete instance operation does not delete the secondary instance but abandons it instead.\nUse deletion_policy = &#34;FORCE&#34; in the associated secondary cluster and delete the cluster forcefully to delete the secondary cluster as well its associated secondary instance.\nUsers can undo the delete secondary instance action by importing the deleted secondary instance by calling terraform import. Possible values: [&#34;PRIMARY&#34;, &#34;READ_POOL&#34;, &#34;SECONDARY&#34;]\n  - `labels` (`obj`): User-defined labels for the alloydb instance.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `client_connection_config` (`list[obj]`): Client connection specific configurations. When `null`, the `client_connection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.client_connection_config.new](#fn-client_connection_confignew) constructor.\n  - `machine_config` (`list[obj]`): Configurations for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.machine_config.new](#fn-machine_confignew) constructor.\n  - `query_insights_config` (`list[obj]`): Configuration for query insights. When `null`, the `query_insights_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.query_insights_config.new](#fn-query_insights_confignew) constructor.\n  - `read_pool_config` (`list[obj]`): Read pool specific config. If the instance type is READ_POOL, this configuration must be provided. When `null`, the `read_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.read_pool_config.new](#fn-read_pool_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    instance_id,
    instance_type,
    annotations=null,
    availability_type=null,
    client_connection_config=null,
    database_flags=null,
    display_name=null,
    gce_zone=null,
    labels=null,
    machine_config=null,
    query_insights_config=null,
    read_pool_config=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    availability_type: availability_type,
    client_connection_config: client_connection_config,
    cluster: cluster,
    database_flags: database_flags,
    display_name: display_name,
    gce_zone: gce_zone,
    instance_id: instance_id,
    instance_type: instance_type,
    labels: labels,
    machine_config: machine_config,
    query_insights_config: query_insights_config,
    read_pool_config: read_pool_config,
    timeouts: timeouts,
  }),
  query_insights_config:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.query_insights_config.new` constructs a new object with attributes and blocks configured for the `query_insights_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `query_plans_per_minute` (`number`): Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid. When `null`, the `query_plans_per_minute` field will be omitted from the resulting object.\n  - `query_string_length` (`number`): Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid. When `null`, the `query_string_length` field will be omitted from the resulting object.\n  - `record_application_tags` (`bool`): Record application tags for an instance. This flag is turned &#34;on&#34; by default. When `null`, the `record_application_tags` field will be omitted from the resulting object.\n  - `record_client_address` (`bool`): Record client address for an instance. Client address is PII information. This flag is turned &#34;on&#34; by default. When `null`, the `record_client_address` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `query_insights_config` sub block.\n', args=[]),
    new(
      query_plans_per_minute=null,
      query_string_length=null,
      record_application_tags=null,
      record_client_address=null
    ):: std.prune(a={
      query_plans_per_minute: query_plans_per_minute,
      query_string_length: query_string_length,
      record_application_tags: record_application_tags,
      record_client_address: record_client_address,
    }),
  },
  read_pool_config:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.read_pool_config.new` constructs a new object with attributes and blocks configured for the `read_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_count` (`number`): Read capacity, i.e. number of nodes in a read pool instance. When `null`, the `node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `read_pool_config` sub block.\n', args=[]),
    new(
      node_count=null
    ):: std.prune(a={
      node_count: node_count,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.alloydb_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_alloydb_instance+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAvailabilityType':: d.fn(help='`google.string.withAvailabilityType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the availability_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `availability_type` field.\n', args=[]),
  withAvailabilityType(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          availability_type: value,
        },
      },
    },
  },
  '#withClientConnectionConfig':: d.fn(help='`google.list[obj].withClientConnectionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the client_connection_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withClientConnectionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `client_connection_config` field.\n', args=[]),
  withClientConnectionConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          client_connection_config: value,
        },
      },
    },
  },
  '#withClientConnectionConfigMixin':: d.fn(help='`google.list[obj].withClientConnectionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the client_connection_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withClientConnectionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `client_connection_config` field.\n', args=[]),
  withClientConnectionConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          client_connection_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withDatabaseFlags':: d.fn(help='`google.obj.withDatabaseFlags` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the database_flags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `database_flags` field.\n', args=[]),
  withDatabaseFlags(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          database_flags: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGceZone':: d.fn(help='`google.string.withGceZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the gce_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `gce_zone` field.\n', args=[]),
  withGceZone(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          gce_zone: value,
        },
      },
    },
  },
  '#withInstanceId':: d.fn(help='`google.string.withInstanceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_id` field.\n', args=[]),
  withInstanceId(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  '#withInstanceType':: d.fn(help='`google.string.withInstanceType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_type` field.\n', args=[]),
  withInstanceType(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          instance_type: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMachineConfig':: d.fn(help='`google.list[obj].withMachineConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the machine_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMachineConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `machine_config` field.\n', args=[]),
  withMachineConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          machine_config: value,
        },
      },
    },
  },
  '#withMachineConfigMixin':: d.fn(help='`google.list[obj].withMachineConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the machine_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMachineConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `machine_config` field.\n', args=[]),
  withMachineConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          machine_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withQueryInsightsConfig':: d.fn(help='`google.list[obj].withQueryInsightsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the query_insights_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withQueryInsightsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `query_insights_config` field.\n', args=[]),
  withQueryInsightsConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          query_insights_config: value,
        },
      },
    },
  },
  '#withQueryInsightsConfigMixin':: d.fn(help='`google.list[obj].withQueryInsightsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the query_insights_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withQueryInsightsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `query_insights_config` field.\n', args=[]),
  withQueryInsightsConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          query_insights_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withReadPoolConfig':: d.fn(help='`google.list[obj].withReadPoolConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the read_pool_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReadPoolConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `read_pool_config` field.\n', args=[]),
  withReadPoolConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          read_pool_config: value,
        },
      },
    },
  },
  '#withReadPoolConfigMixin':: d.fn(help='`google.list[obj].withReadPoolConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the read_pool_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReadPoolConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `read_pool_config` field.\n', args=[]),
  withReadPoolConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          read_pool_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
