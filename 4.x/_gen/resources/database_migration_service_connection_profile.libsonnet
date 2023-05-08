local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='database_migration_service_connection_profile', url='', help='`database_migration_service_connection_profile` represents the `google_database_migration_service_connection_profile` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  alloydb:: {
    '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.alloydb.new` constructs a new object with attributes and blocks configured for the `alloydb`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_id` (`string`): Required. The AlloyDB cluster ID that this connection profile is associated with.\n  - `settings` (`list[obj]`): Immutable. Metadata used to create the destination AlloyDB cluster. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.new](#fn-alloydbsettingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `alloydb` sub block.\n', args=[]),
    new(
      cluster_id,
      settings=null
    ):: std.prune(a={
      cluster_id: cluster_id,
      settings: settings,
    }),
    settings:: {
      initial_user:: {
        '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.alloydb.settings.initial_user.new` constructs a new object with attributes and blocks configured for the `initial_user`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): The initial password for the user.\n  - `user` (`string`): The database username.\n\n**Returns**:\n  - An attribute object that represents the `initial_user` sub block.\n', args=[]),
        new(
          password,
          user
        ):: std.prune(a={
          password: password,
          user: user,
        }),
      },
      '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.alloydb.settings.new` constructs a new object with attributes and blocks configured for the `settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Labels for the AlloyDB cluster created by DMS. When `null`, the `labels` field will be omitted from the resulting object.\n  - `vpc_network` (`string`): Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.\nIt is specified in the form: &#39;projects/{project_number}/global/networks/{network_id}&#39;. This is required to create a cluster.\n  - `initial_user` (`list[obj]`): Required. Input only. Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.initial_user.new](#fn-alloydballoydbinitial_usernew) constructor.\n  - `primary_instance_settings` (`list[obj]`): Settings for the cluster&#39;s primary instance When `null`, the `primary_instance_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.new](#fn-alloydballoydbprimary_instance_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `settings` sub block.\n', args=[]),
      new(
        vpc_network,
        initial_user=null,
        labels=null,
        primary_instance_settings=null
      ):: std.prune(a={
        initial_user: initial_user,
        labels: labels,
        primary_instance_settings: primary_instance_settings,
        vpc_network: vpc_network,
      }),
      primary_instance_settings:: {
        machine_config:: {
          '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.machine_config.new` constructs a new object with attributes and blocks configured for the `machine_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_count` (`number`): The number of CPU&#39;s in the VM instance.\n\n**Returns**:\n  - An attribute object that represents the `machine_config` sub block.\n', args=[]),
          new(
            cpu_count
          ):: std.prune(a={
            cpu_count: cpu_count,
          }),
        },
        '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.new` constructs a new object with attributes and blocks configured for the `primary_instance_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database_flags` (`obj`): Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used. When `null`, the `database_flags` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels for the AlloyDB primary instance created by DMS. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_config` (`list[obj]`): Configuration for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.machine_config.new](#fn-alloydballoydbsettingsmachine_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `primary_instance_settings` sub block.\n', args=[]),
        new(
          database_flags=null,
          labels=null,
          machine_config=null
        ):: std.prune(a={
          database_flags: database_flags,
          labels: labels,
          machine_config: machine_config,
        }),
      },
    },
  },
  cloudsql:: {
    '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.cloudsql.new` constructs a new object with attributes and blocks configured for the `cloudsql`\nTerraform sub block.\n\n\n\n**Args**:\n  - `settings` (`list[obj]`): Immutable. Metadata used to create the destination Cloud SQL database. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.settings.new](#fn-cloudsqlsettingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cloudsql` sub block.\n', args=[]),
    new(
      settings=null
    ):: std.prune(a={
      settings: settings,
    }),
    settings:: {
      ip_config:: {
        authorized_networks:: {
          '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.cloudsql.settings.ip_config.authorized_networks.new` constructs a new object with attributes and blocks configured for the `authorized_networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expire_time` (`string`): The time when this access control entry expires in RFC 3339 format. When `null`, the `expire_time` field will be omitted from the resulting object.\n  - `label` (`string`): A label to identify this entry. When `null`, the `label` field will be omitted from the resulting object.\n  - `ttl` (`string`): Input only. The time-to-leave of this access control entry. When `null`, the `ttl` field will be omitted from the resulting object.\n  - `value` (`string`): The allowlisted value for the access control list.\n\n**Returns**:\n  - An attribute object that represents the `authorized_networks` sub block.\n', args=[]),
          new(
            value,
            expire_time=null,
            label=null,
            ttl=null
          ):: std.prune(a={
            expire_time: expire_time,
            label: label,
            ttl: ttl,
            value: value,
          }),
        },
        '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.cloudsql.settings.ip_config.new` constructs a new object with attributes and blocks configured for the `ip_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_ipv4` (`bool`): Whether the instance should be assigned an IPv4 address or not. When `null`, the `enable_ipv4` field will be omitted from the resulting object.\n  - `private_network` (`string`): The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default.\nThis setting can be updated, but it cannot be removed after it is set. When `null`, the `private_network` field will be omitted from the resulting object.\n  - `require_ssl` (`bool`): Whether SSL connections over IP should be enforced or not. When `null`, the `require_ssl` field will be omitted from the resulting object.\n  - `authorized_networks` (`list[obj]`): The list of external networks that are allowed to connect to the instance using the IP. When `null`, the `authorized_networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.settings.ip_config.authorized_networks.new](#fn-cloudsqlcloudsqlsettingsauthorized_networksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ip_config` sub block.\n', args=[]),
        new(
          authorized_networks=null,
          enable_ipv4=null,
          private_network=null,
          require_ssl=null
        ):: std.prune(a={
          authorized_networks: authorized_networks,
          enable_ipv4: enable_ipv4,
          private_network: private_network,
          require_ssl: require_ssl,
        }),
      },
      '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.cloudsql.settings.new` constructs a new object with attributes and blocks configured for the `settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `activation_policy` (`string`): The activation policy specifies when the instance is activated; it is applicable only when the instance state is &#39;RUNNABLE&#39;. Possible values: [&#34;ALWAYS&#34;, &#34;NEVER&#34;] When `null`, the `activation_policy` field will be omitted from the resulting object.\n  - `auto_storage_increase` (`bool`): If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity.\nIf the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB. When `null`, the `auto_storage_increase` field will be omitted from the resulting object.\n  - `cmek_key_name` (`string`): The KMS key name used for the csql instance. When `null`, the `cmek_key_name` field will be omitted from the resulting object.\n  - `collation` (`string`): The Cloud SQL default instance level collation. When `null`, the `collation` field will be omitted from the resulting object.\n  - `data_disk_size_gb` (`string`): The storage capacity available to the database, in GB. The minimum (and default) size is 10GB. When `null`, the `data_disk_size_gb` field will be omitted from the resulting object.\n  - `data_disk_type` (`string`): The type of storage. Possible values: [&#34;PD_SSD&#34;, &#34;PD_HDD&#34;] When `null`, the `data_disk_type` field will be omitted from the resulting object.\n  - `database_flags` (`obj`): The database flags passed to the Cloud SQL instance at startup. When `null`, the `database_flags` field will be omitted from the resulting object.\n  - `database_version` (`string`): The database engine type and version.\nCurrently supported values located at https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles#sqldatabaseversion When `null`, the `database_version` field will be omitted from the resulting object.\n  - `root_password` (`string`): Input only. Initial root password. When `null`, the `root_password` field will be omitted from the resulting object.\n  - `source_id` (`string`): The Database Migration Service source connection profile ID, in the format: projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID\n  - `storage_auto_resize_limit` (`string`): The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. When `null`, the `storage_auto_resize_limit` field will be omitted from the resulting object.\n  - `tier` (`string`): The tier (or machine type) for this instance, for example: db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances).\nFor more information, see https://cloud.google.com/sql/docs/mysql/instance-settings When `null`, the `tier` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `zone` (`string`): The Google Cloud Platform zone where your Cloud SQL datdabse instance is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `ip_config` (`list[obj]`): The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled. When `null`, the `ip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.settings.ip_config.new](#fn-cloudsqlcloudsqlip_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `settings` sub block.\n', args=[]),
      new(
        source_id,
        activation_policy=null,
        auto_storage_increase=null,
        cmek_key_name=null,
        collation=null,
        data_disk_size_gb=null,
        data_disk_type=null,
        database_flags=null,
        database_version=null,
        ip_config=null,
        root_password=null,
        storage_auto_resize_limit=null,
        tier=null,
        user_labels=null,
        zone=null
      ):: std.prune(a={
        activation_policy: activation_policy,
        auto_storage_increase: auto_storage_increase,
        cmek_key_name: cmek_key_name,
        collation: collation,
        data_disk_size_gb: data_disk_size_gb,
        data_disk_type: data_disk_type,
        database_flags: database_flags,
        database_version: database_version,
        ip_config: ip_config,
        root_password: root_password,
        source_id: source_id,
        storage_auto_resize_limit: storage_auto_resize_limit,
        tier: tier,
        user_labels: user_labels,
        zone: zone,
      }),
    },
  },
  mysql:: {
    '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.mysql.new` constructs a new object with attributes and blocks configured for the `mysql`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_sql_id` (`string`): If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source. When `null`, the `cloud_sql_id` field will be omitted from the resulting object.\n  - `host` (`string`): Required. The IP or hostname of the source MySQL database.\n  - `password` (`string`): Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.\nThis field is not returned on request, and the value is encrypted when stored in Database Migration Service.\n  - `port` (`number`): Required. The network port of the source MySQL database.\n  - `username` (`string`): Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.\n  - `ssl` (`list[obj]`): SSL configuration for the destination to connect to the source database. When `null`, the `ssl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.mysql.ssl.new](#fn-mysqlsslnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql` sub block.\n', args=[]),
    new(
      host,
      password,
      port,
      username,
      cloud_sql_id=null,
      ssl=null
    ):: std.prune(a={
      cloud_sql_id: cloud_sql_id,
      host: host,
      password: password,
      port: port,
      ssl: ssl,
      username: username,
    }),
    ssl:: {
      '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.mysql.ssl.new` constructs a new object with attributes and blocks configured for the `ssl`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ca_certificate` (`string`): Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server&#39;s certificate.\nThe replica will use this certificate to verify it&#39;s connecting to the right host.\n  - `client_certificate` (`string`): Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.\nIf this field is used then the &#39;clientKey&#39; field is mandatory When `null`, the `client_certificate` field will be omitted from the resulting object.\n  - `client_key` (`string`): Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.\nIf this field is used then the &#39;clientCertificate&#39; field is mandatory. When `null`, the `client_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ssl` sub block.\n', args=[]),
      new(
        ca_certificate,
        client_certificate=null,
        client_key=null
      ):: std.prune(a={
        ca_certificate: ca_certificate,
        client_certificate: client_certificate,
        client_key: client_key,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.database_migration_service_connection_profile.new` injects a new `google_database_migration_service_connection_profile` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.database_migration_service_connection_profile.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.database_migration_service_connection_profile` using the reference:\n\n    $._ref.google_database_migration_service_connection_profile.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_database_migration_service_connection_profile.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connection_profile_id` (`string`): The ID of the connection profile.\n  - `display_name` (`string`): The connection profile display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the connection profile should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `alloydb` (`list[obj]`): Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster. When `null`, the `alloydb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.new](#fn-alloydbnew) constructor.\n  - `cloudsql` (`list[obj]`): Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance. When `null`, the `cloudsql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.new](#fn-cloudsqlnew) constructor.\n  - `mysql` (`list[obj]`): Specifies connection parameters required specifically for MySQL databases. When `null`, the `mysql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.mysql.new](#fn-mysqlnew) constructor.\n  - `postgresql` (`list[obj]`): Specifies connection parameters required specifically for PostgreSQL databases. When `null`, the `postgresql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.postgresql.new](#fn-postgresqlnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    connection_profile_id,
    alloydb=null,
    cloudsql=null,
    display_name=null,
    labels=null,
    location=null,
    mysql=null,
    postgresql=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_database_migration_service_connection_profile',
    label=resourceLabel,
    attrs=self.newAttrs(
      alloydb=alloydb,
      cloudsql=cloudsql,
      connection_profile_id=connection_profile_id,
      display_name=display_name,
      labels=labels,
      location=location,
      mysql=mysql,
      postgresql=postgresql,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.database_migration_service_connection_profile.newAttrs` constructs a new object with attributes and blocks configured for the `database_migration_service_connection_profile`\nTerraform resource.\n\nUnlike [google.database_migration_service_connection_profile.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connection_profile_id` (`string`): The ID of the connection profile.\n  - `display_name` (`string`): The connection profile display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the connection profile should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `alloydb` (`list[obj]`): Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster. When `null`, the `alloydb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.new](#fn-alloydbnew) constructor.\n  - `cloudsql` (`list[obj]`): Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance. When `null`, the `cloudsql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.new](#fn-cloudsqlnew) constructor.\n  - `mysql` (`list[obj]`): Specifies connection parameters required specifically for MySQL databases. When `null`, the `mysql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.mysql.new](#fn-mysqlnew) constructor.\n  - `postgresql` (`list[obj]`): Specifies connection parameters required specifically for PostgreSQL databases. When `null`, the `postgresql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.postgresql.new](#fn-postgresqlnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `database_migration_service_connection_profile` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    connection_profile_id,
    alloydb=null,
    cloudsql=null,
    display_name=null,
    labels=null,
    location=null,
    mysql=null,
    postgresql=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    alloydb: alloydb,
    cloudsql: cloudsql,
    connection_profile_id: connection_profile_id,
    display_name: display_name,
    labels: labels,
    location: location,
    mysql: mysql,
    postgresql: postgresql,
    project: project,
    timeouts: timeouts,
  }),
  postgresql:: {
    '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.postgresql.new` constructs a new object with attributes and blocks configured for the `postgresql`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_sql_id` (`string`): If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source. When `null`, the `cloud_sql_id` field will be omitted from the resulting object.\n  - `host` (`string`): Required. The IP or hostname of the source MySQL database.\n  - `password` (`string`): Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.\nThis field is not returned on request, and the value is encrypted when stored in Database Migration Service.\n  - `port` (`number`): Required. The network port of the source MySQL database.\n  - `username` (`string`): Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.\n  - `ssl` (`list[obj]`): SSL configuration for the destination to connect to the source database. When `null`, the `ssl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.postgresql.ssl.new](#fn-postgresqlsslnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `postgresql` sub block.\n', args=[]),
    new(
      host,
      password,
      port,
      username,
      cloud_sql_id=null,
      ssl=null
    ):: std.prune(a={
      cloud_sql_id: cloud_sql_id,
      host: host,
      password: password,
      port: port,
      ssl: ssl,
      username: username,
    }),
    ssl:: {
      '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.postgresql.ssl.new` constructs a new object with attributes and blocks configured for the `ssl`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ca_certificate` (`string`): Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server&#39;s certificate.\nThe replica will use this certificate to verify it&#39;s connecting to the right host.\n  - `client_certificate` (`string`): Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.\nIf this field is used then the &#39;clientKey&#39; field is mandatory When `null`, the `client_certificate` field will be omitted from the resulting object.\n  - `client_key` (`string`): Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.\nIf this field is used then the &#39;clientCertificate&#39; field is mandatory. When `null`, the `client_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ssl` sub block.\n', args=[]),
      new(
        ca_certificate,
        client_certificate=null,
        client_key=null
      ):: std.prune(a={
        ca_certificate: ca_certificate,
        client_certificate: client_certificate,
        client_key: client_key,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.database_migration_service_connection_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAlloydb':: d.fn(help='`google.list[obj].withAlloydb` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the alloydb field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAlloydbMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `alloydb` field.\n', args=[]),
  withAlloydb(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          alloydb: value,
        },
      },
    },
  },
  '#withAlloydbMixin':: d.fn(help='`google.list[obj].withAlloydbMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the alloydb field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAlloydb](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `alloydb` field.\n', args=[]),
  withAlloydbMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          alloydb+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCloudsql':: d.fn(help='`google.list[obj].withCloudsql` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloudsql field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloudsqlMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloudsql` field.\n', args=[]),
  withCloudsql(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          cloudsql: value,
        },
      },
    },
  },
  '#withCloudsqlMixin':: d.fn(help='`google.list[obj].withCloudsqlMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloudsql field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCloudsql](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloudsql` field.\n', args=[]),
  withCloudsqlMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          cloudsql+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConnectionProfileId':: d.fn(help='`google.string.withConnectionProfileId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connection_profile_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connection_profile_id` field.\n', args=[]),
  withConnectionProfileId(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          connection_profile_id: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMysql':: d.fn(help='`google.list[obj].withMysql` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mysql field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMysqlMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mysql` field.\n', args=[]),
  withMysql(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          mysql: value,
        },
      },
    },
  },
  '#withMysqlMixin':: d.fn(help='`google.list[obj].withMysqlMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mysql field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMysql](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mysql` field.\n', args=[]),
  withMysqlMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          mysql+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPostgresql':: d.fn(help='`google.list[obj].withPostgresql` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the postgresql field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPostgresqlMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `postgresql` field.\n', args=[]),
  withPostgresql(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          postgresql: value,
        },
      },
    },
  },
  '#withPostgresqlMixin':: d.fn(help='`google.list[obj].withPostgresqlMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the postgresql field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPostgresql](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `postgresql` field.\n', args=[]),
  withPostgresqlMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          postgresql+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_database_migration_service_connection_profile+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
