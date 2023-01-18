local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='datastream_connection_profile', url='', help='`datastream_connection_profile` represents the `google_datastream_connection_profile` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigquery_profile:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.bigquery_profile.new` constructs a new object with attributes and blocks configured for the `bigquery_profile`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `bigquery_profile` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  forward_ssh_connectivity:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.forward_ssh_connectivity.new` constructs a new object with attributes and blocks configured for the `forward_ssh_connectivity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hostname` (`string`): Hostname for the SSH tunnel.\n  - `password` (`string`): SSH password. When `null`, the `password` field will be omitted from the resulting object.\n  - `port` (`number`): Port for the SSH tunnel. When `null`, the `port` field will be omitted from the resulting object.\n  - `private_key` (`string`): SSH private key. When `null`, the `private_key` field will be omitted from the resulting object.\n  - `username` (`string`): Username for the SSH tunnel.\n\n**Returns**:\n  - An attribute object that represents the `forward_ssh_connectivity` sub block.\n', args=[]),
    new(
      hostname,
      username,
      password=null,
      port=null,
      private_key=null
    ):: std.prune(a={
      hostname: hostname,
      password: password,
      port: port,
      private_key: private_key,
      username: username,
    }),
  },
  gcs_profile:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.gcs_profile.new` constructs a new object with attributes and blocks configured for the `gcs_profile`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): The Cloud Storage bucket name.\n  - `root_path` (`string`): The root path inside the Cloud Storage bucket. When `null`, the `root_path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_profile` sub block.\n', args=[]),
    new(
      bucket,
      root_path=null
    ):: std.prune(a={
      bucket: bucket,
      root_path: root_path,
    }),
  },
  mysql_profile:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.mysql_profile.new` constructs a new object with attributes and blocks configured for the `mysql_profile`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hostname` (`string`): Hostname for the MySQL connection.\n  - `password` (`string`): Password for the MySQL connection.\n  - `port` (`number`): Port for the MySQL connection. When `null`, the `port` field will be omitted from the resulting object.\n  - `username` (`string`): Username for the MySQL connection.\n  - `ssl_config` (`list[obj]`): SSL configuration for the MySQL connection. When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.mysql_profile.ssl_config.new](#fn-mysql_profilessl_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mysql_profile` sub block.\n', args=[]),
    new(
      hostname,
      password,
      username,
      port=null,
      ssl_config=null
    ):: std.prune(a={
      hostname: hostname,
      password: password,
      port: port,
      ssl_config: ssl_config,
      username: username,
    }),
    ssl_config:: {
      '#new':: d.fn(help='\n`google.datastream_connection_profile.mysql_profile.ssl_config.new` constructs a new object with attributes and blocks configured for the `ssl_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ca_certificate` (`string`): PEM-encoded certificate of the CA that signed the source database\nserver&#39;s certificate. When `null`, the `ca_certificate` field will be omitted from the resulting object.\n  - `client_certificate` (`string`): PEM-encoded certificate that will be used by the replica to\nauthenticate against the source database server. If this field\nis used then the &#39;clientKey&#39; and the &#39;caCertificate&#39; fields are\nmandatory. When `null`, the `client_certificate` field will be omitted from the resulting object.\n  - `client_key` (`string`): PEM-encoded private key associated with the Client Certificate.\nIf this field is used then the &#39;client_certificate&#39; and the\n&#39;ca_certificate&#39; fields are mandatory. When `null`, the `client_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ssl_config` sub block.\n', args=[]),
      new(
        ca_certificate=null,
        client_certificate=null,
        client_key=null
      ):: std.prune(a={
        ca_certificate: ca_certificate,
        client_certificate: client_certificate,
        client_key: client_key,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.datastream_connection_profile.new` injects a new `google_datastream_connection_profile` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.datastream_connection_profile.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.datastream_connection_profile` using the reference:\n\n    $._ref.google_datastream_connection_profile.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_datastream_connection_profile.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connection_profile_id` (`string`): The connection profile identifier.\n  - `display_name` (`string`): Display name.\n  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this connection profile is located in.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `bigquery_profile` (`list[obj]`): BigQuery warehouse profile. When `null`, the `bigquery_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.bigquery_profile.new](#fn-bigquery_profilenew) constructor.\n  - `forward_ssh_connectivity` (`list[obj]`): Forward SSH tunnel connectivity. When `null`, the `forward_ssh_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.forward_ssh_connectivity.new](#fn-forward_ssh_connectivitynew) constructor.\n  - `gcs_profile` (`list[obj]`): Cloud Storage bucket profile. When `null`, the `gcs_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.gcs_profile.new](#fn-gcs_profilenew) constructor.\n  - `mysql_profile` (`list[obj]`): MySQL database profile. When `null`, the `mysql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.mysql_profile.new](#fn-mysql_profilenew) constructor.\n  - `oracle_profile` (`list[obj]`): Oracle database profile. When `null`, the `oracle_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.oracle_profile.new](#fn-oracle_profilenew) constructor.\n  - `postgresql_profile` (`list[obj]`): PostgreSQL database profile. When `null`, the `postgresql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.postgresql_profile.new](#fn-postgresql_profilenew) constructor.\n  - `private_connectivity` (`list[obj]`): Private connectivity. When `null`, the `private_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.private_connectivity.new](#fn-private_connectivitynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    connection_profile_id,
    display_name,
    location,
    bigquery_profile=null,
    forward_ssh_connectivity=null,
    gcs_profile=null,
    labels=null,
    mysql_profile=null,
    oracle_profile=null,
    postgresql_profile=null,
    private_connectivity=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_datastream_connection_profile',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_profile=bigquery_profile,
      connection_profile_id=connection_profile_id,
      display_name=display_name,
      forward_ssh_connectivity=forward_ssh_connectivity,
      gcs_profile=gcs_profile,
      labels=labels,
      location=location,
      mysql_profile=mysql_profile,
      oracle_profile=oracle_profile,
      postgresql_profile=postgresql_profile,
      private_connectivity=private_connectivity,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.datastream_connection_profile.newAttrs` constructs a new object with attributes and blocks configured for the `datastream_connection_profile`\nTerraform resource.\n\nUnlike [google.datastream_connection_profile.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connection_profile_id` (`string`): The connection profile identifier.\n  - `display_name` (`string`): Display name.\n  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this connection profile is located in.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `bigquery_profile` (`list[obj]`): BigQuery warehouse profile. When `null`, the `bigquery_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.bigquery_profile.new](#fn-bigquery_profilenew) constructor.\n  - `forward_ssh_connectivity` (`list[obj]`): Forward SSH tunnel connectivity. When `null`, the `forward_ssh_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.forward_ssh_connectivity.new](#fn-forward_ssh_connectivitynew) constructor.\n  - `gcs_profile` (`list[obj]`): Cloud Storage bucket profile. When `null`, the `gcs_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.gcs_profile.new](#fn-gcs_profilenew) constructor.\n  - `mysql_profile` (`list[obj]`): MySQL database profile. When `null`, the `mysql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.mysql_profile.new](#fn-mysql_profilenew) constructor.\n  - `oracle_profile` (`list[obj]`): Oracle database profile. When `null`, the `oracle_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.oracle_profile.new](#fn-oracle_profilenew) constructor.\n  - `postgresql_profile` (`list[obj]`): PostgreSQL database profile. When `null`, the `postgresql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.postgresql_profile.new](#fn-postgresql_profilenew) constructor.\n  - `private_connectivity` (`list[obj]`): Private connectivity. When `null`, the `private_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.private_connectivity.new](#fn-private_connectivitynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastream_connection_profile` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    connection_profile_id,
    display_name,
    location,
    bigquery_profile=null,
    forward_ssh_connectivity=null,
    gcs_profile=null,
    labels=null,
    mysql_profile=null,
    oracle_profile=null,
    postgresql_profile=null,
    private_connectivity=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bigquery_profile: bigquery_profile,
    connection_profile_id: connection_profile_id,
    display_name: display_name,
    forward_ssh_connectivity: forward_ssh_connectivity,
    gcs_profile: gcs_profile,
    labels: labels,
    location: location,
    mysql_profile: mysql_profile,
    oracle_profile: oracle_profile,
    postgresql_profile: postgresql_profile,
    private_connectivity: private_connectivity,
    project: project,
    timeouts: timeouts,
  }),
  oracle_profile:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.oracle_profile.new` constructs a new object with attributes and blocks configured for the `oracle_profile`\nTerraform sub block.\n\n\n\n**Args**:\n  - `connection_attributes` (`obj`): Connection string attributes When `null`, the `connection_attributes` field will be omitted from the resulting object.\n  - `database_service` (`string`): Database for the Oracle connection.\n  - `hostname` (`string`): Hostname for the Oracle connection.\n  - `password` (`string`): Password for the Oracle connection.\n  - `port` (`number`): Port for the Oracle connection. When `null`, the `port` field will be omitted from the resulting object.\n  - `username` (`string`): Username for the Oracle connection.\n\n**Returns**:\n  - An attribute object that represents the `oracle_profile` sub block.\n', args=[]),
    new(
      database_service,
      hostname,
      password,
      username,
      connection_attributes=null,
      port=null
    ):: std.prune(a={
      connection_attributes: connection_attributes,
      database_service: database_service,
      hostname: hostname,
      password: password,
      port: port,
      username: username,
    }),
  },
  postgresql_profile:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.postgresql_profile.new` constructs a new object with attributes and blocks configured for the `postgresql_profile`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): Database for the PostgreSQL connection.\n  - `hostname` (`string`): Hostname for the PostgreSQL connection.\n  - `password` (`string`): Password for the PostgreSQL connection.\n  - `port` (`number`): Port for the PostgreSQL connection. When `null`, the `port` field will be omitted from the resulting object.\n  - `username` (`string`): Username for the PostgreSQL connection.\n\n**Returns**:\n  - An attribute object that represents the `postgresql_profile` sub block.\n', args=[]),
    new(
      database,
      hostname,
      password,
      username,
      port=null
    ):: std.prune(a={
      database: database,
      hostname: hostname,
      password: password,
      port: port,
      username: username,
    }),
  },
  private_connectivity:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.private_connectivity.new` constructs a new object with attributes and blocks configured for the `private_connectivity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `private_connection` (`string`): A reference to a private connection resource. Format: &#39;projects/{project}/locations/{location}/privateConnections/{name}&#39;\n\n**Returns**:\n  - An attribute object that represents the `private_connectivity` sub block.\n', args=[]),
    new(
      private_connection
    ):: std.prune(a={
      private_connection: private_connection,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.datastream_connection_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBigqueryProfile':: d.fn(help='`google.list[obj].withBigqueryProfile` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_profile field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBigqueryProfileMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_profile` field.\n', args=[]),
  withBigqueryProfile(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          bigquery_profile: value,
        },
      },
    },
  },
  '#withBigqueryProfileMixin':: d.fn(help='`google.list[obj].withBigqueryProfileMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_profile field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBigqueryProfile](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_profile` field.\n', args=[]),
  withBigqueryProfileMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          bigquery_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConnectionProfileId':: d.fn(help='`google.string.withConnectionProfileId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connection_profile_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connection_profile_id` field.\n', args=[]),
  withConnectionProfileId(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          connection_profile_id: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withForwardSshConnectivity':: d.fn(help='`google.list[obj].withForwardSshConnectivity` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the forward_ssh_connectivity field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withForwardSshConnectivityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `forward_ssh_connectivity` field.\n', args=[]),
  withForwardSshConnectivity(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          forward_ssh_connectivity: value,
        },
      },
    },
  },
  '#withForwardSshConnectivityMixin':: d.fn(help='`google.list[obj].withForwardSshConnectivityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the forward_ssh_connectivity field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withForwardSshConnectivity](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `forward_ssh_connectivity` field.\n', args=[]),
  withForwardSshConnectivityMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          forward_ssh_connectivity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGcsProfile':: d.fn(help='`google.list[obj].withGcsProfile` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gcs_profile field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGcsProfileMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gcs_profile` field.\n', args=[]),
  withGcsProfile(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          gcs_profile: value,
        },
      },
    },
  },
  '#withGcsProfileMixin':: d.fn(help='`google.list[obj].withGcsProfileMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gcs_profile field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGcsProfile](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gcs_profile` field.\n', args=[]),
  withGcsProfileMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          gcs_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMysqlProfile':: d.fn(help='`google.list[obj].withMysqlProfile` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mysql_profile field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMysqlProfileMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mysql_profile` field.\n', args=[]),
  withMysqlProfile(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          mysql_profile: value,
        },
      },
    },
  },
  '#withMysqlProfileMixin':: d.fn(help='`google.list[obj].withMysqlProfileMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mysql_profile field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMysqlProfile](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mysql_profile` field.\n', args=[]),
  withMysqlProfileMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          mysql_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOracleProfile':: d.fn(help='`google.list[obj].withOracleProfile` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oracle_profile field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOracleProfileMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oracle_profile` field.\n', args=[]),
  withOracleProfile(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          oracle_profile: value,
        },
      },
    },
  },
  '#withOracleProfileMixin':: d.fn(help='`google.list[obj].withOracleProfileMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oracle_profile field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOracleProfile](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oracle_profile` field.\n', args=[]),
  withOracleProfileMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          oracle_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPostgresqlProfile':: d.fn(help='`google.list[obj].withPostgresqlProfile` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the postgresql_profile field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPostgresqlProfileMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `postgresql_profile` field.\n', args=[]),
  withPostgresqlProfile(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          postgresql_profile: value,
        },
      },
    },
  },
  '#withPostgresqlProfileMixin':: d.fn(help='`google.list[obj].withPostgresqlProfileMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the postgresql_profile field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPostgresqlProfile](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `postgresql_profile` field.\n', args=[]),
  withPostgresqlProfileMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          postgresql_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPrivateConnectivity':: d.fn(help='`google.list[obj].withPrivateConnectivity` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_connectivity field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPrivateConnectivityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_connectivity` field.\n', args=[]),
  withPrivateConnectivity(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          private_connectivity: value,
        },
      },
    },
  },
  '#withPrivateConnectivityMixin':: d.fn(help='`google.list[obj].withPrivateConnectivityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_connectivity field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPrivateConnectivity](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_connectivity` field.\n', args=[]),
  withPrivateConnectivityMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          private_connectivity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
