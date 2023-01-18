local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sql_database_instances', url='', help='`sql_database_instances` represents the `google_sql_database_instances` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.sql_database_instances.new` injects a new `data_google_sql_database_instances` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.sql_database_instances.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.sql_database_instances` using the reference:\n\n    $._ref.data_google_sql_database_instances.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_sql_database_instances.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `database_version` (`string`): To filter out the database instances which are of the specified database version. When `null`, the `database_version` field will be omitted from the resulting object.\n  - `project` (`string`): Project ID of the project that contains the instances. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): To filter out the database instances which are located in this specified region. When `null`, the `region` field will be omitted from the resulting object.\n  - `state` (`string`): To filter out the database instances based on the current state of the database instance, valid values include : \u0026#34;SQL_INSTANCE_STATE_UNSPECIFIED\u0026#34;, \u0026#34;RUNNABLE\u0026#34;, \u0026#34;SUSPENDED\u0026#34;, \u0026#34;PENDING_DELETE\u0026#34;, \u0026#34;PENDING_CREATE\u0026#34;, \u0026#34;MAINTENANCE\u0026#34; and \u0026#34;FAILED\u0026#34;. When `null`, the `state` field will be omitted from the resulting object.\n  - `tier` (`string`): To filter out the database instances based on the machine type. When `null`, the `tier` field will be omitted from the resulting object.\n  - `zone` (`string`): To filter out the database instances which are located in this specified zone. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    database_version=null,
    project=null,
    region=null,
    state=null,
    tier=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_sql_database_instances',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      database_version=database_version,
      project=project,
      region=region,
      state=state,
      tier=tier,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.sql_database_instances.newAttrs` constructs a new object with attributes and blocks configured for the `sql_database_instances`\nTerraform data source.\n\nUnlike [google.data.sql_database_instances.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database_version` (`string`): To filter out the database instances which are of the specified database version. When `null`, the `database_version` field will be omitted from the resulting object.\n  - `project` (`string`): Project ID of the project that contains the instances. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): To filter out the database instances which are located in this specified region. When `null`, the `region` field will be omitted from the resulting object.\n  - `state` (`string`): To filter out the database instances based on the current state of the database instance, valid values include : &#34;SQL_INSTANCE_STATE_UNSPECIFIED&#34;, &#34;RUNNABLE&#34;, &#34;SUSPENDED&#34;, &#34;PENDING_DELETE&#34;, &#34;PENDING_CREATE&#34;, &#34;MAINTENANCE&#34; and &#34;FAILED&#34;. When `null`, the `state` field will be omitted from the resulting object.\n  - `tier` (`string`): To filter out the database instances based on the machine type. When `null`, the `tier` field will be omitted from the resulting object.\n  - `zone` (`string`): To filter out the database instances which are located in this specified zone. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `sql_database_instances` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    database_version=null,
    project=null,
    region=null,
    state=null,
    tier=null,
    zone=null
  ):: std.prune(a={
    database_version: database_version,
    project: project,
    region: region,
    state: state,
    tier: tier,
    zone: zone,
  }),
  '#withDatabaseVersion':: d.fn(help='`google.string.withDatabaseVersion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the database_version field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database_version` field.\n', args=[]),
  withDatabaseVersion(dataSrcLabel, value): {
    data+: {
      google_sql_database_instances+: {
        [dataSrcLabel]+: {
          database_version: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_sql_database_instances+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value): {
    data+: {
      google_sql_database_instances+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withState':: d.fn(help='`google.string.withState` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the state field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `state` field.\n', args=[]),
  withState(dataSrcLabel, value): {
    data+: {
      google_sql_database_instances+: {
        [dataSrcLabel]+: {
          state: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`google.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the tier field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(dataSrcLabel, value): {
    data+: {
      google_sql_database_instances+: {
        [dataSrcLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the zone field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(dataSrcLabel, value): {
    data+: {
      google_sql_database_instances+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
