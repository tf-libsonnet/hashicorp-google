local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataproc_metastore_service', url='', help='`dataproc_metastore_service` represents the `google_dataproc_metastore_service` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_config:: {
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key` (`string`): The fully qualified customer provided Cloud KMS key name to use for customer data encryption.\nUse the following format: &#39;projects/([^/]&#43;)/locations/([^/]&#43;)/keyRings/([^/]&#43;)/cryptoKeys/([^/]&#43;)&#39;\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
    new(
      kms_key
    ):: std.prune(a={
      kms_key: kms_key,
    }),
  },
  hive_metastore_config:: {
    auxiliary_versions:: {
      '#new':: d.fn(help='\n`google.dataproc_metastore_service.hive_metastore_config.auxiliary_versions.new` constructs a new object with attributes and blocks configured for the `auxiliary_versions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config_overrides` (`obj`): A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version&#39;s overrides.\nIf keys are present in both the auxiliary version&#39;s overrides and the primary version&#39;s overrides, the value from the auxiliary version&#39;s overrides takes precedence. When `null`, the `config_overrides` field will be omitted from the resulting object.\n  - `key` (`string`): Set the `key` field on the resulting object.\n  - `version` (`string`): The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service&#39;s version.\n\n**Returns**:\n  - An attribute object that represents the `auxiliary_versions` sub block.\n', args=[]),
      new(
        key,
        version,
        config_overrides=null
      ):: std.prune(a={
        config_overrides: config_overrides,
        key: key,
        version: version,
      }),
    },
    kerberos_config:: {
      keytab:: {
        '#new':: d.fn(help='\n`google.dataproc_metastore_service.hive_metastore_config.kerberos_config.keytab.new` constructs a new object with attributes and blocks configured for the `keytab`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_secret` (`string`): The relative resource name of a Secret Manager secret version, in the following form:\n\n&#34;projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}&#34;.\n\n**Returns**:\n  - An attribute object that represents the `keytab` sub block.\n', args=[]),
        new(
          cloud_secret
        ):: std.prune(a={
          cloud_secret: cloud_secret,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_metastore_service.hive_metastore_config.kerberos_config.new` constructs a new object with attributes and blocks configured for the `kerberos_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `krb5_config_gcs_uri` (`string`): A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.\n  - `principal` (`string`): A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form &#34;primary/instance@REALM&#34;, but there is no exact format.\n  - `keytab` (`list[obj]`): A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC). When `null`, the `keytab` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.kerberos_config.keytab.new](#fn-hive_metastore_confighive_metastore_configkeytabnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `kerberos_config` sub block.\n', args=[]),
      new(
        krb5_config_gcs_uri,
        principal,
        keytab=null
      ):: std.prune(a={
        keytab: keytab,
        krb5_config_gcs_uri: krb5_config_gcs_uri,
        principal: principal,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.hive_metastore_config.new` constructs a new object with attributes and blocks configured for the `hive_metastore_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config_overrides` (`obj`): A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).\nThe mappings override system defaults (some keys cannot be overridden) When `null`, the `config_overrides` field will be omitted from the resulting object.\n  - `endpoint_protocol` (`string`): The protocol to use for the metastore service endpoint. If unspecified, defaults to &#39;THRIFT&#39;. Default value: &#34;THRIFT&#34; Possible values: [&#34;THRIFT&#34;, &#34;GRPC&#34;] When `null`, the `endpoint_protocol` field will be omitted from the resulting object.\n  - `version` (`string`): The Hive metastore schema version.\n  - `auxiliary_versions` (`list[obj]`): A mapping of Hive metastore version to the auxiliary version configuration.\nWhen specified, a secondary Hive metastore service is created along with the primary service.\nAll auxiliary versions must be less than the service&#39;s primary version.\nThe key is the auxiliary service name and it must match the regular expression a-z?.\nThis means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen. When `null`, the `auxiliary_versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.auxiliary_versions.new](#fn-hive_metastore_configauxiliary_versionsnew) constructor.\n  - `kerberos_config` (`list[obj]`): Information used to configure the Hive metastore service as a service principal in a Kerberos realm. When `null`, the `kerberos_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.kerberos_config.new](#fn-hive_metastore_configkerberos_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hive_metastore_config` sub block.\n', args=[]),
    new(
      version,
      auxiliary_versions=null,
      config_overrides=null,
      endpoint_protocol=null,
      kerberos_config=null
    ):: std.prune(a={
      auxiliary_versions: auxiliary_versions,
      config_overrides: config_overrides,
      endpoint_protocol: endpoint_protocol,
      kerberos_config: kerberos_config,
      version: version,
    }),
  },
  maintenance_window:: {
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day_of_week` (`string`): The day of week, when the window starts. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n  - `hour_of_day` (`number`): The hour of day (0-23) when the window starts.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_window` sub block.\n', args=[]),
    new(
      day_of_week,
      hour_of_day
    ):: std.prune(a={
      day_of_week: day_of_week,
      hour_of_day: hour_of_day,
    }),
  },
  metadata_integration:: {
    data_catalog_config:: {
      '#new':: d.fn(help='\n`google.dataproc_metastore_service.metadata_integration.data_catalog_config.new` constructs a new object with attributes and blocks configured for the `data_catalog_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.\n\n**Returns**:\n  - An attribute object that represents the `data_catalog_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.metadata_integration.new` constructs a new object with attributes and blocks configured for the `metadata_integration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `data_catalog_config` (`list[obj]`): The integration config for the Data Catalog service. When `null`, the `data_catalog_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.metadata_integration.data_catalog_config.new](#fn-metadata_integrationdata_catalog_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metadata_integration` sub block.\n', args=[]),
    new(
      data_catalog_config=null
    ):: std.prune(a={
      data_catalog_config: data_catalog_config,
    }),
  },
  network_config:: {
    consumers:: {
      '#new':: d.fn(help='\n`google.dataproc_metastore_service.network_config.consumers.new` constructs a new object with attributes and blocks configured for the `consumers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subnetwork` (`string`): The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service&#39;s endpoint.\nIt is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network.\nThere must be at least one IP address available in the subnet&#39;s primary range. The subnet is specified in the following form:\n&#39;projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id}\n\n**Returns**:\n  - An attribute object that represents the `consumers` sub block.\n', args=[]),
      new(
        subnetwork
      ):: std.prune(a={
        subnetwork: subnetwork,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consumers` (`list[obj]`): The consumer-side network configuration for the Dataproc Metastore instance. When `null`, the `consumers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.network_config.consumers.new](#fn-network_configconsumersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      consumers=null
    ):: std.prune(a={
      consumers: consumers,
    }),
  },
  '#new':: d.fn(help="\n`google.dataproc_metastore_service.new` injects a new `google_dataproc_metastore_service` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataproc_metastore_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataproc_metastore_service` using the reference:\n\n    $._ref.google_dataproc_metastore_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataproc_metastore_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `database_type` (`string`): The database type that the Metastore service stores its data. Default value: \u0026#34;MYSQL\u0026#34; Possible values: [\u0026#34;MYSQL\u0026#34;, \u0026#34;SPANNER\u0026#34;] When `null`, the `database_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the metastore service.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the metastore service should reside.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:\n\n\u0026#34;projects/{projectNumber}/global/networks/{network_id}\u0026#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `port` (`number`): The TCP port at which the metastore service is reached. Default: 9083. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `release_channel` (`string`): The release channel of the service. If unspecified, defaults to \u0026#39;STABLE\u0026#39;. Default value: \u0026#34;STABLE\u0026#34; Possible values: [\u0026#34;CANARY\u0026#34;, \u0026#34;STABLE\u0026#34;] When `null`, the `release_channel` field will be omitted from the resulting object.\n  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 63 characters.\n  - `tier` (`string`): The tier of the service. Possible values: [\u0026#34;DEVELOPER\u0026#34;, \u0026#34;ENTERPRISE\u0026#34;] When `null`, the `tier` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): Information used to configure the Dataproc Metastore service to encrypt\ncustomer data at rest. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `hive_metastore_config` (`list[obj]`): Configuration information specific to running Hive metastore software as the metastore service. When `null`, the `hive_metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.new](#fn-hive_metastore_confignew) constructor.\n  - `maintenance_window` (`list[obj]`): The one hour maintenance window of the metastore service.\nThis specifies when the service can be restarted for maintenance purposes in UTC time.\nMaintenance window is not needed for services with the \u0026#39;SPANNER\u0026#39; database type. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.maintenance_window.new](#fn-maintenance_windownew) constructor.\n  - `metadata_integration` (`list[obj]`): The setting that defines how metastore metadata should be integrated with external services and systems. When `null`, the `metadata_integration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.metadata_integration.new](#fn-metadata_integrationnew) constructor.\n  - `network_config` (`list[obj]`): The configuration specifying the network settings for the Dataproc Metastore service. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.network_config.new](#fn-network_confignew) constructor.\n  - `scaling_config` (`list[obj]`): Represents the scaling configuration of a metastore service. When `null`, the `scaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.scaling_config.new](#fn-scaling_confignew) constructor.\n  - `telemetry_config` (`list[obj]`): The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON. When `null`, the `telemetry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.telemetry_config.new](#fn-telemetry_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service_id,
    database_type=null,
    encryption_config=null,
    hive_metastore_config=null,
    labels=null,
    location=null,
    maintenance_window=null,
    metadata_integration=null,
    network=null,
    network_config=null,
    port=null,
    project=null,
    release_channel=null,
    scaling_config=null,
    telemetry_config=null,
    tier=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_metastore_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      database_type=database_type,
      encryption_config=encryption_config,
      hive_metastore_config=hive_metastore_config,
      labels=labels,
      location=location,
      maintenance_window=maintenance_window,
      metadata_integration=metadata_integration,
      network=network,
      network_config=network_config,
      port=port,
      project=project,
      release_channel=release_channel,
      scaling_config=scaling_config,
      service_id=service_id,
      telemetry_config=telemetry_config,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataproc_metastore_service.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_metastore_service`\nTerraform resource.\n\nUnlike [google.dataproc_metastore_service.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database_type` (`string`): The database type that the Metastore service stores its data. Default value: &#34;MYSQL&#34; Possible values: [&#34;MYSQL&#34;, &#34;SPANNER&#34;] When `null`, the `database_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the metastore service.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the metastore service should reside.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:\n\n&#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `port` (`number`): The TCP port at which the metastore service is reached. Default: 9083. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `release_channel` (`string`): The release channel of the service. If unspecified, defaults to &#39;STABLE&#39;. Default value: &#34;STABLE&#34; Possible values: [&#34;CANARY&#34;, &#34;STABLE&#34;] When `null`, the `release_channel` field will be omitted from the resulting object.\n  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 63 characters.\n  - `tier` (`string`): The tier of the service. Possible values: [&#34;DEVELOPER&#34;, &#34;ENTERPRISE&#34;] When `null`, the `tier` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): Information used to configure the Dataproc Metastore service to encrypt\ncustomer data at rest. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `hive_metastore_config` (`list[obj]`): Configuration information specific to running Hive metastore software as the metastore service. When `null`, the `hive_metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.new](#fn-hive_metastore_confignew) constructor.\n  - `maintenance_window` (`list[obj]`): The one hour maintenance window of the metastore service.\nThis specifies when the service can be restarted for maintenance purposes in UTC time.\nMaintenance window is not needed for services with the &#39;SPANNER&#39; database type. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.maintenance_window.new](#fn-maintenance_windownew) constructor.\n  - `metadata_integration` (`list[obj]`): The setting that defines how metastore metadata should be integrated with external services and systems. When `null`, the `metadata_integration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.metadata_integration.new](#fn-metadata_integrationnew) constructor.\n  - `network_config` (`list[obj]`): The configuration specifying the network settings for the Dataproc Metastore service. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.network_config.new](#fn-network_confignew) constructor.\n  - `scaling_config` (`list[obj]`): Represents the scaling configuration of a metastore service. When `null`, the `scaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.scaling_config.new](#fn-scaling_confignew) constructor.\n  - `telemetry_config` (`list[obj]`): The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON. When `null`, the `telemetry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.telemetry_config.new](#fn-telemetry_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_metastore_service` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service_id,
    database_type=null,
    encryption_config=null,
    hive_metastore_config=null,
    labels=null,
    location=null,
    maintenance_window=null,
    metadata_integration=null,
    network=null,
    network_config=null,
    port=null,
    project=null,
    release_channel=null,
    scaling_config=null,
    telemetry_config=null,
    tier=null,
    timeouts=null
  ):: std.prune(a={
    database_type: database_type,
    encryption_config: encryption_config,
    hive_metastore_config: hive_metastore_config,
    labels: labels,
    location: location,
    maintenance_window: maintenance_window,
    metadata_integration: metadata_integration,
    network: network,
    network_config: network_config,
    port: port,
    project: project,
    release_channel: release_channel,
    scaling_config: scaling_config,
    service_id: service_id,
    telemetry_config: telemetry_config,
    tier: tier,
    timeouts: timeouts,
  }),
  scaling_config:: {
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.scaling_config.new` constructs a new object with attributes and blocks configured for the `scaling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance_size` (`string`): Metastore instance sizes. Possible values: [&#34;EXTRA_SMALL&#34;, &#34;SMALL&#34;, &#34;MEDIUM&#34;, &#34;LARGE&#34;, &#34;EXTRA_LARGE&#34;] When `null`, the `instance_size` field will be omitted from the resulting object.\n  - `scaling_factor` (`number`): Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0. When `null`, the `scaling_factor` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `scaling_config` sub block.\n', args=[]),
    new(
      instance_size=null,
      scaling_factor=null
    ):: std.prune(a={
      instance_size: instance_size,
      scaling_factor: scaling_factor,
    }),
  },
  telemetry_config:: {
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.telemetry_config.new` constructs a new object with attributes and blocks configured for the `telemetry_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `log_format` (`string`): The output format of the Dataproc Metastore service&#39;s logs. Default value: &#34;JSON&#34; Possible values: [&#34;LEGACY&#34;, &#34;JSON&#34;] When `null`, the `log_format` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `telemetry_config` sub block.\n', args=[]),
    new(
      log_format=null
    ):: std.prune(a={
      log_format: log_format,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataproc_metastore_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDatabaseType':: d.fn(help='`google.string.withDatabaseType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database_type` field.\n', args=[]),
  withDatabaseType(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          database_type: value,
        },
      },
    },
  },
  '#withEncryptionConfig':: d.fn(help='`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  '#withEncryptionConfigMixin':: d.fn(help='`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHiveMetastoreConfig':: d.fn(help='`google.list[obj].withHiveMetastoreConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_metastore_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHiveMetastoreConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_metastore_config` field.\n', args=[]),
  withHiveMetastoreConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          hive_metastore_config: value,
        },
      },
    },
  },
  '#withHiveMetastoreConfigMixin':: d.fn(help='`google.list[obj].withHiveMetastoreConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_metastore_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHiveMetastoreConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_metastore_config` field.\n', args=[]),
  withHiveMetastoreConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          hive_metastore_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMaintenanceWindow':: d.fn(help='`google.list[obj].withMaintenanceWindow` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenanceWindowMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindow(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          maintenance_window: value,
        },
      },
    },
  },
  '#withMaintenanceWindowMixin':: d.fn(help='`google.list[obj].withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceWindow](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindowMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          maintenance_window+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMetadataIntegration':: d.fn(help='`google.list[obj].withMetadataIntegration` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata_integration field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMetadataIntegrationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata_integration` field.\n', args=[]),
  withMetadataIntegration(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          metadata_integration: value,
        },
      },
    },
  },
  '#withMetadataIntegrationMixin':: d.fn(help='`google.list[obj].withMetadataIntegrationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata_integration field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMetadataIntegration](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata_integration` field.\n', args=[]),
  withMetadataIntegrationMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          metadata_integration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReleaseChannel':: d.fn(help='`google.string.withReleaseChannel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the release_channel field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `release_channel` field.\n', args=[]),
  withReleaseChannel(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          release_channel: value,
        },
      },
    },
  },
  '#withScalingConfig':: d.fn(help='`google.list[obj].withScalingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scaling_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withScalingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scaling_config` field.\n', args=[]),
  withScalingConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          scaling_config: value,
        },
      },
    },
  },
  '#withScalingConfigMixin':: d.fn(help='`google.list[obj].withScalingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scaling_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withScalingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scaling_config` field.\n', args=[]),
  withScalingConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          scaling_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceId':: d.fn(help='`google.string.withServiceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_id` field.\n', args=[]),
  withServiceId(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  '#withTelemetryConfig':: d.fn(help='`google.list[obj].withTelemetryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the telemetry_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTelemetryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `telemetry_config` field.\n', args=[]),
  withTelemetryConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          telemetry_config: value,
        },
      },
    },
  },
  '#withTelemetryConfigMixin':: d.fn(help='`google.list[obj].withTelemetryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the telemetry_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTelemetryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `telemetry_config` field.\n', args=[]),
  withTelemetryConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          telemetry_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTier':: d.fn(help='`google.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
